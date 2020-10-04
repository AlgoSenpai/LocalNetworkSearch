#include <Array.au3>

Global $IpList, $aIpList

For $i = 1 To 254
    ConsoleWrite("Ping 192.168.1." & $i & @CRLF)
    If Ping("192.168.1." & $i, 50) > 0 Then
	   If FileExists("\\192.168.1." & $i & "\c$\") Then
        $IpList &= "192.168.1." & $i & "|"
		Beep("500")
	   EndIf
    EndIf
Next

$IpList = StringTrimRight($IpList, 1)
$aIpList = StringSplit($IpList, "|")

_ArrayDisplay($aIpList, 'Liste des IP Actives')
