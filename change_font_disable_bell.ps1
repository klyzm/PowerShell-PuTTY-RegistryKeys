$Font = "Fira Code Medium"
$BellSoundEnabled = 0 # 0 -> Disabled

$Items = Get-ChildItem -Path HKCU:\SOFTWARE\SimonTatham\PuTTY\Sessions\ | Select Name

foreach ($Item in $Items) {

    $Path = $Item.Name
    $Path = $Path -replace "HKEY_CURRENT_USER", "HKCU:"

    #Set Values
    Set-ItemProperty -Path $path -Name "Beep" -Value $BellSoundEnabled -Type DWord
    Set-ItemProperty -Path $path -Name "Font" -Value $Font -Type String

}
