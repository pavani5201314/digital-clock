`timescale 1s/1ms

module digital_clock_tb;

reg clk;
reg reset;

wire [5:0] seconds;
wire [5:0] minutes;
wire [4:0] hours;

digital_clock uut (
    .clk(clk),
    .reset(reset),
    .seconds(seconds),
    .minutes(minutes),
    .hours(hours)
);

// Clock: 1-second period
always #0.5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;

    #1;
    reset = 0;

    // Run simulation
    #3700;

    $finish;
end

initial begin
    $monitor("Time = %02d:%02d:%02d",
             hours, minutes, seconds);
end

endmodule