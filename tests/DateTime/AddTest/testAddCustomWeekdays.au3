#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDateTime(2018, 5, 25, 0, 0, 0)

$weekendDays = $__g_DateTime_weekendDays
Global $__g_DateTime_weekendDays = [$__g_DateTime_WEDNESDAY]

$d.addWeekdays(2)
assertSame(27, $d.day)
$d.subWeekdays(-3)
assertSame(31, $d.day)
$d.addWeekdays(-3)
assertSame(27, $d.day)
$d.subWeekdays(2)
assertSame(25, $d.day)
$d.addWeekdays(14)
assertSame(10, $d.day)
$d.subWeekdays(14)
assertSame(25, $d.day)
$d.addWeekdays(12)
assertSame(8, $d.day)
$d.subWeekdays(12)
assertSame(25, $d.day)

$__g_DateTime_weekendDays = $weekendDays
