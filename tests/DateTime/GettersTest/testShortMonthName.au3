#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDate(2018, 8, 6)
assertSame('Jul', $d.shortMonthName)
$d.locale('fr')
assertSame('juil.', $d.shortMonthName)
