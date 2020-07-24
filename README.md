# M_color.f90 and associated files

## NAME

   M_color - Fortran module for converting between color models

## DESCRIPTION
The M_color Fortran module is described in the 
[M_color overview](md/M_color.3.md "top document for M_color.f90").

## DOWNLOAD
    git clone https://github.com/urbanjost/M_color.git
    cd M_color/src
    # change Makefile if not using gfortran(1) 
    make

This will compile the M_color module and build all the example programs
from the document pages in the PROGRAMS/ sub-directory.

## SUPPORTS FPM
#### (registered at the [fpm(1) registry](https://github.com/fortran-lang/fpm-registry) )

Alternatively, download the github repository and build it with 
fpm ( as described at [Fortran Package Manager](https://github.com/fortran-lang/fpm) )

```bash
     git clone https://github.com/urbanjost/M_color.git
     cd M_color
     fpm build
     fpm test
```

or just list it as a dependency in your fpm.toml project file.

     [dependencies]
     M_color        = { git = "https://github.com/urbanjost/M_color.git" }
