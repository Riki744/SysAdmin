#Deletes file from provided location, if file not existing 

$file = 'path to file'
$log = Start-Transcript -Path "C:\Windows\temp\log_name.txt"

#If file exists delete it, if does not do nothing
if (Test-Path -Path $file -PathType Leaf) {
    try {
        $removefile = Remove-Item -Path $file -Force -ErrorAction Stop -Verbose
        Write-Host "The file [$file] has been deleted"

    }
    catch {
        Write-Warning -Message "[$file] not removed"

    }
}
#if the file not existing, show message do nothing
else {
    Write-Host "File already deleted"
}
$log_s = Stop-Transcript
    

