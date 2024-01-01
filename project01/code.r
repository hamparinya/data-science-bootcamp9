## HOMEWORK
## ROCK, PAPER, SCISSORS


game <- function() {

## GREETING & INPUT USERNAME
    print("Welcome to the Rock Paper Scissors Game")
    flush.console()
    username <- readline("What is Your Name: ")
    print(paste("Hi", username))
    print("-----------------------------------------------------------")

## HOW TO PLAY

    flush.console()
    ready <- as.character(readline("Are You Ready to Play? (Y/N): "))

        if(ready == "Y" ) {
            print("Each Player Chooses One of Three Hand Signals: Rock, Paper, or Scissors")
            print("If You Win Your Score Plus 1 Point")
            print("Let's Play Together 5 round")
            print("-----------------------------------------------------------")
        } else {
            print(paste("Nice to Meet You", username))
            return(print("🎉🎉🎊🎊Hope to See you Again Later🎊🎊"))
        }

## Initailze SCORE AND ROUND
    round <- 0
    playerScore <- 0
    computerScore <- 0


## START

    if (ready == "Y") {
    while (ready == "Y" & round <= 5) {

        random <- c("Rock", "Paper", "Scissors")
        c_hand <- sample(random, 1)
        round = round + 1
        print(paste("Round:", round))
        flush.console()
        p_hand <- as.character(readline("Please Choose the Choices 1) Rock 2) Paper 3) Scissors: "))
        print(paste("Computer Hand ", c_hand, " VS ", "Player Hand", p_hand))

## PLAYER WIN

        if(p_hand == "Rock" & c_hand == "Scissors") {
            playerScore <- playerScore + 1
            print(toupper("🎗️player win🎗️"))

        } else

        if(p_hand == "Paper" & c_hand == "Rock") {
            playerScore <- playerScore+ 1
            print(toupper("🎗️player win🎗️"))
        } else

        if(p_hand == "Scissors" & c_hand == "Paper") {
            playerScore <- playerScore + 1
            print(toupper("🎗️player win🎗️"))
        } else

## COMPUTER WIN

        if(computerScore == "Rock" & p_hand == "S") {
            computerScore <- computerScore + 1
            print(toupper("🎗️computer win🎗️"))
        } else

        if(c_hand == "Paper" & p_hand == "Rock") {
            computerScore <- computerScore + 1
            print(toupper("🎗️computer win🎗️"))
        } else

        if(c_hand == "Scissors" & p_hand == "Paper") {
            computerScore <- computerScore + 1
            print(toupper("🎗️computer win🎗️"))
        } else

        if(p_hand == c_hand | c_hand == p_hand) {
            print(toupper("🔥play again🔥"))
            computerScore <- computerScore + 0
            playerScore <- playerScore + 0
            print("✨No Score✨")
        }
        if (round == 5) {
        print("👌STOP👌")
        print("----------------------------------------------------------------")
        break
        }
    }

       ## print(paste("Player's Total Score : ", playerScore,  " ,Computer Score :", computerScore))
## TOTAL SCORE OF PLAYER
        if(playerScore > computerScore) {
            print(toupper("🎉Congratulations🎉"))
            print(paste("Player Score", playerScore))
            print(toupper("✨You Are the Champions✨"))

        } else

        if(playerScore < computerScore) {
            print(toupper("🎉Congratulations🎉"))
            print(paste("Computer Score", computerScore))
            print(toupper("✨Computer Is the Champions✨"))
        } else
        print("Tie a game")
    }
}
