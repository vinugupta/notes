AWK

A data filtering and reporting generation tool
awk process fields while sed only process lines
advantagee over sed:
	numeric process, built in arth function, c like structure

awk option ‘pattern{action}’
by default pattern is to match all lines and action is to print current record

awk ‘/sale*/{print}’ emp.dat. —— /regexpress/ accept wildcard entry
awk  '$5==“sales "{print}’ emp.dat
awk '/sales/&&($2=="aggarwal"){print}' emp.dat
awk ‘{print $5}’
BEGIN{action} pattern{action}..pattern{action} END {action}

awk 'BEGIN {print "marks"}$5=="sales"{print} $2=="gupta"{print "guptaji"; print}END {print "END"}’ emp.dat

awk 'Begin {count = 0} $5=="sales" {count++} END {print count}' emp.dat

df  -h | awk '{print $5}' | tr "\n" ":" | cut -f2 -d":" | cut -c1-2
awk ’NR % 2’  print line 0 ,2,4.  NR=hold number of lines
ls | awk ‘/.sh/{print}’.   —list all .sh file in cureent folder

awk 'BEGIN {count=1} END {print $count}' emp.dat

Position variables $()
$1..$n represent field
$0 represent complete line
NR- current line sequential number and start with 1
 NF- number of field in current line
FS- filed seperator and sets -F (by default whitespace) 
awk F”|” ‘/sales/{print $2}’
awk  'BEGIN {FS="|"}/sales/{print $2}’ emp.dat
awk  'BEGIN {FS="|"}/sales/{print NR,$0"\n"$1"\t"$2}’ emp.dat
awk  'BEGIN {FS="|"}/sales/{print NR $0"\n"$1"\t"$2}' emp.datawk  'BEGIN {FS="|"}/sales/{print NR;print $0’ emp.dat
awk  'BEGIN {FS="|"}NR==2,NR==10{print $0 NR}’ emp.dat
awk  'BEGIN {FS="|"} NR>=2 && NR<=10 {print $0 NR}’ emp.dat
awk  'BEGIN {FS="|"} NR==2 , NR==10 {print $0 NR}' emp.dat

slide 77
