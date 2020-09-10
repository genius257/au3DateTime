#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDate(2012, 1, 1)
assertSame(52, $d.weekOfYear)
$d = DateTime()
$d.setDate(2012, 1, 2)
assertSame(1, $d.weekOfYear)
