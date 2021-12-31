//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.9
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: MyModule ()
//
module MyModule // "tb_inst.top_mod"
(
    input logic clk,
    output logic signed [31:0] a
);

// Variables generated for SystemC signals
logic rst;
logic signed [31:0] sig;
logic s1;
logic s2;
logic signed [31:0] b;
logic enable;
logic ready;
logic stop;
logic signed [31:0] out;

// Local parameters generated for C++ constants
localparam logic C = 1;
localparam logic signed [31:0] D = 42;
localparam logic signed [31:0] DD = 2;
localparam logic [3:0] E = 3;
localparam logic signed [3:0] EE = -3'sd2;

//------------------------------------------------------------------------------
// Clocked THREAD: newProc (test_module_sections.cpp:119:5) 

// Thread-local variables
logic signed [31:0] mp_i;
logic signed [31:0] mp_i_next;

// Next-state combinational logic
always_comb begin : newProc_comb     // test_module_sections.cpp:119:5
    newProc_func;
end
function void newProc_func;
    integer var_v;
    mp_i_next = mp_i;
    var_v = mp_i_next;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : newProc_ff
    if ( ~rst ) begin
    end
    else begin
        mp_i <= mp_i_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: proc (test_module_sections.cpp:128:5) 

// Thread-local variables
logic signed [31:0] sig_next;

// Next-state combinational logic
always_comb begin : proc_comb     // test_module_sections.cpp:128:5
    proc_func;
end
function void proc_func;
    logic TMP_0;
    integer i_1;
    logic b_1;
    sig_next = sig;
    // Call mb_read() begin
    i_1 = D + DD;
    TMP_0 = i_1 == 1;
    // Call mb_read() end
    b_1 = TMP_0;
    sig_next = E;
    sig_next = EE;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : proc_ff
    if ( ~rst ) begin
        integer i;
        i = D;
    end
    else begin
        sig <= sig_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: threadProc (test_module_sections.cpp:145:5) 

// Thread-local variables
logic signed [31:0] a_next;
logic signed [31:0] j;
logic signed [31:0] j_next;
logic signed [31:0] d;
logic signed [31:0] d_next;
logic signed [31:0] c;

// Next-state combinational logic
always_comb begin : threadProc_comb     // test_module_sections.cpp:145:5
    threadProc_func;
end
function void threadProc_func;
    integer i;
    a_next = a;
    d_next = d;
    j_next = j;
    a_next = j_next;
    i = 0;
    j_next = b + i;
    c = b;
    i = a + c + d_next;
    d_next = a;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : threadProc_ff
    if ( ~rst ) begin
        integer c;
        j <= 0;
        a <= 0;
        c = 0;
        d <= 1;
    end
    else begin
        a <= a_next;
        j <= j_next;
        d <= d_next;
    end
end

//------------------------------------------------------------------------------
// Method process: methodProc (test_module_sections.cpp:163:5) 

always_comb 
begin : methodProc     // test_module_sections.cpp:163:5
    logic x;
    integer i;
    i = a;
    x = i == b;
    sig = x ? i : 0;
end

//------------------------------------------------------------------------------
// Clocked THREAD: multiStateProc (test_module_sections.cpp:172:4) 

// Thread-local variables
logic signed [31:0] sig_next0;
logic [15:0] x0;
logic [15:0] x_next;
logic multiStateProc_PROC_STATE;
logic multiStateProc_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : multiStateProc_comb     // test_module_sections.cpp:172:4
    multiStateProc_func;
end
function void multiStateProc_func;
    logic [7:0] y;
    sig_next0 = sig;
    x_next = x0;
    multiStateProc_PROC_STATE_next = multiStateProc_PROC_STATE;
    
    case (multiStateProc_PROC_STATE)
        0: begin
            y = a;
            x_next = y + 1;
            multiStateProc_PROC_STATE_next = 1; return;    // test_module_sections.cpp:180:11;
        end
        1: begin
            sig_next0 = x_next;
            y = a;
            x_next = y + 1;
            multiStateProc_PROC_STATE_next = 1; return;    // test_module_sections.cpp:180:11;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : multiStateProc_ff
    if ( ~rst ) begin
        x0 <= 0;
        sig <= 1;
        multiStateProc_PROC_STATE <= 0;    // test_module_sections.cpp:175:8;
    end
    else begin
        sig <= sig_next0;
        x0 <= x_next;
        multiStateProc_PROC_STATE <= multiStateProc_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: waitn (test_module_sections.cpp:185:5) 

// Thread-local variables
logic [1:0] waitn_WAIT_N_COUNTER;
logic [1:0] waitn_WAIT_N_COUNTER_next;
logic waitn_PROC_STATE;
logic waitn_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : waitn_comb     // test_module_sections.cpp:185:5
    waitn_func;
