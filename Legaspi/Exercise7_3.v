module random;
task borderopen;
		begin
		$display("----------------------------------------------------");
		repeat(8)
		$display("--- ---");
		end
	endtask

task borderclose;
	begin
		repeat(8)
		$display("--- ---");
		$display("----------------------------------------------------");
	end
endtask

	reg [3:0]x;
	reg	[3:0]y;
	reg [3:0] AX = 4'b0010;
	initial begin
	repeat(16)
		$monitor("\t\t\t",x,y);
		#1 borderopen;
		#1 $display("\t These are the values on the current roll\n");
		#1 x=$urandom_range(6,1);
		   y=$urandom_range(6,1);
		#2 if (x==2||x==4||x==6||y==2||y==4||y==6)
			#1 $display ("Displaying content of AX...\nAX = %b", AX);
			
		#2 if (x==1||x==3||x==5||y==1||y==3||y==5)
			#1 AX = ~AX;
			#1 $display ("Complementing content of AX...\nAX = %b", AX);
		#1 $display("\t These are the values on the current roll\n");
		#1 x=$urandom_range(6,1);
		   y=$urandom_range(6,1);
		#2 if (x==2||x==4||x==6||y==2||y==4||y==6)
			#1 $display ("Displaying content of AX...\nAX = %b", AX);
			
		#2 if (x==1||x==3||x==5||y==1||y==3||y==5)
			#1 AX = ~AX;
			#1 $display ("Complementing content of AX...\nAX = %b", AX);
		#1 $display("\t These are the values on the current roll\n");
		#1 x=$urandom_range(6,1);
		   y=$urandom_range(6,1);
		#2 if (x==2||x==4||x==6||y==2||y==4||y==6)
			#1 $display ("Displaying content of AX...\nAX = %b", AX);
			
		#2 if (x==1||x==3||x==5||y==1||y==3||y==5)
			#1 AX = ~AX;
			#1 $display ("Complementing content of AX...\nAX = %b", AX);
		#1 $display("\t These are the values on the current roll\n");
		#1 x=$urandom_range(6,1);
		   y=$urandom_range(6,1);
		#2 if (x==2||x==4||x==6||y==2||y==4||y==6)
			#1 $display ("Displaying content of AX...\nAX = %b", AX);
			
		#2 if (x==1||x==3||x==5||y==1||y==3||y==5)
			#1 AX = ~AX;
			#1 $display ("Complementing content of AX...\nAX = %b", AX);
		#1 $display("\t These are the values on the current roll\n");
		#1 x=$urandom_range(6,1);
		   y=$urandom_range(6,1);
		#2 if (x==2||x==4||x==6||y==2||y==4||y==6)
			#1 $display ("Displaying content of AX...\nAX = %b", AX);
			
		#2 if (x==1||x==3||x==5||y==1||y==3||y==5)
			#1 AX = ~AX;
			#1 $display ("Complementing content of AX...\nAX = %b", AX);
		#1 $display("\t These are the values on the current roll\n");
		#1 x=$urandom_range(6,1);
		   y=$urandom_range(6,1);
		#2 if (x==2||x==4||x==6||y==2||y==4||y==6)
			#1 $display ("Displaying content of AX...\nAX = %b", AX);
			
		#2 if (x==1||x==3||x==5||y==1||y==3||y==5)
			#1 AX = ~AX;
			#1 $display ("Complementing content of AX...\nAX = %b", AX);
		#1 $display("\t These are the values on the current roll\n");
		#1 x=$urandom_range(6,1);
		   y=$urandom_range(6,1);
		#2 if (x==2||x==4||x==6||y==2||y==4||y==6)
			#1 $display ("Displaying content of AX...\nAX = %b", AX);
			
		#2 if (x==1||x==3||x==5||y==1||y==3||y==5)
			#1 AX = ~AX;
			#1 $display ("Complementing content of AX...\nAX = %b", AX);
		#1 $display("\t These are the values on the current roll\n");
		#1 x=$urandom_range(6,1);
		   y=$urandom_range(6,1);
		#2 if (x==2||x==4||x==6||y==2||y==4||y==6)
			#1 $display ("Displaying content of AX...\nAX = %b", AX);
			
		#2 if (x==1||x==3||x==5||y==1||y==3||y==5)
			#1 AX = ~AX;
			#1 $display ("Complementing content of AX...\nAX = %b", AX);
		
		
		#1 $stop;
		#100 $finish;
	end
endmodule
