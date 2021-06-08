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
    input logic clk
);

// Variables generated for SystemC signals
logic arst;
logic signed [31:0] in;
logic signed [31:0] a;
logic signed [31:0] b;

//------------------------------------------------------------------------------
// Clocked THREAD: continue_in_for_wait0 (test_continue.cpp:58:5) 

// Thread-local variables
logic signed [31:0] i;
logic signed [31:0] i_next;
logic [1:0] continue_in_for_wait0_PROC_STATE;
logic [1:0] continue_in_for_wait0_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : continue_in_for_wait0_comb     // test_continue.cpp:58:5
    continue_in_for_wait0_func;
end
function void continue_in_for_wait0_func;
    integer k;
    i_next = i;
    continue_in_for_wait0_PROC_STATE_next = continue_in_for_wait0_PROC_STATE;
    
    case (continue_in_for_wait0_PROC_STATE)
        0: begin
            i_next = 0;
            if (in > 1)
            begin
                k = 1;
                continue_in_for_wait0_PROC_STATE_next = 1; return;    // test_continue.cpp:68:21;
            end
            k = 2;
            continue_in_for_wait0_PROC_STATE_next = 2; return;    // test_continue.cpp:75:17;
        end
        1: begin
            // continue begin
            i_next++;
            if (i_next < 3)
            begin
                if (in > 1)
                begin
                    k = 1;
                    continue_in_for_wait0_PROC_STATE_next = 1; return;    // test_continue.cpp:68:21;
                end
                k = 2;
                continue_in_for_wait0_PROC_STATE_next = 2; return;    // test_continue.cpp:75:17;
            end
            k = 3;
            continue_in_for_wait0_PROC_STATE_next = 3; return;    // test_continue.cpp:79:13;
            // continue end
        end
        2: begin
            i_next++;
            if (i_next < 3)
            begin
                if (in > 1)
                begin
                    k = 1;
                    continue_in_for_wait0_PROC_STATE_next = 1; return;    // test_continue.cpp:68:21;
                end
                k = 2;
                continue_in_for_wait0_PROC_STATE_next = 2; return;    // test_continue.cpp:75:17;
            end
            k = 3;
            continue_in_for_wait0_PROC_STATE_next = 3; return;    // test_continue.cpp:79:13;
        end
        3: begin
            i_next = 0;
            if (in > 1)
            begin
                k = 1;
                continue_in_for_wait0_PROC_STATE_next = 1; return;    // test_continue.cpp:68:21;
            end
            k = 2;
            continue_in_for_wait0_PROC_STATE_next = 2; return;    // test_continue.cpp:75:17;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arst) 
begin : continue_in_for_wait0_ff
    if ( ~arst ) begin
        integer k;
        k = 0;
        continue_in_for_wait0_PROC_STATE <= 0;    // test_continue.cpp:61:9;
    end
    else begin
        i <= i_next;
        continue_in_for_wait0_PROC_STATE <= continue_in_for_wait0_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: continue_in_for_wait1 (test_continue.cpp:84:5) 

// Thread-local variables
logic signed [31:0] i0;
logic signed [31:0] i_next0;
logic [1:0] continue_in_for_wait1_PROC_STATE;
logic [1:0] continue_in_for_wait1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : continue_in_for_wait1_comb     // test_continue.cpp:84:5
    continue_in_for_wait1_func;
end
function void continue_in_for_wait1_func;
    integer k;
    i_next0 = i0;
    continue_in_for_wait1_PROC_STATE_next = continue_in_for_wait1_PROC_STATE;
    
    case (continue_in_for_wait1_PROC_STATE)
        0: begin
            i_next0 = 0;
            k = 1;
            continue_in_for_wait1_PROC_STATE_next = 1; return;    // test_continue.cpp:93:17;
        end
        1: begin
            if (in > 1)
            begin
                k = 2;
                // continue begin
                i_next0++;
                if (i_next0 < 3)
                begin
                    k = 1;
                    continue_in_for_wait1_PROC_STATE_next = 1; return;    // test_continue.cpp:93:17;
                end
                continue_in_for_wait1_PROC_STATE_next = 2; return;    // test_continue.cpp:102:13;
                // continue end
            end
            k = 3;
            i_next0++;
            if (i_next0 < 3)
            begin
                k = 1;
                continue_in_for_wait1_PROC_STATE_next = 1; return;    // test_continue.cpp:93:17;
            end
            continue_in_for_wait1_PROC_STATE_next = 2; return;    // test_continue.cpp:102:13;
        end
        2: begin
            i_next0 = 0;
            k = 1;
            continue_in_for_wait1_PROC_STATE_next = 1; return;    // test_continue.cpp:93:17;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arst) 
