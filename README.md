# Generating a clock signal
The given code gives an illustration of generating clock signal using 2 methods, using initial and always procedures.</br>
In general if no values are assigned to the variables, they will be set to a default value of '__x__' and will remain the same throughout the simulation. Hence to avoid that, the clocks used are initialized with an initial value before simulation. </br>
In this code **forever loop** is also used. foreverloop is a contruct in Verilog used to excute a code infinetly. This loop continues to generate output until stopped or explicit termination condition is met as mentioned by last intiial block.</br>
All the procedural blocks start execution at same time in __parallel__.
