// Code your testbench here
// or browse Examples
// half_adder_tb.v

`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module half_sub_tb;

    reg a, b;
    wire diff, borrow;

    localparam period = 20;  

  half_sub UUT (.a(a), .b(b), .diff(diff), .borrow(borrow));
    
    initial // initial block executes only once
        begin
          	$dumpfile("dump.vcd");
    		$dumpvars(1);
            // values for a and b
            a = 0;
            b = 0;
            #period; // wait for period 

            a = 0;
            b = 1;
            #period;

            a = 1;
            b = 0;
            #period;

            a = 1;
            b = 1;
            #period;
        end
endmodule

