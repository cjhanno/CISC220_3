#!/bin/bash

#write a script that looks for all executable files in the current directory and adds
#"#Developed in cisc220" just after the "#!/bin/bash"


ls -l | grep -e  bash |  echo "#Developed in cisc220" | xargs
