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
logic a;
logic b;
logic c;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .a(a),
  .b(b),
  .c(c)
);

endmodule



//==============================================================================
//
// Module: A (test_shift_type_ext.cpp:447:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// Variables generated for SystemC signals
logic [31:0] s;
logic [3:0] arrsig[3];
logic [3:0] arrsigp[3];
logic [3:0] arrsig2d[3][2];
logic [3:0] vecsig[3];
logic [3:0] vecsig2d[3][2];
logic [7:0] c1;
logic signed [15:0] c2;
logic [65:0] c3;
logic signed [69:0] c4;
logic [31:0] ch0;
logic [13:0] ch1;

//------------------------------------------------------------------------------
// Method process: sc_shift_type_extension_array_binary (test_shift_type_ext.cpp:95:5) 

// Process-local variables
logic [3:0] arr[3];
logic [3:0] arrp[3];
logic [3:0] arr2d[3][2];

always_comb 
begin : sc_shift_type_extension_array_binary     // test_shift_type_ext.cpp:95:5
    integer i;
    integer unsigned j;
    logic [15:0] x;
    logic [7:0] la;
    i = s;
    j = s;
    x = s;
    la = 0;
    la = 5'(arr[i] <<< 1) >>> 8;
    la = 5'(arrp[i] <<< 1) >>> 8;
    la = 5'(arr2d[i][j] <<< 1) >>> 8;
    la = 5'(arrsig[i] <<< 1) >>> 8;
    la = 5'(arrsigp[i] <<< 1) >>> 8;
    la = 5'(arrsig2d[i][j] <<< 1) >>> 8;
    la = 5'(vecsig[i] <<< 1) >>> 8;
    la = 5'(vecsig2d[i][j] <<< 1) >>> 8;
    la = 8'(arr[i] * arrp[i]) >>> 8;
    la = 8'(arrsig[i] * arrsigp[i]) >>> 8;
    la = 8'(arrsig2d[i][j] * vecsig[i]) >>> 8;
    la = 6'(vecsig2d[i][j] * 2) >>> 8;
    la = 5'(arr[i] - arrp[i]) >>> 8;
    la = 5'(arrsig[i] + arrsigp[i]) >>> 8;
    la = 6'(arrsig2d[i][j] - vecsig[i] + 1) >>> 8;
    la = 5'(vecsig2d[i][j] + 2) >>> 8;
    la = 1 <<< 5'(arrp[i] <<< 1);
    la = 1 >>> 5'(arr[i] - arrp[i]);
    la = 2 <<< 5'(arrsig[i] + arrsigp[i]);
    la = 64'(arrsig2d[i][j] <<< j) >>> 4;
    la = 64'(arrsig2d[i][j] <<< x) >>> 4;
    la = 2 <<< 19'(vecsig[i] <<< arrsigp[i]);
    la = 2 <<< 32'(arrsig2d[i][j] <<< i);
    la = 2 <<< (vecsig[i] / vecsig2d[i][j]);
end

//------------------------------------------------------------------------------
// Method process: sc_shift_type_extension_binary (test_shift_type_ext.cpp:141:5) 

always_comb 
begin : sc_shift_type_extension_binary     // test_shift_type_ext.cpp:141:5
    logic [7:0] a_1;
    logic [7:0] b_1;
    logic [7:0] c_1;
    logic [7:0] d;
    logic [2:0] e;
    integer unsigned K;
    integer j;
    a_1 = 0;
    b_1 = 0;
    c_1 = 0;
    d = 1;
    e = 0;
    K = 42;
    a_1 = 9'(b_1 <<< 1) >>> 8;
    a_1 = 10'(b_1 <<< 2) >>> 8;
    a_1 = 13'(b_1 <<< 5) >>> 8;
    a_1 = 64'(b_1 <<< c_1) >>> 8;
    a_1 = 15'(b_1 <<< e) >>> 8;
    a_1 = 16'(b_1 * c_1) >>> 8;
    a_1 = 16'(b_1 * c_1) >>> 8;
    a_1 = 40'(b_1 * K) >>> 8;
    a_1 = 14'(b_1 * 42) >>> 8;
    a_1 = 9'(b_1 + c_1) >>> 8;
    a_1 = 9'(b_1 - c_1) >>> 8;
    a_1 = 9'(b_1 + c_1) >>> 8;
    a_1 = 33'(b_1 + K) >>> 8;
    a_1 = 9'(b_1 + 42) >>> 8;
    a_1 = 9'(b_1 - 42) >>> 8;
    a_1 = 12'(1024 + b_1) >>> 8;
    a_1 = 16'((b_1 = b_1 * c_1) * c_1) >>> 8;
    a_1 = (b_1 | c_1) >>> 8;
    a_1 = (b_1 ^ 1024) >>> 8;
    a_1 = (b_1 / 1024) >>> 8;
    a_1 = (b_1 >>> 42) >>> 8;
    j = s;
    a_1 = 64'(b_1 <<< j) >>> 4;
    a_1 = 32'(j <<< b_1) >>> 4;
