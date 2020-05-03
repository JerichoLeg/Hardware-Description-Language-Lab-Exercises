module random;
    task borderopen;
        begin
            $display("****************************************************");
            repeat(8)
            $display("*** ***");
        end
    endtask

    task borderclose;
        begin
            repeat(8)
            $display("*** ***");
            $display("****************************************************");
        end
    endtask

    reg [3:0]x;
    initial begin
        $monitor("\t\t\t",x);
        #1 borderopen;
        #1 $display("\t This is a set of random values\n");
        repeat (4)
        #1 x=$random;
        #1 borderclose;
        #1 $stop;
        #1 borderopen;
        #1 $display("\tThis is a new set of random values\n");
        repeat (4)
        #1 x=$random;
        #1 borderclose;
        #1 $stop;
        #20 $finish;
    end
endmodule

