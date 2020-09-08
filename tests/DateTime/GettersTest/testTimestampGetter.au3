#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setTimezone('GMT')
$d.setDateTime(1970, 1, 1, 0, 0, 0)
assertSame(0, $d.timestamp)
