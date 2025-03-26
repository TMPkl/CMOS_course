* MOS device
.include psp102_nmos.mod
M1 Vdd Vg Vss Vss NCH L=65n W=200n
* Source
Vgs Vg Vss DC 1V
Vds Vdd Vss DC 1.2V
Vss Vss 0 0
* simuulation
.options Temp=27.0
.control

DC Vgs 0V 1.2V 0.02V
plot Vds#branch ylabel 'output current'
.endc
.meas dc result AVG Vds#branch from=0 to=1.2