begin : continue_in_for_wait1_ff
    if ( ~arst ) begin
        integer k;
        k = 0;
        continue_in_for_wait1_PROC_STATE <= 0;    // test_continue.cpp:87:9;
    end
    else begin
        i0 <= i_next0;
        continue_in_for_wait1_PROC_STATE <= continue_in_for_wait1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: continue_in_for_wait2 (test_continue.cpp:107:5) 

// Thread-local variables
logic signed [31:0] i1;
logic signed [31:0] i_next1;
logic [1:0] continue_in_for_wait2_PROC_STATE;
logic [1:0] continue_in_for_wait2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : continue_in_for_wait2_comb     // test_continue.cpp:107:5
    continue_in_for_wait2_func;
end
function void continue_in_for_wait2_func;
    integer k;
    i_next1 = i1;
    continue_in_for_wait2_PROC_STATE_next = continue_in_for_wait2_PROC_STATE;
    
    case (continue_in_for_wait2_PROC_STATE)
        0: begin
            i_next1 = 0;
            if (in > 1)
            begin
                continue_in_for_wait2_PROC_STATE_next = 1; return;    // test_continue.cpp:116:21;
            end else begin
                continue_in_for_wait2_PROC_STATE_next = 2; return;    // test_continue.cpp:119:21;
            end
        end
        1: begin
            k = 2;
            k = 1;
            i_next1++;
            if (i_next1 < 3)
            begin
                if (in > 1)
                begin
                    continue_in_for_wait2_PROC_STATE_next = 1; return;    // test_continue.cpp:116:21;
                end else begin
                    continue_in_for_wait2_PROC_STATE_next = 2; return;    // test_continue.cpp:119:21;
                end
            end
            k = 3;
            continue_in_for_wait2_PROC_STATE_next = 3; return;    // test_continue.cpp:126:13;
        end
        2: begin
            // continue begin
            i_next1++;
            if (i_next1 < 3)
            begin
                if (in > 1)
                begin
                    continue_in_for_wait2_PROC_STATE_next = 1; return;    // test_continue.cpp:116:21;
                end else begin
                    continue_in_for_wait2_PROC_STATE_next = 2; return;    // test_continue.cpp:119:21;
                end
            end
            k = 3;
            continue_in_for_wait2_PROC_STATE_next = 3; return;    // test_continue.cpp:126:13;
            // continue end
        end
        3: begin
            i_next1 = 0;
            if (in > 1)
            begin
                continue_in_for_wait2_PROC_STATE_next = 1; return;    // test_continue.cpp:116:21;
            end else begin
                continue_in_for_wait2_PROC_STATE_next = 2; return;    // test_continue.cpp:119:21;
            end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arst) 
begin : continue_in_for_wait2_ff
    if ( ~arst ) begin
        integer k;
        k = 0;
        continue_in_for_wait2_PROC_STATE <= 0;    // test_continue.cpp:110:9;
    end
    else begin
        i1 <= i_next1;
        continue_in_for_wait2_PROC_STATE <= continue_in_for_wait2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: continue_in_for_wait3 (test_continue.cpp:131:5) 

// Thread-local variables
logic signed [31:0] j;
logic signed [31:0] j_next;
logic signed [31:0] i2;
logic signed [31:0] i_next2;
logic [1:0] continue_in_for_wait3_PROC_STATE;
logic [1:0] continue_in_for_wait3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : continue_in_for_wait3_comb     // test_continue.cpp:131:5
    continue_in_for_wait3_func;
