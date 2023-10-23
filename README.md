[![](docs/images/swirl_small.gif)](https://urbanjost.github.io/M_color/fpm-ford/index.html)
# [M_color](https://urbanjost.github.io/M_color/man3.html)

## Name

M_color - Fortran module for converting between color models

## Description
**M_color** is a collection of procedures primarily for converting between different
color models. Documentation includes man-pages and a number of example programs.

---
![gmake](docs/images/gnu.gif)
---
## Building the Module using make(1)
    git clone https://github.com/urbanjost/M_color.git
    cd M_color/src
    # change Makefile if not using one of the listed compilers
     
    # for gfortran
    make clean
    make F90=gfortran gfortran
     
    # for ifort
    make clean
    make F90=ifort ifort

    # for nvfortran
    make clean
    make F90=nvfortran nvfortran

This will compile the M_color module and build all the example programs
from the document pages in the examples/ sub-directory.

---
![-](docs/images/fpm_logo.gif)
---
## Build and Test with FPM

#### (registered at the [fpm(1) registry](https://github.com/fortran-lang/fpm-registry) )

Alternatively, download the github repository and build it with 
fpm ( as described at [Fortran Package Manager](https://github.com/fortran-lang/fpm) )

```bash
     git clone https://github.com/urbanjost/M_color.git
     cd M_color
     fpm test
```
or just list it as a dependency in your fpm.toml project file.

```toml
     [dependencies]
     M_color        = { git = "https://github.com/urbanjost/M_color.git" }
```
---
![docs](docs/images/docs.gif)
---
## Documentation

### User
   - A single page that uses javascript to combine all the HTML
     descriptions of the man-pages is at 
     [BOOK_M_color](https://urbanjost.github.io/M_color/BOOK_M_color.html).

   - a simple index to the man-pages in HTML form for the
   [routines](https://urbanjost.github.io/M_color/man3.html) 
   and [programs](https://urbanjost.github.io/M_color/man1.html) 

   - There are man-pages in the repository download in the docs/ directory
     that may be installed on ULS (Unix-Like Systems).

   - ![man-pages](docs/images/manpages.gif)
      + [manpages.zip](https://urbanjost.github.io/M_color/manpages.zip)
      + [manpages.tgz](https://urbanjost.github.io/M_color/manpages.tgz)

   - [CHANGELOG](docs/CHANGELOG.md) provides a history of significant changes

### Developer Documentation

 - The code was run through [ford(1)](https://politicalphysicist.github.io/ford-fortran-documentation.html)
   to produce a [developers' document](https://urbanjost.github.io/M_color/fpm-ford/index.html).
 - [github action status](docs/STATUS.md)

---
<?
<a align="center" href="https://urbanjost.github.io/M_color/fpm-ford/index.html">
  <img align="center" width="460" height="460" src="https://urbanjost.github.io/M_color/images/hls.gif">
</a>
### See also:
#### Poskanzer PPM (Portable Pixel Map) packages:
 - [M_pixel](https://github.com/urbanjost/M_pixel)
 - [M_draw](https://github.com/urbanjost/M_draw)

#### External:
 - [cubehelix](https://people.phy.cam.ac.uk/dag9/CUBEHELIX/)
 - [forcolormap](https://github.com/vmagnin/forcolormap)
