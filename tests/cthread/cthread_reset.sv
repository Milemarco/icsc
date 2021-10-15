//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.5
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
logic a;
logic [2:0] s1;
logic s2[3];
logic [2:0] s3;
logic signed [31:0] s10;
logic [2:0] s4;
logic [2:0] s5;
logic signed [31:0] s7;
logic arr2[3];

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_test (test_cthread_reset.cpp:96:5) 

// Thread-local variables
logic c;
logic c_next;

// Next-state combinational logic
always_comb begin : sct_assert_test_comb     // test_cthread_reset.cpp:96:5
    sct_assert_test_func;
end
function void sct_assert_test_func;
    c_next = c;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : sct_assert_test_ff
    if ( ~arstn ) begin
        c <= 0;
    end
    else begin
        c <= c_next;
    end

`ifndef INTEL_SVA_OFF
    sctAssertLine99 : assert property ( a |=> c_next );
`endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Clocked THREAD: var_in_reset_only1 (test_cthread_reset.cpp:108:5) 

// Thread-local variables
logic var_in_reset_only1_PROC_STATE;
logic var_in_reset_only1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : var_in_reset_only1_comb     // test_cthread_reset.cpp:108:5
    var_in_reset_only1_func;
end
function void var_in_reset_only1_func;
    logic [15:0] C;
    integer kk;
    var_in_reset_only1_PROC_STATE_next = var_in_reset_only1_PROC_STATE;
    
    case (var_in_reset_only1_PROC_STATE)
        0: begin
            var_in_reset_only1_PROC_STATE_next = 1; return;    // test_cthread_reset.cpp:118:13;
        end
        1: begin
            if (a)
            begin
                kk = 1;
            end
            var_in_reset_only1_PROC_STATE_next = 1; return;    // test_cthread_reset.cpp:118:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : var_in_reset_only1_ff
    if ( ~arstn ) begin
        integer ii;
        logic signed [7:0] jj;
        logic [15:0] C;
        jj = 1;
        C = 42;
        ii = jj + C;
        var_in_reset_only1_PROC_STATE <= 0;    // test_cthread_reset.cpp:115:9;
    end
    else begin
        var_in_reset_only1_PROC_STATE <= var_in_reset_only1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: common_wait1 (test_cthread_reset.cpp:129:5) 

// Next-state combinational logic
always_comb begin : common_wait1_comb     // test_cthread_reset.cpp:129:5
    common_wait1_func;
