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
module A // "a_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rstn;
logic signed [31:0] s;

//------------------------------------------------------------------------------
// Method process: var1 (test_init_local_var.cpp:38:5) 

always_comb 
begin : var1     // test_init_local_var.cpp:38:5
    logic a;
    integer i;
    logic [3:0] x;
    logic aa;
    integer ii;
    integer sum;
    logic b;
    integer j;
    a = 0;
    i = 0;
    x = 0;
    aa = 1;
    ii = 42;
    sum = a + i + aa + ii + signed'({1'b0, x});
    if (|s)
    begin
        b = 0;
        j = 0;
        sum = b + j;
    end
end

//------------------------------------------------------------------------------
// Method process: var1_unused (test_init_local_var.cpp:55:5) 

always_comb 
begin : var1_unused     // test_init_local_var.cpp:55:5
    logic a;
    integer i;
    logic [3:0] x;
    logic aa;
    integer ii;
    logic b;
    integer j;
    a = 0;
    i = 0;
    x = 0;
    aa = 1;
    ii = 42;
    if (|s)
    begin
        b = 0;
        j = 0;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: var2 (test_init_local_var.cpp:71:5) 

// Thread-local variables
logic b0;
logic b_next;
logic d;
logic d_next;
logic signed [31:0] sum0;
logic signed [31:0] sum_next;
logic signed [63:0] n;
logic signed [63:0] n_next;
logic var2_PROC_STATE;
logic var2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : var2_comb     // test_init_local_var.cpp:71:5
    var2_func;
end
function void var2_func;
    logic c;
    integer unsigned k;
    logic d_1;
    logic signed [63:0] n_1;
    b_next = b0;
    d_next = d;
    n_next = n;
    sum_next = sum0;
    var2_PROC_STATE_next = var2_PROC_STATE;
    
    case (var2_PROC_STATE)
        0: begin
            c = 0;
            k = 0;
            if (|s)
            begin
                d_1 = 0;
                n_1 = 0;
                sum_next = d_1 + n_1;
            end
            d_next = 0;
            n_next = 0;
            sum_next = b_next + c + signed'({1'b0, k});
            var2_PROC_STATE_next = 1; return;    // test_init_local_var.cpp:97:13;
        end
        1: begin
            sum_next = sum_next + d_next + n_next;
            c = 0;
            k = 0;
            if (|s)
            begin
                d_1 = 0;
                n_1 = 0;
                sum_next = d_1 + n_1;
            end
            d_next = 0;
            n_next = 0;
            sum_next = b_next + c + signed'({1'b0, k});
            var2_PROC_STATE_next = 1; return;    // test_init_local_var.cpp:97:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : var2_ff
    if ( ~rstn ) begin
        logic bb;
        integer jj;
        integer jjj;
        logic [3:0] y;
        b0 <= 0;
        bb = 1;
        jj = 0;
        jjj = 42;
        y = jjj + jj + 1;
        sum0 <= 0;
        var2_PROC_STATE <= 0;    // test_init_local_var.cpp:79:9;
    end
    else begin
        b0 <= b_next;
        d <= d_next;
        sum0 <= sum_next;
        n <= n_next;
        var2_PROC_STATE <= var2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: var2_unused (test_init_local_var.cpp:103:5) 

// Next-state combinational logic
always_comb begin : var2_unused_comb     // test_init_local_var.cpp:103:5
    var2_unused_func;
end
function void var2_unused_func;
    logic d_1;
    logic signed [63:0] n_1;
    if (|s)
    begin
        d_1 = 0;
        n_1 = 0;
    end
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : var2_unused_ff
    if ( ~rstn ) begin
    end
    else begin
    end
end

endmodule


