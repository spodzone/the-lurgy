# the lurgy
Povray sources for The Lurgy, an image and animation inspired by genetic sequence of SARS-Coronavirus 2 (Covid-19)

Rationale: Redbubble introduced selling one's art on face-masks to help reduce the spread of Covid-19. As a net good, inspiration led to this image and then an animation in support of the idea.

Finished image: [The Lurgy](https://www.shinyphoto.co.uk/photo/The-Lurgy-e2269a578b8657526de1980872439072)(Shinyphoto)

Rendered animation: [The Lurgy](https://www.facebook.com/285082981676685/posts/1362611247257181/)(Facebook)

Credit: fragment of the SARS-Covid-2 virus genome come from [NIH](https://www.ncbi.nlm.nih.gov/nuccore/MN908947.3)

# Requirements

* [Povray](http://povray.org/)
* optionally GNU make(1).

# Instructions

Makefile targets are self-explanatory. 
Stills come in a choice of `tiny`, `small` or `large`. Animations (mostly simply scaling vectors by `clock`) can be `movietiny` or `movielarge`. 

Large still image takes about 20mins to render. The large movie takes a render-farm of 4 notebooks 21 hours to generate 250 frames. Options for specifying the required subset may be passed to make(1) via the `OPTS` environment variable.
