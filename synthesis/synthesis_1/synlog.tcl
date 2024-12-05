project -load C:/Users/YH/Desktop/RS422/RS4221107/synthesis/buf_syn.prj
puts "Generating SRS instrumentation file: C:\Users\YH\Desktop\RS422\RS4221107\synthesis\synthesis_1\instr_sources\syn_dics.v"
 if { [catch {write instrumentation} err] } {
    puts stderr "write instrumentation failed $err"
    exit 9
}
