module Exercise3_2(a,b,c,d,w,x,y,z);
    input a,b,c,d;
	output w,x,y,z;
	wire anot,bnot,cnot,dnot;
	not (anot,a),(bnot,b),(cnot,c),(dnot,d);
	and (w,anot,bnot,cnot);
	xor (x,b,c);
	assign y = c;
	assign z = dnot;
endmodule

module testbench3_2;
    wire x1,x2,x3,x4;
	reg r1,r2,r3,r4;
	Exercise3_2 test3_2(r1,r2,r3,r4,x1,x2,x3,x4);
	initial begin
	    r1 = 1'b0;
		r2 = 1'b0;
		r3 = 1'b0;
		r4 = 1'b0;
		#100 $finish;
	end
	initial begin
	    #2 $display("A  B  C  D Output");
		#2 $monitor("",r1,"  ",r2,"  ",r3,"  ",r4,"  ",x1,x2,x3,x4);
		#2 r1 = 1'b0;r2=1'b0;r3=1'b0;r4=1'b0;
		#2 r1 = 1'b0;r2=1'b0;r3=1'b0;r4=1'b1;
		#2 r1 = 1'b0;r2=1'b0;r3=1'b1;r4=1'b0;
		#2 r1 = 1'b0;r2=1'b0;r3=1'b1;r4=1'b1;
		#2 r1 = 1'b0;r2=1'b1;r3=1'b0;r4=1'b0;
		#2 r1 = 1'b0;r2=1'b1;r3=1'b0;r4=1'b1;
		#2 r1 = 1'b0;r2=1'b1;r3=1'b1;r4=1'b0;
		#2 r1 = 1'b0;r2=1'b1;r3=1'b1;r4=1'b1;
		#2 r1 = 1'b1;r2=1'b0;r3=1'b0;r4=1'b0;
		#2 r1 = 1'b1;r2=1'b0;r3=1'b0;r4=1'b1;
		#2 r1 = 1'b1;r2=1'b0;r3=1'b1;r4=1'b0;
		#2 r1 = 1'b1;r2=1'b0;r3=1'b1;r4=1'b1;
		#2 r1 = 1'b1;r2=1'b1;r3=1'b0;r4=1'b0;
		#2 r1 = 1'b1;r2=1'b1;r3=1'b0;r4=1'b1;
		#2 r1 = 1'b1;r2=1'b1;r3=1'b1;r4=1'b0;
		#2 r1 = 1'b1;r2=1'b1;r3=1'b1;r4=1'b1;
		end
endmodule


