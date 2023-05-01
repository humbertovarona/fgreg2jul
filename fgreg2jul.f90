subroutine fgreg2jul(year, month, day, hour, minute, second, julian_day)
    implicit none
    integer, intent(in) :: year, month, day, hour, minute
    real, intent(in) :: second
    real, intent(out) :: julian_day
    integer :: aData, yData, mData

    aData = (14 - month) / 12
    yData = year + 4800 - aData
    mData = month + 12 * aData - 3
    julian_day = day + (153 * mData + 2) / 5 + 365 * yData + yData / 4 - yData / 100 + yData / 400 - 32045.0
    julian_day = julian_day + hour / 24.0 + minute / 1440.0 + second / 86400.0

end subroutine fgreg2jul
