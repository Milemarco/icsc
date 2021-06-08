//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.24
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: top ()
//
module top // "top_inst"
(
);

// Variables generated for SystemC signals
logic clk;
logic arstn;
logic signed [31:0] in;
logic signed [31:0] out;

// Local parameters generated for C++ constants
localparam logic [6:0] e = 'd42;

//------------------------------------------------------------------------------
// Clocked THREAD: comb_var_not_changed (test_cthread_comb_var.cpp:102:5) 

// Thread-local variables
logic [2:0] popIndx;
logic [2:0] popIndx_next;
logic [1:0] arr[2];
logic [1:0] arr_next[2];
logic signed [31:0] out_next;

// Next-state combinational logic
always_comb begin : comb_var_not_changed_comb     // test_cthread_comb_var.cpp:102:5
    comb_var_not_changed_func;
end
function void comb_var_not_changed_func;
    arr_next = arr;
    out_next = out;
    popIndx_next = popIndx;
    out_next = arr_next[popIndx_next];
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_var_not_changed_ff
    if ( ~arstn ) begin
        popIndx <= 0;
    end
    else begin
        popIndx <= popIndx_next;
        arr <= arr_next;
        out <= out_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_var_not_changed1 (test_cthread_comb_var.cpp:114:5) 

// Thread-local variables
logic [2:0] popIndx2;
logic [2:0] popIndx2_next;
logic [1:0] arr1[2];
logic [1:0] arr1_next[2];
logic signed [31:0] out_next0;

// Next-state combinational logic
always_comb begin : comb_var_not_changed1_comb     // test_cthread_comb_var.cpp:114:5
    comb_var_not_changed1_func;
end
function void comb_var_not_changed1_func;
    arr1_next = arr1;
    out_next0 = out;
    popIndx2_next = popIndx2;
    out_next0 = arr1_next[popIndx2_next];
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_var_not_changed1_ff
    if ( ~arstn ) begin
        popIndx2 <= 0;
    end
    else begin
        popIndx2 <= popIndx2_next;
        arr1 <= arr1_next;
        out <= out_next0;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_var_in_reset0 (test_cthread_comb_var.cpp:126:5) 

// Thread-local variables
logic [2:0] a;

// Next-state combinational logic
always_comb begin : comb_var_in_reset0_comb     // test_cthread_comb_var.cpp:126:5
    comb_var_in_reset0_func;
end
function void comb_var_in_reset0_func;
    a = 3;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_var_in_reset0_ff
    if ( ~arstn ) begin
        logic [2:0] a;
        a = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_var_in_reset0a (test_cthread_comb_var.cpp:139:5) 

// Thread-local variables
logic [2:0] a1;
logic [1:0] comb_var_in_reset0a_PROC_STATE;
logic [1:0] comb_var_in_reset0a_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : comb_var_in_reset0a_comb     // test_cthread_comb_var.cpp:139:5
    comb_var_in_reset0a_func;
end
function void comb_var_in_reset0a_func;
    comb_var_in_reset0a_PROC_STATE_next = comb_var_in_reset0a_PROC_STATE;
    
    case (comb_var_in_reset0a_PROC_STATE)
        0: begin
            a1 = 3;
            comb_var_in_reset0a_PROC_STATE_next = 1; return;    // test_cthread_comb_var.cpp:146:13;
        end
        1: begin
            a1 = 4;
            comb_var_in_reset0a_PROC_STATE_next = 2; return;    // test_cthread_comb_var.cpp:149:13;
        end
        2: begin
            a1 = 3;
            comb_var_in_reset0a_PROC_STATE_next = 1; return;    // test_cthread_comb_var.cpp:146:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_var_in_reset0a_ff
    if ( ~arstn ) begin
        logic [2:0] a1;
        a1 = 0;
        comb_var_in_reset0a_PROC_STATE <= 0;    // test_cthread_comb_var.cpp:142:9;
    end
    else begin
        comb_var_in_reset0a_PROC_STATE <= comb_var_in_reset0a_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_var_in_reset1 (test_cthread_comb_var.cpp:154:5) 

// Thread-local variables
logic [3:0] b;

// Next-state combinational logic
always_comb begin : comb_var_in_reset1_comb     // test_cthread_comb_var.cpp:154:5
    comb_var_in_reset1_func;
end
function void comb_var_in_reset1_func;
    b = 3;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_var_in_reset1_ff
    if ( ~arstn ) begin
        logic [3:0] b;
        b = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_var_in_reset1a (test_cthread_comb_var.cpp:166:5) 

// Thread-local variables
logic [3:0] b1;
logic comb_var_in_reset1a_PROC_STATE;
logic comb_var_in_reset1a_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : comb_var_in_reset1a_comb     // test_cthread_comb_var.cpp:166:5
    comb_var_in_reset1a_func;
end
function void comb_var_in_reset1a_func;
    comb_var_in_reset1a_PROC_STATE_next = comb_var_in_reset1a_PROC_STATE;
    
    case (comb_var_in_reset1a_PROC_STATE)
        0: begin
            b1 = 3;
            comb_var_in_reset1a_PROC_STATE_next = 1; return;    // test_cthread_comb_var.cpp:174:13;
        end
        1: begin
            b1 = 4;
            comb_var_in_reset1a_PROC_STATE_next = 0; return;    // test_cthread_comb_var.cpp:171:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_var_in_reset1a_ff
    if ( ~arstn ) begin
        logic [3:0] b1;
        b1 = 0;
        comb_var_in_reset1a_PROC_STATE <= 0;    // test_cthread_comb_var.cpp:171:13;
    end
    else begin
        comb_var_in_reset1a_PROC_STATE <= comb_var_in_reset1a_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_var_in_reset1b (test_cthread_comb_var.cpp:181:5) 

