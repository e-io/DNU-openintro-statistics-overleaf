@add_cus_dep( ’tex’, ’html’, 0, ’make4ht’ ); 
sub make4ht {
    system( "make4ht \"$_[0].tex\" \"$_[0].html\"" ); 
}