//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.4
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "mod1"
(
    input logic clk
);

// Variables generated for SystemC signals

// Local parameters generated for C++ constants
localparam logic signed [31:0] N = 3;
localparam logic signed [31:0] HN = 3;
localparam logic signed [31:0] HNN = 3;

//------------------------------------------------------------------------------
// Method process: methProc (test_const_keep_var3.cpp:52:5) 

always_comb 
begin : methProc     // test_const_keep_var3.cpp:52:5
    logic [7:0] TMP_0;
    logic [7:0] res;
    logic [7:0] indx;
    // Call f() begin
    res = 0;
    res = HN;
    res = N;
    TMP_0 = res;
    // Call f() end
    indx = TMP_0;
end

endmodule