end
function void continue_in_for_wait3_func;
    integer k;
    i_next2 = i2;
    j_next = j;
    continue_in_for_wait3_PROC_STATE_next = continue_in_for_wait3_PROC_STATE;
    
    case (continue_in_for_wait3_PROC_STATE)
        0: begin
            i_next2 = 0;
            j_next = 0;
            k = 1;
            continue_in_for_wait3_PROC_STATE_next = 1; return;    // test_continue.cpp:141:21;
        end
        1: begin
            if (in > 1)
            begin
                k = 2;
                continue_in_for_wait3_PROC_STATE_next = 2; return;    // test_continue.cpp:146:25;
            end
            if (in > 2)
            begin
                k = 3;
                // continue begin
                j_next++;
                if (j_next < 2)
                begin
                    k = 1;
                    continue_in_for_wait3_PROC_STATE_next = 1; return;    // test_continue.cpp:141:21;
                end
                i_next2++;
                if (i_next2 < 3)
                begin
                    j_next = 0;
                    k = 1;
                    continue_in_for_wait3_PROC_STATE_next = 1; return;    // test_continue.cpp:141:21;
                end
                k = 4;
                continue_in_for_wait3_PROC_STATE_next = 3; return;    // test_continue.cpp:158:13;
                // continue end
            end
            j_next++;
            if (j_next < 2)
            begin
                k = 1;
                continue_in_for_wait3_PROC_STATE_next = 1; return;    // test_continue.cpp:141:21;
            end
            i_next2++;
            if (i_next2 < 3)
            begin
                j_next = 0;
                k = 1;
                continue_in_for_wait3_PROC_STATE_next = 1; return;    // test_continue.cpp:141:21;
            end
            k = 4;
            continue_in_for_wait3_PROC_STATE_next = 3; return;    // test_continue.cpp:158:13;
        end
        2: begin
            if (in > 2)
            begin
                k = 3;
                // continue begin
                j_next++;
                if (j_next < 2)
                begin
                    k = 1;
                    continue_in_for_wait3_PROC_STATE_next = 1; return;    // test_continue.cpp:141:21;
                end
                i_next2++;
                if (i_next2 < 3)
                begin
                    j_next = 0;
                    k = 1;
                    continue_in_for_wait3_PROC_STATE_next = 1; return;    // test_continue.cpp:141:21;
                end
                k = 4;
                continue_in_for_wait3_PROC_STATE_next = 3; return;    // test_continue.cpp:158:13;
                // continue end
            end
            j_next++;
            if (j_next < 2)
            begin
                k = 1;
                continue_in_for_wait3_PROC_STATE_next = 1; return;    // test_continue.cpp:141:21;
            end
            i_next2++;
            if (i_next2 < 3)
            begin
                j_next = 0;
                k = 1;
                continue_in_for_wait3_PROC_STATE_next = 1; return;    // test_continue.cpp:141:21;
            end
            k = 4;
            continue_in_for_wait3_PROC_STATE_next = 3; return;    // test_continue.cpp:158:13;
        end
        3: begin
            i_next2 = 0;
            j_next = 0;
            k = 1;
            continue_in_for_wait3_PROC_STATE_next = 1; return;    // test_continue.cpp:141:21;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arst) 
begin : continue_in_for_wait3_ff
    if ( ~arst ) begin
        integer k;
        k = 0;
        continue_in_for_wait3_PROC_STATE <= 0;    // test_continue.cpp:134:9;
    end
    else begin
        j <= j_next;
        i2 <= i_next2;
        continue_in_for_wait3_PROC_STATE <= continue_in_for_wait3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: continue_break_exit1 (test_continue.cpp:165:5) 

// Thread-local variables
logic signed [31:0] k0;
logic signed [31:0] k_next;
logic continue_break_exit1_PROC_STATE;
logic continue_break_exit1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : continue_break_exit1_comb     // test_continue.cpp:165:5
    continue_break_exit1_func;
end
function void continue_break_exit1_func;
    k_next = k0;
    continue_break_exit1_PROC_STATE_next = continue_break_exit1_PROC_STATE;
    
    case (continue_break_exit1_PROC_STATE)
        0: begin
            k_next = 0;
            continue_break_exit1_PROC_STATE_next = 1; return;    // test_continue.cpp:172:17;
        end
        1: begin
            k_next = k_next + 1;
            if (|a)
            begin
                // break begin
                k_next = 1;
                k_next = 0;
                continue_break_exit1_PROC_STATE_next = 1; return;    // test_continue.cpp:172:17;
                // break end
            end else begin
                // continue begin
                continue_break_exit1_PROC_STATE_next = 1; return;    // test_continue.cpp:172:17;
                // continue end
            end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arst) 
begin : continue_break_exit1_ff
    if ( ~arst ) begin
        k0 <= 0;
        continue_break_exit1_PROC_STATE <= 0;    // test_continue.cpp:167:9;
    end
    else begin
        k0 <= k_next;
        continue_break_exit1_PROC_STATE <= continue_break_exit1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: continue_break_exit2 (test_continue.cpp:187:5) 

