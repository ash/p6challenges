my $text = q{
    Perl is a family of high-level, general-purpose, interpreted, dynamic programming languages. The languages in this family include Perl 5 and Perl 6. level level level level level level
    Though Perl is not officially an acronym, there are various backronyms in use, including "Practical Extraction and Reporting Language". Perl was originally developed by Larry Wall in 1987 as a general-purpose Unix scripting language to make report processing easier. Since then, it has undergone many changes and revisions. Perl 6, which began as a redesign of Perl 5 in 2000, eventually evolved into a separate language. Both languages continue to be developed independently by different development teams and liberally borrow ideas from one another.
};

my %count;
%count{$_}++ for $text.lc.comb(/\w+/);
say (sort {%count{$^b} <=> %count{$^a}}, %count.keys)[0];
say '---';

my $max = %count{(sort {%count{$^b} <=> %count{$^a}}, %count.keys)[0]};
.say for %count.keys.grep({%count{$_} == $max});
