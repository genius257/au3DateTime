#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDate(2012, 7, 1)
$d.setTimezone('America/Toronto')
assertTrue($d.dst)
assertTrue($d.isDST())