// Thread-local variables
logic signed [31:0] k1;
logic signed [31:0] k_next0;
logic [1:0] continue_break_exit2_PROC_STATE;
logic [1:0] continue_break_exit2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : continue_break_exit2_comb     // test_continue.cpp:187:5
    continue_break_exit2_func;
end
function void continue_break_exit2_func;
    k_next0 = k1;
    continue_break_exit2_PROC_STATE_next = continue_break_exit2_PROC_STATE;
    
    case (continue_break_exit2_PROC_STATE)
        0: begin
            k_next0 = 0;
            if (|a)
            begin
            end else begin
                // break begin
                continue_break_exit2_PROC_STATE_next = 2; return;    // test_continue.cpp:205:13;
                // break end
            end
            continue_break_exit2_PROC_STATE_next = 1; return;    // test_continue.cpp:199:17;
        end
        1: begin
            k_next0 = k_next0 + 1;
            if (|b)
            begin
                // continue begin
                if (|a)
                begin
                end else begin
                    // break begin
                    continue_break_exit2_PROC_STATE_next = 2; return;    // test_continue.cpp:205:13;
                    // break end
                end
                continue_break_exit2_PROC_STATE_next = 1; return;    // test_continue.cpp:199:17;
                // continue end
            end
            if (|a)
            begin
            end else begin
                // break begin
                continue_break_exit2_PROC_STATE_next = 2; return;    // test_continue.cpp:205:13;
                // break end
            end
            continue_break_exit2_PROC_STATE_next = 1; return;    // test_continue.cpp:199:17;
        end
        2: begin
            k_next0 = 1;
            k_next0 = 0;
            if (|a)
            begin
            end else begin
                // break begin
                continue_break_exit2_PROC_STATE_next = 2; return;    // test_continue.cpp:205:13;
                // break end
            end
            continue_break_exit2_PROC_STATE_next = 1; return;    // test_continue.cpp:199:17;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arst) 
begin : continue_break_exit2_ff
    if ( ~arst ) begin
        k1 <= 0;
        continue_break_exit2_PROC_STATE <= 0;    // test_continue.cpp:189:9;
    end
    else begin
        k1 <= k_next0;
        continue_break_exit2_PROC_STATE <= continue_break_exit2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: continue_in_while_wait1 (test_continue.cpp:212:5) 

// Thread-local variables
logic signed [31:0] i3;
logic signed [31:0] i_next3;
logic [1:0] continue_in_while_wait1_PROC_STATE;
logic [1:0] continue_in_while_wait1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : continue_in_while_wait1_comb     // test_continue.cpp:212:5
    continue_in_while_wait1_func;
end
function void continue_in_while_wait1_func;
    integer k;
    i_next3 = i3;
    continue_in_while_wait1_PROC_STATE_next = continue_in_while_wait1_PROC_STATE;
    
    case (continue_in_while_wait1_PROC_STATE)
        0: begin
            i_next3 = 0;
            if (in > 1)
            begin
                k = 1;
                continue_in_while_wait1_PROC_STATE_next = 1; return;    // test_continue.cpp:223:21;
            end
            i_next3++;
            continue_in_while_wait1_PROC_STATE_next = 2; return;    // test_continue.cpp:228:17;
        end
        1: begin
            // continue begin
            if (i_next3 < 3)
            begin
                if (in > 1)
                begin
                    k = 1;
                    continue_in_while_wait1_PROC_STATE_next = 1; return;    // test_continue.cpp:223:21;
                end
                i_next3++;
                continue_in_while_wait1_PROC_STATE_next = 2; return;    // test_continue.cpp:228:17;
            end
            k = 3;
            continue_in_while_wait1_PROC_STATE_next = 3; return;    // test_continue.cpp:232:13;
            // continue end
        end
        2: begin
            if (i_next3 < 3)
            begin
                if (in > 1)
                begin
                    k = 1;
                    continue_in_while_wait1_PROC_STATE_next = 1; return;    // test_continue.cpp:223:21;
                end
                i_next3++;
                continue_in_while_wait1_PROC_STATE_next = 2; return;    // test_continue.cpp:228:17;
            end
            k = 3;
            continue_in_while_wait1_PROC_STATE_next = 3; return;    // test_continue.cpp:232:13;
        end
        3: begin
            i_next3 = 0;
            if (in > 1)
            begin
                k = 1;
                continue_in_while_wait1_PROC_STATE_next = 1; return;    // test_continue.cpp:223:21;
            end
            i_next3++;
            continue_in_while_wait1_PROC_STATE_next = 2; return;    // test_continue.cpp:228:17;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arst) 