end
function void common_wait1_func;
    integer kk;
    if (a)
    begin
        kk = 1;
    end
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : common_wait1_ff
    if ( ~arstn ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: common_wait2 (test_cthread_reset.cpp:141:5) 

// Thread-local variables
logic [2:0] y;
logic [2:0] y_next;
logic [2:0] s1_next;

// Next-state combinational logic
always_comb begin : common_wait2_comb     // test_cthread_reset.cpp:141:5
    common_wait2_func;
end
function void common_wait2_func;
    s1_next = s1;
    y_next = y;
    if (a)
    begin
        s1_next = 1;
        y_next++;
    end
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : common_wait2_ff
    if ( ~arstn ) begin
        logic [2:0] x;
        x = 0;
        y <= 0;
        s1 <= 0;
    end
    else begin
        y <= y_next;
        s1 <= s1_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: common_wait3 (test_cthread_reset.cpp:158:5) 

// Thread-local variables
logic s2_next[3];
logic [2:0] y0;
logic [2:0] y_next0;
logic common_wait3_PROC_STATE;
logic common_wait3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : common_wait3_comb     // test_cthread_reset.cpp:158:5
    common_wait3_func;
end
function void common_wait3_func;
    s2_next = s2;
    y_next0 = y0;
    common_wait3_PROC_STATE_next = common_wait3_PROC_STATE;
    
    case (common_wait3_PROC_STATE)
        0: begin
            if (a)
            begin
                s2_next[s1] = 1;
                y_next0++;
                common_wait3_PROC_STATE_next = 1; return;    // test_cthread_reset.cpp:172:17;
            end
            common_wait3_PROC_STATE_next = 0; return;    // test_cthread_reset.cpp:167:13;
        end
        1: begin
            common_wait3_PROC_STATE_next = 0; return;    // test_cthread_reset.cpp:167:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : common_wait3_ff
    if ( ~arstn ) begin
        logic [2:0] x;
        x = 0;
        y0 <= 0;
        for (integer i = 0; i < 3; i++)
        begin
            s2[i] <= 0;
        end
        common_wait3_PROC_STATE <= 0;    // test_cthread_reset.cpp:167:13;
    end
    else begin
        s2 <= s2_next;
        y0 <= y_next0;
        common_wait3_PROC_STATE <= common_wait3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: common_wait4 (test_cthread_reset.cpp:177:5) 

// Thread-local variables
logic [2:0] x0;
logic [2:0] x_next;
logic [1:0] common_wait4_PROC_STATE;
logic [1:0] common_wait4_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : common_wait4_comb     // test_cthread_reset.cpp:177:5
    common_wait4_func;
end
function void common_wait4_func;
    logic [2:0] y_1;
    x_next = x0;
    common_wait4_PROC_STATE_next = common_wait4_PROC_STATE;
    
    case (common_wait4_PROC_STATE)
        0: begin
            y_1 = x_next + 1;
            x_next = s2[x_next];
            if (!(|s1))
            begin
                common_wait4_PROC_STATE_next = 1; return;    // test_cthread_reset.cpp:188:32;
            end
            x_next++;
            common_wait4_PROC_STATE_next = 2; return;    // test_cthread_reset.cpp:191:13;
        end
        1: begin
            if (!(|s1))
            begin
                common_wait4_PROC_STATE_next = 1; return;    // test_cthread_reset.cpp:188:32;
            end
            x_next++;
            common_wait4_PROC_STATE_next = 2; return;    // test_cthread_reset.cpp:191:13;
        end
        2: begin
            common_wait4_PROC_STATE_next = 0; return;    // test_cthread_reset.cpp:184:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : common_wait4_ff
    if ( ~arstn ) begin
        logic [2:0] y_1;
        x0 <= 0;
        y_1 = 0;
        x0 <= 1;
        common_wait4_PROC_STATE <= 0;    // test_cthread_reset.cpp:184:13;
    end
    else begin
        x0 <= x_next;
        common_wait4_PROC_STATE <= common_wait4_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: common_wait5 (test_cthread_reset.cpp:197:5) 

// Thread-local variables
logic [2:0] s3_next;
logic common_wait5_PROC_STATE;
logic common_wait5_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : common_wait5_comb     // test_cthread_reset.cpp:197:5
    common_wait5_func;
end
function void common_wait5_func;
    s3_next = s3;
    common_wait5_PROC_STATE_next = common_wait5_PROC_STATE;
    
    case (common_wait5_PROC_STATE)
        0: begin
            if (!(|s1))
            begin
                common_wait5_PROC_STATE_next = 1; return;    // test_cthread_reset.cpp:203:32;
            end
            s3_next = 1;
            common_wait5_PROC_STATE_next = 0; return;    // test_cthread_reset.cpp:202:13;
        end
        1: begin
            if (!(|s1))
            begin
                common_wait5_PROC_STATE_next = 1; return;    // test_cthread_reset.cpp:203:32;
            end
            s3_next = 1;
            common_wait5_PROC_STATE_next = 0; return;    // test_cthread_reset.cpp:202:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : common_wait5_ff
    if ( ~arstn ) begin
        s3 <= 0;
        common_wait5_PROC_STATE <= 0;    // test_cthread_reset.cpp:202:13;
    end
    else begin
        s3 <= s3_next;
        common_wait5_PROC_STATE <= common_wait5_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: no_reset1 (test_cthread_reset.cpp:220:5) 

// Next-state combinational logic
always_comb begin : no_reset1_comb     // test_cthread_reset.cpp:220:5
    no_reset1_func;
end
function void no_reset1_func;
    integer jj;
    integer kk;
    jj = 42;
    kk = 43;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : no_reset1_ff
    if ( ~arstn ) begin
        integer jj;
        integer kk;
        jj = 42;
        kk = 43;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: no_reset10 (test_cthread_reset.cpp:220:5) 

// Next-state combinational logic
always_comb begin : no_reset10_comb     // test_cthread_reset.cpp:220:5
    no_reset10_func;
end
function void no_reset10_func;
    integer jj;
    integer kk;
    jj = 42;
    kk = 43;
endfunction

// Syncrhonous register update
always_ff @(posedge clk) 
begin : no_reset10_ff
    begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: no_reset2 (test_cthread_reset.cpp:233:5) 

// Thread-local variables
logic signed [31:0] ll;
logic signed [31:0] ll_next;
logic signed [31:0] s10_next;

// Next-state combinational logic
always_comb begin : no_reset2_comb     // test_cthread_reset.cpp:233:5
    no_reset2_func;
end
function void no_reset2_func;
    ll_next = ll;
    s10_next = s10;
    s10_next = ll_next;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : no_reset2_ff
    if ( ~arstn ) begin
        ll <= 0;
        s10 <= ll;
    end
    else begin
        ll <= ll_next;
        s10 <= s10_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: no_reset3 (test_cthread_reset.cpp:243:5) 

// Thread-local variables
logic [2:0] v;
logic [2:0] v_next;
logic no_reset3_PROC_STATE;
logic no_reset3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : no_reset3_comb     // test_cthread_reset.cpp:243:5
    no_reset3_func;
end
function void no_reset3_func;
    v_next = v;
    no_reset3_PROC_STATE_next = no_reset3_PROC_STATE;
    
    case (no_reset3_PROC_STATE)
        0: begin
            v_next = v_next + s3;
            no_reset3_PROC_STATE_next = 1; return;    // test_cthread_reset.cpp:250:13;
        end
        1: begin
            v_next = 0;
            no_reset3_PROC_STATE_next = 0; return;    // test_cthread_reset.cpp:247:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : no_reset3_ff
    if ( ~arstn ) begin
        v <= 0;
        no_reset3_PROC_STATE <= 0;    // test_cthread_reset.cpp:247:13;
    end
    else begin
        v <= v_next;
        no_reset3_PROC_STATE <= no_reset3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: no_reset4 (test_cthread_reset.cpp:259:5) 

// Thread-local variables
logic [2:0] s4_next;
logic no_reset4_PROC_STATE;
logic no_reset4_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : no_reset4_comb     // test_cthread_reset.cpp:259:5
    no_reset4_func;
end
function void no_reset4_func;
    integer TMP_0;
    integer val;
    integer w;
    logic [2:0] z;
    s4_next = s4;
    no_reset4_PROC_STATE_next = no_reset4_PROC_STATE;
    
    case (no_reset4_PROC_STATE)
        0: begin
            val = s3;
            // Call g() begin
            TMP_0 = val + 1;
            // Call g() end
            w = TMP_0;
            z = w + 1;
            s4_next = z;
            no_reset4_PROC_STATE_next = 1; return;    // test_cthread_reset.cpp:268:13;
        end
        1: begin
            s4_next = 0;
            no_reset4_PROC_STATE_next = 0; return;    // test_cthread_reset.cpp:263:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : no_reset4_ff
    if ( ~arstn ) begin
        s4 <= 0;
        no_reset4_PROC_STATE <= 0;    // test_cthread_reset.cpp:263:13;
    end
    else begin
        s4 <= s4_next;
        no_reset4_PROC_STATE <= no_reset4_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: no_reset5 (test_cthread_reset.cpp:273:5) 

// Thread-local variables
logic [2:0] z0;
logic [2:0] z_next;
logic [2:0] s5_next;
logic no_reset5_PROC_STATE;
logic no_reset5_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : no_reset5_comb     // test_cthread_reset.cpp:273:5
    no_reset5_func;
end
function void no_reset5_func;
    s5_next = s5;
    z_next = z0;
    no_reset5_PROC_STATE_next = no_reset5_PROC_STATE;
    
    case (no_reset5_PROC_STATE)
        0: begin
            s5_next = s1 + 1;
            z_next = s3;
            if (!(|s1))
            begin
                no_reset5_PROC_STATE_next = 1; return;    // test_cthread_reset.cpp:280:32;
            end
            s5_next = z_next;
            no_reset5_PROC_STATE_next = 0; return;    // test_cthread_reset.cpp:276:13;
        end
        1: begin
            if (!(|s1))
            begin
                no_reset5_PROC_STATE_next = 1; return;    // test_cthread_reset.cpp:280:32;
            end
            s5_next = z_next;
            no_reset5_PROC_STATE_next = 0; return;    // test_cthread_reset.cpp:276:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : no_reset5_ff
    if ( ~arstn ) begin
        no_reset5_PROC_STATE <= 0;    // test_cthread_reset.cpp:276:13;
    end
    else begin
        z0 <= z_next;
        s5 <= s5_next;
        no_reset5_PROC_STATE <= no_reset5_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: var_fcall_in_reset_only (test_cthread_reset.cpp:301:5) 

// Next-state combinational logic
always_comb begin : var_fcall_in_reset_only_comb     // test_cthread_reset.cpp:301:5
    var_fcall_in_reset_only_func;
end
function void var_fcall_in_reset_only_func;
    integer TMP_0;
    logic A;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : var_fcall_in_reset_only_ff
    if ( ~arstn ) begin
        integer TMP_0;
        logic A;
        logic b;
        integer i;
        integer l;
        // Call f() begin
        A = 1;
        b = 1;
        TMP_0 = A ^ b;
        // Call f() end
        i = TMP_0;
        // Call f1() begin
        l = i + 1;
        i = l;
        // Call f1() end
        s7 <= i;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_init_in_reset (test_cthread_reset.cpp:317:5) 

// Next-state combinational logic
always_comb begin : comb_init_in_reset_comb     // test_cthread_reset.cpp:317:5
    comb_init_in_reset_func;
end
function void comb_init_in_reset_func;
    logic [3:0] i;
    integer j;
    integer k;
    i = 1;
    j = 1;
    k = 1;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_init_in_reset_ff
    if ( ~arstn ) begin
        logic [3:0] i;
        integer k;
        i = 0;
        k = 1;
        a <= |k;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: not_used (test_cthread_reset.cpp:335:5) 

// Next-state combinational logic
always_comb begin : not_used_comb     // test_cthread_reset.cpp:335:5
    not_used_func;
end
function void not_used_func;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : not_used_ff
    if ( ~arstn ) begin
        logic [3:0] kk;
        kk = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: comb_assign_in_reset (test_cthread_reset.cpp:346:5) 

// Next-state combinational logic
always_comb begin : comb_assign_in_reset_comb     // test_cthread_reset.cpp:346:5
    comb_assign_in_reset_func;
end
function void comb_assign_in_reset_func;
    integer i;
    integer j;
    integer k;
    integer l;
    logic [1:0] x;
    i = 1;
    j = 1;
    k = 1;
    l = 1;
    x = 1;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : comb_assign_in_reset_ff
    if ( ~arstn ) begin
        integer j;
        integer k;
        integer l;
        logic [1:0] x;
        j = 1;
        k = 2;
        a <= |k;
        l = 0;
        l = l - 1;
        x = 0;
        x = x + 1;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: reg_init_in_reset (test_cthread_reset.cpp:371:5) 

// Thread-local variables
logic a_next1;
logic signed [31:0] i0;
logic signed [31:0] i_next;
logic signed [31:0] j0;
logic signed [31:0] j_next;
logic signed [31:0] k0;
logic signed [31:0] k_next;

// Next-state combinational logic
always_comb begin : reg_init_in_reset_comb     // test_cthread_reset.cpp:371:5
    reg_init_in_reset_func;
end
function void reg_init_in_reset_func;
    a_next1 = a;
    i_next = i0;
    j_next = j0;
    k_next = k0;
    a_next1 = |i_next;
    a_next1 = |j_next;
    a_next1 = |k_next;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : reg_init_in_reset_ff
    if ( ~arstn ) begin
        j0 <= 1;
        k0 <= 2;
        a <= |k0;
    end
    else begin
        a <= a_next1;
        i0 <= i_next;
        j0 <= j_next;
        k0 <= k_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: reg_assign_in_reset (test_cthread_reset.cpp:390:5) 

// Thread-local variables
logic a_next2;
logic signed [31:0] i1;
logic signed [31:0] i_next0;
logic signed [31:0] j1;
logic signed [31:0] j_next0;
logic signed [31:0] k1;
logic signed [31:0] k_next0;
logic signed [31:0] l0;
logic signed [31:0] l_next;
logic [1:0] x1;
logic [1:0] x_next0;
logic signed [31:0] arr0[3];
logic signed [31:0] arr0_next[3];

// Next-state combinational logic
always_comb begin : reg_assign_in_reset_comb     // test_cthread_reset.cpp:390:5
    reg_assign_in_reset_func;
end
function void reg_assign_in_reset_func;
    a_next2 = a;
    arr0_next = arr0;
    i_next0 = i1;
    j_next0 = j1;
    k_next0 = k1;
    l_next = l0;
    x_next0 = x1;
    a_next2 = |i_next0;
    a_next2 = |j_next0;
    a_next2 = |k_next0;
    a_next2 = |l_next;
    a_next2 = |x_next0;
    a_next2 = |arr0_next[1];
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : reg_assign_in_reset_ff
    if ( ~arstn ) begin
        j1 <= 1;
        k1 <= 2;
        a <= |k1;
        l0 <= 0;
        x1 <= 0;
        x1 <= 1;
        arr0[1] <= 0;
        arr0[2] <= 1;
    end
    else begin
        a <= a_next2;
        i1 <= i_next0;
        j1 <= j_next0;
        k1 <= k_next0;
        l0 <= l_next;
        x1 <= x_next0;
        arr0 <= arr0_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: read_only_in_reset (test_cthread_reset.cpp:418:5) 

// Thread-local variables
logic signed [31:0] aa;

// Next-state combinational logic
always_comb begin : read_only_in_reset_comb     // test_cthread_reset.cpp:418:5
    read_only_in_reset_func;
end
function void read_only_in_reset_func;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : read_only_in_reset_ff
    if ( ~arstn ) begin
        integer jj;
        integer aaa;
        integer aa;
        aa = 1;
        jj = 0;
        aaa = jj + aa;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: write_only_in_reset (test_cthread_reset.cpp:432:5) 

// Next-state combinational logic
always_comb begin : write_only_in_reset_comb     // test_cthread_reset.cpp:432:5
    write_only_in_reset_func;
end
function void write_only_in_reset_func;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : write_only_in_reset_ff
    if ( ~arstn ) begin
        integer i;
        integer j;
        i = 0;
        j = 1;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_init_in_reset (test_cthread_reset.cpp:451:5) 

// Thread-local variables
logic arr2_next[3];
logic signed [31:0] arr4[2];
logic signed [31:0] arr4_next[2];
logic a_next3;
logic signed [1:0] arr1[3];

// Next-state combinational logic
always_comb begin : array_init_in_reset_comb     // test_cthread_reset.cpp:451:5
    array_init_in_reset_func;
end
function void array_init_in_reset_func;
    a_next3 = a;
    arr2_next = arr2;
    arr4_next = arr4;
    arr1[0] = 1;
    arr1[s7] = 2;
    a_next3 = |arr1[0];
    a_next3 = |(arr2[1] + arr4_next[s7]);
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : array_init_in_reset_ff
    if ( ~arstn ) begin
        integer arr3[2];
        logic signed [1:0] arr1[3];
        arr1[0] = 1;
        arr2[1] <= 1;
        arr3[0] = 1; arr3[1] = 2;
        for (integer i = 0; i < 2; ++i)
        begin
            arr4[i] <= arr3[i];
        end
    end
    else begin
        arr2 <= arr2_next;
        arr4 <= arr4_next;
        a <= a_next3;
    end
end

endmodule


