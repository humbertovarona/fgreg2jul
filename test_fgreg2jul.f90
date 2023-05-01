program test_fgreg2jul
    implicit none
    integer :: year, month, day, hour, minute
    real :: second, julian_day

    year = 2023
    month = 4
    day = 30
    hour = 15
    minute = 30
    second = 0.0

    call fgreg2jul(year, month, day, hour, minute, second, julian_day)

    write(*,*) 'Gregorian date:', day, '/', month, '/', year, ' ', hour, ':', minute, ':', second
    write(*,*) 'Julian date:', julian_day

end program test_fgreg2jul

