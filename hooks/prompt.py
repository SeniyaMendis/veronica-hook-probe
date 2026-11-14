import json
import sys

data = json.load(sys.stdin)
if "zephyr check" in str(data.get("prompt", "")).lower():
    sys.stderr.write("zephyr answered by python")
    sys.exit(2)
