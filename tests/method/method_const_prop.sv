//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.24
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
logic clk;
logic nrst;


//------------------------------------------------------------------------------
// Child module instances

A a_mod
(
  .clk(clk),
  .nrst(nrst),
  .a(a),
  .b(b)
);

endmodule



//==============================================================================
//
// Module: A (test_const_prop.cpp:924:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic nrst,
    input logic a,
    output logic b
);

// Variables generated for SystemC signals
logic c;
logic arr1[3];
logic arr3[3];
logic port_req[3];
logic port_oper[3];
logic [1:0] rr_first_indx;
logic [1:0] port_bindx[3];

// Local parameters generated for C++ constants
localparam logic [31:0] useWriteResp0 = 'd1;
localparam logic [31:0] useWriteResp1 = 'd1;
localparam logic [31:0] CTRL_NUM = 'd0;
localparam logic [31:0] BLOCK_NUM = 'd3;
localparam logic [31:0] PORT_NUM = 'd3;

//------------------------------------------------------------------------------
// Method process: complex_if_level (test_const_prop.cpp:94:5) 

always_comb 
begin : complex_if_level     // test_const_prop.cpp:94:5
    integer k;
    integer m;
    integer n;
    integer aa;
    integer bb;
    if (|k)
    begin
        if (|m)
        begin
            if (|n)
            begin
                if (k > n)
                begin
                    aa = 0;
                end
            end else begin
                if (1)
                begin
                    bb = 1;
                end
            end
        end
    end
end

//------------------------------------------------------------------------------
// Method process: mstrResponseMuxProc (test_const_prop.cpp:119:5) 

always_comb 
begin : mstrResponseMuxProc     // test_const_prop.cpp:119:5
    integer k;
    integer m;
    integer n;
    integer i;
    i = a;
    if ((arr1[i] && 1) || arr3[i])
    begin
        m = 1;
    end
end

//------------------------------------------------------------------------------
// Method process: NoReturnProc (test_const_prop.cpp:146:5) 

always_comb 
begin : NoReturnProc     // test_const_prop.cpp:146:5
    integer k;
    integer m;
    integer n;
end

//------------------------------------------------------------------------------
// Method process: NoReturnProc2 (test_const_prop.cpp:156:5) 

always_comb 
begin : NoReturnProc2     // test_const_prop.cpp:156:5
    logic TMP_0;
    integer unsigned portId;
    portId = a;
    // Call useWriteResp() begin
    case (portId)
    0 : begin
        TMP_0 = |useWriteResp0;
    end
    1 : begin
        TMP_0 = |useWriteResp1;
    end
    default : begin
        TMP_0 = |useWriteResp0;
    end
    endcase
    // Call useWriteResp() end
end

//------------------------------------------------------------------------------
// Method process: not_test (test_const_prop.cpp:163:5) 

always_comb 
begin : not_test     // test_const_prop.cpp:163:5
    logic [2:0] x;
    logic [2:0] y;
    logic b_1;
    x = 3;
    y = ~x;
    b_1 = x == y;
end

//------------------------------------------------------------------------------
// Method process: intrControlProc (test_const_prop.cpp:483:5) 

always_comb 
begin : intrControlProc     // test_const_prop.cpp:483:5
    logic b_1;
    integer i;
    b_1 = 0;
    i = 0;
end

//------------------------------------------------------------------------------
// Method process: chooseRequestProc (test_const_prop.cpp:493:5) 

always_comb 
begin : chooseRequestProc     // test_const_prop.cpp:493:5
end

//------------------------------------------------------------------------------
// Method process: ackProc2R2Wcache4 (test_const_prop.cpp:537:5) 

