#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$milliseconds = 345
$d.setDateTime(2004, 1, 5, 12, 34, 11, $milliseconds)
assertSame($milliseconds, $d.millisecond)
