#!/usr/bin/env python
from subprocess import run, DEVNULL
from sys import stdin

PURPUR = "https://api.purpurmc.org/v2/purpur/1.18.1/latest/download"


def execute(command: str):
    return run(command, shell=True, stdout=DEVNULL, stderr=DEVNULL, stdin=DEVNULL)


def wget(link: str, file: str):
    execute(f'wget "{link}" -O {file}')


print("Download purpur")
wget(PURPUR, "purpur.jar")
for i in open("plugins.txt", "r"):
    link, file = i.strip().split("@")
    print(f"Download {file}")
    wget(link, f"plugins/{file}")