end

//------------------------------------------------------------------------------
// Method process: sc_shift_type_extension_big_binary (test_shift_type_ext.cpp:185:5) 

always_comb 
begin : sc_shift_type_extension_big_binary     // test_shift_type_ext.cpp:185:5
    logic [63:0] M;
    logic [65:0] x;
    logic [65:0] y;
    logic [65:0] z;
    logic [65:0] u;
    M = 1 <<< 50;
    x = 0;
    y = 0;
    z = 0;
    u = 1;
    x = 132'(y * z) >>> 8;
    x = signed'({1'b0, 67'(z + y)}) / 8;
    x = 67'(signed'({1'b0, z}) - signed'({1'b0, y})) % 11;
    x = 131'(y * z) >>> 8;
    x = 133'(y * z) >>> 8;
    x = 106'(y * 40'hE8D4A51000) >>> 8;
    x = 130'(y * M) >>> 8;
    x = 67'(signed'({1'b0, y}) - 41'shE8D4A51000) >>> 8;
    x = 85'((M <<< 20) + y) >>> 8;
    x = 86'(y <<< 20) >>> 8;
    x = 42'(y <<< 20) >>> 8;
    x = 42'(y <<< x) >>> 8;
    x = 68'(signed'({1'b0, (z = z + y)}) * 2) >>> 8;
end

//------------------------------------------------------------------------------
// Method process: sc_shift_type_extension_unary (test_shift_type_ext.cpp:209:5) 

always_comb 
begin : sc_shift_type_extension_unary     // test_shift_type_ext.cpp:209:5
    logic [7:0] a_1;
    logic [7:0] b_1;
    logic [7:0] c_1;
    logic [7:0] d;
    logic [2:0] e;
    integer unsigned K;
    logic [63:0] M;
    logic [65:0] x;
    logic [65:0] y;
    logic [65:0] z;
    logic [65:0] u;
    a_1 = 0;
    b_1 = 0;
    c_1 = 0;
    d = 1;
    e = 0;
    K = 42;
    M = 1 <<< 50;
    x = 0;
    y = 0;
    z = 0;
    u = 1;
    a_1 = 14'(b_1 * (-7'sd42)) >>> 8;
    a_1 = 15'(b_1 * (-7'sd42) + 1) >>> 8;
    a_1 = 10'((-7'sd42) - b_1 - c_1) >>> 8;
    a_1 = 18'((++b_1) * (c_1--)) >>> 8;
    a_1 = (1 | c_1) >>> 8;
    a_1 = 9'(~b_1 + 1) >>> 8;
    a_1 = 2'(!(|b_1) + 1) >>> 8;
    x = signed'({1'b0, (z ^ y)}) / 42;
    x = 68'(signed'({1'b0, z++}) - signed'({1'b0, y})) / 42;
end

//------------------------------------------------------------------------------
// Method process: sc_shift_type_extension_channel (test_shift_type_ext.cpp:236:5) 

always_comb 
begin : sc_shift_type_extension_channel     // test_shift_type_ext.cpp:236:5
    logic [7:0] a_1;
    logic [65:0] x;
    a_1 = 0;
    x = 0;
    a_1 = 17'(c1 + c2) >>> 8;
    a_1 = 24'(c1 * c2) >>> 8;
    x = 137'(signed'({1'b0, c3}) * c4 - c2) >>> 17'(c1 + c2);
end

//------------------------------------------------------------------------------
// Method process: sc_shift_type_extension_ref_ptr (test_shift_type_ext.cpp:248:5) 

// Process-local variables
logic [7:0] pa;

always_comb 
begin : sc_shift_type_extension_ref_ptr     // test_shift_type_ext.cpp:248:5
    logic [7:0] a_1;
    logic [7:0] b_1;
    logic [15:0] c_1;
    a_1 = 0;
    b_1 = 0;
    c_1 = 0;
    a_1 = 24'(b_1 * c_1) >>> 8;
    a_1 = 17'(b_1 - c_1) >>> 8;
    a_1 = 17'(b_1 + c_1) >>> 8;
    a_1 = 9'(pa + 42) >>> 8;
    a_1 = 9'(pa + 42) >>> 8;
    a_1 = 24'(c_1 * pa) >>> 9'(pa + 1);
end

//------------------------------------------------------------------------------
// Method process: sc_shift_type_extension_part_select (test_shift_type_ext.cpp:265:5) 

always_comb 
begin : sc_shift_type_extension_part_select     // test_shift_type_ext.cpp:265:5
    logic [7:0] a_1;
    logic [7:0] b_1;
    logic [15:0] c_1;
    integer i;
    a_1 = 0;
    b_1 = 0;
    c_1 = 0;
    a_1 = 5'(b_1[4 : 1] + 1) >>> 8;
    a_1 = 9'(c_1[3] * b_1) >>> 8;
    a_1 = 7'(c_1[i * 8 +: 6] + 1) >>> 8;
end

//------------------------------------------------------------------------------
// Method process: sc_shift_type_extension_cast (test_shift_type_ext.cpp:278:5) 

always_comb 
begin : sc_shift_type_extension_cast     // test_shift_type_ext.cpp:278:5
    logic [7:0] a_1;
    logic [7:0] b_1;
    logic [15:0] c_1;
    a_1 = 0;
    b_1 = 0;
    c_1 = 0;
    a_1 = 13'(12'(b_1) + 1) >>> 8;
    a_1 = 11'(10'(b_1) + 1) >>> 8;
    a_1 = 13'(12'(10'(b_1)) + 1) >>> 8;
    a_1 = 20'(b_1 * c_1) >>> 8;
end

//------------------------------------------------------------------------------
// Method process: sc_shift_type_extension_cond (test_shift_type_ext.cpp:289:5) 

always_comb 
begin : sc_shift_type_extension_cond     // test_shift_type_ext.cpp:289:5
    logic cond;
    logic [7:0] a_1;
    logic [15:0] c_1;
    logic [15:0] b_1;
    a_1 = 0;
    c_1 = 0;
    b_1 = 0;
    a_1 = 17'((cond ? b_1 : c_1) + 1) >>> 8;
    a_1 = 33'((cond ? (b_1 * c_1) : (c_1 * b_1)) + 1) >>> 8;
end

//------------------------------------------------------------------------------
// Method process: sc_shift_type_extension_concat (test_shift_type_ext.cpp:299:5) 

always_comb 
begin : sc_shift_type_extension_concat     // test_shift_type_ext.cpp:299:5
    logic cond;
    integer i;
    integer unsigned u;
    logic [7:0] a_1;
    logic [7:0] b_1;
    logic [15:0] c_1;
    a_1 = 0;
    b_1 = 0;
    c_1 = 0;
    a_1 = signed'({1'b0, {b_1, c_1}}) + 3;
    a_1 = signed'({1'b0, {b_1, c_1}}) * 3;
    a_1 = {b_1, c_1} * 3;
    a_1 = signed'({1'b0, {b_1, c_1}}) * i;
    a_1 = {b_1, c_1} * u;
    a_1 = {b_1, c_1} * a_1;
    a_1 = 26'(signed'({1'b0, {b_1, c_1}}) * 3) >>> 8;
    a_1 = 30'({b_1, 6'd42} * c_1) >>> 8;
