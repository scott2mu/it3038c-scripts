Add-Type -AssemblyName System.Speech
$guesscount = 0
$attemptcount = 0
$number = Get-Random -minimum 1 -maximum 50
$voice = new-object System.Speech.Synthesis.SpeechSynthesizer
write-output "Guessing Game. Guess a number between 1 and 50. You have 5 tries."
$voice.speak("Guessing Game. Guess a number between 1 and 50. You have 5 tries.")
do {
    $voice.speakasync("Please Guess") | Out-Null
	$guesscount = read-host "What's your guess"
    if ($guesscount -lt $number) {
		write-output "Too Low"
        $voice.speak("Too low")
    }
    elseif ($guesscount -gt $number) {
		write-output "Too High"
        $voice.speak("Too high")
    }
    $attemptcount += 1
}
until ($guesscount -eq $number -or $attemptcount -eq 5)
if ($guesscount -eq $number) {
	write-output "You guessed $guesscount correctly. Good Game. You guessed in $attemptcount tries."
    $voice.speak("You guessed $guesscount correctly. Good Game. You guessed in $attemptcount tries.")
}
else {
	write-output "You lost. The number was $number. Hahahaha!"
    $voice.speak("You lost. The number was $number. Hahahaha")
}
#Sources:
#https://docs.microsoft.com/en-us/powershell/scripting/lang-spec/chapter-03?view=powershell-7.2
#https://docs.microsoft.com/en-us/powershell/scripting/lang-spec/chapter-07?view=powershell-7.2
#https://mikefrobbins.com/
