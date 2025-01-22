//env and agent components
class our_env extends uvm_env;
`uvm_component_utils(our_env)

//instantiate classes that we are going to use in this component 
our_agent agnt;

//constructor
function new(string name="our_env",uvm_component parent=null);
super.new(name,parent);
endfunction

//build phase
function void build_phase(uvm_phase phase);
  //build other components
  //build agent class here 
  agnt = our_agent::type_id::crate("agnt",this);
endfunction

//connect phase
function void connect_phase(uvm_phase phase);
  //necessary connection
endfunction

endclass












