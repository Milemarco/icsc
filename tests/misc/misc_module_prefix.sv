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
module MPREF_Top // "top"
(
);

// Variables generated for SystemC signals
logic s;


//------------------------------------------------------------------------------
// Child module instances

MPREF_A aa
(
  .s(s)
);

MPREF_B bb
(

);

endmodule



//==============================================================================
//
// Module: A (test_module_prefix.cpp:73:5)
//
module MPREF_A // "top.aa"
(
    input logic s
);

//------------------------------------------------------------------------------
// Method process: proc (test_module_prefix.cpp:42:5) 

always_comb 
begin : proc     // test_module_prefix.cpp:42:5
    integer i;
    i = 0;
    if (s)
    begin
        i = 1;
    end
end

endmodule



//==============================================================================
//
// Module: B (test_module_prefix.cpp:74:5)
//
module MPREF_B // "top.bb"
(
);

// Variables generated for SystemC signals
logic s;


//------------------------------------------------------------------------------
// Child module instances

MPREF_A a1
(
  .s(s)
);

MPREF_A a2
(
  .s(s)
);

I i
(
  .in(s)
);

endmodule



//==============================================================================
//
// Verilog intrinsic for module: I (test_module_prefix.cpp:58:5)
//
module I(input in);
   // Some verilog code
endmodule
    
