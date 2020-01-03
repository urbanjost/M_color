<?
<body>
  <a name="top" id="top"></a>

  <div id="Container">
    <div id="Content">
      <div class="c5">
      </div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>COLOR_NAME2RGB(3f)</b> - [M_color] returns the RGB values in the range 0 to 100 for a given known color name. 
      </blockquote><a name="contents" id="contents"></a>


      <h3><a name="6">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
<br /><b>subroutine</b> <b>color_name2rgb</b>(name,r,g,b,echoname)
<br />    character(len=20),intent(in)   :: name
    real,intent(out)               :: r,g,b
    character(len=20),intent(out)  :: echoname
<br />
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p><b>COLOR_NAME2RGB</b>() returns the RGB values in the range 0 to 100 for a given known color name. Most X11 Windows color names are supported. If
        the name is not found, ECHONAME is set to "Unknown".</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">EXAMPLE</a></h3>

      <blockquote>
        <p>A sample program:</p>
        <pre>
    program demo_color_name2rgb
    use M_color, only : hue, color_name2rgb
    implicit none
    !
    ! list colors known to colorname2rgb(3f) &amp; corresponding RGB values
    !
    character(len=20) :: name
    character(len=20) :: echoname
    real              :: red,green,blue
    integer           :: i
    TRYALL: do i=1,10000
       ! weird little thing where the color names have aliases that are numeric strings
       write(name,'(i0)')i
       ! get the RGB values and English name of the color
       call color_name2rgb(name,red,green,blue,echoname)
       ! the last color name is "Unknown" so the loop should exit
       if(echoname.eq.'Unknown')exit TRYALL
       ! display the English name and RGB values for the name
       write(*,*)echoname,int([red,green,blue])
    enddo TRYALL
    !write(*,*)'Number of colors found is ',i-1
    end program demo_color_name2rgb
</pre>
      </blockquote><a name="4"></a>

      <div class="c5"><img src="../images/color_name2rgb.3.gif" /></div>
    </div>
  </div>
</body>
</html>