end
function void waitn_func;
    waitn_WAIT_N_COUNTER_next = waitn_WAIT_N_COUNTER;
    waitn_PROC_STATE_next = waitn_PROC_STATE;
    
    case (waitn_PROC_STATE)
        0: begin
            waitn_WAIT_N_COUNTER_next = 3;
            waitn_PROC_STATE_next = 1; return;    // test_module_sections.cpp:188:13;
        end
        1: begin
            if (waitn_WAIT_N_COUNTER != 1) begin
                waitn_WAIT_N_COUNTER_next = waitn_WAIT_N_COUNTER - 1;
                waitn_PROC_STATE_next = 1; return;    // test_module_sections.cpp:188:13;
            end;
            waitn_WAIT_N_COUNTER_next = 3;
            waitn_PROC_STATE_next = 1; return;    // test_module_sections.cpp:188:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : waitn_ff
    if ( ~rst ) begin
        waitn_PROC_STATE <= 0;    // test_module_sections.cpp:186:9;
        waitn_WAIT_N_COUNTER <= 0;
    end
    else begin
        waitn_WAIT_N_COUNTER <= waitn_WAIT_N_COUNTER_next;
        waitn_PROC_STATE <= waitn_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: loopProc (test_module_sections.cpp:197:5) 

// Thread-local variables
logic enable_next;
logic signed [31:0] i0;
logic signed [31:0] i_next;
logic loopProc_PROC_STATE;
logic loopProc_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : loopProc_comb     // test_module_sections.cpp:197:5
    loopProc_func;
end
function void loopProc_func;
    enable_next = enable;
    i_next = i0;
    loopProc_PROC_STATE_next = loopProc_PROC_STATE;
    
    case (loopProc_PROC_STATE)
        0: begin
            i_next = 0;
            enable_next = 0;
            loopProc_PROC_STATE_next = 1; return;    // test_module_sections.cpp:203:17;
        end
        1: begin
            ++i_next;
            if (i_next < 3)
            begin
                enable_next = 0;
                loopProc_PROC_STATE_next = 1; return;    // test_module_sections.cpp:203:17;
            end
            enable_next = 1;
            i_next = 0;
            enable_next = 0;
            loopProc_PROC_STATE_next = 1; return;    // test_module_sections.cpp:203:17;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : loopProc_ff
    if ( ~rst ) begin
        enable <= 0;
        loopProc_PROC_STATE <= 0;    // test_module_sections.cpp:199:9;
    end
    else begin
        enable <= enable_next;
        i0 <= i_next;
        loopProc_PROC_STATE <= loopProc_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: breakProc (test_module_sections.cpp:209:5) 

// Thread-local variables
logic ready_next;
logic [1:0] breakProc_PROC_STATE;
logic [1:0] breakProc_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : breakProc_comb     // test_module_sections.cpp:209:5
    breakProc_func;
end
function void breakProc_func;
    ready_next = ready;
    breakProc_PROC_STATE_next = breakProc_PROC_STATE;
    
    case (breakProc_PROC_STATE)
        0: begin
            breakProc_PROC_STATE_next = 1; return;    // test_module_sections.cpp:213:13;
        end
        1: begin
            if (!enable)
            begin
                if (stop)
                begin
                    // break begin
                    ready_next = 0;
                    breakProc_PROC_STATE_next = 1; return;    // test_module_sections.cpp:213:13;
                    // break end
                end
                ready_next = 1;
                breakProc_PROC_STATE_next = 2; return;    // test_module_sections.cpp:217:17;
            end
            ready_next = 0;
            breakProc_PROC_STATE_next = 1; return;    // test_module_sections.cpp:213:13;
        end
        2: begin
            if (!enable)
            begin
                if (stop)
                begin
                    // break begin
                    ready_next = 0;
                    breakProc_PROC_STATE_next = 1; return;    // test_module_sections.cpp:213:13;
                    // break end
                end
                ready_next = 1;
                breakProc_PROC_STATE_next = 2; return;    // test_module_sections.cpp:217:17;
            end
            ready_next = 0;
            breakProc_PROC_STATE_next = 1; return;    // test_module_sections.cpp:213:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rst) 
begin : breakProc_ff
    if ( ~rst ) begin
        ready <= 0;
        breakProc_PROC_STATE <= 0;    // test_module_sections.cpp:211:9;
    end
    else begin
        ready <= ready_next;
        breakProc_PROC_STATE <= breakProc_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Method process: uniqProc (test_module_sections.cpp:224:5) 

always_comb 
begin : uniqProc     // test_module_sections.cpp:224:5
    logic b_1;
    logic b_2;
    out = b;
    out = b_2;
    out = b_1;
end


//------------------------------------------------------------------------------
// Child module instances

MyChild m
(
  .clk(clk),
  .f0(s1),
  .f1(s2)
);


//------------------------------------------------------------------------------
// SVA generated for SystemC temporal assertions

`ifndef INTEL_SVA_OFF
sctAssertLine234 : assert property (
    @(posedge clk) s1 |=> s2 );
`endif // INTEL_SVA_OFF

endmodule



//==============================================================================
//
// Module: MyChild (test_module_sections.cpp:59:5)
//
module MyChild // "tb_inst.top_mod.m"
(
    input logic clk,
    input logic f0,
    input logic f1
);

// Variables generated for SystemC signals
logic f[2];

// Assignments generated for C++ channel arrays
assign f[0] = f0;
assign f[1] = f1;

//------------------------------------------------------------------------------
// Method process: proc (test_module_sections.cpp:42:5) 

always_comb 
begin : proc     // test_module_sections.cpp:42:5
    logic b;
    b = f[0];
end

endmodule


