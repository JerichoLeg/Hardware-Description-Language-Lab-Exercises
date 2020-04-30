module task1(temp_a, temp_b, temp_c, temp_d);
	input[7:0] temp_a, temp_c;
	output[7:0] temp_b, temp_d;
	reg[7:0] temp_b, temp_d;
	initial temp_b=0;
	task convert;
		input[7:0] temp_in;
		output[7:0] temp_out;
		begin
		temp_out=((9*temp_in)/5)+32;
		end
	endtask
	always@(temp_a or temp_b or temp_c or temp_d)
	begin
		convert(temp_a, temp_b);
		convert(temp_c, temp_d);
	end
endmodule

module testtask1;
	reg[7:0] temp_a, temp_c;
	wire[7:0] temp_b, temp_d;
	task1 t1(temp_a, temp_b, temp_c, temp_d);
	
	initial begin 
		#1 temp_a=8'd0; temp_c=8'd32;
		#2 $display("Temperature A in Celsius= %d",temp_a);
		#2 $display("Temperature A in Fahrenheit= %",temp_b);
		#2 $display("Temperature B in Celsius= %d",temp_c);
		#2 $display("Temperature B in Fahrenheit= %",temp_d);
	end
endmodule