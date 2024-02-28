`timescale 1us/1ns
module generating_clock();
	
	// Testbench variables
    parameter half_period_clk1 = 0.5;
    parameter half_period_clk2 = 0.25;

    reg clk1;      // 1 MHz clock, duty cycle = 50%
    reg clk2 = 0;  // 2 MHz clock, duty cycle = 50%
    reg clk3;      // 1 MHz clock, duty cycle = 70%
    reg clk4 = 1;  // 2 MHz clock, duty cycle = 40%
    
    // Create stimulus
    initial begin
        clk1 = 0;
        forever begin
		#(half_period_clk1); clk1 = ~clk1;
        end
    end
	
    always begin
        #(half_period_clk2); clk2 = ~clk2;
    end
  
    initial begin
        clk3 = 1;
        forever begin
           clk3 = 1; #(0.7); 
           clk3 = 0; #(0.3); 
        end
    end
	
    always begin
        clk4 = clk4; #(0.2);
	clk4 = ~clk4; #(0.8);
    end
	
    // This will stop the simulator after 40us
    initial begin       
       #4 $stop;
    end
  
endmodule
