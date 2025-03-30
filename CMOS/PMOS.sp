* MOS device
.include psp102_pmos.mod
M1 Vdd Vg Vss Vss PCH L=65n W=200n
* Source
Vgs Vg Vss DC -1V
Vds Vdd Vss DC -1.2V
Vss Vss 0 0
* simuulation
.options Temp=27.0
.control

DC Vds -1.2V 0V 0.02V
plot Vds#branch ylabel 'Drain current'
.endc
.meas dc result AVG Vds#branch from=-1.2 to=0