end

//------------------------------------------------------------------------------
// Method process: sc_shift_type_extension_comma (test_shift_type_ext.cpp:317:5) 

always_comb 
begin : sc_shift_type_extension_comma     // test_shift_type_ext.cpp:317:5
    logic signed [7:0] a_1;
    integer b_1;
    integer c_1;
    a_1 = 0;
    b_1++;
    a_1 = c_1 >>> 8;
    b_1++;
    a_1 = 34'(c_1 * 3) >>> 8;
    b_1++;
    a_1 = 35'(c_1 * 5) >>> 8;
    b_1++;
    a_1 = 33'(c_1 + 1) >>> 8;
    b_1++;
    a_1 = 5'(c_1) >>> 8;
end

//------------------------------------------------------------------------------
// Method process: sc_shift_type_extension_fcall (test_shift_type_ext.cpp:333:5) 

always_comb 
begin : sc_shift_type_extension_fcall     // test_shift_type_ext.cpp:333:5
    logic cond;
    logic [7:0] a_1;
    logic [15:0] c_1;
    logic [15:0] b_1;
    logic [16:0] TMP_0;
    logic [15:0] i;
    a_1 = 0;
    c_1 = 0;
    b_1 = 0;
    i = b_1;
    // Call h() begin
    TMP_0 = ++i;
    // Call h() end
    a_1 = 18'(TMP_0 + 1) >>> 8;
