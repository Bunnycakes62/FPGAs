`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////
// Module Name: xup_and_tb
///////////////////////////////////////////////////////////////

module xup_and_tb(
    );
    
    reg ain_0, bin_0;
    reg [2:0] ain_1, bin_1;
    wire y_0;
    wire [2:0] y_1;
    
    system_wrapper DUT(.a_0(ain_0), .a_1(ain_1), .b_0(bin_0), .b_1(bin_1), .y_0(y_0), .y_1(y_1));
    
 
    initial
    begin
      ain_0 = 0; bin_0= 0; ain_1 = 0; bin_1 = 0;
      #10 ain_0= 1;
      #10 bin_0= 1;
	 #10 ain_1 = 3;
	 #10 bin_1 = 1;
      #10 ain_0= 0; bin_0= 1;
	 #10 ain_1 = 1; bin_1 = 3;
      #10 ain_0= 1; bin_0= 0;
	 #10 ain_1 = 0;
      #10 ain_0= 1; bin_0= 1;
      #10 ain_0= 1; bin_0= 0;
	#20;
    end

endmodule
