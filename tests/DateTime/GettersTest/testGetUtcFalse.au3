#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDate(2012, 1, 1)
$d.setTimezone('America/Toronto')
assertFalse($d.utc)
assertFalse($d.isUtc())
$d = DateTime()
$d.setDate(2012, 1, 1)
$d.setTimezone('Europe/Paris')
assertFalse($d.utc)
assertFalse($d.isUtc())
