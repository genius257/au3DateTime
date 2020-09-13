#include <File.au3>
#include ".\au3pm\au3class\Class.au3"

$aFiles = _FileListToArrayRec(@ScriptDir, '*.au3p', $FLTA_FILES, $FLTAR_NORECUR, $FLTAR_NOSORT, $FLTAR_FULLPATH)
For $i = 1 To $aFiles[0] Step +1
    If FileExists(StringTrimRight($aFiles[$i], 1)) Then
        $au3p = FileGetTime($aFiles[$i])
        $au3 = FileGetTime(StringTrimRight($aFiles[$i], 1))
        If $au3p[0] < $au3[0] Or $au3p[1] < $au3[1] Or $au3p[2] < $au3[2] Or $au3p[3] < $au3[3] Or $au3p[4] < $au3[4] Or $au3p[5] < $au3[5] Then ContinueLoop
        FileDelete(StringTrimRight($aFiles[$i], 1))
    EndIf
    ConsoleWrite(StringFormat('Transpiling: "%s"\n', $aFiles[$i]))
    Class_Convert_File($aFiles[$i])
Next
