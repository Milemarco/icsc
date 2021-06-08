//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.19
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
logic [2:0] s;
logic signed [2:0] t;
logic [65:0] bs;
logic signed [65:0] bt;

//------------------------------------------------------------------------------
// Method process: comp_narrow_var_pos (test_const_cond_narrow.cpp:47:5) 

always_comb 
begin : comp_narrow_var_pos     // test_const_cond_narrow.cpp:47:5
    integer k;
    logic [2:0] a;
    k = 0;
    a = s;
    if (0)
    begin
    end else begin
        k = 1;
    end
    if (1)
    begin
        k = 2;
    end
    if (a == 7)
    begin
        k = 3;
    end else begin
        k = 3;
    end
    if (0 != a)
    begin
        k = 4;
    end else begin
        k = 4;
    end
end

//------------------------------------------------------------------------------
// Method process: comp_narrow_var_neg (test_const_cond_narrow.cpp:77:5) 

always_comb 
begin : comp_narrow_var_neg     // test_const_cond_narrow.cpp:77:5
    integer k;
    logic signed [2:0] a;
    k = 0;
    a = t;
    if (0)
    begin
    end else begin
        k = 1;
    end
    if (1)
    begin
        k = 2;
    end
    if (-4'sd4 == a)
    begin
        k = 3;
    end else begin
        k = 3;
    end
    if (a != 3)
    begin
        k = 4;
    end else begin
        k = 4;
    end
end

//------------------------------------------------------------------------------
// Method process: comp_narrow_var_pos_neg (test_const_cond_narrow.cpp:107:5) 

always_comb 
begin : comp_narrow_var_pos_neg     // test_const_cond_narrow.cpp:107:5
    integer k;
    logic [2:0] a;
    k = 0;
    a = s;
    if (0)
    begin
    end else begin
        k = 1;
    end
    if (1)
    begin
        k = 2;
    end
end

//------------------------------------------------------------------------------
// Method process: comp_narrow_var_great (test_const_cond_narrow.cpp:125:5) 

always_comb 
begin : comp_narrow_var_great     // test_const_cond_narrow.cpp:125:5
    integer k;
    logic [2:0] a;
    logic signed [2:0] b;
    k = 0;
    a = s;
    b = t;
    if (0)
    begin
    end else begin
        k = 1;
    end
    if (1)
    begin
        k = 2;
    end
    if (0)
    begin
    end else begin
        k = 3;
    end
    if (1)
    begin
        k = 4;
    end
end

//------------------------------------------------------------------------------
// Method process: comp_narrow_var_big_pos (test_const_cond_narrow.cpp:158:5) 

always_comb 
begin : comp_narrow_var_big_pos     // test_const_cond_narrow.cpp:158:5
    integer k;
    logic [64:0] a;
    logic [65:0] C;
    logic signed [64:0] b;
    logic signed [66:0] D;
    k = 0;
    a = bs;
    C = 66'd1 <<< 65;
    b = bt;
    D = -(67'd1 <<< 65);
    if (0)
    begin
    end else begin
        k = 1;
    end
    if (1)
    begin
        k = 2;
    end
    if (a == C >>> 1)
    begin
        k = 3;
    end else begin
        k = 3;
    end
    if (0)
    begin
    end else begin
        k = 4;
    end
    if (1)
    begin
        k = 4;
    end
    if (b != D / 4)
    begin
        k = 5;
    end else begin
        k = 5;
    end
    if (0)
    begin
    end else begin
        k = 6;
    end
    if (0)
    begin
    end else begin
        k = 7;
    end
    if (0)
    begin
    end else begin
        k = 8;
    end
    if (1)
    begin
        k = 9;
    end
    if (b < D / 7)
    begin
        k = 10;
    end else begin
        k = 10;
    end
end

endmodule


