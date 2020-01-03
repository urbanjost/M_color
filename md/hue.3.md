<?
<body>
  <div id="Container">
    <div id="Content">
      <dl>
        <dt><a name="HUE" id="HUE">NAME</a></dt>

        <dd>HUE(3f) - [M_color] converts a color's components from one color model to another. </dd>

        <dt>SYNOPSIS</dt>

        <dd>
          <pre>
   subroutine hue(modei,clr1i,clr2i,clr3i,modeo,clr1o,clr2o,clr3o,status)

    character(len=*),intent(in) :: modei  ! name of color model of input values
    character(len=*),intent(in) :: modeo  ! name of color model of output values
    real,intent(in)             :: clr1i,clr2i,clr3i
    real,intent(out)            :: clr1o,clr2o,clr3o
    integer,intent(out)         :: status
   
</pre>
        </dd><!-- ======================================================================= -->

        <dt>DESCRIPTION</dt>

        <dd>
          Basic color models ...<br />
          <br />

          <blockquote>
            <table border="1">
              <caption class="c8">
                valid values for modei and modeo as well as the corresponding meanings for clr1*, clr2*, and clr3* are:
              </caption>

              <tr>
                <th>model</th>

                <th>clr1</th>

                <th>clr2</th>

                <th>clr3</th>
              </tr>

              <tr>
                <td>hls</td>

                <td>hue</td>

                <td>lightness</td>

                <td>saturation</td>
              </tr>

              <tr>
                <td>hsl</td>

                <td>hue</td>

                <td>saturation</td>

                <td>lightness</td>
              </tr>

              <tr>
                <td>hvs</td>

                <td>hue</td>

                <td>value</td>

                <td>saturation</td>
              </tr>

              <tr>
                <td>hsv</td>

                <td>hue</td>

                <td>saturation</td>

                <td>value</td>
              </tr>

              <tr>
                <td>rgb</td>

                <td>red</td>

                <td>green</td>

                <td>blue</td>
              </tr>

              <tr>
                <td>cmy</td>

                <td>cyan</td>

                <td>magenta</td>

                <td>yellow</td>
              </tr>

              <tr>
                <td>yiq</td>

                <td>luma(gray scale)</td>

                <td>orange-blue chrominance</td>

                <td>purple-green chrominance</td>
              </tr>
            </table>
          </blockquote>

          <ul>
            <li>lightness, value, saturation, red, green, blue, cyan, magenta, and yellow range from 0 to 100,</li>

            <li>hue ranges from 0 to 360 degrees,</li>

            <li>y ranges from 0 to 100,</li>

            <li>i ranges from -60 to 60,</li>

            <li>q ranges from -52 to 52</li>
          </ul>

          <p>The STATUS variable can signal the following conditions:</p>
          <pre>
   -1   modei = modeo, so no substantial conversion was done,
    1   one of the input color values was outside the allowable range,
    2   modei was invalid
    3   modeo was invalid
