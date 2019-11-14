tr -d '\015' < cdo |
awk '{
nx=split($0, arr, "\t")
i=1
while ( i <= nx )
  {
  if ( i == 28 )
    f28=arr[i]
  if ( i == 29 )
    f29=arr[i]
  if ( i == 34 )
    f34=arr[i]
  if ( i != 28 && i != 29 && i != 34 )  
	   printf("%s\t", arr[i])
  i=i+1 
  }
  printf("%s\t%s\t%s\n", f28, f29, f34)
}' > test_reorder.txt
