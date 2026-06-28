module alu_verilog_tb;

   reg [7:0] a;
   reg [7:0] b;
   reg [2:0] sel;
    
   wire [7:0] result;
alu uut (
    .a(a) ,
    .b(b) ,
    .sel(sel),
    .result(result)
   );
   
   initial begin
   $dumpfile("alu.vcd");
   $dumpvars(0,alu_verilog_tb);
   $display("simulation started");
   a=8'd20;
   b=8'd10;
   
   sel=3'b000; #10;   //add
   sel=3'b001; #10;   //sub
   sel=3'b010; #10;   //and
   sel=3'b011; #10;   //or
   sel=3'b100; #10;   //xor
   sel=3'b101; #10;   //not
   sel=3'b110; #10;   //left shift
   sel=3'b111; #10;   //right shift
   $display("result=%b",result);
   $finish;
     
end
endmodule     