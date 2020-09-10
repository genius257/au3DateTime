#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDate(2000, 1, 1)
$d.setTimezone('America/Toronto')
assertSame('America/Toronto', $d.tz.getName())

$d = DateTime()
$d.setDate(2000, 1, 1)
$d.setTimezone(-5)
assertSame('America/Chicago', $d.tz.getName())

$d = DateTime()
$d.setDate(2000, 1, 1)
$d.setTimezone('-5')
assertSame('-05:00', $d.tz.getName())
