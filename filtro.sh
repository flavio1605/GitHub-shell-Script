
#!/bin/bash

DIR=/root/archives

find $DIR -mmin -720 -name "*.services"  | cut -c16-18 > $DIR/Log_Servico
