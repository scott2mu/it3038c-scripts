#Project 2 Murray Scott
Add-Type -AssemblyName System.Speech
$guesscount = 0 #initialize ints
$attemptcount = 0
$number = Get-Random -minimum 1 -maximum 50 #generate random number between 1 and 50
$voice = new-object System.Speech.Synthesis.SpeechSynthesizer #voice that speaks given text,
write-output "Guessing Game. Guess a number between 1 and 50. You have 5 tries."
$voice.speak("Guessing Game. Guess a number between 1 and 50. You have 5 tries.")
do { #do until loop
    $voice.speakasync("Please Guess") | Out-Null
	$guesscount = read-host "What's your guess"
    if ($guesscount -lt $number) { #output if number is too low
		write-output "Too Low"
        $voice.speak("Too low")
    }
    elseif ($guesscount -gt $number) { #output if number is too high
		write-output "Too High"
        $voice.speak("Too high")
    }
    $attemptcount += 1
}
until ($guesscount -eq $number -or $attemptcount -eq 5) #output if number is correct
if ($guesscount -eq $number) { #text/voice output if number is correct
	write-output "You guessed $guesscount correctly. Good Game. You guessed in $attemptcount tries."
    $voice.speak("You guessed $guesscount correctly. Good Game. You guessed in $attemptcount tries.")
}
else { #text/voice output if number guesses reach the five limit with no correct guess
	write-output "You lost. The number was $number. Hahahaha!"
    $voice.speak("You lost. The number was $number. Hahahaha")
}
#Sources:
#https://docs.microsoft.com/en-us/powershell/scripting/lang-spec/chapter-03?view=powershell-7.2
#https://docs.microsoft.com/en-us/powershell/scripting/lang-spec/chapter-07?view=powershell-7.2
#https://mikefrobbins.com/
