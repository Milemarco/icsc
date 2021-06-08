//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.20
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


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .a(a),
  .b(b)
);

endmodule



//==============================================================================
//
// Module: A (test_empty_sensvty3_fail.cpp:42:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b
);

//------------------------------------------------------------------------------
// Method process: empty_fail1 (test_empty_sensvty3_fail.cpp:24:5) 

integer i;
integer j;
assign i = 1;
assign j = i++;

endmodule