always_comb 
begin : ackProc2R2Wcache4     // test_const_prop.cpp:537:5
    logic readFirstAccess_flat[3];
    logic readSecndAccess_flat[3];
    logic writeFirstAccess_flat[3];
    logic writeSecndAccess_flat[3];
    logic [1:0] TMP_0;
    logic [1:0] portIndx;
    logic [1:0] TMP_2;
    integer unsigned iter;
    logic [1:0] portIndx_1;
    logic [1:0] blockIndx;
    logic accessPermit;
    for (integer i = 0; i < BLOCK_NUM; i++)
    begin
        readFirstAccess_flat[i] = a;
        readSecndAccess_flat[i] = 0;
        writeFirstAccess_flat[i] = a;
        writeSecndAccess_flat[i] = 0;
    end
    // Call getFirstPortIndx() begin
    TMP_0 = rr_first_indx;
    // Call getFirstPortIndx() end
    portIndx = TMP_0;
    for (integer unsigned i_1 = 1; i_1 < PORT_NUM; i_1++)
    begin
        iter = i_1; portIndx_1 = portIndx;
        // Call getNextPortIndex() begin
        if (1)
        begin
            if (0)
            begin
            end else begin
                if (iter == 1)
                begin
                    TMP_2 = rr_first_indx;
                end else begin
                    TMP_2 = (portIndx_1 == 0) ? 2 : ((portIndx_1 == PORT_NUM - 1) ? 0 : (portIndx_1 + 1));
                end
            end
        end
        // Call getNextPortIndex() end
        portIndx = TMP_2;
        blockIndx = port_bindx[portIndx];
        accessPermit = port_req[portIndx];
        if (!port_oper[portIndx])
        begin
            if (!readFirstAccess_flat[blockIndx])
            begin
                readFirstAccess_flat[blockIndx] = accessPermit;
            end else begin
                if (!readSecndAccess_flat[blockIndx])
                begin
                    readSecndAccess_flat[blockIndx] = accessPermit;
                end else begin
                    accessPermit = 0;
                end
            end
        end else begin
            if (!writeFirstAccess_flat[blockIndx])
            begin
                writeFirstAccess_flat[blockIndx] = accessPermit;
            end else begin
                if (!writeSecndAccess_flat[blockIndx])
                begin
                    writeSecndAccess_flat[blockIndx] = accessPermit;
                end else begin
                    accessPermit = 0;
                end
            end
        end
    end
end

//------------------------------------------------------------------------------
// Method process: simple_if1 (test_const_prop.cpp:587:5) 

always_comb 
begin : simple_if1     // test_const_prop.cpp:587:5
    integer i;
    i = 1;
    if (1)
    begin
        i = 2;
    end
end

//------------------------------------------------------------------------------
// Method process: simple_if2 (test_const_prop.cpp:598:5) 

always_comb 
begin : simple_if2     // test_const_prop.cpp:598:5
    integer i;
    integer m;
    i = 1;
    m = i + 1;
    if (a)
    begin
        if (0)
        begin
        end else begin
            i = 3;
        end
    end else begin
        if (1)
        begin
            i = 4;
        end
    end
end

//------------------------------------------------------------------------------
// Method process: if_in_func1 (test_const_prop.cpp:626:5) 

always_comb 
begin : if_in_func1     // test_const_prop.cpp:626:5
    integer i;
    integer j;
    i = 1;
    // Call f1() begin
    j = 1;
    if (1)
    begin
        j = 2;
    end
    // Call f1() end
end

//------------------------------------------------------------------------------
// Method process: if_in_func2 (test_const_prop.cpp:640:5) 

always_comb 
begin : if_in_func2     // test_const_prop.cpp:640:5
    integer m;
    // Call f2() begin
    m = 3;
    // Call f2() end
end

//------------------------------------------------------------------------------
// Method process: if_in_func3 (test_const_prop.cpp:652:5) 

always_comb 
begin : if_in_func3     // test_const_prop.cpp:652:5
    integer m;
    integer m_1;
    integer ll;
    m = 4;
    // Call f3() begin
    if (m_1 == 4)
    begin
        ll = 1;
    end
    // Call f3() end
end

//------------------------------------------------------------------------------
// Method process: const_param_func (test_const_prop.cpp:666:5) 

always_comb 
begin : const_param_func     // test_const_prop.cpp:666:5
    integer unsigned val;
    val = 1;
    // Call f4() begin
    // Call f4_() begin
    val++;
    // Call f4_() end
    // Call f4() end