begin : continue_in_while_wait1_ff
    if ( ~arst ) begin
        integer k;
        k = 0;
        continue_in_while_wait1_PROC_STATE <= 0;    // test_continue.cpp:215:9;
    end
    else begin
        i3 <= i_next3;
        continue_in_while_wait1_PROC_STATE <= continue_in_while_wait1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: continue_in_while_wait2 (test_continue.cpp:237:5) 

// Thread-local variables
logic signed [31:0] i4;
logic signed [31:0] i_next4;
logic continue_in_while_wait2_PROC_STATE;
logic continue_in_while_wait2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : continue_in_while_wait2_comb     // test_continue.cpp:237:5
    continue_in_while_wait2_func;
end
function void continue_in_while_wait2_func;
    integer k;
    integer j_1;
    i_next4 = i4;
    continue_in_while_wait2_PROC_STATE_next = continue_in_while_wait2_PROC_STATE;
    
    case (continue_in_while_wait2_PROC_STATE)
        0: begin
            i_next4 = 0;
            k = 1;
            j_1 = 0;
            while (j_1 < i_next4)
            begin
                j_1++;
                if (|b)
                begin
                    continue;
                end
            end
            continue_in_while_wait2_PROC_STATE_next = 1; return;    // test_continue.cpp:252:17;
        end
        1: begin
            if (|a)
            begin
                k = 2;
                if (|b)
                begin
                    // continue begin
                    if (i_next4 < 3)
                    begin
                        k = 1;
                        j_1 = 0;
                        while (j_1 < i_next4)
                        begin
                            j_1++;
                            if (|b)
                            begin
                                continue;
                            end
                        end
                        continue_in_while_wait2_PROC_STATE_next = 1; return;    // test_continue.cpp:252:17;
                    end
                    k = 3;
                    i_next4 = 0;
                    k = 1;
                    j_1 = 0;
                    while (j_1 < i_next4)
                    begin
                        j_1++;
                        if (|b)
                        begin
                            continue;
                        end
                    end
                    continue_in_while_wait2_PROC_STATE_next = 1; return;    // test_continue.cpp:252:17;
                    // continue end
                end
            end
            i_next4++;
            if (i_next4 < 3)
            begin
                k = 1;
                j_1 = 0;
                while (j_1 < i_next4)
                begin
                    j_1++;
                    if (|b)
                    begin
                        continue;
                    end
                end
                continue_in_while_wait2_PROC_STATE_next = 1; return;    // test_continue.cpp:252:17;
            end
            k = 3;
            i_next4 = 0;
            k = 1;
            j_1 = 0;
            while (j_1 < i_next4)
            begin
                j_1++;
                if (|b)
                begin
                    continue;
                end
            end
            continue_in_while_wait2_PROC_STATE_next = 1; return;    // test_continue.cpp:252:17;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arst) 
begin : continue_in_while_wait2_ff
    if ( ~arst ) begin
        integer k;
        k = 0;
        continue_in_while_wait2_PROC_STATE <= 0;    // test_continue.cpp:240:9;
    end
    else begin
        i4 <= i_next4;
        continue_in_while_wait2_PROC_STATE <= continue_in_while_wait2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: continue_in_while_wait3 (test_continue.cpp:265:5) 

// Thread-local variables
logic [1:0] continue_in_while_wait3_PROC_STATE;
logic [1:0] continue_in_while_wait3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : continue_in_while_wait3_comb     // test_continue.cpp:265:5
    continue_in_while_wait3_func;