end

//------------------------------------------------------------------------------
// Method process: sc_shift_type_extension (test_shift_type_ext.cpp:344:5) 

always_comb 
begin : sc_shift_type_extension     // test_shift_type_ext.cpp:344:5
    logic [7:0] a_1;
    logic [7:0] b_1;
    logic [7:0] c_1;
    logic signed [40:0] u;
    logic [66:0] w;
    a_1 = 3;
    b_1 = 0;
    c_1 = 0;
    a_1 = b_1 >>> 8;
    a_1 = 4 >>> c_1;
    a_1 = 16'(b_1 * c_1) >>> 8;
    b_1 = (c_1 + a_1) <<< a_1;
    b_1 = (c_1 - a_1) <<< 17'(b_1 * a_1 + 1);
    u = 0;
    w = 0;
    w = u >>> 8;
    w = u <<< a_1;
    a_1 = 68'(signed'({1'b0, w}) + u) >>> 32'(signed'({1'b0, w}) * u);
    a_1 = 68'(signed'({1'b0, w}) + u) >>> 2;
    w = w <<< 32'(signed'({1'b0, w}) - u);
    u = (w * a_1) <<< 10;
    b_1 = 42'(signed'({1'b0, c_1}) - u) >>> a_1;
end

//------------------------------------------------------------------------------
// Method process: cpp_shift_type_extension (test_shift_type_ext.cpp:365:5) 

always_comb 
begin : cpp_shift_type_extension     // test_shift_type_ext.cpp:365:5
    integer a_1;
    integer unsigned b_1;
    integer unsigned c_1;
    logic [63:0] l1;
    logic [63:0] l2;
    logic [3:0] e;
    a_1 = 3;
    a_1 = b_1 >>> 8;
    a_1 = 4 >>> c_1;
    a_1 = 64'(b_1 * c_1) >>> 8;
    b_1 = (c_1 + a_1) <<< a_1;
    b_1 = 33'(c_1 - a_1) >>> 32'(b_1 * a_1 + 1);
    l1 = 64'(b_1 * c_1) >>> 8;
    l2 = (l1 * 3) <<< 3;
    e = 0;
    a_1 = (e * b_1) <<< 3;
    a_1 = 36'(e * b_1) >>> 3;
    a_1 = l1 >>> 32'(c_1 - e);
end

//------------------------------------------------------------------------------
// Method process: chan_shift_type_extension (test_shift_type_ext.cpp:388:5) 

always_comb 
begin : chan_shift_type_extension     // test_shift_type_ext.cpp:388:5
    integer a_1;
    integer unsigned b_1;
    logic signed [76:0] d;
    a_1 = 3;
    b_1 = 4;
    a_1 = 34'(ch0 * 2) >>> 8;
    a_1 = 4 >>> 32'(b_1 * ch1);
    d = 15'(ch1 + 1) >>> a_1;
    d = 16'(ch1 * 2) >>> a_1;
end

//------------------------------------------------------------------------------
// Method process: div_type_extension (test_shift_type_ext.cpp:397:5) 

always_comb 
begin : div_type_extension     // test_shift_type_ext.cpp:397:5
    integer f;
    integer unsigned g;
    logic signed [63:0] h;
    logic signed [4:0] x;
    logic [43:0] y;
    logic signed [65:0] z;
    f = 3;
    x = 0;
    y = 0;
    z = 0;
    x = f / signed'(32'(g));
    y = 33'(f + 1) / (signed'(32'(g)) + 1);
    y = 33'(f + 1) % (signed'(32'(g)) + 1);
    h = 96'(h * f) / 2;
    z = 96'(h * f) % signed'({1'b0, y});
    y = 65'(h - x) / 3;
    y = (signed'({1'b0, y}) / h) % 3;
    y = 108'(signed'({1'b0, y}) * h) % 3;
end

//------------------------------------------------------------------------------
// Method process: compound_type_extension (test_shift_type_ext.cpp:418:5) 

always_comb 
begin : compound_type_extension     // test_shift_type_ext.cpp:418:5
    integer f;
    integer unsigned g;
    logic signed [63:0] h;
    logic [4:0] x;
    logic [43:0] y;
    logic signed [65:0] z;
    f = 3;
    x = 0;
    y = 0;
    z = 0;
    x = x >>> 32'(f + 1);
    x = x >>> (32'(f + 1));
    y = y >>> (7'(x * 3));
    y = y >>> x;
    z = z <<< (32'(y <<< 1));
    z = z <<< (signed'({1'b0, y}) / 2);
    z = z <<< 42;
end

endmodule


