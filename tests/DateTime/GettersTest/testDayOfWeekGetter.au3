#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDateTime(2012, 5, 7, 7, 8, 9)
assertSame($__g_DateTIme_MONDAY, $d.dayOfWeek())
$d = DateTime()
$d.setDateTime(2012, 5, 8, 7, 8, 9)
assertSame($__g_DateTIme_TUESDAY, $d.dayOfWeek())
$d = DateTime()
$d.setDateTime(2012, 5, 9, 7, 8, 9)
assertSame($__g_DateTIme_WEDNESDAY, $d.dayOfWeek())
$d = DateTime()
$d.setDateTime(2012, 5, 10, 7, 8, 9)
assertSame($__g_DateTIme_THURSDAY, $d.dayOfWeek())
$d = DateTime()
$d.setDateTime(2012, 5, 11, 7, 8, 9)
assertSame($__g_DateTIme_FRIDAY, $d.dayOfWeek())
$d = DateTime()
$d.setDateTime(2012, 5, 12, 7, 8, 9)
assertSame($__g_DateTIme_SATURDAY, $d.dayOfWeek())
$d = DateTime()
$d.setDateTime(2012, 5, 13, 7, 8, 9)
assertSame($__g_DateTIme_SUNDAY, $d.dayOfWeek())
