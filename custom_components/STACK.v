module STACK (clk, rst, POP, PUSH, VALUE, OUTPUT);
  parameter UUID = 0;
  parameter NAME = "";
  input wire clk;
  input wire rst;

  input  wire [0:0] POP;
  input  wire [0:0] PUSH;
  input  wire [7:0] VALUE;
  output  wire [7:0] OUTPUT;

  TC_Switch # (.UUID(64'd3922209179660597228 ^ UUID), .BIT_WIDTH(64'd8)) Output8z_0 (.en(wire_6), .in(wire_10[7:0]), .out(OUTPUT));
  TC_Ram # (.UUID(64'd3515802149392449916 ^ UUID), .WORD_WIDTH(64'd8), .WORD_COUNT(64'd256)) Ram_1 (.clk(clk), .rst(rst), .load(wire_6), .save(wire_5), .address({{24{1'b0}}, wire_8 }), .in0({{56{1'b0}}, wire_0 }), .in1(64'd0), .in2(64'd0), .in3(64'd0), .out0(wire_10), .out1(), .out2(), .out3());
  TC_Register # (.UUID(64'd1911997910448345233 ^ UUID), .BIT_WIDTH(64'd8)) Register8_2 (.clk(clk), .rst(rst), .load(wire_3), .save(wire_3), .in(wire_9), .out(wire_2));
  TC_Add # (.UUID(64'd4024954848498178688 ^ UUID), .BIT_WIDTH(64'd8)) Add8_3 (.in0(wire_2), .in1(wire_4), .ci(1'd0), .out(wire_9), .co());
  TC_Constant # (.UUID(64'd472856855453086207 ^ UUID), .BIT_WIDTH(64'd1), .value(1'd1)) On_4 (.out(wire_3));
  TC_Constant # (.UUID(64'd2300768517680092557 ^ UUID), .BIT_WIDTH(64'd8), .value(8'h1)) Constant8_5 (.out(wire_1));
  TC_Constant # (.UUID(64'd3402761009957381333 ^ UUID), .BIT_WIDTH(64'd8), .value(8'hFF)) Constant8_6 (.out(wire_7));
  TC_Switch # (.UUID(64'd1720190598278832440 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_7 (.en(wire_6), .in(wire_7), .out(wire_4_0));
  TC_Switch # (.UUID(64'd4413419722106768707 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_8 (.en(wire_5), .in(wire_1), .out(wire_4_1));
  TC_Switch # (.UUID(64'd1973193326220683441 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_9 (.en(wire_5), .in(wire_9), .out(wire_8_1));
  TC_Switch # (.UUID(64'd2809500264412282611 ^ UUID), .BIT_WIDTH(64'd8)) Switch8_10 (.en(wire_6), .in(wire_2), .out(wire_8_0));

  wire [7:0] wire_0;
  assign wire_0 = VALUE;
  wire [7:0] wire_1;
  wire [7:0] wire_2;
  wire [0:0] wire_3;
  wire [7:0] wire_4;
  wire [7:0] wire_4_0;
  wire [7:0] wire_4_1;
  assign wire_4 = wire_4_0|wire_4_1;
  wire [0:0] wire_5;
  assign wire_5 = PUSH;
  wire [0:0] wire_6;
  assign wire_6 = POP;
  wire [7:0] wire_7;
  wire [7:0] wire_8;
  wire [7:0] wire_8_0;
  wire [7:0] wire_8_1;
  assign wire_8 = wire_8_0|wire_8_1;
  wire [7:0] wire_9;
  wire [63:0] wire_10;

endmodule
