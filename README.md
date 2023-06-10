# ps1_k8s
Change PS1 color based in kubernetes config context

## Why? 
Nobody wants to bring trouble to production environment. This small script colorize PS1 to red when a given regex is match. In my case was the string ```production```.
Edit ```re_to_match``` variable to change a name you need. 

## How?
Append ps1_k8s.sh content to  ```~/.bashrc```
To apply, source ```~/.bashrc``` again.

```sh
source ~/.bashrc
```
