#include <Date.au3>
#include <File.au3>
#include ".\au3pm\au3class\Class.au3"

$aFiles = _FileListToArrayRec(@ScriptDir, '*.au3p', $FLTA_FILES, $FLTAR_NORECUR, $FLTAR_NOSORT, $FLTAR_FULLPATH)
For $i = 1 To $aFiles[0] Step +1
    If FileExists(StringTrimRight($aFiles[$i], 1)) Then
        $au3p = FileGetTime($aFiles[$i])
        $au3 = FileGetTime(StringTrimRight($aFiles[$i], 1))
        $diff = _DateDiff('s', StringFormat('%04d/%02d/%02d %02d:%02d:%02d', $au3[0], $au3[1], $au3[2], $au3[3], $au3[4], $au3[5]), StringFormat('%04d/%02d/%02d %02d:%02d:%02d', $au3p[0], $au3p[1], $au3p[2], $au3p[3], $au3p[4], $au3p[5]))
        If $diff <= 0 Then ContinueLoop
        FileDelete(StringTrimRight($aFiles[$i], 1))
    EndIf
    ConsoleWrite(StringFormat('Transpiling: "%s"\n', $aFiles[$i]))
    Class_Convert_File($aFiles[$i])
Next
