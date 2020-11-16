//`timescale 1ns


// ---------------------------------
//-- DIGITAL FILTER IIR FORM 2 ----
// -- GROUP 26 - ISA2020 -----------
// ---------------------------------
 


module tb_iir_lah();

   wire CLK_i;
   wire RST_n_i;
   wire [11:0] DIN_i;
   wire VIN_i;
   wire [11:0] a0_i;
   wire [11:0] a1_i;
   wire [11:0] a2_i;
   wire [11:0] b1_i;
   wire [11:0] b2_i;
   wire [11:0] DOUT_i;
   wire VOUT_i;
   wire END_SIM_i;

   clk_gen2 CG(.END_SIM(END_SIM_i),
  	      .CLK(CLK_i),
	      .RST_n(RST_n_i));

   data_maker SM(.CLK(CLK_i),
	         .RST_n(RST_n_i),
		 .VOUT(VIN_i),
		 .DOUT(DIN_i),
		 .a0(a0_i),
		 .a1(a1_i),
		 .a2(a2_i),
		 .b1(b1_i),
		 .b2(b2_i),
		 .END_SIM(END_SIM_i));

   IIR_LH UUT(.CLK(CLK_i),
	     .RST_n(RST_n_i),
	     .VIN(VIN_i),
		  .VOUT(VOUT_i),
		 .a0(a0_i),
		 .a1(a1_i),
		 .a2(a2_i),
		 .b1(b1_i),
		 .b2(b2_i),
             .DIN(DIN_i),
	     .DOUT(DOUT_i));
             

   data_sink2 DS(.CLK(CLK_i),
		.RST_n(RST_n_i),
		.VIN(VOUT_i),
		.DIN(DOUT_i));   

endmodule

		   