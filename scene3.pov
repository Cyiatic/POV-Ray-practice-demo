// =====================================================
// Commented Scene including a pigmented plane with   
// - multiple light sources                            
// - textured primitives (marble columns).             
// =====================================================

// The include files contain pre-defined scene elements
#include "colors.inc"    
#include "stones.inc" 
#include "textures.inc"   

// Defining Background Color
background { 
    color Black // Defining background color of the scene
}

// Defining Camera Coordinates
camera {
    location <0, 2, -3> // Defining coordinates of the camera
    look_at  <0, 0,  3> // Defining coordinates the camera is looking at
}

// Defining a Plane
plane {
    <0, 1, 0>, -1 // Defining location of plane                               
    pigment       // Defining a pigment
    {   
        checker color Black, color White // Defining pigment colors
    }
}

// Light Source
light_source {
    <0, 20, 0> color White // Defining light source with white color
}

// Light Source
light_source {
    <0, 20, 0> color Yellow // Defining light source with yellow color
}

// Defining right side pillars (closest to farthest)
// Cylinder first row of Numbers:
// First is how far left or right,
// Second is up or down,
// Third is Z axis

// Right Pillar 1
cylinder {
    <1.65, 0, 0.54>, // Center of one end
    <1, 17, 3>,      // Center of other end
    0.2              // Radius
    open             // Remove end caps
    texture {        // Defining Texture
        White_Marble scale 0.25 // Scaling
    }
}

// Right Pillar 2
cylinder {
    <1.65, 0, 2.54>, // Center of one end
    <1, 17, 3>,      // Center of other end
    0.2              // Radius
    open             // Remove end caps
    texture {        // Defining Texture
        White_Marble scale 0.25 // Scaling
    }
}

// Right Pillar 3
cylinder {
    <1.65, 0, 4.56>, // Center of one end
    <1, 17, 3>,      // Center of other end
    0.2              // Radius
    open             // Remove end caps
    texture {        // Defining Texture
        White_Marble scale 0.25 // Scaling
    }
}

// Right Pillar 4
cylinder {
    <1.65, 0, 6.56>, // Center of one end
    <1, 17, 3>,      // Center of other end
    0.2              // Radius
    open             // Remove end caps
    texture {        // Defining texture
        White_Marble scale 0.25 // Scaling
    }
}

// Defining left side pillars (closest to farthest)
// Left Pillar 1
cylinder {
    <-1.75, -0.22, 1>, // Center of one end
    <-1, 17, 3>,       // Center of other end
    0.2                // Radius
    open               // Remove end caps
    pigment {          // Defining Pigment
        White_Marble scale 0.25 // Scaling
    }
}

// Left Pillar 2
cylinder {
    <-1.75, 0, 2.54>, // Center of one end
    <-1, 17, 3>,      // Center of other end
    0.2               // Radius
    open              // Remove end caps
    texture {         // Defining Texture
        White_Marble scale 0.25 // Scaling
    }
}

// Left Pillar 3
cylinder {
    <-1.75, 0, 4.54>, // Center of one end
    <-1, 17, 3>,      // Center of other end
    0.2               // Radius
    open              // Remove end caps
    texture {         // Defining texture
        White_Marble scale 0.25 // Scaling
    }
}

// Left Pillar 4
cylinder {
    <-1.75, 0, 6.54>, // Center of one end
    <-1, 17, 3>,      // Center of other end
    0.2               // Radius
    open              // Remove end caps
    texture {         // Defining texture
        White_Marble scale 0.25 // Scaling
    }
}
