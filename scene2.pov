// =====================================================
// Commented Scene including a pigmented plane with   
// - a light source                                    
// - differently textured primitives (columns).        
// =====================================================
               
// The include files contain pre-defined scene elements               
#include "colors.inc"    
#include "stones.inc" 
#include "textures.inc"   

// Defining Background Color
background { 
    color Black 
}

// Defining Camera Coordinates
camera {
    location <0, 2, -3>
    look_at  <0, 1, 2>
}

// Defining a Plane
plane {
    <0, 1, 0>, -1 // Defining location of plane
    pigment       // Defining a pigment
    {   
        checker color Black, color White // Defining pigment colors
    }
}

// Defining Light Source
light_source {
    <2, 4, -3> color White // Defining color and location
}

// Right side pillar
cylinder {
    <1.75, 0, 1>,         // Center of one end
    <1, 17, 3>,           // Center of other end
    0.2                   // Radius
    open                  // Remove end caps
    texture {             // Defining texture
        T_Stone25 scale 4 // Scaling cylinder to larger size
    }
    translate <0, -1, 0>  // Translating cylinder down
}

// Left side pillar
cylinder {
    <-1.75, -0.22, 1>,    // Center of one end
    <-1, 17, 3>,          // Center of other end
    0.2                   // Radius
    open                  // Remove end caps
    pigment {             // Defining pigment
        White_Marble scale 0.25 // Scaling
    }
    translate <0, -1, 0>  // Translating cylinder down
}
