//monitor
class our_monitor extends uvm_monitor;
`uvm_component_utils(our_monitor)

//interface instantiation
our_interface inf;
our_packet pkt;

uvm_analysis_port #(our_sequence_item) mon_port;

//constructor
function new(string name ="uvm_monitor",uvm_component parent=null);
super.new(name,parent);
endfunction

//build phase
function void build_phase(uvm_phase phase);
  //build other components
  pkt = our_packet::type_id::create("our_packet");
  //get method
  uvm_config_db #(virtual our_interface)::get(null,"*","inf",inf);
  mon_port = new("monitor port",this);
endfunction

//connect phase
function void connect_phase(uvm_phase phase);
  //necessary connection
endfunction

//run phase 
task run_phase(run_phase phase);

 forever begin
 @(posedge inf.clk);
   pkt.input_1 <= inf.input_1;
   pkt.input_2 <= inf.input_2;
 end 
endtask
//main logic
endclass