try {
    say 42 / 0;
    CATCH {
        default {
            say 'Error!';
        }
    }
}
say 'It still works!';
