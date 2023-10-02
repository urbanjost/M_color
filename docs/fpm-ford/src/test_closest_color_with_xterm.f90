!   Create program to be run in an xterm(1) window that sets the text
!   color to a number of RGB values and then uses the module to find
!   the named color closest to the value, which is then used to set
!   the background color. This lets you visually inspect how well the
!   closest_color_name(3f) is performing.
program test_closest_color_with_xterm
use M_color, only : hue, closest_color_name, color_name2rgb
implicit none
character(len=20) :: closestname
character(len=20) :: rgbname
real              :: r,g,b
integer           :: i,j,k
integer           :: ios
   do i=0,100,25
      do j=0,100,25
         do k=0,100,25
            r=i; g=j; b=k
            call closest_color_name(r,g,b,closestname)
            write(rgbname,'("rgb:",Z2.2,"/",Z2.2,"/",Z2.2)')int([r,g,b]*2.55)
            ! change the background color on an xterm(1) terminal emulator
            write(*,'(a)',advance='no')char(27)//']11;'//trim(closestname)//char(7)
            ! change the foreground color on an xterm(1) terminal emulator
            write(*,'(a)',advance='no')char(27)//']10;'//'white'//char(7)
            write(*,'(a)')repeat('#',132)
            write(*,'(*(a))',advance='no')char(27)//'[38;5;0m COMPARE ',closestname, rgbname
            write(*,'(*(a))',advance='no')char(27)//'[38;5;3m ',closestname, rgbname
            write(*,'(*(a))',advance='yes')char(27)//'[38;5;7m ',closestname, rgbname
            read(*,*,iostat=ios)
         enddo
      enddo
   enddo
end program test_closest_color_with_xterm