end

//------------------------------------------------------------------------------
// Method process: if_in_func5 (test_const_prop.cpp:675:5) 

always_comb 
begin : if_in_func5     // test_const_prop.cpp:675:5
    integer TMP_0;
    integer i;
    // Call f5() begin
    TMP_0 = 5;
    // Call f5() end
    i = TMP_0;
end

//------------------------------------------------------------------------------
// Method process: simple_switch1 (test_const_prop.cpp:682:5) 

always_comb 
begin : simple_switch1     // test_const_prop.cpp:682:5
    integer i;
    i = 2;
    case (2)
    2 : begin
        i = 3;
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: simple_switch2 (test_const_prop.cpp:693:5) 

always_comb 
begin : simple_switch2     // test_const_prop.cpp:693:5
    integer i;
    i = a;
    case (i)
    1 : begin
        i = 2;
    end
    2 : begin
        i = 3;
    end
    default : begin
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: simple_switch3 (test_const_prop.cpp:703:5) 

always_comb 
begin : simple_switch3     // test_const_prop.cpp:703:5
    integer i;
    i = 3;
    case (3)
    default : begin
        i = 4;
    end
    endcase
end

//------------------------------------------------------------------------------
// Method process: simple_binary1 (test_const_prop.cpp:714:5) 

always_comb 
begin : simple_binary1     // test_const_prop.cpp:714:5
    integer i;
    integer m;
    i = 1;
    if (1)
    begin
        m = 3;
    end
end

//------------------------------------------------------------------------------
// Method process: simple_binary2 (test_const_prop.cpp:727:5) 

always_comb 
begin : simple_binary2     // test_const_prop.cpp:727:5
    integer i;
    integer m;
    i = 0;
    m = -2'sd1;
    if (1)
    begin
        m = 0;
    end
    if (1 && a)
    begin
        m = 2;
    end
    if ((i == 1 || i == 0) && a)
    begin
        m = 3;
    end
    if ((i == 1 || a) && c)
    begin
        m = 4;
    end
    if (1 && c)
    begin
        m = 5;
    end
    if ((a || i == 0) && c)
    begin
        m = 6;
    end
    if ((a || i == 1) && c)
    begin
        m = 7;
    end
end

//------------------------------------------------------------------------------
// Method process: simple_binary3 (test_const_prop.cpp:765:5) 

always_comb 
begin : simple_binary3     // test_const_prop.cpp:765:5
    integer i;
    integer m;
    i = 0;
    if ((i == 0 && i == 1) || a)
    begin
        m = 2;
    end
    if ((i == 0 && a) || c)
    begin
        m = 3;
    end
    if (0 || c)
    begin
        m = 4;
    end
    if ((i == 0 && a) && c)
    begin
        m = 5;
    end
end

//------------------------------------------------------------------------------
// Method process: simple_cond1 (test_const_prop.cpp:790:5) 

always_comb 
begin : simple_cond1     // test_const_prop.cpp:790:5
    integer i;
    integer m;
    i = 1;
    m = 2;
end

//------------------------------------------------------------------------------
// Method process: double_if1 (test_const_prop.cpp:176:5) 

always_comb 
begin : double_if1     // test_const_prop.cpp:176:5
    integer k;
    integer m;
    integer n;
    if (a)
    begin
        if (b)
        begin
            m = 1;
        end else begin
            m = 2;
        end
    end else begin
        if (b)
        begin
            m = 3;
        end else begin
            m = 4;
        end
    end
    m = 0;
end

//------------------------------------------------------------------------------
// Method process: double_if2 (test_const_prop.cpp:197:5) 

always_comb 
begin : double_if2     // test_const_prop.cpp:197:5
    integer k;
    integer m;
    integer n;
    if (a)
    begin
        if (b)
        begin
            m = 1;
        end else begin
            m = 2;
        end
    end
    m = 0;
end

//------------------------------------------------------------------------------
// Method process: double_if3 (test_const_prop.cpp:212:5) 

