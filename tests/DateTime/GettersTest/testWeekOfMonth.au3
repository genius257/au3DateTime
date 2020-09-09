#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDate(2012, 9, 30)
assertSame(5, $d.weekOfMonth)
$d = DateTime()
$d.setDate(2012, 9, 28)
assertSame(4, $d.weekOfMonth)
$d = DateTime()
$d.setDate(2012, 9, 20)
assertSame(3, $d.weekOfMonth)
$d = DateTime()
$d.setDate(2012, 9, 8)
assertSame(2, $d.weekOfMonth)
$d = DateTime()
$d.setDate(2012, 9, 1)
assertSame(1, $d.weekOfMonth)
