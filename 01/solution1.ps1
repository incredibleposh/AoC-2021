$data = Get-Content -Path "sonar.txt"
for ($iter = 0; $iter -lt $data.count; $iter++){
    #foreach ($value in $data) {
    if ($step -eq 0) { $previous = $data[$iter] }
    else {
        if ($value -gt $previous) {
            Write-Host "$step. $value > $previous"
            $increase++
        } else {
            Write-Host "$step. $value < $previous"
            $decrease++
        }
        $previous = $value

    }
    $step++
}
Write-Host "$increase times increased, $decrease times decreased during $step steps."
