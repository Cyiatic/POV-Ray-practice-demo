// ==================================================================
// Commented Scene including a pigmented plane with a light source. |
// ==================================================================

// The include files contain pre-defined scene elements
#include "colors.inc"     

// Defining Background Color
background { 
    color Black 
    }

// Defining Camera Coordinates
camera {
    location <0, 2, -3>
    look_at  <0, 1, 2>
}

// Defining a Plane & Pigment
plane {
    <0, 1, 0>, -1 // Defining location of plane
    pigment       // Defining a pigment
    {   
        checker color Black, color White // Defining pigment colors
    }
}

// Defining Light Source
light_source {
    <2, 4, -3> color White // Defining location & color of light source
}
