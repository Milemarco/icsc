//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.4
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
// Module: A (test_switch_empty_case.cpp:314:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// Variables generated for SystemC signals
logic [2:0] s;
logic [2:0] t;

//------------------------------------------------------------------------------
// Method process: switch_if_after_empty (test_switch_empty_case.cpp:58:5) 

always_comb 
begin : switch_if_after_empty     // test_switch_empty_case.cpp:58:5
    integer i;
    integer m_1;
    i = 0;
    m_1 = s;
    case (m_1)
    1 : begin  // Empty case without break
        if (s == 1)
        begin
            m_1 = 1;
        end
        m_1 = 2;
    end
    2 : begin
        if (s == 1)
        begin
            m_1 = 1;
        end
        m_1 = 2;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_if_after_empty2 (test_switch_empty_case.cpp:75:6) 

always_comb 
begin : switch_if_after_empty2     // test_switch_empty_case.cpp:75:6
    integer i;
    integer m_1;
    i = 0;
    m_1 = s;
    case (m_1)
    1 : begin  // Empty case without break
        if (s == 1)
        begin
            m_1 = 1;
        end
        if (s == 2)
        begin
            m_1 = 2;
        end
    end
    2 : begin
        if (s == 1)
        begin
            m_1 = 1;
        end
        if (s == 2)
        begin
            m_1 = 2;
        end
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: switch_for_after_empty (test_switch_empty_case.cpp:92:5) 

always_comb 
begin : switch_for_after_empty     // test_switch_empty_case.cpp:92:5
    integer i;
    integer m_1;
    i = 0;
    m_1 = s;
    case (m_1)
    1 : begin  // Empty case without break
        for (integer i_1 = 0; i_1 < 3; ++i_1)
        begin
            m_1 = m_1 + 1;
        end
        m_1 = 2;
    end
    2 : begin
        for (integer i_1 = 0; i_1 < 3; ++i_1)
        begin
            m_1 = m_1 + 1;
        end
        m_1 = 2;
    end
    default : begin
        m_1 = 3;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_for_after_empty2 (test_switch_empty_case.cpp:108:5) 

always_comb 
begin : switch_for_after_empty2     // test_switch_empty_case.cpp:108:5
    integer i;
    integer m_1;
    i = 0;
    m_1 = s;
    case (m_1)
    0 : begin  // Empty case without break
    end
    2 : begin
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_empty_case1 (test_switch_empty_case.cpp:121:5) 

always_comb 
begin : switch_empty_case1     // test_switch_empty_case.cpp:121:5
    integer i;
    integer m_1;
    i = 0;
    m_1 = s;
    case (m_1)
    1 : begin  // Empty case without break
        i = 2;
    end
    2 : begin
        i = 2;
    end
    default : begin
        i = 3;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_empty_case_if1 (test_switch_empty_case.cpp:133:5) 

always_comb 
begin : switch_empty_case_if1     // test_switch_empty_case.cpp:133:5
    integer i;
    integer m_1;
    i = 0;
    m_1 = s;
    case (m_1)
    0 : begin  // Empty case without break
        if (|s)
        begin
            i = 1;
        end
    end
    1 : begin  // Empty case without break
        if (|s)
        begin
            i = 1;
        end
    end
    2 : begin
        if (|s)
        begin
            i = 1;
        end
    end
    3 : begin  // Empty case without break
        i = 2;
    end
    4 : begin
        i = 2;
    end
    default : begin
        i = 3;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_empty_case_if2 (test_switch_empty_case.cpp:148:5) 

always_comb 
begin : switch_empty_case_if2     // test_switch_empty_case.cpp:148:5
    integer i;
    i = 0;
    case (t)
    1 : begin  // Empty case without break
        if (s == 1)
        begin
            i = 1;
        end else begin
            if (s == 2)
            begin
                i = 2;
            end
        end
    end
    2 : begin
        if (s == 1)
        begin
            i = 1;
        end else begin
            if (s == 2)
            begin
                i = 2;
            end
        end
    end
    default : begin
        i = 3;
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: switch_empty_case_if2a (test_switch_empty_case.cpp:164:5) 

always_comb 
begin : switch_empty_case_if2a     // test_switch_empty_case.cpp:164:5
    integer i;
    i = 0;
    case (t)
    1 : begin  // Empty case without break
        if (s == 1)
        begin
            i = 1;
        end else begin
            if (s == 2)
            begin
                i = 2;
            end
        end
    end
    2 : begin
        if (s == 1)
        begin
            i = 1;
        end else begin
            if (s == 2)
            begin
                i = 2;
            end
        end
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: switch_empty_case_if2b (test_switch_empty_case.cpp:179:6) 

