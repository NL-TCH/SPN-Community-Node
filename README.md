todo:

check if (local environment)variable exist, if so update the default config

example:
```bash
if [ -z "$IP4" ]
    then
    <<<add ip4 to the config.json example >>>
else
    <<<do nothing>>>
if [ -z "$IP6" ]
    then
    <<<add ip6 to the config.json example >>>
else
    <<<do nothing>>>
```