#!/bin/bash
doindent(){
#do a small indent depending on how deep into the tree one is  
     j=0;
       while [ "$j" -lt "$1" ]
       do
          echo -en " "
           j=`expr $j + 1`
       done
}

traverse(){
#traverse directory
cd "$1"
ls | while read i
do
 doindent $2
         if [ -d "$i" ]; then
               echo "Directory: $i"
               (traverse "$i" `expr $2 + 1`)
         else
           echo "File: $1"
         fi
done

}


if [ -z "$1" ]; then
      traverse 0
else
      traverse "$1" 0
fi
