module and_gate_tb;
reg A, B;
wire Y;

and_gate uut(.A(A), .B(B), .Y(Y));

initial begin 
 $dumpfile("and_gate.vcd");    
 $dumpvars(0, and_gate_tb);
 $monitor("Time=%0t A = %b B = %b Y = %b", $time, A, B, Y);        

 A = 0; B = 0;
 #10 A = 1; B = 0;
 #10 A = 0; B = 1;
 #10 A = 1; B = 1; 
 #10;
 $finish;
end
endmodule
