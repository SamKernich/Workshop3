module top_level (
	// Clock
	input CLOCK_50,
	
	// Key
	input [1:0] KEY,
	
	// Switches
	input [9:0] SW,
	
	// Leds
	output [9:0] LEDR	
);

	// As we use the entire width of the bus, no need to specify bits
    nios_system u0 (
        .clk_clk       (CLOCK_50),       
        .reset_reset_n (KEY[0]), 
        .ledr_export   (LEDR),   
        .sw_export     (SW)      
    );

	 
endmodule
