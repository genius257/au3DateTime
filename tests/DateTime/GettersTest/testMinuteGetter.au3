#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDateTime(1234, 5, 6, 7, 8, 9)
assertSame(8, $d.minute)
