program testpes
use callpot1 
!use callpot2
!use callpot3 
implicit none
real*8 :: roo, ron, rno, v
real*8, dimension(:) :: dvdr(3), r(3)

!      3
!      N
!     / \
!  r3/   \r2
!   /     \
!  /       \
! O---------O
! 1   r1    2

roo=2.4d0 !in bohr
ron=4.5d0 !in bohr
rno=2.3d0 !in bohr

r(1)=roo
r(2)=ron
r(3)=rno

call no22appes(r, v, dvdr)
!call no22apppes(r, v, dvdr)
!call no24appes(r, v, dvdr)

write(*,*)"Energy = ", v, "Hartree"
write(*,*)"dV/dr_i (Hartree/bohr) = ", dvdr

end
