my %words = (
    subject => <he she history>;
);



say process_template($template, %data);

sub process_template($template is copy, %data) {
    $template ~~ s:g/ '%' (\w+) '%' /%data{$0}/;

    return $template;
}