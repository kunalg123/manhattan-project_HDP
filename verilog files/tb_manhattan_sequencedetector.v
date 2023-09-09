module tb_manhattan_sequencedetector;
  reg clock;
  reg reset;
  reg sequence_in;
  wire detector_out;
  
  manhattan_sequencedetector m1(sequence_in, clock, reset, detector_out);

  // Clock generation
  always #5 clock = ~clock;

  // Reset generation
  initial begin
    $dumpfile("manseqdetector.vcd");
    $dumpvars(0);

    clock = 0;
    sequence_in = 0;
    reset = 1;
    #10 reset = 0;
    
    $monitor($time, "c=%b y=%b r=%b d=%b", clock, detector_out, reset, sequence_in);

    // Test sequence: 110101 (correct)
    sequence_in = 1;
    #10 sequence_in = 1;
    #10 sequence_in = 0;
    #10 sequence_in = 1;
    #10 sequence_in = 0;
    #10 sequence_in = 1;

    #20;

    // Test sequence: 101010 (incorrect)
    sequence_in = 1;
    #10 sequence_in = 0;
    #10 sequence_in = 1;
    #10 sequence_in = 0;
    #10 sequence_in = 1;
    #10 sequence_in = 0;

    // Wait for a few cycles
    #20;
    
    // Test sequence: 1101011 (incorrect due to extra bit)
    sequence_in = 1;
    #10 sequence_in = 1;
    #10 sequence_in = 0;
    #10 sequence_in = 1;
    #10 sequence_in = 0;
    #10 sequence_in = 1;
    #10 sequence_in = 1;

    // Wait for a few cycles
    #20;
    
    // Test sequence: 111111 (incorrect)
    sequence_in = 1;
    #10 sequence_in = 1;
    #10 sequence_in = 1;
    #10 sequence_in = 1;
    #10 sequence_in = 1;
    #10 sequence_in = 1;

    // Wait for a few cycles
    #20;
    
    $finish;
  end
endmodule

