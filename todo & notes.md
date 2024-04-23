# Appunti:

## ToDo list:

1. Rileggere paper e cercare articoli che lo citano
2. Confrontare equazioni della dinamica del paper sulla minimizzazione dei tempi e quelli standard, per capire se è possibile implementare quel controllo al posto del PD.
3. Cercare caratteristiche tipiche di un manipolatore installato su qualche piattaforma spaziale
4. Studiare strategia per disaccoppiare i giunti (espansione modale, vedere appunti quaderno)

## Note:

Ci sono due scenari studiabili:
- Impatto di micrometeoriti su satelliti/braccio robotico e in base alla risposta dinamica ricostruire le caratteristiche dinamiche (quantità di moto, energia cinetica, ecc.)
- Il braccio acchiappa qualcossa (come un satellite) per portarlo a bordo o lanciarlo nell'atmosfera (docking), se ci sono differenze di velocità tra satellite e braccio -> dinamica in catena chiusa, ricavare info dinamiche.

## Papers

### 1995 - Manipulator capturing satellite: 
The goal is to stablize the system (spacecraft + manipulator + payload) after the catching of the spinning payload (satellite or meteorite).
There are mainly two problems in the docking/catching of a moving satellite:
1. The dynamic coupling between the manipulator’s links, the spacecraft and the payload. This causes undesirable movements of spacecraft and payloads;
2. Due to the high velocities, the flexibility of joints and links can cause high errors if not taken into account

Approximations:
- Links considered as Euler-Bernoulli beams
- The shortening effect due to bending is ignored, since the links work at low speeds
- Displacement due to bending considered with modal shapes 
- Potential energy due to gravity equal to zero
- Inertia and dynamic properties of payload assumed to be known
- The flexibility of the links are taken in consideration as known disturbances, withous controlling them
- No impact

Control: feedback linearization

### 1997 - Post-Impact dynamics in docking/berthing
Study the post-impact dynamics considering different impact scenarios. In the ideal case, the relative velocity between the two bodies should be zero; in practice, an impact results.

Previous aknowledgments and assumptions:
- The elastic deflection caused by impact can be neglected
- The generalized coordinates of the system remain the same over the impact duration (~10^-4 s), but not the velocities
- At the contact point between the end-effector and the target there are forces but no moments

The paper distinguish between rigid, plastic and elastic impact, introducing two parameters, energy loss and friction impulse, to switch from plastic to elastic impact, allowing to merge the two to have a more realistic simulation.
There is no computation on post post-impact dynamics.

### 2006 - Angular momentum control approach
In this paper, they focus on minimizing the base attitude reactions during the approaching, impact and post-impact phases. The proposed capturing sequence is based on the utiliza- tion of three control strategies, namely: 
1. bias momentum approach to be used during the approaching phase, in order to obtain a favorable pre-impact angular momentum distribution; 
2. impedance control during the impact, to guarantee that the target satellite will not be pushed away during the contact; 
3. distributed momentum control during the post-impact phase, that manages the momentum in the system in such a way that no base attitude change occurs.

### 2007 - Impact dynamics and control of dual robot
Here, the dynamic model and the control algorithm developed in the first two papers is adpated to a dual-two arms robot, taking into consideration the elastic matrix on the dynamics and without using the quaternion's notation. Furthermore, the post-impact dynamics is retrived as well.
However, only the plastic impact is considered, while on the 1997 paper a mix of plastic and elsatic impact is calculated.

### 2009 - Optimal Control
An optimal control path for is evaluated so as to bring the tumbling non-cooperative satellite to rest in minimum time while ensuring that the magnitude of the interaction torque between the manipulator and target remains below a prescribed value.
Then a complex dynamc model and control law is applied to follow the optimal trajectory.