# OperationSystemCommand

### Comparision in Linux shell script

##############################################################

  integer comparision

  -eq | is equal to | if [ $a -eq $b ]\n
  -ne | is not equal to | if [ $a -ne $b ]
  
  -gt | is greater than | if [ $a -gt $b ]
  
  -ge | is greater than or equal to | if [ $a -ge $b ]
  
  -lt | is less than | if [ $a -lt $b ]
  
  -le | is less than or equal to | if [ $a -le $b ]

  < | is less than | if (( $a < $b ))
  
  <= | is less than or equal to | if (( $a <= $b ))
  
  \> | is greater than | if (( $a > $b ))
 
  \>= | is greater than or equal to | if (( $a >= $b ))

###############################################################

  string comparision
  
  = | is equal to | if [ $a = $b ]
  
  == | is equal to | if [ $a == $b ]
  
  != | is not equal to | if [ $a != $b ]
  
  < | is less than, in ASCII alphabetical order | if [[ $a < $b ]]
  
  \> | is greater than , in ASCII alphabetical order | if [[ $a > $b ]]
  
  -z | string is null, that is, has zero length
