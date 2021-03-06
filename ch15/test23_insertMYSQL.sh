#$cat test23
#!/bin/bash
# read file and create INSERT statements for MySQL
outfile='members.sql'
IFS=','
while read lname fname address city state zip
do
    cat >> $outfile << EOF
    INSERT INTO members (lname,fname,address,city,state,zip) VALUES
    ('$lname', '$fname', '$address', '$city', '$state', '$zip');
EOF
done < ${1}

#$ cat members.csv 
#Blum,Richard,123 Main St.,Chicago,IL,60601 
#Blum,Barbara,123 Main St.,Chicago,IL,60601 
#Bresnahan,Christine,456 Oak Ave.,Columbus,OH,43201 
#Bresnahan,Timothy,456 Oak Ave.,Columbus,OH,43201 
#
#$ cat members.sql 
#INSERT INTO members (lname,fname,address,city,state,zip) VALUES ('Blum', 
#'Richard', '123 Main St.', 'Chicago', 'IL', '60601'); 
