* MOS device
.include psp102_nmos.mod
M1 Vdd Vg Vss Vss NCH L=65n W=200n

* Source
Vgs Vg Vss DC 1V
Vds Vdd Vss DC 1.2V
Vss Vss 0 0

* Simulation settings
.options Temp=27.0

.control
let w_var = 0.36u
repeat 11
  alter @M1[w] = $&w_var
  dc Vds 0 1.2 0.05
  let w_var = w_var + 0.36u
end
plot dc2.i(Vds) dc6.i(Vds) dc11.i(Vds) ylabel 'Ids' xlabel 'Vds'
.endc
.end
