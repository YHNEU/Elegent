new_project \
    -name {buf_synthesis_1} \
    -location {C:\Users\YH\Desktop\RS422\RS4221106 - good\designer\impl1\buf_synthesis_1_fp} \
    -mode {single}
set_programming_file -file {C:\Users\YH\Desktop\RS422\RS4221106 - good\designer\impl1\buf_synthesis_1.pdb}
set_programming_action -action {PROGRAM}
run_selected_actions
save_project
close_project
