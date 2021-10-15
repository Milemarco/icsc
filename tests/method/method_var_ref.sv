//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.1
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);

// Variables generated for SystemC signals
logic clk;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .clk(clk)
);

endmodule



//==============================================================================
//
// Module: A (test_var_ref.cpp:266:5)
//
module A // "b_mod.a_mod"
(
    input logic clk
);

// Variables generated for SystemC signals
logic nrst;
logic [3:0] s;
logic [3:0] sig;
logic [7:0] sig2;
logic [3:0] sig3;
logic [3:0] sig_arr[3];
logic [7:0] sig_arr2[3];
logic [31:0] indx;

//------------------------------------------------------------------------------
// Method process: reference1 (test_var_ref.cpp:62:5) 

// Process-local variables
logic signed [31:0] n;
logic signed [31:0] kk;

always_comb 
begin : reference1     // test_var_ref.cpp:62:5
    integer a;
    integer unsigned m_1[3];
    logic bb[5];
    integer i_1;
    integer j;
    a = 1;
    m_1[1] = 1;
    for (integer i = 0; i < 5; i++)
    begin
        bb[i] = |i;
    end
    n = 1;
    i_1 = kk;
    i_1 = n + kk;
    j = a;
    j = a + m_1[1] * a + i_1;
end

//------------------------------------------------------------------------------
// Method process: reference2 (test_var_ref.cpp:88:5) 

// Process-local variables
logic [6:0] f;

always_comb 
begin : reference2     // test_var_ref.cpp:88:5
    logic [3:0] a;
    logic [2:0] m1[4];
    logic signed [64:0] m2[3];
    logic signed [65:0] e;
    a = 0;
    a = 1;
    m1[0] = 0; m1[1] = 0; m1[2] = 0; m1[3] = 0;
    m1[0] = 1;
    m2[0] = 0; m2[1] = 0; m2[2] = 0;
    m2[2] = m1[0];
    f = 1;
    e = signed'({1'b0, m1[0]}) + signed'({1'b0, a}) * m2[2] - signed'({1'b0, f});
end

//------------------------------------------------------------------------------
// Method process: reference3 (test_var_ref.cpp:108:5) 

// Process-local variables
logic [3:0] gm[3][4];

always_comb 
begin : reference3     // test_var_ref.cpp:108:5
    integer unsigned lm[5];
    integer i;
    lm[s] = 1;
    i = lm[s];
    i = lm[i];
    lm[i] = lm[i];
    lm[i + 1] = i;
    gm[s][1] = 0;
    gm[gm[i][2]][0] = gm[i][2];
    i = gm[s][1];
    gm[i][i] = lm[i + 1];
end

//------------------------------------------------------------------------------
// Method process: const_reference (test_var_ref.cpp:132:5) 

// Process-local variables
logic signed [31:0] k;
logic signed [31:0] m;

always_comb 
begin : const_reference     // test_var_ref.cpp:132:5
    integer a;
    integer unsigned d;
    integer unsigned e;
    integer unsigned arr[3];
    a = 1;
    a = a + 1;
    k = a;
    m = k + a * a;
    d = 3;
    m = d + k;
    e = 3 + d;
    m = e - d;
    arr[0] = 1;
    arr[1] = 2;
    arr[2] = 3;
    m = arr[1] - 2 * d - e * e;
end

//------------------------------------------------------------------------------
// Method process: const_reference2 (test_var_ref.cpp:159:5) 

always_comb 
begin : const_reference2     // test_var_ref.cpp:159:5
    logic [3:0] a;
    integer m_1;
    logic [2:0] arr[5];
    logic [2:0] f_1;
    logic signed [9:0] g;
    a = 0;
    a = 1;
    m_1 = a[3 : 1];
    arr[0] = 0; arr[1] = 0; arr[2] = 0; arr[3] = 0; arr[4] = 0;
    f_1 = 4;
    g = arr[2] + arr[3] * arr[3] - f_1;
end

//------------------------------------------------------------------------------
// Method process: const_reference3 (test_var_ref.cpp:176:5) 

always_comb 
begin : const_reference3     // test_var_ref.cpp:176:5
    logic [2:0] arr[3];
    integer m_1;
    integer sum;
    arr[0] = 0; arr[1] = 0; arr[2] = 0;
    m_1 = s;
    sum = arr[s] + arr[s + 1] + arr[m_1] + arr[m_1 - 1];
end

//------------------------------------------------------------------------------
// Method process: const_reference_sig (test_var_ref.cpp:191:5) 

always_comb 
begin : const_reference_sig     // test_var_ref.cpp:191:5
    logic [3:0] c;
    logic [3:0] d;
    logic [3:0] e;
    integer sum;
    c = sig + 1;
    d = sig2;
    e = sig3;
    sum = sig + sig + c + d + e;
end

//------------------------------------------------------------------------------
// Method process: const_reference_sig_arr (test_var_ref.cpp:206:5) 

always_comb 
begin : const_reference_sig_arr     // test_var_ref.cpp:206:5
    logic [3:0] e;
    integer sum;
    e = sig_arr2[s];
    sum = sig_arr[1] + sig_arr[1] + sig_arr[s] + sig_arr[s + 1] + e;
end

//------------------------------------------------------------------------------
// Method process: init_list (test_var_ref.cpp:224:5) 

always_comb 
begin : init_list     // test_var_ref.cpp:224:5
    integer m_1;
    integer il4[2];
    m_1 = 1;
    il4[0] = 0; il4[1] = m_1;
end

//------------------------------------------------------------------------------
// Clocked THREAD: array_ref_wait (test_var_ref.cpp:250:5) 

// Thread-local variables
logic [3:0] arr0[3];
logic [3:0] arr_next[3];
logic [3:0] sig_next;
logic [1:0] array_ref_wait_PROC_STATE;
logic [1:0] array_ref_wait_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : array_ref_wait_comb     // test_var_ref.cpp:250:5
    array_ref_wait_func;
end
function void array_ref_wait_func;
    arr_next = arr0;
    sig_next = sig;
    array_ref_wait_PROC_STATE_next = array_ref_wait_PROC_STATE;
    
    case (array_ref_wait_PROC_STATE)
        0: begin
            array_ref_wait_PROC_STATE_next = 1; return;    // test_var_ref.cpp:256:13;
        end
        1: begin
            sig_next = arr_next[indx];
            array_ref_wait_PROC_STATE_next = 2; return;    // test_var_ref.cpp:258:13;
        end
        2: begin
            array_ref_wait_PROC_STATE_next = 1; return;    // test_var_ref.cpp:256:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : array_ref_wait_ff
    if ( ~nrst ) begin
        arr0[0] <= 0; arr0[1] <= 0; arr0[2] <= 0;
        array_ref_wait_PROC_STATE <= 0;    // test_var_ref.cpp:252:9;
    end
    else begin
        arr0 <= arr_next;
        sig <= sig_next;
        array_ref_wait_PROC_STATE <= array_ref_wait_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Method process: reference_init_func (test_var_ref.cpp:235:5) 

always_comb 
begin : reference_init_func     // test_var_ref.cpp:235:5
    integer m_1;
    integer r;
    integer rr;
    integer TMP_0;
    integer i;
    integer a;
    m_1 = 1;
    r = m_1++;
    rr = --m_1;
    i = m_1++;
    // Call f1() begin
    TMP_0 = i + 1;
    // Call f1() end
    a = r + rr + TMP_0;
end

endmodule


