# Created by Microsemi Libero Software 11.9.0.4
# Wed Nov 06 15:16:58 2024

# (OPEN DESIGN)

open_design "buf.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "buf_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Users\YH\Desktop\RS422\RS4221106\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VHDL" {../../synthesis/buf.edn} -merge_physical "yes" -merge_timing "yes"
compile
report -type "status" {buf_compile_report.txt}
report -type "pin" -listby "name" {buf_report_pin_byname.txt}
report -type "pin" -listby "number" {buf_report_pin_bynumber.txt}

save_design
