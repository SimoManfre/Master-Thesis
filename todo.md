# Appunti:

## ToDo list:

1. Rileggere paper e cercare articoli che lo citano
2. Cercare caratteristiche tipiche di un manipolatore installato su qualche piattaforma spaziale
3. Studiare strategia per disaccoppiare i giunti (espansione modale, vedere appunti quaderno)

## Note:

Ci sono due scenari studiabili:
- Impatto di micrometeoriti su satelliti/braccio robotico e in base alla risposta dinamica ricostruire le caratteristiche dinamiche (quantità di moto, energia cinetica, ecc.)
- Il braccio acchiappa qualcossa (come un satellite) per portarlo a bordo o lanciarlo nell'atmosfera (docking), se ci sono differenze di velocità tra satellite e braccio -> dinamica in catena chiusa, ricavare info dinamiche.

## Papers

### Base paper: 
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

Control: feedback linearization