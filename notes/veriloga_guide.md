# Using verilog-a models in ngspice

## Steps
Create verilog-a script

Create a schematic with same pins (no buses), hit "A" to create symbol. Delete the schematic

Use spice code block and replace names with what are used. (OpenVAF doesn't to bus notation)
Order pin list manually the same as .subckt definition

```spice
type={block_name}_va
format="@name {@@pin0 @@pin1 @@pinlast} @model"
template="name=x1 model={block_name}_cell"

device_model="tcleval(
.subckt {block_name}_cell [pin_list_capital]
N1 [pin_list_verilog_names] {block_name}_model
.ends {block_name}_cell

.model {block_name}_model {verilog_module_name}


.control
* following line specifies the location for the .osdi file so ngspice can use it.
* working dir set in tcl in startup script as pwd in top location
pre_osdi $working_dir/schematics/verilog_a/{complied_va_name}.osdi
.endc
)"
```