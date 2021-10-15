//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.4
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
logic aminst_rst[2];
logic signed [31:0] aminst_t[2];
logic signed [31:0] s;
logic rst;
logic aminst_clk[2];

// Local parameters generated for C++ constants
localparam logic [31:0] aminst_0_C = 54;
localparam logic [31:0] aminst_0_A = 52;
localparam logic [31:0] aminst_0_B = 53;

// Assignments generated for C++ channel arrays
assign aminst_clk[0] = clk;
assign aminst_clk[1] = clk;

//------------------------------------------------------------------------------
// Clocked THREAD: aminst_mifProc (test_mif_const1.cpp:29:5) 

// Thread-local variables
logic [31:0] i;
logic [31:0] i_next;
logic signed [31:0] aminst_t_next[2];

// Thread-local constants
logic [31:0] L;

// Next-state combinational logic
always_comb begin : aminst_mifProc_comb     // test_mif_const1.cpp:29:5
    aminst_mifProc_func;
end
function void aminst_mifProc_func;
    integer unsigned j;
    aminst_t_next[0] = aminst_t[0];
    i_next = i;
    j = aminst_0_A + aminst_0_B + aminst_0_C + L;
    aminst_t_next[0] = i_next + j;
endfunction

// Syncrhonous register update
always_ff @(posedge aminst_clk[0] or negedge aminst_rst[0]) 
begin : aminst_mifProc_ff
    if ( ~aminst_rst[0] ) begin
        L = 56;
        i <= aminst_0_A + aminst_0_B + aminst_0_C + L;
    end
    else begin
        i <= i_next;
        aminst_t[0] <= aminst_t_next[0];
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: aminst_mifProc0 (test_mif_const1.cpp:29:5) 

// Thread-local variables
logic [31:0] i0;
logic [31:0] i_next0;

// Thread-local constants
logic [31:0] L0;

// Next-state combinational logic
always_comb begin : aminst_mifProc0_comb     // test_mif_const1.cpp:29:5
    aminst_mifProc0_func;
end
function void aminst_mifProc0_func;
    integer unsigned j;
    aminst_t_next[1] = aminst_t[1];
    i_next0 = i0;
    j = aminst_0_A + aminst_0_B + aminst_0_C + L0;
    aminst_t_next[1] = i_next0 + j;
endfunction

// Syncrhonous register update
always_ff @(posedge aminst_clk[1] or negedge aminst_rst[1]) 
begin : aminst_mifProc0_ff
    if ( ~aminst_rst[1] ) begin
        L0 = 56;
        i0 <= aminst_0_A + aminst_0_B + aminst_0_C + L0;
    end
    else begin
        i0 <= i_next0;
        aminst_t[1] <= aminst_t_next[1];
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: topProc (test_mif_const1.cpp:62:5) 

// Thread-local variables
logic signed [31:0] sum;
logic signed [31:0] sum_next;
logic signed [31:0] s_next;

// Next-state combinational logic
always_comb begin : topProc_comb     // test_mif_const1.cpp:62:5
    topProc_func;
end
function void topProc_func;
    integer i_2;
    s_next = s;
    sum_next = sum;
    i_2 = s;
    sum_next = sum_next + (signed'({1'b0, aminst_0_A + aminst_0_B + aminst_0_C}));
    s_next = sum_next;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : topProc_ff
    if ( ~rst ) begin
        integer k;
        k = 0;
        for (integer i_1 = 0; i_1 < 2; ++i_1)
        begin
            k = k + (signed'({1'b0, aminst_0_A + aminst_0_B + aminst_0_C}));
        end
        sum <= k;
    end
    else begin
        sum <= sum_next;
        s <= s_next;
    end
end

endmodule


