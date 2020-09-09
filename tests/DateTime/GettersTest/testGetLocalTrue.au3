#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

; Default timezone has been set to America/Toronto in AbstractTestCase.php
; @see : http://en.wikipedia.org/wiki/List_of_UTC_time_offsets
$d = DateTime()
$d.setDate(2012, 1, 1)
$d.setTimezone('America/Toronto')
assertTrue($d.local)
assertTrue($d.isLocal())
$d = DateTime()
$d.setDate(2012, 1, 1)
$d.setTimezone('America/New_York')
assertTrue($d.local);
assertTrue($d.isLocal());