always_comb 
begin : switch_empty_case_if2b     // test_switch_empty_case.cpp:179:6
    integer i;
    i = 0;
    case (t)
    1 : begin  // Empty case without break
        if (s == 1)
        begin
            i = 1;
        end else begin
            if (s == 2)
            begin
                i = 2;
            end
        end
    end
    2 : begin
        if (s == 1)
        begin
            i = 1;
        end else begin
            if (s == 2)
            begin
                i = 2;
            end
        end
    end
    3 : begin
        if (s == 1)
        begin
            i = 1;
        end
        if (s == 2)
        begin
            i = 2;
        end
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: switch_empty_case3 (test_switch_empty_case.cpp:201:5) 

always_comb 
begin : switch_empty_case3     // test_switch_empty_case.cpp:201:5
    integer i;
    integer m_1;
    i = 0;
    m_1 = s;
    case (m_1)
    0 : begin  // Empty case without break
        case (s)
        0 : begin
            i = 0;
        end
        1 : begin
            i = 1;
        end
        endcase
    end
    1 : begin  // Empty case without break
        case (s)
        0 : begin
            i = 0;
        end
        1 : begin
            i = 1;
        end
        endcase
    end
    2 : begin
        case (s)
        0 : begin
            i = 0;
        end
        1 : begin
            i = 1;
        end
        endcase
    end
    3 : begin  // Empty case without break
        i = 2;
    end
    4 : begin
        i = 2;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_empty_case4 (test_switch_empty_case.cpp:219:5) 

always_comb 
begin : switch_empty_case4     // test_switch_empty_case.cpp:219:5
    integer i;
    integer m_1;
    i = 0;
    m_1 = s;
    case (m_1)
    1 : begin  // Empty case without break
        i = 2;
    end
    2 : begin
        i = 2;
    end
    3 : begin  // Empty case without break
        i = 4;
    end
    4 : begin
        i = 4;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_empty_case4a (test_switch_empty_case.cpp:233:5) 

always_comb 
begin : switch_empty_case4a     // test_switch_empty_case.cpp:233:5
    integer i;
    integer m_1;
    m_1 = s;
    case (m_1)
    1 : begin  // Empty case without break
        i = 2;
    end
    2 : begin
        i = 2;
    end
    3 : begin  // Empty case without break
        i = 4;
    end
    4 : begin
        i = 4;
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: switch_empty_case4b (test_switch_empty_case.cpp:245:5) 

// Process-local variables
logic signed [31:0] m;

always_comb 
begin : switch_empty_case4b     // test_switch_empty_case.cpp:245:5
    integer i;
    case (m)
    1 : begin  // Empty case without break
        i = 2;
    end
    2 : begin
        i = 2;
    end
    default : begin
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: switch_empty_fcall1 (test_switch_empty_case.cpp:261:5) 

// Process-local variables
logic signed [31:0] k;

always_comb 
begin : switch_empty_fcall1     // test_switch_empty_case.cpp:261:5
    integer i;
    integer TMP_0;
    integer val;
    i = 0;
    case (s)
    1 : begin  // Empty case without break
        val = 2;
        // Call f() begin
        TMP_0 = val + 1;
        // Call f() end
        k = TMP_0;
        k++;
    end
    2 : begin
        val = 2;
        // Call f() begin
        TMP_0 = val + 1;
        // Call f() end
        k = TMP_0;
        k++;
    end
    default : begin
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: switch_empty_fcall2 (test_switch_empty_case.cpp:275:5) 

always_comb 
begin : switch_empty_fcall2     // test_switch_empty_case.cpp:275:5
    integer i;
    integer k_1;
    integer TMP_0;
    integer val;
    case (s)
    1 : begin  // Empty case without break
        k_1 = 2;
    end
    2 : begin
        k_1 = 2;
    end
    default : begin
        val = t;
        // Call f() begin
        TMP_0 = val + 1;
        // Call f() end
        k_1 = TMP_0;
    end
    endcase
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: switch_empty_case (test_switch_empty_case.cpp:285:5) 

always_comb 
begin : switch_empty_case     // test_switch_empty_case.cpp:285:5
    case (s)
    1 : begin
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: switch_break_only (test_switch_empty_case.cpp:292:5) 

always_comb 
begin : switch_break_only     // test_switch_empty_case.cpp:292:5
end

endmodule


