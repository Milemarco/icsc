//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.9
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: AA ()
//
module AA // "a_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic nrst;

// Local parameters generated for C++ constants
localparam logic signed [31:0] A = 47;
localparam logic B = 1;
localparam logic [15:0] C = 42;
localparam logic signed [7:0] D = -4'sd7;
localparam logic signed [31:0] p1 = 30;
localparam logic signed [31:0] p2 = 31;
localparam logic signed [7:0] pe = -4'sd5;
localparam logic [7:0] pf = 52;
localparam logic [7:0] pg = 7;

//------------------------------------------------------------------------------
// Method process: constPtrMethod (test_const_pointer.cpp:68:5) 

always_comb 
begin : constPtrMethod     // test_const_pointer.cpp:68:5
    integer l;
    logic b;
    integer larr[50];
    l = A;
    l = pg;
    l = -32'sd5;
    l = 16'(pe);
    l = (-32'sd5) - 64'd52;
    b = &(-4'sd5);
    b = C[2];
    b = D[1];
    l = D[2 : 0];
    l = larr[C];
    l = larr[pg];
    l = larr[32'(C)] + larr[4'(C)];
end

//------------------------------------------------------------------------------
// Method process: constPtrOperator (test_const_pointer.cpp:89:5) 

always_comb 
begin : constPtrOperator     // test_const_pointer.cpp:89:5
    integer l;
    l = C[2 : 1];
end

//------------------------------------------------------------------------------
// Method process: constPtrPtr (test_const_pointer.cpp:95:5) 

always_comb 
begin : constPtrPtr     // test_const_pointer.cpp:95:5
    integer m;
    m = D;
    m = 32'(D);
end

//------------------------------------------------------------------------------
// Method process: sig_init_method (test_const_pointer.cpp:106:5) 

always_comb 
begin : sig_init_method     // test_const_pointer.cpp:106:5
    integer k;
    integer n;
    integer l;
    logic signed [8:0] ll;
    k = A + C;
    k = C;
    k = -C;
    k = C + 1;
    n = C;
    l = p1;
    ll = pe + signed'({1'b0, pf});
end

//------------------------------------------------------------------------------
// Clocked THREAD: sig_init_thread (test_const_pointer.cpp:117:5) 

// Next-state combinational logic
always_comb begin : sig_init_thread_comb     // test_const_pointer.cpp:117:5
    sig_init_thread_func;
end
function void sig_init_thread_func;
    logic a;
    integer m_1;
    integer n;
    integer k;
    a = 1;
    m_1 = D;
    n = C + p2;
    k = C;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : sig_init_thread_ff
    if ( ~nrst ) begin
        integer m;
        logic b;
        m = D;
        b = B;
    end
    else begin
    end
end

endmodule


