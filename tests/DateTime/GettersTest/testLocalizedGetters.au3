#AutoIt3Wrapper_Run_AU3Check=N

#include <APILocaleConstants.au3>
#include <WinAPILocale.au3>
#include "..\..\..\au3pm\au3unit\Unit\assert.au3"
#include "..\..\..\DateTime.au3"

;_WinAPI_SetLocaleInfo($LOCALE_SLONGDATE)
;_WinAPI_SetThreadLocale('fr_FR')
$d = DateTime()
$d.setDateTime(2019, 7, 15, 7, 8, 9)
assertSame('lundi', $d.localeDayOfWeek)
assertSame('lun', $d.shortLocaleDayOfWeek)
assertSame('juillet', $d.localeMonth)
assertSame('juil', $d.shortLocaleMonth)
;FIXME: reset locale
