# Speed-dependence-on-Binding-free-energy
This repository contains MATLAB code to predict the velocity of Kinesin protein motors which are modeled as a Brownian motor using Fokker-Planck equation (FPE)

Download all .m files.
Change the desired potential in main.m file code.
Run the main.m file.

About Code:
1. Data used in code is for single Headed Kinesin
2. One dimensional motion
3. Assuming linear variation of free energy with position
4. No load condition
5. Transition between four chemical states: Empty, Adenosine diphosphate (ADP), Adenosine triphosphate (ATP), ADP and inorganic phosphate (ADP+Pi) during its motion over microtubule.

About Kinesins:

Kinesins are microtubule-based proteins that are involved in the transportation of substances within the cell.
Kinesins walk on microtubule via two motor domains by extracting energy from the hydrolysis of ATP.
Each motor domain associated with different chemical state i.e. Adenosine diphosphate (ADP), Adenosine triphosphate (ATP), ADP and inorganic phosphate (ADP+Pi) during its motion over microtubule. 
The free-energies of the above states affects the speed of Kinesin motor. 
My effort is to predict the speed of Kinesins by using free energy information and modeled them as a Brownian motor.
