# simple-resolve

- A simple script to clean list of dns servers.
- This script uses dig to check which dns server responds back to the query google.com (dig @8.8.8.8 google.com)
- Note : This script only look for working servers, it won't perform test for poisoned dns servers.

## Working

```
$ ./script.sh nameservers.txt

Failed : 2607:5300:203:1797::53
Failed : 199.255.137.34
Failed : 82.146.26.2
Failed : 94.236.218.254
2001:470:2351::1
2001:470:1f1a:78e::2
8.8.8.8
151.80.222.79
200.11.52.202
200.62.147.66
77.88.8.3
```

## Output

- Working list of dns servers saved at `resolvers.txt`
