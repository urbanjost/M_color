<?
<body>
  <a name="top" id="top"></a>

  <div id="Container">
    <div id="Content">
      <div class="c1">
      </div><a name="0"></a>

      <h3><a name="0">NAME</a></h3>

      <blockquote>
        <b>closest_color_name(3f)</b> - [M_color] returns the closest name for the given RGB values. <b>(LICENSE:PD)</b>
      </blockquote><a name="contents" id="contents"></a>


      <h3><a name="8">SYNOPSIS</a></h3>

      <blockquote>
        <pre>
subroutine <b>closest_color_name</b>(r,g,b,closestname)
<br />    real,intent(in)               :: r,g,b
    character(len=20),intent(out) :: closestname
</pre>
      </blockquote><a name="2"></a>

      <h3><a name="2">DESCRIPTION</a></h3>

      <blockquote>
        <p><b>closest_color_name</b>() returns the closest name for the given RGB values. Most X11 Windows color names are supported.</p>
      </blockquote><a name="3"></a>

      <h3><a name="3">OPTIONS</a></h3>

      <blockquote>
        <table cellpadding="3">
          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">R</td>

            <td valign="bottom">red component, range of 0 to 100</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">G</td>

            <td valign="bottom">green component, range of 0 to 100</td>
          </tr>

          <tr valign="top">
            <td class="c2" width="6%" nowrap="nowrap">B</td>

            <td valign="bottom">blue component, range of 0 to 100</td>
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
            <td class="c2" colspan="2">CLOSESTNAME</td>
          </tr>

          <tr valign="top">
            <td width="6%"></td>

            <td>name of color found closest to given RGB value&lt;/li&gt;</td>
          </tr>

          <tr>
            <td></td>
          </tr>
        </table>
      </blockquote><a name="5"></a>

      <h3><a name="5">EXAMPLE</a></h3>

      <blockquote>
        <p>Sample program</p>
        <pre>
       program demo_closest_color_name
       use M_color, only : closest_color_name
       character(len=100) :: string ! at least 20 characters
       string=' '
<br />       call closest_color_name(100.0,  0.0,  0.0,string)
       write(*,*)trim(string)
<br />       call closest_color_name(  0.0,100.0,  0.0,string)
       write(*,*)trim(string)
<br />       call closest_color_name(  0.0,  0.0,100.0,string)
       write(*,*)trim(string)
<br />       end program demo_closest_color_name
<br />
</pre>Results:
        <pre>
       red
       green
       blue
</pre>
      </blockquote><a name="6"></a>

      <div class="c1"><img src="../images/closest_color_name.3.gif" /></div>
    </div>
  </div>
</body>
</html>
