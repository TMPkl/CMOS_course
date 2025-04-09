.include psp102_pmos.mod

M1 Vss Vg Vdd Vdd PCH L=65n W=200n

Vsg Vdd Vg DC 1V
Vsd Vdd Vss DC 1V
Vss Vss 0 0

.options TEMP=27.0

.control
let tempch = 10
repeat 10
  option Temp = $&tempch
  dc Vsd 0 1.2 0.05
  let tempch = tempch + 10
end
plot dc1.i(Vsd) dc5.i(Vsd) dc10.i(Vsd) ylabel 'Ids' xlabel 'Vds'
.endc
.end
