.include psp102_pmos.mod

M1 Vss Vg Vdd Vdd PCH L=65n W=200n

Vsg Vdd Vg DC 1V
Vsd Vdd Vss DC 1V
Vss Vss 0 0

.options TEMP=27.0

.control
let w_var = 0.36u
repeat 11
  alter @M1[w] = $&w_var
  dc Vsd 0 1.2 0.05
  let w_var = w_var + 0.36u
end

plot dc1.i(Vsd) dc6.i(Vsd) dc11.i(Vsd) ylabel 'Drain Current (A)' xlabel 'Vds (V)'
.endc
