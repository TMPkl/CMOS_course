* MOS device
.include psp102_nmos.mod
M1 Vdd Vg Vss Vss NCH L=65n W=400n

* Source
Vgs Vg Vss DC 1V
Vds Vdd Vss DC 1.2V
Vss Vss 0 0

* Simulation settings
*.options Temp=27.0

.control
let tempch = 10
repeat 10
  option Temp = $&tempch
  dc Vds 0 1.2 0.05
  let tempch = tempch + 10
end
plot dc1.i(Vds) dc5.i(Vds) dc10.i(Vds) ylabel 'Ids' xlabel 'Vds'
.endc
.end
