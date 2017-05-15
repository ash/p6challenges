sub postfix:<!>($n) {
    $n <= 1 ?? 1 !! $n * ($n - 1)!
}

say 5!;