always_comb 
begin : double_if3     // test_const_prop.cpp:212:5
    integer k;
    integer m;
    integer n;
    if (a)
    begin
        if (b)
        begin
            m = 1;
        end else begin
            m = 2;
        end
    end else begin
        if (b)
        begin
            m = 3;
        end
    end
    m = 0;
end

//------------------------------------------------------------------------------
// Method process: double_if4 (test_const_prop.cpp:231:5) 

always_comb 
begin : double_if4     // test_const_prop.cpp:231:5
    integer k;
    integer m;
    integer n;
    if (a)
    begin
        if (b)
        begin
            m = 1;
        end else begin
            if (c)
            begin
                m = 2;
            end else begin
                m = 3;
            end
        end
    end else begin
        if (b)
        begin
            m = 4;
        end else begin
            if (c)
            begin
                m = 5;
            end else begin
                m = 6;
            end
        end
    end
    m = 0;
end

//------------------------------------------------------------------------------
// Method process: double_if5 (test_const_prop.cpp:262:5) 

always_comb 
begin : double_if5     // test_const_prop.cpp:262:5
    integer k;
    integer m;
    integer n;
    integer TMP_0;
    if (a)
    begin
        if (a)
        begin
            if (b)
            begin
                m = 1;
            end else begin
                if (c)
                begin
                    if (1)
                    begin
                        // Call f() begin
                        TMP_0 = 5;
                        // Call f() end
                        m = TMP_0;
                    end
                end
            end
        end
    end
end

//------------------------------------------------------------------------------
// Method process: double_if6 (test_const_prop.cpp:283:5) 

always_comb 
begin : double_if6     // test_const_prop.cpp:283:5
    integer k;
    integer m;
    integer n;
    if (a)
    begin
        if (b)
        begin
            m = 1;
        end else begin
            if (c)
            begin
                m = 2;
            end else begin
                m = 3;
            end
        end
    end else begin
        if (b)
        begin
            if (c)
            begin
                m = 4;
            end else begin
                m = 5;
            end
        end else begin
            if (c)
            begin
                m = 6;
            end else begin
                m = 7;
            end
        end
    end
end

//------------------------------------------------------------------------------
// Method process: seq_if (test_const_prop.cpp:458:5) 

always_comb 
begin : seq_if     // test_const_prop.cpp:458:5
    integer k;
    integer m;
    integer n;
    if (a)
    begin
        m = 1;
    end else begin
        if (b)
        begin
            m = 2;
        end else begin
            if (c)
            begin
                m = 3;
            end else begin
                m = 4;
            end
        end
    end
    m = 0;
end

//------------------------------------------------------------------------------
// Method process: double_if_for1 (test_const_prop.cpp:316:5) 

always_comb 
begin : double_if_for1     // test_const_prop.cpp:316:5
    integer k;
    integer m;
    integer n;
    if (a)
    begin
        if (b)
        begin
        end else begin
            if (c)
            begin
                m = 2;
            end else begin
                m = 3;
            end
        end
    end else begin
        if (b)
        begin
            m = 4;
        end else begin
            if (c)
            begin
                for (integer i_1 = 0; i_1 < 2; i_1++)
                begin
                    if (a)
                    begin
                        break;
                    end
                end
            end else begin
                m = 6;
            end
        end
    end
    m = 0;
end

//------------------------------------------------------------------------------
// Method process: double_if_for2 (test_const_prop.cpp:346:5) 

always_comb 
begin : double_if_for2     // test_const_prop.cpp:346:5
    integer k;
    integer m;
    integer n;
    if (a)
    begin
        if (b)
        begin
            for (integer i = 0; i < 2; i++)
            begin
                if (c)
                begin
                    m = 1;
                end
            end
        end else begin
            if (c)
            begin
                m = 2;
            end else begin
                m = 3;
            end
        end
    end else begin
        if (b)
        begin
            m = 4;
        end else begin
            if (c)
            begin
                for (integer i_1 = 0; i_1 < 2; i_1++)
                begin
                    if (c)
                    begin
                        m = 1;
                    end else begin
                        m = 2;
                    end
                end
            end else begin
                m = 6;
                if (c)
                begin
                    m = 1;
                end else begin
                    m = 2;
                end
            end
        end
    end
    m = 0;
