//sequencer 
class our_sequencer extends uvm_sequencer #(our_packet);
`uvm_component_utils(our_sequencer)

//constructor
function new(string name="our_sequencer",uvm_component parent=null);
super.new(name,parent);
endfunction

//build phase
function void build_phase(uvm_phase phase);
  //build other components
endfunction

//connect phase
function void connect_phase(uvm_phase phase);
  //necessary connection
endfunction

//main logic
endclass