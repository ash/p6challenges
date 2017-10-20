for dir() -> $file {
    say $file.path;
}

# say dir();

# .path.say for dir;

say '---';

for dir(test => /\.pl$/) -> $file {
    say $file.path;
    say $file.absolute;
}

#.absolute.say for dir;
