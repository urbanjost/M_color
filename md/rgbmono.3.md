<?
<body>
  <a name="top" id="top"></a>

  <div id="Container">
    <div id="Content">
      <div class="c31">
      </div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>RGBMONO(3f)</b> - [M_color] converts RGB colors to a reasonable grayscale intensity. 
      </blockquote><a name="contents" id="contents"></a>


      <h3><a name="6">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
<br /><b>subroutine</b> <b>rgbmono&lt;/a&gt;</b>(rr,rg,rb,ri,status)
<br />    real, intent(in)  :: RR
    real, intent(in)  :: RG
    real, intent(in)  :: RB
    real, intent(out) :: RI
    integer           :: status
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p><b>RGBMONO</b>(3f) converts RGB colors to a reasonable grayscale intensity. This can be used to produce monochrome images from color images.
        Intensity is calculated from the specified Red, Green, Blue intensities as 0.30*R + 0.59*G + 0.11*B, as in U.S. color television systems,</p>

        <table cellpadding="3">
          <!-- tsb: <B>RGBMONO</B>(3f) converts RGB colors to a reasonable grayscale intensity.
 -->

          <tr>
            <td></td>
          </tr>

          <tr>
            <td></td>
          </tr>

          <tr valign="top">
            <td class="c32" colspan="2">NTSC encoding.</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>Note that most devices do not have an infinite range of monochrome intensities available.</td>
          </tr>

          <tr>
            <td></td>
          </tr>
        </table>
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c32" width="6%" nowrap="nowrap">RR</td>

            <td valign="bottom">red component of the input color in the range 0 to 100</td>
          </tr>

          <tr valign="top">
            <td class="c32" width="6%" nowrap="nowrap">RG</td>

            <td valign="bottom">green component of the input color in the range 0 to 100</td>
          </tr>

          <tr valign="top">
            <td class="c32" width="6%" nowrap="nowrap">RB</td>

            <td valign="bottom">blue component of the input color in the range 0 to 100</td>
          </tr>

          <tr>
            <td></td>
          </tr>
        </table>
      </blockquote><a name="4"></a>

      <h3><a name="4">RETURNS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c32" width="6%" nowrap="nowrap">RI</td>

            <td valign="bottom">grayscale intensity calculated in the range 0 to 100</td>
          </tr>

          <tr valign="top">
            <td class="c32" width="6%" nowrap="nowrap">status</td>

            <td valign="bottom">zero (0) if no error occurred, otherwise result is out of bounds</td>
          </tr>

          <tr>
            <td></td>
          </tr>
        </table>
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLES</a></h3>

      <blockquote>
        Sample:
        <pre>
   program demo_rgbmono
   use M_color, only : rgbmono
   implicit none
   real    :: gray
   integer :: ierr
   call rgbmono(100.0,  0.0,  0.0,gray,ierr); write(*,*)'red     ',gray
   call rgbmono(  0.0,100.0,  0.0,gray,ierr); write(*,*)'green   ',gray
   call rgbmono(  0.0,  0.0,100.0,gray,ierr); write(*,*)'blue    ',gray
   call rgbmono(100.0,100.0,  0.0,gray,ierr); write(*,*)'Yellow  ',gray
   call rgbmono(  0.0,100.0,100.0,gray,ierr); write(*,*)'Cyan    ',gray
   call rgbmono(100.0,  0.0,100.0,gray,ierr); write(*,*)'Magenta ',gray
   call rgbmono(100.0,100.0,100.0,gray,ierr); write(*,*)'White   ',gray
   call rgbmono( 00.0,  0.0,  0.0,gray,ierr); write(*,*)'Black   ',gray
   call rgbmono( 50.0,  0.0,  0.0,gray,ierr); write(*,*)'Maroon  ',gray
   call rgbmono(100.0, 50.0, 50.0,gray,ierr); write(*,*)'Pink    ',gray
   end program demo_rgbmono
</pre>Results:
        <pre>
    red        30.0000019
    green      58.9999962
    blue       11.0000000
    Yellow     89.0000000
    Cyan       70.0000000
    Magenta    41.0000000
    White      100.000000
    Black      0.00000000
    Maroon     15.0000010
    Pink       65.0000000
<br />
</pre>
      <div class="c31"><img src="../images/rgbmono.3.gif" /></div>
    </div>
  </div>
</body>
