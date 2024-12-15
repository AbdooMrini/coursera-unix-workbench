# Function to calculate the number of files
function get_file_count {
    echo $(ls -1 | wc -l)
}

# Main logic
echo "Welcome to the Guessing Game!"
file_count=$(get_file_count)

while true; do
    echo "How many files are in the current directory? Enter your guess:"
    read user_guess

    if [[ $user_guess -eq $file_count ]]; then
        echo "Congratulations! Your guess is correct."
        break
    elif [[ $user_guess -lt $file_count ]]; then
        echo "Your guess is too low. Try again."
    else
        echo "Your guess is too high. Try again."
    fi
done
