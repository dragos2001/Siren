# Siren

This project is designed for an FPGA basys 3.
The repository contains the test_bench for the simulation.
This project is a siren with variable frequency, the signal has 11 states and each state has a signal.

states: 

start – waiting for state
state1-20 kHz
state2-4 kHz
state3-800 Hz
state4-160 Hz
state5-32 Hz
state6-32 Hz
state7-32 Hz
state8-160 Hz
state9-800 Hz
state10-4 kHz
state11-20 kHz
(each state lasts   400 ms)

After the eleventh state is finalized we go back to the first state and so on.

