#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDateTime(2012, 5, 7, 7, 8, 9)
assertSame(1, $d.dayOfWeekIso)
$d = DateTime()
$d.setDateTime(2012, 5, 8, 7, 8, 9)
assertSame(2, $d.dayOfWeekIso)
$d = DateTime()
$d.setDateTime(2012, 5, 9, 7, 8, 9)
assertSame(3, $d.dayOfWeekIso)
$d = DateTime()
$d.setDateTime(2012, 5, 10, 7, 8, 9)
assertSame(4, $d.dayOfWeekIso)
$d = DateTime()
$d.setDateTime(2012, 5, 11, 7, 8, 9)
assertSame(5, $d.dayOfWeekIso)
$d = DateTime()
$d.setDateTime(2012, 5, 12, 7, 8, 9)
assertSame(6, $d.dayOfWeekIso)
$d = DateTime()
$d.setDateTime(2012, 5, 13, 7, 8, 9)
assertSame(7, $d.dayOfWeekIso)
