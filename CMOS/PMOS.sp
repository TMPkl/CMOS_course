* PMOS DC Sweep Simulation

.include psp102_pmos.mod

M1 Vdd Vg Vss Vss PCH L=65n W=200n

Vgs Vg Vss DC -1V
Vds Vdd Vss DC -1.2V
Vss Vss 0 0

.options TEMP=27.0

.control
DC Vgs -1.2 0 0.02
plot -I(Vds) ylabel 'Drain Current (A)'
.endc

* Measure average drain current over sweep
.end
