import json
import os

def main() -> None:
    cwd = os.getcwd() + '\\'

    with open(cwd + "tags\\blocks\\all_blocks.json", 'r') as file:
        allBlocks = json.load(file)['values']
    
    with open(cwd + "tags\\blocks\\shoot_through.json", 'r') as file:
        shootThrough = json.load(file)['values']
    
    with open(cwd + "tags\\blocks\\shoot_breakable.json", 'r') as file:
        shootBreakable = json.load(file)['values']

    with open(cwd + "functions\\show_particle.mcfunction", 'w') as file:
        for block in allBlocks:
            if block not in shootThrough and block not in shootBreakable:
                file.writelines(f'execute if block ~ ~ ~ {block} run particle block {block} ~ ~ ~ 0.2 0.2 0.2 1 10 normal\n')

if __name__ == "__main__":
    main()