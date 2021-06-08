//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.24
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "tb_inst.top_mod"
(
    input logic clk,
    input logic signed [15:0] in,
    output logic signed [15:0] out
);


//------------------------------------------------------------------------------
// Child module instances

Child child_inst
(
  .clk(clk),
  .in(in),
  .out(out)
);

endmodule



//==============================================================================
//
// Module: Child (test_promote_ports_simple.cpp:28:5)
//
module Child // "tb_inst.top_mod.child_inst"
(
    input logic clk,
    input logic signed [15:0] in,
    output logic signed [15:0] out
);

//------------------------------------------------------------------------------
// Method process: proc (test_promote_ports_simple.cpp:21:5) 

always_comb 
begin : proc     // test_promote_ports_simple.cpp:21:5
    out = in + 1;
end

endmodule


