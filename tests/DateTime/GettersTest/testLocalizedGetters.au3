#AutoIt3Wrapper_Run_AU3Check=N

#include <APILocaleConstants.au3>
#include <WinAPILocale.au3>
#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

$lcid = DllCall('kernel32.dll', 'DWORD', 'LocaleNameToLCID', 'WSTR', 'fr_FR', 'DWORD', 0)[0]
_WinAPI_SetThreadLocale($lcid)

$d = DateTime()
$d.setDateTime(2019, 7, 15, 7, 8, 9)
assertSame('lundi', $d.localeDayOfWeek)
assertSame('lun.', $d.shortLocaleDayOfWeek)
assertSame('juillet', $d.localeMonth)
assertSame('juil.', $d.shortLocaleMonth)
