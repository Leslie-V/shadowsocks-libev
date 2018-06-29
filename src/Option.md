# Command-Line Option:

## Long Option

* fast-open        Enable TFO
* no-delay     ?
* reuse-port   ?
* acl          ?
* manager-address  Receive Info from ss-server, Default: 127.0.0.1:8839
* executable
* mtu
* plugin       ?
* plugin-opts  ?
* password            same as -k
* keep-channel
* help

## Short Require Argument Option
* f  Pid Path
* s  'Server Host(IP)' For Listen, Default: 0.0.0.0
* l  Undefined   
* k  Password    
* t  Timeout
* m  Crypto Methode. Default: table
* c  Configure File Path
* i  iface ?
* d  DNS
* a  Run As User ...
* n  nofile ?

## Short No Argument Option
* 6  ipv6first
* h  Usage
* u  Mode = TCP_AND_UDP
* U  Mode = UDP_ONLY
* v  Log details: No Use
* A  Has been deprecated



# Manager Json  API

## Action:

* add
Request:
```
add: {
    "method":      "aes-256-cfb",
    "password":    "1234567890",
    "server_port": "12306",
    "fast_open":    false,
    "no_delay":     true,
    "mode":        "u",
    "plugin":      "",
    "plugin_opts": "",
}
```

Response:
```
ok
port is not avaliable
```

* list
Request:
```
list: {}
```

Response:
```
[
    {
        "server_port": "",
        "password":    "",
        "method":      "",
    },
    {
        "server_port": "",
        "password":    "",
        "method":      ""
    }
]
```




* remove
Request:
```
remove: {"server_port":""}
```
Response:
```
ok
err
```


* ping


* stat
Request:
```
stat: {"5817":351647712,"tx":2558075,"rx":349089637}
```
```
```
