
 add_fsm_encoding \
       {SPI_transmitter.state} \
       { }  \
       {{0000 000} {0001 001} {0010 010} {0011 011} {0100 101} {0101 100} {0110 110} }

 add_fsm_encoding \
       {SPI_transmitter.next_state} \
       { }  \
       {{0000 000} {0001 001} {0010 010} {0011 011} {0100 101} {0101 100} {0110 110} }

 add_fsm_encoding \
       {control.state} \
       { }  \
       {{000 00} {001 01} {010 10} {011 11} }

 add_fsm_encoding \
       {control.n_state} \
       { }  \
       {{000 00} {001 01} {010 10} {011 11} }
