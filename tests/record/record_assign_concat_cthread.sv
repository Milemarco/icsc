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
module A // "a"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rstn;

//------------------------------------------------------------------------------
// Clocked THREAD: record_assign1 (test_assign_concat_cthread.cpp:45:5) 

// Thread-local variables
logic s_a;
logic s_a_next;
logic signed [31:0] s_b;
logic signed [31:0] s_b_next;

// Next-state combinational logic
always_comb begin : record_assign1_comb     // test_assign_concat_cthread.cpp:45:5
    record_assign1_func;
end
function void record_assign1_func;
    logic r_a;
    integer r_b;
    s_a_next = s_a;
    s_b_next = s_b;
    r_a = s_a_next; r_b = s_b_next;
    r_a = s_a_next; r_b = s_b_next;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_assign1_ff
    if ( ~rstn ) begin
        s_a <= 1;
        s_b <= 42;
    end
    else begin
        s_a <= s_a_next;
        s_b <= s_b_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: record_assign2 (test_assign_concat_cthread.cpp:60:5) 

// Next-state combinational logic
always_comb begin : record_assign2_comb     // test_assign_concat_cthread.cpp:60:5
    record_assign2_func;
end
function void record_assign2_func;
    logic s_a_1;
    integer s_b_1;
    logic r_a;
    integer r_b;
    r_a = s_a_1; r_b = s_b_1;
    s_a_1 = r_a; s_b_1 = r_b;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_assign2_ff
    if ( ~rstn ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: record_concat_reg (test_assign_concat_cthread.cpp:89:5) 

// Thread-local variables
logic x_a;
logic x_a_next;
logic signed [31:0] x_b;
logic signed [31:0] x_b_next;

// Next-state combinational logic
always_comb begin : record_concat_reg_comb     // test_assign_concat_cthread.cpp:89:5
    record_concat_reg_func;
end
function void record_concat_reg_func;
    logic y_a;
    integer y_b;
    x_a_next = x_a;
    x_b_next = x_b;
    y_b = {1'(x_a_next), 2'(x_b_next)};
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_concat_reg_ff
    if ( ~rstn ) begin
        x_b <= 42;
    end
    else begin
        x_a <= x_a_next;
        x_b <= x_b_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: record_concat_comb (test_assign_concat_cthread.cpp:102:5) 

// Next-state combinational logic
always_comb begin : record_concat_comb_comb     // test_assign_concat_cthread.cpp:102:5
    record_concat_comb_func;
end
function void record_concat_comb_func;
    logic z_a;
    integer z_b;
    logic f_a;
    integer f_b;
    f_b = 42;
    z_b = {1'(f_a), 2'(f_b)};
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : record_concat_comb_ff
    if ( ~rstn ) begin
    end
    else begin
    end
end

endmodule


