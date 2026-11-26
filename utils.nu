# OtilSoft NuShell Utilities

# Convert a file from DOS to Unix format by removing carriage return characters
@example "Remove carriage return characters from a file 'myfile.txt'" { dos2unix myfile.txt }
export def dos2unix [file: string] {
    open --raw $file | str replace --all "\r" "" | save -f $file
}

# Pick a random record from a table
@example "Pick a random file from the current directory" { ls | pick-random }
export def pick-random []: table -> record {
    $in | shuffle | first
}
