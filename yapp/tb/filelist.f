+incdir+../sv     # include directory for sv files 
../sv/yapp_if.sv           # compile top level module 
../sv/yapp_pkg.sv          # compile YAPP package 




+incdir+../../channel/sv 
../../channel/sv/channel_if.sv
../../channel/sv/channel_pkg.sv


+incdir+../../hbus/sv 
../../hbus/sv/hbus_pkg.sv
../../hbus/sv/hbus_if.sv


+incdir+../../clock_and_reset/sv 
../../clock_and_reset/sv/clock_and_reset_if.sv
../../clock_and_reset/sv/clock_and_reset_pkg.sv




yapp_router.sv 
clkgen.sv
hw_top_dut.sv
tb_top.sv            # compile top level module 




+timescale+1ns/1ns