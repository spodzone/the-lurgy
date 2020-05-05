#include "colors.inc"    // The include files contain
#include "stones.inc"    // pre-defined scene elements

#include "textures.inc"    // pre-defined scene elements
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"

#declare GreenSnot = texture {
  pigment {
    granite
    color_map {
      [ 0 colour Red ]
      [ 0.1 colour rgb<0.3, 0.3, 0.1> ]
      [ 0.2 colour rgb<0.3, 0.3, 0.1> ]
      [ 0.25 colour rgb<0.1, 0.4, 0.15> ]
      [ 0.7 colour rgb<0.1, 0.4, 0.15> ]
      [ 1   colour rgb<0.15, 0.3, 0.1> ]
    }
  }
  scale 0.125
  rotate <45, 45, 30>
  finish { phong 0.125}
}

/* camera position */
camera {
  location <-1, -0.25, -2>
  look_at <0, 0, 5>
  focal_point <0.25, 0, 0.75>
  aperture 0.125
  blur_samples 11
}

/* point light-source slightly blue */
light_source {
  <-0.25, 3, -12>
  colour rgb<.8, .9, 1>
}

/* area light-source white */
light_source {
  <0, 3, -10>
  colour White
  area_light <-2,2,-10>, <2, 3, 10>, 5, 5
  adaptive 1
  jitter
}

/* lumpy sphere is lumpy */
sphere {
  <0, 0, 1.5*clock> 0.75*clock
  texture {
    pigment {
      color rgb<.15, .25, .6>
    }
    finish { phong 0.5}
  }
  normal { bumps 4  scale 0.1 }
}


/* snot-ball BL */
sphere {
  <-2.125*clock, -1.25*clock, 2*clock> 0.3333
  texture {GreenSnot}
  normal { bumps 1  scale 0.1 }
}


/* snot-ball TL */
sphere {
  <-2*clock, 0.825*clock, 1.5*clock> 0.3333
  texture {GreenSnot}
  normal { bumps 3  scale 0.1 }
}


/* snot-ball CL */
sphere {
  <-1.5, 0, 2.75>*clock 0.25
  texture {GreenSnot}
  normal { bumps 3  scale 0.1 }
}


/* snot-ball BCL */
sphere {
  <-0.75, -1.5, 3>*clock 0.25
  texture {GreenSnot}
  normal { bumps 3  scale 0.1 }
}

/* snot-ball BCR */
sphere {
  <0.75, -1.75, 3>*clock 0.3333
  texture {GreenSnot}
  normal { bumps 3  scale 0.1 }
}

/* snot-ball TCL */
sphere {
  <-0.75, 1.5, 3>*clock 0.2
  texture {GreenSnot}
  normal { bumps 3  scale 0.1 }
}

/* snot-ball TR */
sphere {
  <2.125, 2, 4>*clock 0.33333
  texture {GreenSnot}
  normal { bumps 3  scale 0.1 }
}

/* snot-ball CR */
sphere {
  <2.5, 0.25, 3>*clock 0.25
  texture {GreenSnot}
  normal { bumps 3  scale 0.1 }
}

/* snot-ball BR */
sphere {
  <2.25, -1, 3>*clock 0.25
  texture {GreenSnot}
  normal { bumps 3  scale 0.1 }
}

/* sinkhole! */
height_field {
  png "sinkhole.png"
  smooth
  translate <-0.5, -0.5, 0>
  rotate x*-90
  scale <1.25, 1, 1>
  texture {
    pigment {
      image_map {
        png "covid19-genome-fragment.png"
      }
    }
    rotate z*5
    scale 0.75
    translate <-0.1, 0, 0>*clock
  }
  translate <0, -0.5, 0.75+clock/10>
  scale 15
}
