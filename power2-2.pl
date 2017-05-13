my @power2 = 1, 2, {$_ * 2} ... *;
.say for @power2[^10];
