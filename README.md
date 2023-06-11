# ps1_k8s
Change PS1 color based in kubernetes config context.

## Why? 
Nobody wants to bring trouble for production environment. This small script colorize PS1 to a color when a given regex is match. In my case was the string ```production```, edit ```RE``` variable to change to the name as you want.

The default color is: ```background default (pre existing)```, ```foreground red```. Read the code and change the variables ```SET```, ```FG_COLOR```, ```BG_COLOR```, for other colors.

## How?
Append ```ps1_k8s.sh``` content to  ```~/.bashrc```.

To apply, source ```~/.bashrc``` again, or login again.

```sh
source ~/.bashrc
```

If you are looking for a powerful alternative, look here: 

https://github.com/jonmosco/kube-ps1
