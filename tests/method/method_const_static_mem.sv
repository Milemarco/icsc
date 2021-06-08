//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.24
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "top_inst"
(
    input logic clk
);

// Variables generated for SystemC signals
logic nrst;

// Local parameters generated for C++ constants
localparam logic [3:0] mrec1_b = 'd4;
localparam logic [3:0] mrec2_b = 'd5;
localparam logic [15:0] B = 'd42;
localparam logic signed [64:0] BB = 64'hFFFFFFFFFFFFFFD5;
localparam logic [15:0] BBB = 'd43;
localparam logic [31:0] C = 'd1;
localparam logic signed [31:0] ARR[3] = '{ 'd1, 'd2, 'd3 };
localparam logic signed [7:0] ARRI[3] = '{ 'd4, -'d5, 'd6 };

//------------------------------------------------------------------------------
// Method process: const_cond_stmt (test_const_static_mem.cpp:59:5) 

always_comb 
begin : const_cond_stmt     // test_const_static_mem.cpp:59:5
    integer j;
    j = 4'd1;
    `ifndef INTEL_SVA_OFF
        assert (j == 1) else $error("Assertion failed at test_const_static_mem.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    j = 4'd2;
    `ifndef INTEL_SVA_OFF
        assert (j == 2) else $error("Assertion failed at test_const_static_mem.cpp:56:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: const_method (test_const_static_mem.cpp:76:5) 

always_comb 
begin : const_method     // test_const_static_mem.cpp:76:5
    integer a;
    integer unsigned TMP_0;
    integer unsigned b;
    a = B;
    a = 32'(BB);
    `ifndef INTEL_SVA_OFF
        assert (a == -7'sd43) else $error("Assertion failed at test_const_static_mem.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    a = BBB;
    `ifndef INTEL_SVA_OFF
        assert (a == 43) else $error("Assertion failed at test_const_static_mem.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    a = ARR[1];
    `ifndef INTEL_SVA_OFF
        assert (a == 2) else $error("Assertion failed at test_const_static_mem.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    a = ARRI[1];
    `ifndef INTEL_SVA_OFF
        assert (a == -4'sd5) else $error("Assertion failed at test_const_static_mem.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    // Call getvar() begin
    TMP_0 = C;
    // Call getvar() end
    a = TMP_0;
    b = a + signed'({1'b0, C});
    `ifndef INTEL_SVA_OFF
        assert (b == 2) else $error("Assertion failed at test_const_static_mem.cpp:56:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: const_record_method (test_const_static_mem.cpp:97:5) 

always_comb 
begin : const_record_method     // test_const_static_mem.cpp:97:5
    logic a;
    logic [3:0] b;
    logic rec_a;
    logic [3:0] rec_b;
    integer j;
    a = 1; b = 1;
    rec_a = a;
    rec_b = b;
    j = rec_b + mrec1_b;
    `ifndef INTEL_SVA_OFF
        assert (j == 5) else $error("Assertion failed at test_const_static_mem.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    j = rec_b;
    `ifndef INTEL_SVA_OFF
        assert (j == 1) else $error("Assertion failed at test_const_static_mem.cpp:56:24>");
    `endif // INTEL_SVA_OFF
    j = mrec1_b;
    `ifndef INTEL_SVA_OFF
        assert (j == 4) else $error("Assertion failed at test_const_static_mem.cpp:56:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Clocked THREAD: const_record_thread (test_const_static_mem.cpp:112:5) 

// Thread-local constants
logic [3:0] rec_b0;

// Next-state combinational logic
always_comb begin : const_record_thread_comb     // test_const_static_mem.cpp:112:5
    const_record_thread_func;
end
function void const_record_thread_func;
    logic rec_a;
    integer j;
    j = rec_b0 + mrec2_b;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : const_record_thread_ff
    if ( ~nrst ) begin
        logic a;
        logic [3:0] b;
        logic rec_a;
        a = 0; b = 1;
        rec_a = a;
        rec_b0 = b;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: const_record_thread2 (test_const_static_mem.cpp:124:5) 

// Thread-local constants
logic [3:0] rec_b1;

// Next-state combinational logic
always_comb begin : const_record_thread2_comb     // test_const_static_mem.cpp:124:5
    const_record_thread2_func;
end
function void const_record_thread2_func;
    logic rec_a;
    integer j;
    j = rec_b1 + B;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : const_record_thread2_ff
    if ( ~nrst ) begin
        logic a;
        logic [3:0] b;
        logic rec_a;
        a = 1; b = 2;
        rec_a = a;
        rec_b1 = b;
    end
    else begin
    end
end

endmodule


