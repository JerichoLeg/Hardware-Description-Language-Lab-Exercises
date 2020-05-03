primitive mem(D,A,B,C);
    input A,B,C;
    output D;
    table
     // A B C : D
        0 0 0 : 1;
        0 0 1 : 0;
        0 1 0 : 0;
        0 1 1 : 1;
        1 0 0 : 1;
        1 0 1 : 0;
        1 1 0 : 1;
        1 1 1 : 1;
    endtable
endprimitive
module memory;
    integer fileno;
    reg [255:0] mem[0:255];
    reg A,B,C;
    wire D;
    integer x;
    reg [255:0] data;
    initial x=0;
    mem (D,A,B,C);
    initial begin
        fileno=$fopen("memory.txt");
        A=1'B0; B=1'B0; C=1'B0;
        #1 $display("Saving truth table to file...");
        #1 $fdisplay(fileno,"%b%b%b%b",A,B,C,D);
        #1 A=1'B0; B=1'B0; C=1'B1;
        #1 $fdisplay(fileno,"%b%b%b%b",A,B,C,D);
        #1 A=1'B0; B=1'B1; C=1'B0;
        #1 $fdisplay(fileno,"%b%b%b%b",A,B,C,D);
        #1 A=1'B0; B=1'B1; C=1'B1;
        #1 $fdisplay(fileno,"%b%b%b%b",A,B,C,D);
        #1 A=1'B1; B=1'B0; C=1'B0;
        #1 $fdisplay(fileno,"%b%b%b%b",A,B,C,D);
        #1 A=1'B1; B=1'B0; C=1'B1;
        #1 $fdisplay(fileno,"%b%b%b%b",A,B,C,D);
        #1 A=1'B1; B=1'B1; C=1'B0;
        #1 $fdisplay(fileno,"%b%b%b%b",A,B,C,D);
        #1 A=1'B1; B=1'B1; C=1'B1;
        #1 $fdisplay(fileno,"%b%b%b%b",A,B,C,D);
        #1 $fclose(fileno);
        #1 $display("Retrieving truth table from file..");
        #1 $readmemb("memory.txt",mem);
        #1 while (x!=8)
            begin
                data=mem[x];
                $display("%b %b %b : %b", data[3],
				data[2], data[1], data[0]);
                x=x+1;
            end
    end
endmodule