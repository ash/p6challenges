my @people = (
    {
        name => 'Kevin',
        age => 20,
    },
    {
        name => 'Karl',
        age => 30,
    },
    {
        name => 'Amanda',
        age => 19,
    },
);

@people.sort({
    %^a<age> <=> %^b<age>
}).say;
@people.sort( -> %first, %second {
    %first<age> <=> %second<age>
}).say;
