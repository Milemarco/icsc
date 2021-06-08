//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.20
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: test ()
//
module test // "t_inst"
(
);

// Variables generated for SystemC signals
logic [2:0] s;
logic t;

//------------------------------------------------------------------------------
// Method process: return_method1 (test_return.cpp:51:5) 

always_comb 
begin : return_method1     // test_return.cpp:51:5
    integer x;
    x = 0;
    if (|s)
    begin
    end else begin
        x = 1;
    end
end

//------------------------------------------------------------------------------
// Method process: return_func1 (test_return.cpp:73:5) 

always_comb 
begin : return_func1     // test_return.cpp:73:5
    logic [3:0] TMP_0;
    logic [3:0] res;
    logic [3:0] a;
    logic TMP_2;
    logic [3:0] TMP_3;
    logic b;
    // Call f1() begin
    res = s;
    TMP_0 = res;
    // Call f1() end
    a = TMP_0;
    // Call f2() begin
    // Call f1() begin
    res = s;
    TMP_3 = res;
    // Call f1() end
    TMP_2 = s == 1 || |TMP_3;
    // Call f2() end
    b = TMP_2;
end

//------------------------------------------------------------------------------
// Method process: return_func2 (test_return.cpp:100:5) 

always_comb 
begin : return_func2     // test_return.cpp:100:5
    logic signed [7:0] val1;
    logic signed [7:0] val2;
    logic signed [7:0] TMP_0;
    logic signed [7:0] par1;
    integer c;
    val1 = 0;
    val2 = 0;
    par1 = val1;
    // Call f3() begin
    if (s == 1)
    begin
        TMP_0 = par1;
    end else begin
        if (s == 2)
        begin
            if (s == 3)
            begin
                if (s == 4)
                begin
                    TMP_0 = 1;
                end else begin
                    TMP_0 = 2;
                end
            end else begin
                TMP_0 = val2;
            end
        end else begin
            TMP_0 = val1;
        end
    end
    // Call f3() end
    c = TMP_0;
end

//------------------------------------------------------------------------------
// Method process: return_func3 (test_return.cpp:124:5) 

always_comb 
begin : return_func3     // test_return.cpp:124:5
    logic [7:0] val3;
    logic [7:0] val4;
    logic [7:0] TMP_0;
    logic [7:0] par1;
    integer k;
    integer unsigned d;
    val3 = 0;
    val4 = 0;
    par1 = val3;
    // Call f4() begin
    k = 0;
    if (s == 1)
    begin
        TMP_0 = par1;
    end else begin
        if (s == 2)
        begin
            k = 1;
            TMP_0 = val4 + 1;
        end else begin
            if (s == 3)
            begin
                k = 2;
                TMP_0 = val3;
            end else begin
                TMP_0 = val4;
            end
        end
    end
    // Call f4() end
    d = TMP_0;
end

//------------------------------------------------------------------------------
// Method process: return_func4 (test_return.cpp:143:5) 

always_comb 
begin : return_func4     // test_return.cpp:143:5
    logic TMP_0;
    logic i;
    // Call f5() begin
    if (|s)
    begin
        TMP_0 = t;
    end else begin
        if (t)
        begin
            TMP_0 = t;
        end else begin
            TMP_0 = s != 0 ? 1 : t;
        end
    end
    // Call f5() end
    i = TMP_0;
end

//------------------------------------------------------------------------------
// Method process: return_empty (test_return.cpp:166:5) 

always_comb 
begin : return_empty     // test_return.cpp:166:5
    logic par;
    integer k;
    par = t;
    // Call f6() begin
    if (|s)
    begin
        k = 0;
    end else begin
        if (t)
        begin
            k = 1;
            if (par)
            begin
                k = 2;
            end
        end else begin
            k = 3;
        end
    end
    // Call f6() end
end

//------------------------------------------------------------------------------
// Method process: return_switch1 (test_return.cpp:184:5) 

always_comb 
begin : return_switch1     // test_return.cpp:184:5
    integer unsigned TMP_0;
    integer unsigned i;
    // Call sw1() begin
    case (s)
    1 : begin
        TMP_0 = 2;
    end
    2 : begin
        TMP_0 = 3;
    end
    default : begin
        TMP_0 = 0;
    end
    endcase
    // Call sw1() end
    i = TMP_0;
end

//------------------------------------------------------------------------------
// Method process: return_switch2 (test_return.cpp:199:5) 

always_comb 
begin : return_switch2     // test_return.cpp:199:5
    logic [7:0] val1;
    logic [7:0] val2;
    integer unsigned TMP_0;
    logic [7:0] par1;
    integer k;
    integer unsigned i;
    val1 = s;
    val2 = 0;
    par1 = val1 + 1;
    // Call sw2() begin
    k = 0;
    case (par1)
    1 : begin
        TMP_0 = par1;
    end
    2 : begin
        k = 1;
        TMP_0 = val2;
    end
    3 : begin  // Empty case without break
        k = 2;
        TMP_0 = par1 + val2;
    end
    default : begin
        k = 2;
        TMP_0 = par1 + val2;
    end
    endcase
    // Call sw2() end
    i = TMP_0;
end

endmodule


