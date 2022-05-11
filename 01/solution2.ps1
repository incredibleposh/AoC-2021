$data = Get-Content -Path "sonar.txt"
for ($iter = 1; $iter -lt $data.count-2; $iter++){
    $mean1 = ([int]$data[$iter-1]+[int]$data[$iter]+[int]$data[$iter+1])/3
    $mean2 = ([int]$data[$iter]+[int]$data[$iter+1]+[int]$data[$iter+2])/3
    if ($mean1 -lt $mean2){
        $increase++
    }
}
Write-Host "$increase times increased."