end
function void continue_in_while_wait3_func;
    integer k;
    continue_in_while_wait3_PROC_STATE_next = continue_in_while_wait3_PROC_STATE;
    
    case (continue_in_while_wait3_PROC_STATE)
        0: begin
            if (|a)
            begin
                k = 1;
                continue_in_while_wait3_PROC_STATE_next = 1; return;    // test_continue.cpp:274:17;
            end
            k = 4;
            continue_in_while_wait3_PROC_STATE_next = 2; return;    // test_continue.cpp:284:13;
        end
        1: begin
            if (|a && |b)
            begin
                k = 2;
                // continue begin
                if (|a)
                begin
                    k = 1;
                    continue_in_while_wait3_PROC_STATE_next = 1; return;    // test_continue.cpp:274:17;
                end
                k = 4;
                continue_in_while_wait3_PROC_STATE_next = 2; return;    // test_continue.cpp:284:13;
                // continue end
            end
            k = 3;
            if (|a)
            begin
                k = 1;
                continue_in_while_wait3_PROC_STATE_next = 1; return;    // test_continue.cpp:274:17;
            end
            k = 4;
            continue_in_while_wait3_PROC_STATE_next = 2; return;    // test_continue.cpp:284:13;
        end
        2: begin
            if (|a)
            begin
                k = 1;
                continue_in_while_wait3_PROC_STATE_next = 1; return;    // test_continue.cpp:274:17;
            end
            k = 4;
            continue_in_while_wait3_PROC_STATE_next = 2; return;    // test_continue.cpp:284:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arst) 
begin : continue_in_while_wait3_ff
    if ( ~arst ) begin
        integer k;
        k = 0;
        continue_in_while_wait3_PROC_STATE <= 0;    // test_continue.cpp:268:9;
    end
    else begin
        continue_in_while_wait3_PROC_STATE <= continue_in_while_wait3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: continue_in_while_for1 (test_continue.cpp:289:5) 

// Thread-local variables
logic signed [31:0] i5;
logic signed [31:0] i_next5;
logic [1:0] continue_in_while_for1_PROC_STATE;
logic [1:0] continue_in_while_for1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : continue_in_while_for1_comb     // test_continue.cpp:289:5
    continue_in_while_for1_func;
end
function void continue_in_while_for1_func;
    integer k;
    i_next5 = i5;
    continue_in_while_for1_PROC_STATE_next = continue_in_while_for1_PROC_STATE;
    
    case (continue_in_while_for1_PROC_STATE)
        0: begin
            if (|a || |b)
            begin
                if (|b)
                begin
                    k = 1;
                    i_next5 = 0;
                    continue_in_while_for1_PROC_STATE_next = 1; return;    // test_continue.cpp:300:25;
                end
                continue_in_while_for1_PROC_STATE_next = 2; return;    // test_continue.cpp:305:17;
            end
            k = 4;
            continue_in_while_for1_PROC_STATE_next = 3; return;    // test_continue.cpp:310:13;
        end
        1: begin
            if (|a)
            begin
                // continue begin
                i_next5++;
                if (i_next5 < 3)
                begin
                    continue_in_while_for1_PROC_STATE_next = 1; return;    // test_continue.cpp:300:25;
                end
                k = 2;
                continue_in_while_for1_PROC_STATE_next = 2; return;    // test_continue.cpp:305:17;
                // continue end
            end
            i_next5++;
            if (i_next5 < 3)
            begin
                continue_in_while_for1_PROC_STATE_next = 1; return;    // test_continue.cpp:300:25;
            end
            k = 2;
            continue_in_while_for1_PROC_STATE_next = 2; return;    // test_continue.cpp:305:17;
        end
        2: begin
            k = 3;
            if (|a || |b)
            begin
                if (|b)
                begin
                    k = 1;
                    i_next5 = 0;
                    continue_in_while_for1_PROC_STATE_next = 1; return;    // test_continue.cpp:300:25;
                end
                continue_in_while_for1_PROC_STATE_next = 2; return;    // test_continue.cpp:305:17;
            end
            k = 4;
            continue_in_while_for1_PROC_STATE_next = 3; return;    // test_continue.cpp:310:13;
        end
        3: begin
            if (|a || |b)
            begin
                if (|b)
                begin
                    k = 1;
                    i_next5 = 0;
                    continue_in_while_for1_PROC_STATE_next = 1; return;    // test_continue.cpp:300:25;
                end
                continue_in_while_for1_PROC_STATE_next = 2; return;    // test_continue.cpp:305:17;
            end
            k = 4;
            continue_in_while_for1_PROC_STATE_next = 3; return;    // test_continue.cpp:310:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arst) 
