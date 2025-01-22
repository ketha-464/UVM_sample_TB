//driver
class our_driver extends uvm_driver #(our_packet);
`uvm_component_utils(our_driver)

//interface instantiation
our_interface inf;
our_packet pkt;

//constructor
function new(string name ="uvm_driver",uvm_component parent=null);
super.new(name,parent);
endfunction

//build phase
function void build_phase(uvm_phase phase);
  //build other components
  pkt = our_packet::type_id::create(our_packet");
  //get method
  uvm_config_db #(virtual our_interface)::get(null,"*","inf",inf);
endfunction

//connect phase
function void connect_phase(uvm_phase phase);
  //necessary connection
endfunction

//run phase 
task run_phase(uvm_phase phase);
 forever begin
 @(posedge inf.clk)//clock from interface clock 
    seq_item_port.get_next_item(pkt);
  
       inf.input_1 <= pkt.input_1;//user defined things 
       inf.input_2 <= pkt.input_2;
  
    seq_item_port.item_done();
endtask   
//main logic
endclass