//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.24
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A_mod ()
//
module A_mod // "a_mod"
(
);

// Variables generated for SystemC signals
logic [3:0] s;

// Local parameters generated for C++ constants
localparam logic [31:0] A = 'd1;
localparam logic [7:0] K = 'd17;
localparam logic signed [7:0] L = 'd17;
localparam logic [63:0] N = 'd1365;
localparam logic [3:0] CK = 'd2;
localparam logic [7:0] CL = 'd86;
localparam logic [31:0] B = 'd2;

//------------------------------------------------------------------------------
// Method process: ref_const (test_const_binary.cpp:73:5) 

always_comb 
begin : ref_const     // test_const_binary.cpp:73:5
    logic [31:0] z;
    logic [3:0] RK;
    z = 0;
    RK = 'h34;
    z = {K, RK};
end

//------------------------------------------------------------------------------
// Method process: shorten_const (test_const_binary.cpp:86:5) 

always_comb 
begin : shorten_const     // test_const_binary.cpp:86:5
    logic [31:0] z;
    logic [3:0] CKL;
    z = CK + 1;
    `ifndef INTEL_SVA_OFF
        assert (z == 3) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    z = {K, CK};
    `ifndef INTEL_SVA_OFF
        assert (z == 'h112) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    z = {CK, CL};
    `ifndef INTEL_SVA_OFF
        assert (z == 'h256) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    z = {CK, 4'd5};
    `ifndef INTEL_SVA_OFF
        assert (z == 'h25) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    CKL = 'h78;
    z = {CK, CKL};
    `ifndef INTEL_SVA_OFF
        assert (z == 'h28) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: big_shift (test_const_binary.cpp:46:5) 

always_comb 
begin : big_shift     // test_const_binary.cpp:46:5
    logic [130:0] a;
    logic [141:0] b;
    logic [138:0] c;
    logic [19:0] d;
    a = 131'd1 <<< 130;
    b = (signed'({1'b0, a}) + 3) <<< 10;
    c = b - a + 1;
    d = c >>> 120;
    `ifndef INTEL_SVA_OFF
        assert (d == 'h7FC00) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: concat_const (test_const_binary.cpp:105:5) 

always_comb 
begin : concat_const     // test_const_binary.cpp:105:5
    logic [3:0] a;
    logic [15:0] b;
    logic [71:0] d;
    a = {2'd1, 2'd2};
    `ifndef INTEL_SVA_OFF
        assert (a == 6) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    a = {2'(A + 1), 2'(B)};
    `ifndef INTEL_SVA_OFF
        assert (a == 10) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    a = {3'd1, 1'd2};
    `ifndef INTEL_SVA_OFF
        assert (a == 2) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    a = {3'(A), 1'(B)};
    `ifndef INTEL_SVA_OFF
        assert (a == 2) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    b = {K, L};
    `ifndef INTEL_SVA_OFF
        assert (b == 'h1111) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    b = {K, 4'(L)};
    `ifndef INTEL_SVA_OFF
        assert (b == 'h111) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    b = {4'(K), L};
    `ifndef INTEL_SVA_OFF
        assert (b == 'h111) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    b = {2'(K), 10'(L)};
    `ifndef INTEL_SVA_OFF
        assert (b == 'h411) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    d = {N, K};
    `ifndef INTEL_SVA_OFF
        assert (d == 'h55511) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: concat_local_const (test_const_binary.cpp:139:5) 

always_comb 
begin : concat_local_const     // test_const_binary.cpp:139:5
    logic [7:0] KL;
    logic [11:0] KM;
    logic [31:0] b;
    logic [71:0] d;
    KL = 'h11;
    KM = 'h222;
    b = {2'd1, KL};
    `ifndef INTEL_SVA_OFF
        assert (b == 'h111) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    b = {5'd4, KL, 4'd7};
    `ifndef INTEL_SVA_OFF
        assert (b == 'h4117) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    b = {L, KL};
    `ifndef INTEL_SVA_OFF
        assert (b == 'h1111) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    b = {3'(K), 5'(KL)};
    `ifndef INTEL_SVA_OFF
        assert (b == 'h31) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    d = {KL, KM};
    `ifndef INTEL_SVA_OFF
        assert (d == 'h11222) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    d = {N, KM, K};
    `ifndef INTEL_SVA_OFF
        assert (d == 'h55522211) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
end

//------------------------------------------------------------------------------
// Method process: concat_const_var (test_const_binary.cpp:168:5) 

always_comb 
begin : concat_const_var     // test_const_binary.cpp:168:5
    logic [3:0] a;
    logic [7:0] b;
    logic [15:0] c;
    logic [15:0] d;
    logic [19:0] e;
    a = s;
    b = {2'd1, a};
    b = {a, 4'hFF};
    b = {a, 4'(254 + 1)};
    c = {b, K};
    c = {K, a};
    d = 11'(K);
    d = 11'(a);
    d = {11'(K), 3'(a)};
    d = {3'(K), 5'(a)};
    e = 11'(K + a * B);
    e = 11'(3'(K) + (B >>> 2));
    e = 7'(7'(a) + 14'(K));
end

//------------------------------------------------------------------------------
// Method process: concat_const_cast (test_const_binary.cpp:188:5) 

always_comb 
begin : concat_const_cast     // test_const_binary.cpp:188:5
    logic [15:0] a;
    logic [6:0] b;
    a = {8'(4'h55), 8'(4'h11)};
    `ifndef INTEL_SVA_OFF
        assert (a == 'h501) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    a = {1'd1, 6'(4'(K + 1)), 6'(4'(L))};
    `ifndef INTEL_SVA_OFF
        assert (a == 'h1081) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    b = 8'(N);
    `ifndef INTEL_SVA_OFF
        assert (b == 'h55) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
    b = 6'(N);
    `ifndef INTEL_SVA_OFF
        assert (b == 'h15) else $error("Assertion failed at test_const_binary.cpp:44:24>");
    `endif // INTEL_SVA_OFF
end

endmodule


