BEGIN {
    print "herbein.dev.	3600	IN	SOA	herbein.dev. root.herbein.dev. 2033263122 7200 3600 86400 3600"
    print ";; CNAME Records"
    counter=1
}
{
    printf "ecp-%s.herbein.dev.	1	IN	CNAME	%s.\n", counter, $0
    counter++
}
