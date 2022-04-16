#Script to automatically read all module inputs, force clocks on them and run simulation
#Version: 0.3.2

#Note: Use [MSB:LSB] bit order in input declaration
#To Run: Give following command
#do simulate.tcl


puts "Enter module name for simulation: "

# Get input from standard input and store it in $module_name
# This is the module that will be simulated
gets stdin module_name
puts "Module name for simulation is : $module_name."

vsim $module_name 
#add nets to wave
add wave *;
# Get the list of instance paths (top level module only)
set input_ports [ list ];
set input_ports_ [find nets -in /$module_name/*] ;
set input_ports__ [ split $input_ports_ " " ];

set input_ports [ lreverse $input_ports__ ];

#search for clock signal
set search_idx 0;
puts "Begining clear for clock signal...";
foreach input_port $input_ports {
	if [
	regexp -nocase {.*clk$} $input_port matchresult
	] then {
	puts "Clock signal found!";
	puts $input_port;
	# Swap signals at index 0 and current index (search_idx)
	# get the clock port 
	set clock_port $input_port;
	# get the first port (index 0)
	set first_port [lindex $input_ports 0];
	# swap the contents
	puts "Search index:";
	puts $search_idx;
	lset input_ports $search_idx $first_port;
	lset input_ports 0 $clock_port;
	} else {
	puts "";
	}
	incr search_idx;
}


# set the counter (used to force clock period in powers of 2. eg: 100,200,400,800)
set counter 0;
# set the base clock (for the signals to be forced)
set clock_base 50;
# iterate through input ports
set input_port "";
puts "Forcing clocks on ports....";
puts "The input ports are:";
puts $input_ports
foreach input_port $input_ports {
	#inputs will be nets. 
	#if its single bit, description will be 
	#Net
	#if its multiple bit, description will be
	#Net [3:0]
	set port_description [describe $input_port];
	#Based on above example, we can determine if a port is single bit or multi bit 
	#by checking if its description contains the character ":" 
	if { [string match *:* $port_description] } {
		puts $input_port;
		puts "is a multi bit port";
		#Get the HSB by taking a substring of the description. 
		set msb [string range $port_description [expr {[string first "\[" $port_description] + 1}] [expr {[string first ":" $port_description] - 1 }]]
		puts "With msb"
		puts $msb
		#Get the HSB by taking a substring of the description. 
		set lsb [string range $port_description [expr {[string first ":" $port_description] + 1 }] [expr {[string first "\]" $port_description] - 1 }]]
		puts "With lsb"
		puts $lsb
		#force signals on each input, from lsb to msb
		for {set i $lsb} {$i <= $msb} {incr i} {
			#increment counter for each bit
			incr counter;
			#add the bit to the input port path by appending [$i]
			set current_net_path $input_port
			append current_net_path "\["
			append current_net_path $i
			append current_net_path "\]"
			puts $current_net_path;
			#set times for clock increase powers of 2
			set time1 [expr {$clock_base*pow(2,$counter)/2}];
			set time2 [expr {$clock_base*pow(2,$counter)}];
			#puts $time1;
			#add time unit
			append time1 " ps"
			#force clock
			force -freeze sim:$current_net_path 1 0, 0 $time1 -r $time2;
		}
		
	} else {
		puts $input_port;
		puts "is a single bit port";
		#increment counter
		incr counter;
		set time1 [expr {$clock_base*pow(2,$counter)/2}];
		set time2 [expr {$clock_base*pow(2,$counter)}];
		#add time unit
		append time1 " ps"
		#force clock
		force -freeze sim:$input_port 1 0, 0 $time1 -r $time2;
	}
} 
# set input nets(path)
set input_nets [ list ]
# set time for which simulation is to run (longest clock period on input port)
set run_time [expr {$clock_base*pow(2,$counter)}];
# run simulation
run $run_time
puts "Script Execution Complete!"
puts "Click enter to exit simulation...."
gets stdin temp
quit -sim