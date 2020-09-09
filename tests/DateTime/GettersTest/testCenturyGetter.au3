#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDateTime(1234, 5, 6, 7, 8, 9)
assertSame(13, $d.century)
$d = DateTime()
$d.setDateTime(2000, 5, 6, 7, 8, 9)
assertSame(20, $d.century)
$d = DateTime()
$d.setDateTime(2001, 5, 6, 7, 8, 9)
assertSame(21, $d.century)
$d = DateTime()
$d.setDateTime(1, 5, 6, 7, 8, 9)
assertSame(1, $d.century)
#cs
; TODO: currently negative years are not supported. negative numbers should either be supported, or the outcommented assertions should be removed
$d = DateTime()
$d.setDateTime(-1, 5, 6, 7, 8, 9)
assertSame(-1, $d.century)
$d = DateTime()
$d.setDateTime(-100, 5, 6, 7, 8, 9)
assertSame(-1, $d.century)
$d = DateTime()
$d.setDateTime(-101, 5, 6, 7, 8, 9)
assertSame(-2, $d.century)
#ce
