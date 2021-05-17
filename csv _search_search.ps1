#$findfrom = D:\Joseph\Documents\Testdata_ID_1_2.csv
#$findin = D:\Joseph\Documents\Testdata_A_B_FindMe.csv

Import-Csv .\Testdata_ID_1_2.csv | ForEach-Object{
    $searchstring = $_.DATA1 + " " + $_.DATA2 + " " + $_.DATA3
    $searchstring
    $currID = $_.ID
Import-csv .\Testdata_A_B_FindMe.csv | Select "DATAD", "FindMe" |
        Select-FuzzyString $searchstring |Sort-Object Score,Result -Descending| out-Host

   
  $numbertotry = Read-Host "enter number to try, or 0 to continue"
  if( $numbertotry -ne 0){
    .\masgbox.ahk $numbertotry $currID #https://autohotkey.com/board/topic/3397-how-to-pass-arguments-to-a-script/
    #wait for script in case if errors
  $response = Read-Host "awaiting Ok from script"
    
}
  #$_.ID | out-host
}
