class router_tb extends uvm_env;
    `uvm_component_utils(router_tb)

yapp_uvc  uvc0;
channel_env ch0;
channel_env ch1;
channel_env ch2;
hbus_env hbus;
clock_and_reset_env clk_rst;

function  new (string name = "router_tb" , uvm_component parent );
    super.new(name , parent);
endfunction


function  void build_phase(uvm_phase phase) ;
super.build_phase(phase);
`uvm_info("router_tb", "buildphase completed" , UVM_HIGH )
uvc0 = yapp_uvc::type_id::create("uvc0" ,this);
ch0 = channel_env::type_id::create("ch0" ,this);
ch1 = channel_env::type_id::create("ch1" ,this);
ch2 = channel_env::type_id::create("ch2" ,this);
//hbus = hbus_env::type_id::create("hbus" ,this);
clk_rst = clock_and_reset_env::type_id::create("clk_rst" ,this);


uvm_config_int::set(this, "ch0", "channel_id",0); 
uvm_config_int::set(this, "ch1", "channel_id", 1); 
uvm_config_int::set(this, "ch2", "channel_id", 2); 
//uvm_config_int::set(this, "hbus", "num_masters", 1); 
//uvm_config_int::set(this, "hbus", "num_slaves" , 0); 

endfunction

function void start_of_simulation_phase(uvm_phase phase);
super.start_of_simulation_phase(phase);
`uvm_info(get_type_name(), "running start_of_simulation_phase🙏🏻" , UVM_HIGH)
endfunction





endclass:router_tb