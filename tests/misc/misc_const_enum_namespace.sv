//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.24
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: MyModule ()
//
module MyModule // "tb_inst.top_mod"
(
    input logic in,
    output logic out
);

// Variables generated for SystemC signals
logic signed [31:0] sig;
logic signed [31:0] sig_g;

// Local parameters generated for C++ constants
localparam logic signed [31:0] scvar_const = 'd1;
localparam logic signed var_const_bool = 'd1;
localparam logic signed [31:0] scvar_const_global = 'd1;
localparam logic signed [31:0] ivar_const_global = 'd3;
localparam logic signed [31:0] ivar_const = 'd2;

//------------------------------------------------------------------------------
// Method process: methodProc (test_const_enum_namespace.cpp:57:5) 

always_comb 
begin : methodProc     // test_const_enum_namespace.cpp:57:5
    logic [1:0] cvar1;
    logic [1:0] cvar2;
    logic [1:0] cvar3;
    logic [1:0] uvar1;
    logic [1:0] uvar2;
    logic [1:0] uvar3;
    logic [1:0] cvar1_g;
    logic [1:0] cvar2_g;
    logic [1:0] cvar3_g;
    logic [1:0] uvar1_g;
    logic [1:0] uvar2_g;
    logic [1:0] uvar3_g;
    logic b;
    integer i;
    cvar1 = 0;
    cvar2 = cvar1;
    cvar3 = 1;
    uvar1 = 0;
    uvar2 = 1;
    uvar3 = 2;
    cvar1_g = 0;
    cvar2_g = cvar1_g;
    cvar3_g = 1;
    uvar1_g = 0;
    uvar2_g = 1;
    uvar3_g = 2;
    sig = cvar1;
    sig_g = cvar1_g;
    b = in;
    if ((sig != 0) && (sig_g != 0))
    begin
        out = |(signed'({1'b0, uvar2}) & b);
    end else begin
        out = |uvar1;
    end
    i = ivar_const_global;
    i = ivar_const + i;
end

endmodule