begin : continue_in_while_for1_ff
    if ( ~arst ) begin
        integer k;
        k = 0;
        continue_in_while_for1_PROC_STATE <= 0;    // test_continue.cpp:292:9;
    end
    else begin
        i5 <= i_next5;
        continue_in_while_for1_PROC_STATE <= continue_in_while_for1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: continue_in_while_for2 (test_continue.cpp:316:5) 

// Thread-local variables
logic signed [31:0] i6;
logic signed [31:0] i_next6;
logic [1:0] continue_in_while_for2_PROC_STATE;
logic [1:0] continue_in_while_for2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : continue_in_while_for2_comb     // test_continue.cpp:316:5
    continue_in_while_for2_func;
end
function void continue_in_while_for2_func;
    integer k;
    i_next6 = i6;
    continue_in_while_for2_PROC_STATE_next = continue_in_while_for2_PROC_STATE;
    
    case (continue_in_while_for2_PROC_STATE)
        0: begin
            if (|a || |b)
            begin
                k = 1;
                i_next6 = 0;
                if (|a)
                begin
                    // break begin
                    continue_in_while_for2_PROC_STATE_next = 2; return;    // test_continue.cpp:329:17;
                    // break end
                end
                continue_in_while_for2_PROC_STATE_next = 1; return;    // test_continue.cpp:327:21;
            end
            k = 4;
            continue_in_while_for2_PROC_STATE_next = 3; return;    // test_continue.cpp:336:13;
        end
        1: begin
            i_next6++;
            if (i_next6 < 3)
            begin
                if (|a)
                begin
                    // break begin
                    continue_in_while_for2_PROC_STATE_next = 2; return;    // test_continue.cpp:329:17;
                    // break end
                end
                continue_in_while_for2_PROC_STATE_next = 1; return;    // test_continue.cpp:327:21;
            end
            continue_in_while_for2_PROC_STATE_next = 2; return;    // test_continue.cpp:329:17;
        end
        2: begin
            if (|a)
            begin
                // continue begin
                if (|a || |b)
                begin
                    k = 1;
                    i_next6 = 0;
                    if (|a)
                    begin
                        // break begin
                        continue_in_while_for2_PROC_STATE_next = 2; return;    // test_continue.cpp:329:17;
                        // break end
                    end
                    continue_in_while_for2_PROC_STATE_next = 1; return;    // test_continue.cpp:327:21;
                end
                k = 4;
                continue_in_while_for2_PROC_STATE_next = 3; return;    // test_continue.cpp:336:13;
                // continue end
            end
            k = 3;
            if (|a || |b)
            begin
                k = 1;
                i_next6 = 0;
                if (|a)
                begin
                    // break begin
                    continue_in_while_for2_PROC_STATE_next = 2; return;    // test_continue.cpp:329:17;
                    // break end
                end
                continue_in_while_for2_PROC_STATE_next = 1; return;    // test_continue.cpp:327:21;
            end
            k = 4;
            continue_in_while_for2_PROC_STATE_next = 3; return;    // test_continue.cpp:336:13;
        end
        3: begin
            if (|a || |b)
            begin
                k = 1;
                i_next6 = 0;
                if (|a)
                begin
                    // break begin
                    continue_in_while_for2_PROC_STATE_next = 2; return;    // test_continue.cpp:329:17;
                    // break end
                end
                continue_in_while_for2_PROC_STATE_next = 1; return;    // test_continue.cpp:327:21;
            end
            k = 4;
            continue_in_while_for2_PROC_STATE_next = 3; return;    // test_continue.cpp:336:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arst) 
begin : continue_in_while_for2_ff
    if ( ~arst ) begin
        integer k;
        k = 0;
        continue_in_while_for2_PROC_STATE <= 0;    // test_continue.cpp:319:9;
    end
    else begin
        i6 <= i_next6;
        continue_in_while_for2_PROC_STATE <= continue_in_while_for2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: continue_in_do_while_wait1 (test_continue.cpp:343:5) 

// Thread-local variables
logic signed [31:0] i7;
logic signed [31:0] i_next7;
logic [1:0] continue_in_do_while_wait1_PROC_STATE;
logic [1:0] continue_in_do_while_wait1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : continue_in_do_while_wait1_comb     // test_continue.cpp:343:5
    continue_in_do_while_wait1_func;
