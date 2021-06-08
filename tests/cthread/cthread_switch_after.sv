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
    input logic clk,
    input logic a,
    output logic b,
    output logic c
);

// Variables generated for SystemC signals
logic rstn;
logic [2:0] s;
logic [2:0] t;

// Local parameters generated for C++ constants
localparam logic ONE = 1;
localparam logic ZERO = 0;

//------------------------------------------------------------------------------
// Clocked THREAD: switch_if1 (test_cthread_switch_after.cpp:63:4) 

// Next-state combinational logic
always_comb begin : switch_if1_comb     // test_cthread_switch_after.cpp:63:4
    switch_if1_func;
end
function void switch_if1_func;
    integer i;
    case (t)
    1 : begin
        i = 1;
    end
    2 : begin
        i = 2;
    end
    default : begin
        i = 3;
    end
    endcase
    if (|s)
    begin
        i = 4;
    end else begin
        i = 5;
        if (|t)
        begin
            case (t)
            1 : begin
                i = 1;
            end
            default : begin
            end
            endcase
        end
    end
    if (i == s)
    begin
        i++;
    end
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : switch_if1_ff
    if ( ~rstn ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: switch_if2 (test_cthread_switch_after.cpp:93:5) 

// Thread-local variables
logic signed [31:0] k;

// Next-state combinational logic
always_comb begin : switch_if2_comb     // test_cthread_switch_after.cpp:93:5
    switch_if2_func;
end
function void switch_if2_func;
    integer i;
    k = s;
    if (|t)
    begin
        case (t)
        1 : begin
            i = 1;
        end
        2 : begin  // Empty case without break
            i = 3;
        end
        default : begin
            i = 3;
        end
        endcase
    end
    if (k == s)
    begin
    end else begin
        case (t)
        1 : begin
            if (k == 1)
            begin
                k = 4;
            end
        end
        default : begin
            k = 5;
        end
        endcase
    end
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : switch_if2_ff
    if ( ~rstn ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: switch_if3 (test_cthread_switch_after.cpp:119:5) 

// Thread-local variables
logic signed [31:0] m;
logic switch_if3_PROC_STATE;
logic switch_if3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : switch_if3_comb     // test_cthread_switch_after.cpp:119:5
    switch_if3_func;
end
function void switch_if3_func;
    integer i;
    switch_if3_PROC_STATE_next = switch_if3_PROC_STATE;
    
    case (switch_if3_PROC_STATE)
        0: begin
            m = s + 1;
            case (t)
            1 : begin
                i = 1;
            end
            2 : begin
                if (s < 3)
                begin
                    i = 2;
                end
            end
            endcase
            switch_if3_PROC_STATE_next = 1; return;    // test_cthread_switch_after.cpp:135:13;
        end
        1: begin
            if (s == 1)
            begin
                case (t)
                1 : begin  // Empty case without break
                    i = 4;
                end
                default : begin
                    i = 4;
                end
                endcase
            end
            m = s + 1;
            case (t)
            1 : begin
                i = 1;
            end
            2 : begin
                if (s < 3)
                begin
                    i = 2;
                end
            end
            endcase
            switch_if3_PROC_STATE_next = 1; return;    // test_cthread_switch_after.cpp:135:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : switch_if3_ff
    if ( ~rstn ) begin
        switch_if3_PROC_STATE <= 0;    // test_cthread_switch_after.cpp:120:9;
    end
    else begin
        switch_if3_PROC_STATE <= switch_if3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: switch_if_multi1 (test_cthread_switch_after.cpp:148:5) 

// Thread-local variables
logic [1:0] switch_if_multi1_PROC_STATE;
logic [1:0] switch_if_multi1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : switch_if_multi1_comb     // test_cthread_switch_after.cpp:148:5
    switch_if_multi1_func;
end
function void switch_if_multi1_func;
    integer i;
    switch_if_multi1_PROC_STATE_next = switch_if_multi1_PROC_STATE;
    
    case (switch_if_multi1_PROC_STATE)
        0: begin
            case (t)
            1 : begin
                i = 1;
            end
            2 : begin
                if (s < 3)
                begin
                    i = 2;
                    switch_if_multi1_PROC_STATE_next = 1; return;    // test_cthread_switch_after.cpp:157:29;
                end
            end
            endcase
            if (s == 1)
            begin
                case (t)
                1 : begin
                    switch_if_multi1_PROC_STATE_next = 2; return;    // test_cthread_switch_after.cpp:164:29;
                end
                default : begin
                    i = 5;
                end
                endcase
            end
            switch_if_multi1_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:169:13;
        end
        1: begin
            if (s == 1)
            begin
                case (t)
                1 : begin
                    switch_if_multi1_PROC_STATE_next = 2; return;    // test_cthread_switch_after.cpp:164:29;
                end
                default : begin
                    i = 5;
                end
                endcase
            end
            switch_if_multi1_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:169:13;
        end
        2: begin
            i = 4;
            switch_if_multi1_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:169:13;
        end
        3: begin
            case (t)
            1 : begin
                i = 1;
            end
            2 : begin
                if (s < 3)
                begin
                    i = 2;
                    switch_if_multi1_PROC_STATE_next = 1; return;    // test_cthread_switch_after.cpp:157:29;
                end
            end
            endcase
            if (s == 1)
            begin
                case (t)
                1 : begin
                    switch_if_multi1_PROC_STATE_next = 2; return;    // test_cthread_switch_after.cpp:164:29;
                end
                default : begin
                    i = 5;
                end
                endcase
            end
            switch_if_multi1_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:169:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : switch_if_multi1_ff
    if ( ~rstn ) begin
        integer i;
        i = 0;
        switch_if_multi1_PROC_STATE <= 0;    // test_cthread_switch_after.cpp:150:9;
    end
    else begin
        switch_if_multi1_PROC_STATE <= switch_if_multi1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: switch_if_for0 (test_cthread_switch_after.cpp:175:5) 

// Next-state combinational logic
always_comb begin : switch_if_for0_comb     // test_cthread_switch_after.cpp:175:5
    switch_if_for0_func;
end
function void switch_if_for0_func;
    integer i;
    i = 0;
    case (s)
    1 : begin
        i = 1;
    end
    default : begin
        for (integer j = 0; j < 7; j++)
        begin
            i++;
        end
    end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : switch_if_for0_ff
    if ( ~rstn ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: switch_if_for1 (test_cthread_switch_after.cpp:190:5) 

// Next-state combinational logic
always_comb begin : switch_if_for1_comb     // test_cthread_switch_after.cpp:190:5
    switch_if_for1_func;
end
function void switch_if_for1_func;
    integer i;
    i = t;
    case (s)
    1 : begin
        i = 1;
    end
    2 : begin
        i = 2;
    end
    default : begin
        for (integer j = 0; j < 7; j++)
        begin
            i++;
        end
    end
    endcase
    if (s == 1)
    begin
        for (integer j_1 = 0; j_1 < 7; j_1++)
        begin
            if (|t)
            begin
                break;
            end
        end
    end
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : switch_if_for1_ff
    if ( ~rstn ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: switch_if_for2 (test_cthread_switch_after.cpp:211:5) 

// Next-state combinational logic
always_comb begin : switch_if_for2_comb     // test_cthread_switch_after.cpp:211:5
    switch_if_for2_func;
end
function void switch_if_for2_func;
    integer i;
    i = s;
    for (integer j = 0; j < 70; j++)
    begin
        if (|t)
        begin
            break;
        end
    end
    case (s)
    1 : begin
        i = 1;
    end
    2 : begin
        if (a)
        begin
            i++;
        end else begin
            i--;
            if (i == t)
            begin
            end else begin
                i--;
            end
        end
    end
    endcase
    for (integer j_1 = 0; j_1 < 40; j_1++)
    begin
        if (|t)
        begin
            i++;
        end
    end
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : switch_if_for2_ff
    if ( ~rstn ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: switch_if_for3 (test_cthread_switch_after.cpp:237:5) 

// Thread-local variables
logic switch_if_for3_PROC_STATE;
logic switch_if_for3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : switch_if_for3_comb     // test_cthread_switch_after.cpp:237:5
    switch_if_for3_func;
end
function void switch_if_for3_func;
    integer i;
    logic [23:0] sum;
    switch_if_for3_PROC_STATE_next = switch_if_for3_PROC_STATE;
    
    case (switch_if_for3_PROC_STATE)
        0: begin
            i = (ONE && |s) ? 0 : 1;
            case (i)
            1 : begin
                i = 1;
            end
            default : begin
                case (s)
                1 : begin
                    i = 2;
                end
                2 : begin
                    i = 3;
                end
                endcase
            end
            endcase
            switch_if_for3_PROC_STATE_next = 1; return;    // test_cthread_switch_after.cpp:253:13;
        end
        1: begin
            sum = 0;
            for (integer j = 0; j < 10; j++)
            begin
                for (integer l = 0; l < 10; l++)
                begin
                    sum = sum + (l + j);
                end
                case (t)
                1 : begin  // Empty case without break
                    i = 4;
                end
                2 : begin
                    i = 4;
                end
                endcase
            end
            i = (ONE && |s) ? 0 : 1;
            case (i)
            1 : begin
                i = 1;
            end
            default : begin
                case (s)
                1 : begin
                    i = 2;
                end
                2 : begin
                    i = 3;
                end
                endcase
            end
            endcase
            switch_if_for3_PROC_STATE_next = 1; return;    // test_cthread_switch_after.cpp:253:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : switch_if_for3_ff
    if ( ~rstn ) begin
        switch_if_for3_PROC_STATE <= 0;    // test_cthread_switch_after.cpp:239:9;
    end
    else begin
        switch_if_for3_PROC_STATE <= switch_if_for3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: switch_if_for4 (test_cthread_switch_after.cpp:269:5) 

// Thread-local variables
logic [1:0] switch_if_for4_PROC_STATE;
logic [1:0] switch_if_for4_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : switch_if_for4_comb     // test_cthread_switch_after.cpp:269:5
    switch_if_for4_func;
end
function void switch_if_for4_func;
    integer i;
    integer unsigned sum;
    switch_if_for4_PROC_STATE_next = switch_if_for4_PROC_STATE;
    
    case (switch_if_for4_PROC_STATE)
        0: begin
            if ((|s || ZERO) && (ONE && |t))
            begin
                case (s)
                1 : begin
                    i = 1;
                end
                2 : begin
                    i = 2;
                end
                default : begin
                end
                endcase
                switch_if_for4_PROC_STATE_next = 1; return;    // test_cthread_switch_after.cpp:281:17;
            end else begin
                case (s)
                1 : begin
                    i = 3;
                end
                endcase
            end
            if (1)
            begin
                sum = s;
                for (integer l = 0; l < 10; l++)
                begin
                    sum = sum + l;
                end
            end
            switch_if_for4_PROC_STATE_next = 2; return;    // test_cthread_switch_after.cpp:295:13;
        end
        1: begin
            if (1)
            begin
                sum = s;
                for (integer l = 0; l < 10; l++)
                begin
                    sum = sum + l;
                end
            end
            switch_if_for4_PROC_STATE_next = 2; return;    // test_cthread_switch_after.cpp:295:13;
        end
        2: begin
            if ((|s || ZERO) && (ONE && |t))
            begin
                case (s)
                1 : begin
                    i = 1;
                end
                2 : begin
                    i = 2;
                end
                default : begin
                end
                endcase
                switch_if_for4_PROC_STATE_next = 1; return;    // test_cthread_switch_after.cpp:281:17;
            end else begin
                case (s)
                1 : begin
                    i = 3;
                end
                endcase
            end
            if (1)
            begin
                sum = s;
                for (integer l = 0; l < 10; l++)
                begin
                    sum = sum + l;
                end
            end
            switch_if_for4_PROC_STATE_next = 2; return;    // test_cthread_switch_after.cpp:295:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : switch_if_for4_ff
    if ( ~rstn ) begin
        integer i;
        i = 0;
        switch_if_for4_PROC_STATE <= 0;    // test_cthread_switch_after.cpp:272:9;
    end
    else begin
        switch_if_for4_PROC_STATE <= switch_if_for4_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: switch_if_for_multi1 (test_cthread_switch_after.cpp:301:5) 

// Thread-local variables
logic signed [31:0] j0;
logic signed [31:0] j_next;
logic signed [31:0] i0;
logic signed [31:0] i_next;
logic signed [31:0] l0;
logic signed [31:0] l_next;
logic [1:0] switch_if_for_multi1_PROC_STATE;
logic [1:0] switch_if_for_multi1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : switch_if_for_multi1_comb     // test_cthread_switch_after.cpp:301:5
    switch_if_for_multi1_func;
end
function void switch_if_for_multi1_func;
    i_next = i0;
    j_next = j0;
    l_next = l0;
    switch_if_for_multi1_PROC_STATE_next = switch_if_for_multi1_PROC_STATE;
    
    case (switch_if_for_multi1_PROC_STATE)
        0: begin
            i_next = t;
            case (s)
            1 : begin
                i_next = 1;
            end
            2 : begin
                i_next = 2;
            end
            default : begin
                j_next = 0;
                i_next++;
                switch_if_for_multi1_PROC_STATE_next = 1; return;    // test_cthread_switch_after.cpp:310:34;
            end
            endcase
            if (s == 1)
            begin
                l_next = 0;
                switch_if_for_multi1_PROC_STATE_next = 2; return;    // test_cthread_switch_after.cpp:317:21;
            end
            case (s)
            3 : begin
                i_next = 3;
            end
            4 : begin
                if (|t)
                begin
                    i_next = 4;
                end
            end
            endcase
            switch_if_for_multi1_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:327:13;
        end
        1: begin
            j_next++;
            if (j_next < 7)
            begin
                i_next++;
                switch_if_for_multi1_PROC_STATE_next = 1; return;    // test_cthread_switch_after.cpp:310:34;
            end
            if (s == 1)
            begin
                l_next = 0;
                switch_if_for_multi1_PROC_STATE_next = 2; return;    // test_cthread_switch_after.cpp:317:21;
            end
            case (s)
            3 : begin
                i_next = 3;
            end
            4 : begin
                if (|t)
                begin
                    i_next = 4;
                end
            end
            endcase
            switch_if_for_multi1_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:327:13;
        end
        2: begin
            if (|t)
            begin
                // break begin
                case (s)
                3 : begin
                    i_next = 3;
                end
                4 : begin
                    if (|t)
                    begin
                        i_next = 4;
                    end
                end
                endcase
                switch_if_for_multi1_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:327:13;
                // break end
            end
            l_next++;
            if (l_next < 7)
            begin
                switch_if_for_multi1_PROC_STATE_next = 2; return;    // test_cthread_switch_after.cpp:317:21;
            end
            case (s)
            3 : begin
                i_next = 3;
            end
            4 : begin
                if (|t)
                begin
                    i_next = 4;
                end
            end
            endcase
            switch_if_for_multi1_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:327:13;
        end
        3: begin
            i_next = t;
            case (s)
            1 : begin
                i_next = 1;
            end
            2 : begin
                i_next = 2;
            end
            default : begin
                j_next = 0;
                i_next++;
                switch_if_for_multi1_PROC_STATE_next = 1; return;    // test_cthread_switch_after.cpp:310:34;
            end
            endcase
            if (s == 1)
            begin
                l_next = 0;
                switch_if_for_multi1_PROC_STATE_next = 2; return;    // test_cthread_switch_after.cpp:317:21;
            end
            case (s)
            3 : begin
                i_next = 3;
            end
            4 : begin
                if (|t)
                begin
                    i_next = 4;
                end
            end
            endcase
            switch_if_for_multi1_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:327:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : switch_if_for_multi1_ff
    if ( ~rstn ) begin
        switch_if_for_multi1_PROC_STATE <= 0;    // test_cthread_switch_after.cpp:302:9;
    end
    else begin
        j0 <= j_next;
        i0 <= i_next;
        l0 <= l_next;
        switch_if_for_multi1_PROC_STATE <= switch_if_for_multi1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: switch_if_for_multi2 (test_cthread_switch_after.cpp:331:5) 

// Thread-local variables
logic [3:0] n0;
logic [3:0] n_next;
logic signed [31:0] j1;
logic signed [31:0] j_next0;
logic signed [31:0] l1;
logic signed [31:0] l_next0;
logic c_next;
logic [2:0] switch_if_for_multi2_PROC_STATE;
logic [2:0] switch_if_for_multi2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : switch_if_for_multi2_comb     // test_cthread_switch_after.cpp:331:5
    switch_if_for_multi2_func;
end
function void switch_if_for_multi2_func;
    c_next = c;
    j_next0 = j1;
    l_next0 = l1;
    n_next = n0;
    switch_if_for_multi2_PROC_STATE_next = switch_if_for_multi2_PROC_STATE;
    
    case (switch_if_for_multi2_PROC_STATE)
        0: begin
            case (s)
            1 : begin
                n_next = 1;
            end
            2 : begin
                n_next = 2;
            end
            default : begin
                j_next0 = 0;
                n_next++;
                switch_if_for_multi2_PROC_STATE_next = 1; return;    // test_cthread_switch_after.cpp:340:34;
            end
            endcase
            if (|n_next)
            begin
                n_next--;
                switch_if_for_multi2_PROC_STATE_next = 2; return;    // test_cthread_switch_after.cpp:347:17;
            end
            l_next0 = 0;
            c_next = 0;
            case (s)
            1 : begin
                c_next = 1;
            end
            default : begin
            end
            endcase
            switch_if_for_multi2_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:357:17;
        end
        1: begin
            j_next0++;
            if (j_next0 < 7)
            begin
                n_next++;
                switch_if_for_multi2_PROC_STATE_next = 1; return;    // test_cthread_switch_after.cpp:340:34;
            end
            if (|n_next)
            begin
                n_next--;
                switch_if_for_multi2_PROC_STATE_next = 2; return;    // test_cthread_switch_after.cpp:347:17;
            end
            l_next0 = 0;
            c_next = 0;
            case (s)
            1 : begin
                c_next = 1;
            end
            default : begin
            end
            endcase
            switch_if_for_multi2_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:357:17;
        end
        2: begin
            if (|n_next)
            begin
                n_next--;
                switch_if_for_multi2_PROC_STATE_next = 2; return;    // test_cthread_switch_after.cpp:347:17;
            end
            l_next0 = 0;
            c_next = 0;
            case (s)
            1 : begin
                c_next = 1;
            end
            default : begin
            end
            endcase
            switch_if_for_multi2_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:357:17;
        end
        3: begin
            if (|t)
            begin
                // continue begin
                l_next0++;
                if (l_next0 < 7)
                begin
                    c_next = 0;
                    case (s)
                    1 : begin
                        c_next = 1;
                    end
                    default : begin
                    end
                    endcase
                    switch_if_for_multi2_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:357:17;
                end
                switch_if_for_multi2_PROC_STATE_next = 4; return;    // test_cthread_switch_after.cpp:362:13;
                // continue end
            end
            l_next0++;
            if (l_next0 < 7)
            begin
                c_next = 0;
                case (s)
                1 : begin
                    c_next = 1;
                end
                default : begin
                end
                endcase
                switch_if_for_multi2_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:357:17;
            end
            switch_if_for_multi2_PROC_STATE_next = 4; return;    // test_cthread_switch_after.cpp:362:13;
        end
        4: begin
            case (s)
            1 : begin
                n_next = 1;
            end
            2 : begin
                n_next = 2;
            end
            default : begin
                j_next0 = 0;
                n_next++;
                switch_if_for_multi2_PROC_STATE_next = 1; return;    // test_cthread_switch_after.cpp:340:34;
            end
            endcase
            if (|n_next)
            begin
                n_next--;
                switch_if_for_multi2_PROC_STATE_next = 2; return;    // test_cthread_switch_after.cpp:347:17;
            end
            l_next0 = 0;
            c_next = 0;
            case (s)
            1 : begin
                c_next = 1;
            end
            default : begin
            end
            endcase
            switch_if_for_multi2_PROC_STATE_next = 3; return;    // test_cthread_switch_after.cpp:357:17;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : switch_if_for_multi2_ff
    if ( ~rstn ) begin
        n0 <= 0;
        switch_if_for_multi2_PROC_STATE <= 0;    // test_cthread_switch_after.cpp:333:9;
    end
    else begin
        n0 <= n_next;
        j1 <= j_next0;
        l1 <= l_next0;
        c <= c_next;
        switch_if_for_multi2_PROC_STATE <= switch_if_for_multi2_PROC_STATE_next;
    end
end

endmodule


