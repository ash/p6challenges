while $_ = $*IN.get {
    .say unless /^'=begin'/ ff /^'=end'/;
}