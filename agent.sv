// agent 
class our_agent extends uvm_agent;
`uvm_component_utils(our_agent)

//instantiate classes that we are going to use in this component
our_sequencer   seqr;
our_driver      drv;
our_monitor     mon;

//constructor
function new(string name="our_agent",uvm_component parent=null);
super.new(name,parent);
endfunction

//build phase
function void build_phase(uvm_phase phase);
  //build other components
  //build sequencer,driver and monitor here
  seqr = our_sequencer::type_id::create("seqr",this);
  drv  = our_driver   ::type_id::create("drv",this);
  mon  = our_monitor  ::type_id::create("mon",this);
endfunction

//connect phase
function void connect_phase(uvm_phase phase);
  //necessary connection
  drv.seq_item_port.connect(seqr.seq_item_export);
endfunction

//main logic
endclass
