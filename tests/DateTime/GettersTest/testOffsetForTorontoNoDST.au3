#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDate(2012, 6, 1)
$d.setTimezone('America/Toronto')
assertSame(-14400, $d.offset)
