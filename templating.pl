my $template = 'Hello, %name%! Welcome to %city%!';

my %data = (
    name => 'Karl',
    city => 'Karlovy Vary',
);

say process_template($template, %data);

sub process_template($template is copy, %data) {
    $template ~~ s:g/ '%' (\w+) '%' /%data{$0}/;

    return $template;
}