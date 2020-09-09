#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$micro = 345678
$d.setDateTime(2004, 1, 5, 12, 34, 11, $micro)
assertSame($micro, $d.micro)
