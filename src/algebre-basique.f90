module algebre_basique
  implicit none
  private

  public :: discriminant, solve_2nd_degre
 
  ! interface find_roots
  !   module procedure solve_real, solve_complex
  ! end interface 
contains

 ! TODO: Sinon faire une interface réel/complexe pour le discriminant direct
  real function discriminant(a, b, c)
    real, intent(in) :: a, b, c
    discriminant = b**2 - 4*a*c
  end function discriminant

  subroutine solve_2nd_degre(a, b, c, s1, s2)
    real, intent(in) :: a, b, c
    complex, intent(out) :: s1, s2
    ! complex, intent(out) :: cs1, cs2
    real :: delta
    complex :: cdelta

    delta = discriminant(a=a, b=b, c=c)
    if (delta >= 0) then
      s1 = (-b + delta**(0.5)) / (2 * a)
      s2 = (-b - delta**(0.5)) / (2 * a)
    else 
      cdelta = complex(0., sqrt(-delta))
      s1 = 0.5 * (complex(-b, 0.) + cdelta)
      s2 = 0.5 * (complex(-b, 0.) - cdelta)
    endif

    end subroutine solve_2nd_degre

    ! subroutine solve_real(delta, a, b, s1, s2)
    !   real, intent(in) :: a, b
    !   real, intent(out) :: s1, s2
    !   real :: delta
    !   s1 = (-b + delta**(0.5)) / (2 * a)
    !   s2 = (-b - delta**(0.5)) / (2 * a)

    ! end subroutine solve_real

    ! subroutine solve_complex(delta, a, b, s1, s2)
    !   real, intent(in) :: a, b
    !   complex, intent(out) :: s1, s2
    !   real :: delta
    !   complex :: cdelta

    !   cdelta = complex(0., sqrt(-delta))
    !   s1 = complex(-b, 0.) + cdelta
    !   s2 = complex(-b, 0.) - cdelta
    ! end subroutine solve_complex


end module algebre_basique