end
function void continue_in_do_while_wait1_func;
    integer k;
    i_next7 = i7;
    continue_in_do_while_wait1_PROC_STATE_next = continue_in_do_while_wait1_PROC_STATE;
    
    case (continue_in_do_while_wait1_PROC_STATE)
        0: begin
            i_next7 = 0;
            i_next7++;
            continue_in_do_while_wait1_PROC_STATE_next = 1; return;    // test_continue.cpp:353:17;
        end
        1: begin
            if (|a)
            begin
                // continue begin
                if (i_next7 < 3)
                begin
                    i_next7++;
                    continue_in_do_while_wait1_PROC_STATE_next = 1; return;    // test_continue.cpp:353:17;
                end
                k = 1;
                continue_in_do_while_wait1_PROC_STATE_next = 2; return;    // test_continue.cpp:361:13;
                // continue end
            end
            k = 2;
            if (i_next7 < 3)
            begin
                i_next7++;
                continue_in_do_while_wait1_PROC_STATE_next = 1; return;    // test_continue.cpp:353:17;
            end
            k = 1;
            continue_in_do_while_wait1_PROC_STATE_next = 2; return;    // test_continue.cpp:361:13;
        end
        2: begin
            i_next7 = 0;
            i_next7++;
            continue_in_do_while_wait1_PROC_STATE_next = 1; return;    // test_continue.cpp:353:17;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arst) 
begin : continue_in_do_while_wait1_ff
    if ( ~arst ) begin
        integer k;
        k = 0;
        continue_in_do_while_wait1_PROC_STATE <= 0;    // test_continue.cpp:346:9;
    end
    else begin
        i7 <= i_next7;
        continue_in_do_while_wait1_PROC_STATE <= continue_in_do_while_wait1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: continue_in_do_while_wait2 (test_continue.cpp:366:5) 

// Thread-local variables
logic signed [31:0] i8;
logic signed [31:0] i_next8;
logic [1:0] continue_in_do_while_wait2_PROC_STATE;
logic [1:0] continue_in_do_while_wait2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : continue_in_do_while_wait2_comb     // test_continue.cpp:366:5
    continue_in_do_while_wait2_func;
end
function void continue_in_do_while_wait2_func;
    integer k;
    i_next8 = i8;
    continue_in_do_while_wait2_PROC_STATE_next = continue_in_do_while_wait2_PROC_STATE;
    
    case (continue_in_do_while_wait2_PROC_STATE)
        0: begin
            i_next8 = 0;
            i_next8++;
            if (|b)
            begin
                continue_in_do_while_wait2_PROC_STATE_next = 1; return;    // test_continue.cpp:377:21;
            end
            k = 2;
            continue_in_do_while_wait2_PROC_STATE_next = 2; return;    // test_continue.cpp:381:17;
        end
        1: begin
            // continue begin
            if (i_next8 < 3 || |a)
            begin
                i_next8++;
                if (|b)
                begin
                    continue_in_do_while_wait2_PROC_STATE_next = 1; return;    // test_continue.cpp:377:21;
                end
                k = 2;
                continue_in_do_while_wait2_PROC_STATE_next = 2; return;    // test_continue.cpp:381:17;
            end
            k = 1;
            continue_in_do_while_wait2_PROC_STATE_next = 3; return;    // test_continue.cpp:387:13;
            // continue end
        end
        2: begin
            if (i_next8 < 3 || |a)
            begin
                i_next8++;
                if (|b)
                begin
                    continue_in_do_while_wait2_PROC_STATE_next = 1; return;    // test_continue.cpp:377:21;
                end
                k = 2;
                continue_in_do_while_wait2_PROC_STATE_next = 2; return;    // test_continue.cpp:381:17;
            end
            k = 1;
            continue_in_do_while_wait2_PROC_STATE_next = 3; return;    // test_continue.cpp:387:13;
        end
        3: begin
            i_next8 = 0;
            i_next8++;
            if (|b)
            begin
                continue_in_do_while_wait2_PROC_STATE_next = 1; return;    // test_continue.cpp:377:21;
            end
            k = 2;
            continue_in_do_while_wait2_PROC_STATE_next = 2; return;    // test_continue.cpp:381:17;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arst) 
begin : continue_in_do_while_wait2_ff
    if ( ~arst ) begin
        integer k;
        k = 0;
        continue_in_do_while_wait2_PROC_STATE <= 0;    // test_continue.cpp:369:9;
    end
    else begin
        i8 <= i_next8;
        continue_in_do_while_wait2_PROC_STATE <= continue_in_do_while_wait2_PROC_STATE_next;
    end
end

endmodule


