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

// Local parameters generated for C++ constants
localparam logic signed [31:0] INT_2D[2][2] = '{ '{ 'd0, 'd1 }, '{ 'd2, 'd6 } };
localparam logic signed [31:0] INT_VALS[4] = '{ 'd42, 'd43, 'd44, 'd45 };
localparam logic signed [63:0] DOMAIN_VALS[4] = '{ -'d1, -'d2, -'d3, -'d4 };
localparam logic signed [31:0] INT_VALS0[4] = '{ 'd1, 'd2, 'd3, 'd4 };

//------------------------------------------------------------------------------
// Method process: test_method (test_const_array.cpp:38:5) 

always_comb 
begin : test_method     // test_const_array.cpp:38:5
    integer i;
    integer b;
    integer x;
    integer y;
    integer z;
    b = DOMAIN_VALS[i];
    x = INT_VALS0[0] - 1;
    y = 0;
    z = 0;
    for (integer i_1 = 0; i_1 < 4; ++i_1)
    begin
        x = x + INT_VALS[i_1];
        y = y + INT_VALS0[i_1];
        z = z + INT_2D[1 & (i_1 >>> 1)][1 & (i_1 >>> 1)];
    end
end

endmodule


