set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {tb_shift_register_sipo} -wdb {sim.wdb} -autoloadwcfg