end

//------------------------------------------------------------------------------
// Method process: double_if_while (test_const_prop.cpp:388:5) 

always_comb 
begin : double_if_while     // test_const_prop.cpp:388:5
    integer k;
    integer m;
    integer n;
    integer i;
    integer i_1;
    integer j;
    if (a)
    begin
        i = 0;
        if (b)
        begin
            while (i < 2)
            begin
                i++;
            end
        end else begin
            if (c)
            begin
                m = 2;
            end else begin
                m = 3;
            end
        end
    end else begin
        i_1 = 0;
        while (i_1 < 2)
        begin
            if (b)
            begin
                m = 4;
            end else begin
                j = 1;
                while (j < 3)
                begin
                    j++;
                    if (c)
                    begin
                        break;
                    end
                end
            end
            i_1++;
        end
        if (c)
        begin
            for (integer i_2 = 0; i_2 < 2; i_2++)
            begin
                if (c)
                begin
                    m = 1;
                end else begin
                    m = 2;
                end
            end
        end
    end
    m = 0;
end

//------------------------------------------------------------------------------
// Method process: double_if_break (test_const_prop.cpp:432:5) 

always_comb 
begin : double_if_break     // test_const_prop.cpp:432:5
    integer k;
    integer m;
    integer n;
    for (integer i = 0; i < 2; i++)
    begin
        if (a)
        begin
            m = 1;
            if (b)
            begin
                m = 2;
                break;
            end
            break;
        end
    end
end

//------------------------------------------------------------------------------
// Method process: false_if_break (test_const_prop.cpp:448:5) 

always_comb 
begin : false_if_break     // test_const_prop.cpp:448:5
end

//------------------------------------------------------------------------------
// Method process: multiple_calls1 (test_const_prop.cpp:831:5) 

always_comb 
begin : multiple_calls1     // test_const_prop.cpp:831:5
    integer k;
    if (a)
    begin
        // Call g() begin
        k = 0;
        // Call g() end
    end
    // Call g() begin
    k = 0;
    // Call g() end
end

//------------------------------------------------------------------------------
// Method process: multiple_calls2 (test_const_prop.cpp:840:5) 

always_comb 
begin : multiple_calls2     // test_const_prop.cpp:840:5
    integer k;
    // Call g() begin
    k = 0;
    // Call g() end
    if (a)
    begin
        // Call g() begin
        k = 0;
        // Call g() end
    end
end

//------------------------------------------------------------------------------
// Method process: local_array_if (test_const_prop.cpp:806:5) 

always_comb 
begin : local_array_if     // test_const_prop.cpp:806:5
    logic arr[3];
end

//------------------------------------------------------------------------------
// Clocked THREAD: local_array (test_const_prop.cpp:813:5) 

// Next-state combinational logic
always_comb begin : local_array_comb     // test_const_prop.cpp:813:5
    local_array_func;
end
function void local_array_func;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : local_array_ff
    if ( ~nrst ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Method process: return_const_in_if (test_const_prop.cpp:858:5) 

always_comb 
begin : return_const_in_if     // test_const_prop.cpp:858:5
    integer i;
    integer TMP_0;
    integer ll;
    i = a;
    // Call getConst() begin
    TMP_0 = 2;
    // Call getConst() end
    if (i < TMP_0)
    begin
        ll = 1;
    end
end

//------------------------------------------------------------------------------
// Method process: return_const_in_for (test_const_prop.cpp:865:5) 

always_comb 
begin : return_const_in_for     // test_const_prop.cpp:865:5
    integer x;
    integer TMP_0;
    integer N;
    x = 0;
    // Call getConst() begin
    TMP_0 = 2;
    // Call getConst() end
    N = TMP_0;
    for (integer i = 0; i < N; ++i)
    begin
        x++;
    end
end

endmodule


