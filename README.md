# Master-Thesis
Repository for the Simone Manfredi's Master's thesis by the University of Trento.
<p align="center" width="50%">
    <img width="33%" src="https://www.nasa.gov/wp-content/uploads/2023/03/iss055e076762.jpg?w=1041">
</p>

## Scope
This thesis project aims to study the dynamics of a space manipulator, mounted on top of a spacecraft, subjected to an impulse, due to the docking of an external payload (such as a satellite).<br>
A simple control law has been implemented to stabilize the system around the desired configuration.<br>
Finally, some approximations are made in order to retrieve the initial (uknown) payload's mass and initial velocities.<br>

The complexity of the simulation has been increased gradually: 
1. A first simple concept considers the base, the manipulator's arms and the payload as rigid bodies, while the impact is considered plastic;
2. To simulate a more realistic scenario, the manipulator's arms are then modeled as elastic bodies, approximated with Euler-Bernoully beam theory

## Organization
### Thesis
The thesis' chapters are:
1. Space Manipulators: An Overview, where the state-of-art of modern manipulators is briefly exposed, as well as a short history recap;
2. Kinematics: the basics of robotics kinematics are reported and then applied to the particular case;
3. Dynamics: the manipulator and payload equations of motion are calculated by mean of the homogeneous matrix approach firstly and the classic Lagrange formulation secondly;
4. Impact Analysis: plastic analysis is performed assuming rigid and elastic robotics' arms;
5. Inertial and Kinetics Properties Retrieval: assuming unknown payload mass and initial velocities, they are retrieved from theory and some approximation of the joints' dynamics
### Repository
This reposotory is organized as follows:
- Latex: contains all the file for the thesis pdf
- Mathematica: all the simulations and calculus have been done with Wolfram Mathematica 13.2
- Presentations: the slides reporting the steps and questions during the develop of the thesis are listed
- References: here all the papers used as knowledge background to develop equations and conclusion are present
- Space Manipulators: files with dimensioning and basics information about the space manipulators attached to the International Space Station (ISS)

### Simulations
Two simulations have been performed: the first one supposing the satellite to move from west to east horizontally and the second one supposing it to move from north to south.

[![Watch the video](https://raw.githubusercontent.com/SimoManfre/Master-Thesis/main/Mathematica/thumbnail1.jpg)](https://raw.githubusercontent.com/SimoManfre/Master-Thesis/main/Mathematica/simulation_1.mp4)