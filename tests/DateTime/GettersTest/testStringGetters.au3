#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDateTime(2012, 1, 9, 7, 8, 9)
assertSame('Monday', $d.englishDayOfWeek)
assertSame('Mon', $d.shortEnglishDayOfWeek)
assertSame('January', $d.englishMonth)
assertSame('Jan', $d.shortEnglishMonth)