</pre>

          <h2>EXAMPLE</h2>
          <pre>
  Sample program

   program demo_hue
   use M_color, only : hue
   implicit none
      !                      NAME        RGB(0-255)            HLS(0-100)
      call check_name('hls', 'red',      [ 100,  0,    0   ], [ 0,    50,   100 ])
      call check_name('hls', 'orange',   [ 100,  65,   0   ], [ 39,   50,   100 ])
      call check_name('hls', 'yellow',   [ 100,  100,  0   ], [ 60,   50,   100 ])
      call check_name('hls', 'green',    [ 0,    100,  0   ], [ 120,  50,   100 ])
      call check_name('hls', 'cyan',     [ 0,    100,  100 ], [ 180,  50,   100 ])
      call check_name('hls', 'blue',     [ 0,    0,    100 ], [ 240,  50,   100 ])
      call check_name('hls', 'magenta',  [ 100,  0,    100 ], [ 300,  50,   100 ])
      call check_name('hls', 'black',    [ 0,    0,    0   ], [ 0,    0,    0   ])
      call check_name('hls', 'white',    [ 100,  100,  100 ], [ 0,    100,  0   ])
      call check_name('hsv', 'black',    [ 0,    0,    0   ], [ 0,    0,    0   ])
      !                      NAME        RGB(0-255)            HSV(0-100)
      call check_name('hsv', 'gray50',   [ 50,   50,   50  ], [ 0,    0,    50  ])
      call check_name('hsv', 'silver',   [ 75,   75,   75  ], [ 0,    0,    75  ])
      call check_name('hsv', 'white',    [ 100,  100,  100 ], [ 0,    0,    100 ])
      call check_name('hsv', 'red4',     [ 55,   0,    0   ], [ 0,    100,  55  ])
      call check_name('hsv', 'red',      [ 100,  0,    0   ], [ 0,    100,  100 ])
      call check_name('hsv', 'olive',    [ 50,   50,   0   ], [ 60,   100,  50  ])
      call check_name('hsv', 'yellow',   [ 100,  100,  0   ], [ 60,   100,  100 ])
      call check_name('hsv', 'green',    [ 0,    100,  0   ], [ 120,  100,  100 ])
      call check_name('hsv', 'lime',     [ 0,    100,  0   ], [ 120,  100,  100 ])
      call check_name('hsv', 'teal',     [ 0,    50,   50  ], [ 180,  100,  50  ])
      call check_name('hsv', 'cyan',     [ 0,    100,  100 ], [ 180,  100,  100 ])
      call check_name('hsv', 'navy',     [ 0,    0,    50  ], [ 240,  100,  50  ])
      call check_name('hsv', 'blue',     [ 0,    0,    100 ], [ 240,  100,  100 ])
      call check_name('hsv', 'purple',   [ 63,   13,   94  ], [ 277,  87,   94  ])
      call check_name('hsv', 'magenta4', [ 55,   0,    55  ], [ 300,  100,  55  ])
      call check_name('hsv', 'magenta',  [ 100,  0,    100 ], [ 300,  100,  100 ])
      call check_name('hsv', 'maroon',   [ 69,   19,   38  ], [ 338,  73,   69  ])

   contains
   subroutine check_name(modelout,name,rgb,other)

   ! given a color convert to MODELOUT and compare to expected values

   character(len=*),intent(in)   :: name
   integer,intent(in)            :: rgb(3), other(3)
   character(len=*),intent(in)   :: modelout
      real                       :: val1,val2,val3
      integer                    :: status

      ! convert RGB values to MODELOUT values
      call hue('rgb',REAL(rgb(1)),REAL(rgb(2)),REAL(rgb(3)),modelout,val1,val2,val3,status)
         write(*,*)'COLOR '//trim(name)
         write(*,*)'EXPECTED '//modelout//' ====&gt;',other
         write(*,*)'RETURNED '//modelout//' ====&gt;',int([val1+0.5,val2+0.5,val3+0.5])
         write(*,*)'STATUS ==========&gt;',status
   end subroutine check_name

   end program demo_hue

  Results:

       COLOR red
       EXPECTED hls ====&gt;           0          50         100
       RETURNED hls ====&gt;           0          50         100
       STATUS ==========&gt;           0
       COLOR orange
       EXPECTED hls ====&gt;          39          50         100
       RETURNED hls ====&gt;          39          50         100
       STATUS ==========&gt;           0
       COLOR yellow
       EXPECTED hls ====&gt;          60          50         100
       RETURNED hls ====&gt;          60          50         100
       STATUS ==========&gt;           0
       COLOR green
       EXPECTED hls ====&gt;         120          50         100
       RETURNED hls ====&gt;         120          50         100
       STATUS ==========&gt;           0
       COLOR cyan
       EXPECTED hls ====&gt;         180          50         100
       RETURNED hls ====&gt;         180          50         100
       STATUS ==========&gt;           0
       COLOR blue
       EXPECTED hls ====&gt;         240          50         100
       RETURNED hls ====&gt;         240          50         100
       STATUS ==========&gt;           0
       COLOR magenta
       EXPECTED hls ====&gt;         300          50         100
       RETURNED hls ====&gt;         300          50         100
       STATUS ==========&gt;           0
       COLOR black
       EXPECTED hls ====&gt;           0           0           0
       RETURNED hls ====&gt;           0           0           0
       STATUS ==========&gt;           0
       COLOR white
       EXPECTED hls ====&gt;           0         100           0
       RETURNED hls ====&gt;           0         100           0
       STATUS ==========&gt;           0
       COLOR black
       EXPECTED hsv ====&gt;           0           0           0
       RETURNED hsv ====&gt;           0           0           0
       STATUS ==========&gt;           0
       COLOR gray50
       EXPECTED hsv ====&gt;           0           0          50
       RETURNED hsv ====&gt;           0           0          50
       STATUS ==========&gt;           0
       COLOR silver
       EXPECTED hsv ====&gt;           0           0          75
       RETURNED hsv ====&gt;           0           0          75
       STATUS ==========&gt;           0
       COLOR white
       EXPECTED hsv ====&gt;           0           0         100
       RETURNED hsv ====&gt;           0           0         100
       STATUS ==========&gt;           0
       COLOR red4
       EXPECTED hsv ====&gt;           0         100          55
       RETURNED hsv ====&gt;           0         100          55
       STATUS ==========&gt;           0
       COLOR red
       EXPECTED hsv ====&gt;           0         100         100
       RETURNED hsv ====&gt;           0         100         100
       STATUS ==========&gt;           0
       COLOR olive
       EXPECTED hsv ====&gt;          60         100          50
       RETURNED hsv ====&gt;          60         100          50
       STATUS ==========&gt;           0
       COLOR yellow
       EXPECTED hsv ====&gt;          60         100         100
       RETURNED hsv ====&gt;          60         100         100
       STATUS ==========&gt;           0
       COLOR green
       EXPECTED hsv ====&gt;         120         100         100
       RETURNED hsv ====&gt;         120         100         100
       STATUS ==========&gt;           0
       COLOR lime
       EXPECTED hsv ====&gt;         120         100         100
       RETURNED hsv ====&gt;         120         100         100
       STATUS ==========&gt;           0
       COLOR teal
       EXPECTED hsv ====&gt;         180         100          50
       RETURNED hsv ====&gt;         180         100          50
       STATUS ==========&gt;           0
       COLOR cyan
       EXPECTED hsv ====&gt;         180         100         100
       RETURNED hsv ====&gt;         180         100         100
       STATUS ==========&gt;           0
       COLOR navy
       EXPECTED hsv ====&gt;         240         100          50
       RETURNED hsv ====&gt;         240         100          50
       STATUS ==========&gt;           0
       COLOR blue
       EXPECTED hsv ====&gt;         240         100         100
       RETURNED hsv ====&gt;         240         100         100
       STATUS ==========&gt;           0
       COLOR purple
       EXPECTED hsv ====&gt;         277          87          94
       RETURNED hsv ====&gt;         277          86          94
       STATUS ==========&gt;           0
       COLOR magenta4
       EXPECTED hsv ====&gt;         300         100          55
       RETURNED hsv ====&gt;         300         100          55
       STATUS ==========&gt;           0
       COLOR magenta
       EXPECTED hsv ====&gt;         300         100         100
       RETURNED hsv ====&gt;         300         100         100
       STATUS ==========&gt;           0
       COLOR maroon
       EXPECTED hsv ====&gt;         338          73          69
       RETURNED hsv ====&gt;         337          72          69
       STATUS ==========&gt;           0
</pre>
        </dd>

      </dl>
    </div>
  </div>
</body>
