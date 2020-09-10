#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDateTime(2012, 1, 4, 13, 2, 1)
$d.addWeekdays(9)
assertSame(17, $d.day)

assertSame(13, $d.hour)
assertSame(2, $d.minute)
assertSame(1, $d.second)
