# DylanMidTerm
100750193
1+3=4=Even
Grass Texture:	https://i.pinimg.com/originals/d1/e2/20/d1e220a2f2e6c5e3f3d3f2d6cd55e3f8.jpg


-I created a basic Unity 3D scene, and created a "Ship" via the standard Unity shapes Cube, Capsule, and Sphere.
-For the Toon ramp, I used a modified version of the Toon Shader we used in class.
-The toon ramp works by sampling a texture from different points depending on the intended brightness value.	
-The brightness is determined by getting the dot product of the Surface normal and the Light Direction.  
-I created a couple new Ramp Maps via photoshop, the first one from scratch and for the second one I just adjusted the hue in photoshop.
-I decided to use a point light that the ship orbits around, so you can see the effect as the ship moves around.
-The orbit script is very simple, it rotates around a given point.
-There is a "ShaderController" script which, when you press "2", it will swap to the "damaged ship" material. 
-This is meant to draw attention to the ship and notify the player when they take damage.
-Press 1 to return to normal.
-For the grass, I simply added a second material to the plane at the bottom which creates a subtle blend between the green and the texture of the grass.

In game screenshot:
![screenshot](https://github.com/DylanMills/DylanMidTerm/blob/main/Screenshots/Game.png)
Materials location:
![screenshot](https://github.com/DylanMills/DylanMidTerm/blob/main/Screenshots/materials.png)