// Thread-local variables
logic [3:0] b2;
logic comb_var_in_reset1b_PROC_STATE;
logic comb_var_in_reset1b_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : comb_var_in_reset1b_comb     // test_cthread_comb_var.cpp:181:5
    comb_var_in_reset1b_func;
end
function void comb_var_in_reset1b_func;
    comb_var_in_reset1b_PROC_STATE_next = comb_var_in_reset1b_PROC_STATE;
    
    case (comb_var_in_reset1b_PROC_STATE)
        0: begin
            b2 = 3;
            comb_var_in_reset1b_PROC_STATE_next = 1; return;    // test_cthread_comb_var.cpp:189:13;
        end
        1: begin
            comb_var_in_reset1b_PROC_STATE_next = 0; return;    // test_cthread_comb_var.cpp:186:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_var_in_reset1b_ff
    if ( ~arstn ) begin
        logic [3:0] b2;
        b2 = 0;
        comb_var_in_reset1b_PROC_STATE <= 0;    // test_cthread_comb_var.cpp:186:13;
    end
    else begin
        comb_var_in_reset1b_PROC_STATE <= comb_var_in_reset1b_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_var_in_reset2 (test_cthread_comb_var.cpp:194:5) 

// Thread-local variables
logic [4:0] c;

// Next-state combinational logic
always_comb begin : comb_var_in_reset2_comb     // test_cthread_comb_var.cpp:194:5
    comb_var_in_reset2_func;
end
function void comb_var_in_reset2_func;
    c = 3;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_var_in_reset2_ff
    if ( ~arstn ) begin
        logic [4:0] c;
        c = 3;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_var_in_reset2a (test_cthread_comb_var.cpp:204:5) 

// Thread-local variables
logic [4:0] c1;
logic comb_var_in_reset2a_PROC_STATE;
logic comb_var_in_reset2a_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : comb_var_in_reset2a_comb     // test_cthread_comb_var.cpp:204:5
    comb_var_in_reset2a_func;
end
function void comb_var_in_reset2a_func;
    comb_var_in_reset2a_PROC_STATE_next = comb_var_in_reset2a_PROC_STATE;
    
    case (comb_var_in_reset2a_PROC_STATE)
        0: begin
            c1 = 4;
            comb_var_in_reset2a_PROC_STATE_next = 1; return;    // test_cthread_comb_var.cpp:211:13;
        end
        1: begin
            c1 = 3;
            comb_var_in_reset2a_PROC_STATE_next = 0; return;    // test_cthread_comb_var.cpp:208:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_var_in_reset2a_ff
    if ( ~arstn ) begin
        logic [4:0] c1;
        c1 = 3;
        comb_var_in_reset2a_PROC_STATE <= 0;    // test_cthread_comb_var.cpp:208:13;
    end
    else begin
        comb_var_in_reset2a_PROC_STATE <= comb_var_in_reset2a_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_var_in_reset3 (test_cthread_comb_var.cpp:216:5) 

// Thread-local variables
logic [5:0] d;

// Next-state combinational logic
always_comb begin : comb_var_in_reset3_comb     // test_cthread_comb_var.cpp:216:5
    comb_var_in_reset3_func;
end
function void comb_var_in_reset3_func;
    d = 3;
endfunction

// Syncrhonous register update
always_ff @(posedge clk) 
begin : comb_var_in_reset3_ff
    begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_var_in_reset3a (test_cthread_comb_var.cpp:226:5) 

// Thread-local variables
logic [5:0] d1;

// Next-state combinational logic
always_comb begin : comb_var_in_reset3a_comb     // test_cthread_comb_var.cpp:226:5
    comb_var_in_reset3a_func;
end
function void comb_var_in_reset3a_func;
    d1 = 3;
    if (|in)
    begin
        d1 = 4;
    end
endfunction

// Syncrhonous register update
always_ff @(posedge clk) 
begin : comb_var_in_reset3a_ff
    begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: loc_comb_var_in_reset (test_cthread_comb_var.cpp:235:5) 

// Next-state combinational logic
always_comb begin : loc_comb_var_in_reset_comb     // test_cthread_comb_var.cpp:235:5
    loc_comb_var_in_reset_func;
end
function void loc_comb_var_in_reset_func;
    integer lc;
    lc = 3;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : loc_comb_var_in_reset_ff
    if ( ~arstn ) begin
        integer lc;
        lc = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: readonly_var_in_reset (test_cthread_comb_var.cpp:247:5) 

// Next-state combinational logic
always_comb begin : readonly_var_in_reset_comb     // test_cthread_comb_var.cpp:247:5
    readonly_var_in_reset_func;
end
function void readonly_var_in_reset_func;
    integer lc;
    lc = e + 1;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : readonly_var_in_reset_ff
    if ( ~arstn ) begin
        integer lc;
        lc = e;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: readonly_var_in_reset2 (test_cthread_comb_var.cpp:259:5) 

// Thread-local variables
logic [7:0] f;
logic [7:0] f_next;

// Next-state combinational logic
always_comb begin : readonly_var_in_reset2_comb     // test_cthread_comb_var.cpp:259:5
    readonly_var_in_reset2_func;
end
function void readonly_var_in_reset2_func;
    integer lc;
    f_next = f;
    lc = f_next + 1;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : readonly_var_in_reset2_ff
    if ( ~arstn ) begin
        integer lc;
        f <= 43;
        lc = f;
    end
    else begin
        f <= f_next;
    end
end

endmodule


