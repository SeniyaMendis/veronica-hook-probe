# veronica-hook-probe

A test plugin for VERONICA's V Hub. It is not meant for real use.

- When you send a message containing "zephyr check", a Python check blocks it with "zephyr answered by python".
- When you send a message containing "cobalt check", a shell check tries to reach example.com and says whether it could. It needs the internet, so it starts switched off.
- Before each step, a check runs forever, so VERONICA must cut it off after 2 seconds.
- After each Bash step, a check is wired that VERONICA has no use for, so it must be listed as not used.
