//UVM test
class our_test extends uvm_test;
//need to register our class with uvm factory(is a libirary) to make our code reusable and modular
//`uvm_component_utils(name of our test_class)
`uvm_component_utils(our_test)

//instantiate classes that we r going use in this component
our_env env;

//constructor 
function new(string name="our_test",uvm_component parent=null);
super.new(name,parent);
endfunction

//build phase
function void build_phase(uvm_phase phase);
  `uvm_info(get_type_name(),"in the build pase",UVM_MEDIUM);
  //build other components
  //build env_class here 
  //we will use factory create method 
  env = our_env::type_id::create("env",this);//env object creation
endfunction

//connect phase
function void connect_phase(uvm_phase phase);
  //necessary connection
endfunction

// end of elaboration phase 
function void end_of_elaboration_phase(uvm_phase phase);
   super.end_of_elaboration_phase(phase);
   uvm_top.print_topology();
endfunction
//run phase 
task run_phase(uvm_phase phase);;//time consuming statements
 super.run_phase(phase);
 seq_h = base_sequence::type_id::create("seq_h");
 phase.raise_objection(this);
    seq_h.start(env_h.agnt_h.seqr_h);// start sequence on sequencer
 phase.drop_objection(this);
//main logic

endtask

//methods
//properties 

endclass