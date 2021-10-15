//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.1
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: top ()
//
module top // "top_inst"
(
    input logic clk
);

// Variables generated for SystemC signals
logic arstn;
logic signed [31:0] s10;
logic signed [31:0] s0;
logic signed [31:0] s1;
logic signed [31:0] s2;
logic signed [31:0] s3;

//------------------------------------------------------------------------------
// Clocked THREAD: read_modify_nonreg (test_cthread_reset_fail.cpp:44:5) 

// Thread-local variables
logic signed [31:0] s10_next;
logic signed [31:0] mm;
logic signed [31:0] pp;

// Next-state combinational logic
always_comb begin : read_modify_nonreg_comb     // test_cthread_reset_fail.cpp:44:5
    read_modify_nonreg_func;
end
function void read_modify_nonreg_func;
    s10_next = s10;
    s10_next = 0;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : read_modify_nonreg_ff
    if ( ~arstn ) begin
        integer mm;
        integer pp;
        mm = 0;
        mm++;
        pp = 42;
        pp = pp + 1;
        s10 <= mm + pp;
    end
    else begin
        s10 <= s10_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: read_modify_reg_in_reset (test_cthread_reset_fail.cpp:64:5) 

// Thread-local variables
logic signed [31:0] m;
logic signed [31:0] m_next;
logic signed [31:0] i;
logic signed [31:0] i_next;
logic signed [31:0] p;
logic signed [31:0] p_next;
logic signed [31:0] n;
logic signed [31:0] n_next;
logic [1:0] x;
logic [1:0] x_next;
logic signed [31:0] s2_next;

// Next-state combinational logic
always_comb begin : read_modify_reg_in_reset_comb     // test_cthread_reset_fail.cpp:64:5
    read_modify_reg_in_reset_func;
end
function void read_modify_reg_in_reset_func;
    i_next = i;
    m_next = m;
    n_next = n;
    p_next = p;
    s2_next = s2;
    x_next = x;
    s2_next = i_next + m_next + p_next + n_next + x_next;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : read_modify_reg_in_reset_ff
    if ( ~arstn ) begin
        integer j;
        j = 1;
        j++;
        j = j + 2;
        s0 <= j;
        i <= 1;
        i++;
        i <= i + 2;
        x <= 0;
        x++;
        x <= x + 2;
        i <= 2;
        m <= 42;
        p <= 43;
        n <= 44;
        s1 <= 0;
        for (integer k = 0; k < i; ++k)
        begin
            s0 <= k;
        end
        s1 <= i;
        s1 <= i;
        s1 <= 1 + i;
        s1 <= 1;
        s1 <= 0 || |i;
        s1 <= m;
        s1 <= n;
        s1 <= n;
        s1 <= p;
        s1 <= p;
    end
    else begin
        m <= m_next;
        i <= i_next;
        p <= p_next;
        n <= n_next;
        x <= x_next;
        s2 <= s2_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: read_modify_arr_in_reset (test_cthread_reset_fail.cpp:117:5) 

// Thread-local variables
logic signed [31:0] s3_next;
logic signed [31:0] marr[3];
logic signed [31:0] marr_next[3];
logic signed [31:0] arr2[3];
logic signed [31:0] arr2_next[3];

// Next-state combinational logic
always_comb begin : read_modify_arr_in_reset_comb     // test_cthread_reset_fail.cpp:117:5
    read_modify_arr_in_reset_func;
end
function void read_modify_arr_in_reset_func;
    arr2_next = arr2;
    marr_next = marr;
    s3_next = s3;
    s3_next = arr2_next[s0] + marr_next[s1];
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : read_modify_arr_in_reset_ff
    if ( ~arstn ) begin
        integer arr1[3];
        arr1[0] = 1; arr1[1] = 2; arr1[2] = 3;
        arr1[0]++;
        arr2[0] <= 1; arr2[1] <= 2; arr2[2] <= 0;
        arr2[2] <= arr1[0];
        arr2[0] <= 42;
        arr2[0]++;
        arr2[0] <= arr2[0] + 1;
        marr[0] <= 42;
        marr[1] <= 42 + arr1[0];
        marr[0]++;
        marr[0] <= marr[0] + 1;
        s3 <= arr2[1];
        s3 <= marr[0];
    end
    else begin
        s3 <= s3_next;
        marr <= marr_next;
        arr2 <= arr2_next;
    end
end

endmodule


