#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$d = DateTime()
$d.setDate(1975, 1, 1)
$d.add(2, 'year')
assertSame(1977, $d.year)
$d = DateTime()
$d.setDate(1975, 1, 1)
$d.add('year', 2)
assertSame(1977, $d.year)
$d = DateTime()
$d.setDate(1975, 1, 1)
$d.add('2 years')
assertSame(1977, $d.year)
