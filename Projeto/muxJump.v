module muxJump (muxPCScr, signExtenderJ, out, cu_Jump);
  input cu_Jump;
  input [31:0] muxPCScr;
  input [31:0] signExtenderJ;
  output reg [31:0] out;

  always @ ( * ) begin
    if(cu_Jump)
      out = signExtenderJ;
    else
      out = muxPCScr;
  end
endmodule // muxJumpcu_jump