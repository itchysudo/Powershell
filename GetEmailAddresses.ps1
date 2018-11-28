###Replace searchbase with distinguished name e.g. ou=users,dn=contoso,dn=com
###Replace FilePath with Location of file including the file name you want created and extension
###Must import-module activedirectory and have admin rights for this to run

Get-ADUser -SearchBase "OU distinguished name here" -Filter{Enabled -eq $True} -Properties mail | out-file -FilePath "C:\temp\FileName.csv"