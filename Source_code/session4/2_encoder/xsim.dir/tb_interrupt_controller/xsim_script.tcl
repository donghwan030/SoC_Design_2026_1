set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {tb_interrupt_controller} -wdb {sim.wdb} -autoloadwcfg
