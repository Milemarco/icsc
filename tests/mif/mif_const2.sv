//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.26
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
    input logic clk
);

// Variables generated for SystemC signals
logic signed [31:0] minst_t;
logic signed [31:0] pminst_t;
logic signed [31:0] aminst_t[2];
logic signed [31:0] t;

// Local parameters generated for C++ constants
localparam logic [31:0] minst_B = 'd43;
localparam logic [31:0] minst_A = 'd42;
localparam logic [31:0] minst_AA = 'd42;
localparam logic [31:0] minst_AAA = 'd42;
localparam logic [31:0] minst_C = 'd44;
localparam logic [31:0] minst_D = 'd45;
localparam logic [31:0] minst_N = 'd44;
localparam logic [31:0] minst_M = 'd45;
localparam logic [31:0] pminst_B = 'd43;
localparam logic [31:0] aminst_0_C = 'd54;
localparam logic [31:0] aminst_0_A = 'd52;
localparam logic [31:0] aminst_0_B = 'd53;

//------------------------------------------------------------------------------
// Method process: minst_mifProc (test_mif_const2.cpp:34:5) 

always_comb 
begin : minst_mifProc     // test_mif_const2.cpp:34:5
    integer unsigned i;
    i = minst_N + minst_A + minst_B;
    if (1)
    begin
        minst_t = i;
    end
end

//------------------------------------------------------------------------------
// Method process: pminst_mifProc (test_mif_const2.cpp:34:5) 

always_comb 
begin : pminst_mifProc     // test_mif_const2.cpp:34:5
    integer unsigned i;
    i = minst_N + minst_A + pminst_B;
    if (1)
    begin
        pminst_t = i;
    end
end

//------------------------------------------------------------------------------
// Method process: aminst_mifProc (test_mif_const2.cpp:59:5) 

always_comb 
begin : aminst_mifProc     // test_mif_const2.cpp:59:5
    integer unsigned L;
    integer unsigned i;
    L = 56;
    i = aminst_0_B + aminst_0_C + L;
    aminst_t[0] = i;
end

//------------------------------------------------------------------------------
// Method process: aminst_mifProc0 (test_mif_const2.cpp:59:5) 

always_comb 
begin : aminst_mifProc0     // test_mif_const2.cpp:59:5
    integer unsigned L;
    integer unsigned i;
    L = 56;
    i = aminst_0_B + aminst_0_C + L;
    aminst_t[1] = i;
end

//------------------------------------------------------------------------------
// Method process: topProc (test_mif_const2.cpp:102:5) 

always_comb 
begin : topProc     // test_mif_const2.cpp:102:5
    integer unsigned i;
    i = minst_A;
    i = minst_AA;
    i = minst_AAA;
    if (1)
    begin
        t = i + minst_D;
    end
end

//------------------------------------------------------------------------------
// Method process: topProcPtr (test_mif_const2.cpp:114:5) 

always_comb 
begin : topProcPtr     // test_mif_const2.cpp:114:5
    integer unsigned i;
    integer i_1;
    if (1)
    begin
        i_1 = minst_A + minst_AA;
    end
end

//------------------------------------------------------------------------------
// Method process: topProcArr (test_mif_const2.cpp:122:5) 

always_comb 
begin : topProcArr     // test_mif_const2.cpp:122:5
    integer unsigned i;
    integer i_1;
    if (1)
    begin
        i_1 = aminst_0_A + aminst_0_B + aminst_0_C;
    end
end

endmodule


