module or_gate_tb;
reg A, B;
wire Y;

or_gate uut(.A(A), .B(B), .Y(Y));

initial begin
 $dumpfile("or_gate.vcd");
 $dumpvars(0, or_gate_tb);
 
 $monitor("Time=%0t | A=%b B=%b | Y=%b", $time, A, B, Y);
 
 A = 0; B = 0;
 #10 A = 0; B = 1;
 #10 A = 1; B = 1;
 #10 A = 0; B = 1;
 #10; // Small delay before finishing to capture the final change
 $finish;
end

endmodule
