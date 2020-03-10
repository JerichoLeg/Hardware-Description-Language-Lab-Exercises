`define Pi 3.14159

module testbenchEx2_3;
    real r = 5.123;
	real AnsrRem;
	initial begin
    	AnsrRem = (4*`Pi*(r**3))/3;
		$display("Radius of Cylinder: %.3f\nVolume of cylinder: %.3f",r,AnsrRem);
	end
endmodule

