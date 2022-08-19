//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.37
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "test_top.a_mod"
(
    input logic clk,
    input logic rstn
);

// Variables generated for SystemC signals
logic signed [31:0] s;
logic signed [31:0] s_d;
logic sarr[3];
logic sarr_d[3];
logic sarr2[3][2];
logic sarr2_d[3][2];

// Local parameters generated for C++ constants
localparam logic [31:0] N = 2;
localparam logic signed [31:0] M = 3;

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_1d (test_sva_generate_proc_loop.cpp:51:5) 

// Thread-local variables
logic sct_assert_1d_PROC_STATE;
logic sct_assert_1d_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_1d_comb     // test_sva_generate_proc_loop.cpp:51:5
    sct_assert_1d_func;
end
function void sct_assert_1d_func;
    sct_assert_1d_PROC_STATE_next = sct_assert_1d_PROC_STATE;
    
    case (sct_assert_1d_PROC_STATE)
        0: begin
            sct_assert_1d_PROC_STATE_next = 1; return;    // test_sva_generate_proc_loop.cpp:65:13;
        end
        1: begin
            sct_assert_1d_PROC_STATE_next = 1; return;    // test_sva_generate_proc_loop.cpp:65:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_1d_ff
    if ( ~rstn ) begin
        sct_assert_1d_PROC_STATE <= 0;    // test_sva_generate_proc_loop.cpp:57:9;

    `ifndef INTEL_SVA_OFF
        for (integer i = 0; i < 3; i++) begin
            sctAssertLine54 : assert property ( sarr[i] |=> sarr_d[i] );
        end
    `endif // INTEL_SVA_OFF
    end
    else begin
        sct_assert_1d_PROC_STATE <= sct_assert_1d_PROC_STATE_next;

    `ifndef INTEL_SVA_OFF
        for (integer i = 0; i < 3; i++) begin
            sctAssertLine54 : assert property ( sarr[i] |=> sarr_d[i] );
        end
        for (integer j = 0; j < 2; j++) begin
            sctAssertLine60 : assert property ( sarr[j] |-> ##2 sarr[j + 1] );
        end
        for (integer j = 0; j < 2; j++) begin
            sctAssertLine61 : assert property ( sarr[j] |-> ##[3:4] sarr_d[1] );
        end
    `endif // INTEL_SVA_OFF
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_2d (test_sva_generate_proc_loop.cpp:70:5) 

// Thread-local variables
logic a;
logic a_next;
logic sct_assert_2d_PROC_STATE;
logic sct_assert_2d_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_2d_comb     // test_sva_generate_proc_loop.cpp:70:5
    sct_assert_2d_func;
end
function void sct_assert_2d_func;
    a_next = a;
    sct_assert_2d_PROC_STATE_next = sct_assert_2d_PROC_STATE;
    
    case (sct_assert_2d_PROC_STATE)
        0: begin
            sct_assert_2d_PROC_STATE_next = 1; return;    // test_sva_generate_proc_loop.cpp:87:13;
        end
        1: begin
            sct_assert_2d_PROC_STATE_next = 1; return;    // test_sva_generate_proc_loop.cpp:87:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_2d_ff
    if ( ~rstn ) begin
        a <= 0;
        sct_assert_2d_PROC_STATE <= 0;    // test_sva_generate_proc_loop.cpp:79:9;

    `ifndef INTEL_SVA_OFF
        for (integer i = 0; i < M; i++) begin
            for (integer j = 0; j < N; j++) begin
                sctAssertLine75 : assert property ( sarr2[i][j] |-> (sarr2[i][j] ^ 1) != a_next );
            end
        end
        for (integer i = 0; i < M; i++) begin
            for (integer j = 0; j < N; j++) begin
                sctAssertLine76 : assert property ( sarr2[i][j] || |s |=> |s_d && sarr2_d[i][j] );
            end
        end
    `endif // INTEL_SVA_OFF
    end
    else begin
        a <= a_next;
        sct_assert_2d_PROC_STATE <= sct_assert_2d_PROC_STATE_next;

    `ifndef INTEL_SVA_OFF
        for (integer i = 0; i < M; i++) begin
            for (integer j = 0; j < N; j++) begin
                sctAssertLine75 : assert property ( sarr2[i][j] |-> (sarr2[i][j] ^ 1) != a_next );
            end
        end
        for (integer i = 0; i < M; i++) begin
            for (integer j = 0; j < N; j++) begin
                sctAssertLine76 : assert property ( sarr2[i][j] || |s |=> |s_d && sarr2_d[i][j] );
            end
        end
        for (integer i_1 = 0; i_1 < M - 1; i_1++) begin
            for (integer j_1 = 0; j_1 < N; j_1++) begin
                sctAssertLine83 : assert property ( sarr2[i_1 + 1][j_1] || sarr2_d[i_1][j_1] |-> ##[1:2] |s );
            end
        end
    `endif // INTEL_SVA_OFF
    end
end

endmodule


