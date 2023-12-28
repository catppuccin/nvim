import json
import urllib.request

url = "https://github.com/catppuccin/palette/raw/main/palette.json"

with urllib.request.urlopen(url) as response:
    flavors = json.loads(response.read().decode())

for flavor in flavors:
    with open(f"lua/catppuccin/palettes/{flavor}.lua", "w") as f:
        f.write("return {\n")
        for color in flavors[flavor]["colors"]:
            f.write(f'\t{color} = "{flavors[flavor]["colors"][color]["hex"]}",\n')
        f.write("}\n")
