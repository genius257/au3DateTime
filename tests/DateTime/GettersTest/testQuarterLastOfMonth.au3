#AutoIt3Wrapper_Run_AU3Check=N

#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

Local $testData = [ _
    [1, 1], _
    [2, 1], _
    [3, 1], _
    [4, 2], _
    [5, 2], _
    [6, 2], _
    [7, 3], _
    [8, 3], _
    [9, 3], _
    [10, 4], _
    [11, 4], _
    [12, 4] _
]

For $i = 0 To UBound($testData, 1)-1 Step +1
    $month = $testData[$i][0]
    $quarter = $testData[$i][1]
    $d = DateTime()
    $d.setDateTime(2015, $month, 1)
    $d.endOfMonth()
    assertSame($quarter, $d.quarter)
Next
