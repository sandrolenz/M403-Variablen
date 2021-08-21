# Start

Clear-Host
Write-Host "Bitte nehmen Sie sich kurz Zeit um an unserer Umfrage teilzunehmen" -ForegroundColor blue
do{

# Variablen initialisieren

[string] $Name = "xxx"
[string] $Vorname = "xxx"
[int] $PLZ = 1111
[int] $Alter = "18"
[double] $Grosse = "170.0"
[string] $Cumulus = "j"
[string] $correct = "j"

# Daten eingeben

try{
$Vorname = Read-Host "Wie ist Ihr Vorname?"
$Name = Read-Host "Wie ist Ihr Nachname?"
$Alter = Read-Host "Wie alt sind Sie? (Bsp. 25)"
$PLZ = Read-Host "Wie ist die Postleitzahl Ihres Wohnorts?"
$Grosse = Read-Host "Wie gross sind Sie? (in CM, Bsp. 178)"
$Cumulus = Read-Host "Besitzen Sie eine Cumulus-Karte? (j/n)"
}catch{
    Write-Host "Ungueltige Eingabe. Das Programm wird beendet." -ForegroundColor red ; pause ; exit ;
}

# Daten ausgeben

Write-Host ""
Write-Host "Sie sind $Vorname $Name, Sie wohnen in $PLZ und sind $Alter Jahre alt." -ForegroundColor Yellow
Write-Host "Sie sind $Grosse cm gross." -ForegroundColor Yellow
Write-Host "Im Besitz einer Cumulus-Karte: $Cumulus" -ForegroundColor Yellow
Write-Host ""

# Überprüfung

$correct = Read-Host "Sind diese Daten korrekt? (j/n)"

    if ($correct -eq "j"){
        Clear-Host ; Write-Host "Vielen Dank fuer ihre Hilfe." -foregroundcolor blue ; pause ; exit
    }

}while ($correct = "n")
