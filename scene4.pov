// =====================================================
// Commented Scene including a pigmented plane with   
// - multiple light sources                            
// - textured primitives (cylinders, prism)
// - superellipsoid              
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
    <0, 1, 0>, -1
    pigment {
        checker color Black, color White
    }
}

// Defining Light Source
light_source {
    <0, 20, 0> color White // Defining light source with white color
}

// Defining Light Source
light_source {
    <0, 20, 0> color Yellow // Defining light source with yellow color
}

// Defining right side pillars (closest to farthest)
cylinder {
    <2.25, 0, 0.54>,  // Center of one end
    <1, 17, 3>,       // Center of other end
    0.2               // Radius
    open              // Remove end caps
    texture {         // Defining Texture
        White_Marble scale 0.25 // Scaling
    }
}
cylinder {
    <2.25, 0, 2.54>,  // Center of one end
    <1, 17, 3>,       // Center of other end
    0.2               // Radius
    open              // Remove end caps
    texture {         // Defining Texture
        White_Marble scale 0.25 // Scaling
    }
}
cylinder {
    <2.25, 0, 4.56>,  // Center of one end
    <1, 17, 3>,       // Center of other end
    0.2               // Radius
    open              // Remove end caps
    texture {         // Defining Texture
        White_Marble scale 0.25 // Scaling
    }
}
cylinder {
    <2.25, 0, 6.56>,  // Center of one end
    <1, 17, 3>,       // Center of other end
    0.2               // Radius
    open              // Remove end caps
    texture {         // Defining Texture
        White_Marble scale 0.25 // Scaling
    }
}

// Defining left side pillars (closest to farthest)
cylinder {
    <-2.25, 0, 0.54>, // Center of one end
    <-1, 17, 3>,      // Center of other end
    0.2               // Radius
    open              // Remove end caps
    pigment {         // Defining Texture
        White_Marble scale 0.25 // Scaling
    }
}
cylinder {
    <-2.25, 0, 2.54>, // Center of one end
    <-1, 17, 3>,      // Center of other end
    0.2               // Radius
    open              // Remove end caps
    texture {         // Defining Texture
        White_Marble scale 0.25 // Scaling
    }
}
cylinder {
    <-2.25, 0, 4.54>, // Center of one end
    <-1, 17, 3>,      // Center of other end
    0.2               // Radius
    open              // Remove end caps
    texture {         // Defining Texture
        White_Marble scale 0.25 // Scaling
    }
}
cylinder {
    <-2.25, 0, 6.54>, // Center of one end
    <-1, 17, 3>,      // Center of other end
    0.2               // Radius
    open              // Remove end caps
    texture {         // Defining Texture
        White_Marble scale 0.25 // Scaling
    }
}


// Defining Prism
prism {
    conic_sweep
    linear_spline
    0, // Height 1
    1, // Height 2                                                        
    5, // Number of points making up the shape...
    <4,4>,<-4,4>,<-4,-4>,<4,-4>,<4,4>
    rotate <180, 0, 0>
    translate <0, 1, 12>
    scale <1, 4, 1>
    pigment { gradient y scale .2 }
  }

// Defining Superellipsoid 
superellipsoid {
    <0.25, 0.25>        // Defining east-west north-south exponent
    pigment { Gray }    // Defining Pigment
    translate <0, 0, 5> // Moving Superellipsoid backwards 5 units
    scale .45           // Scaling
  } 