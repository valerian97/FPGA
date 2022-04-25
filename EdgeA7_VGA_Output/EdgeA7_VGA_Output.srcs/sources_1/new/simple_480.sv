module simple_480 ( 
    input wire logic clk_pix,   //Pixel clock
    input wire logic rst_pix,   //Clock reset
    output logic [9:0] sx,
    output logic [9:0] sy,
    output logic hsync, 
    output logic vsync, 
    output logic de   //Data enable, low in blanking region 
    );
    //Horizontal
    parameter HA_END = 639; //End of active region
    parameter HS_STA = HA_END + 16; //Sync starts after front portch
    parameter HS_END = HS_STA + 96; //sync ends
    parameter LINE = 799; //Last pixel on line
    //Vertical
    parameter VA_END = 479;
    parameter VS_STA = VA_END + 10; 
    parameter VS_END = VS_STA + 2;
    parameter SCREEN = 524;
    
    always_comb begin
        hsync = ~(sx >= HS_STA && sx < HS_END); //invert: negative polarity
        vsync = ~(sy>= VS_STA && sy <VS_END); //invert: negative polarity
        de = (sx <= HA_END && sy <= VA_END);
    end
    
    //Calculate horizontal and veritcal screen position
    
    always_ff @(posedge clk_pix) begin
        if (sx == LINE) begin
            sx <= 0;
            sy <= (sy==SCREEN)?0:sy+1;
        end else begin
            sx <= sx+1;
        end 
        if(rst_pix) begin
            sx<= 0;
            sy<=0;
        end
    end 
endmodule