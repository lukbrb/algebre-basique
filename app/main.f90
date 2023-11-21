program main
  use algebre_basique, only: discriminant, solve_2nd_degre
  implicit none

  complex :: sol1, sol2
  real :: a, b, c
  a = 1.
  b = -6.
  c = 73.

  print *, "delta = ", discriminant(a, b, c)
  call solve_2nd_degre(a, b, c, sol1, sol2)

  print *, "Solutions de l'équation :"
  print *, "x1 = ", sol1, "x2 = ", sol2
end program main
