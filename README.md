# Config_End_Point

## Automated Arch Linux VM for Reverse Engineering & Malware Analysis

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Ansible](https://img.shields.io/badge/Ansible-2.15+-red.svg)](https://www.ansible.com)
[![Packer](https://img.shields.io/badge/Packer-1.9+-blue.svg)](https://www.packer.io)
[![Arch Linux](https://img.shields.io/badge/Arch_Linux-Latest-1793d1.svg)](https://archlinux.org)

----

## Overview

**Config_End_Point** is a complete automation pipeline that builds a ready to use Arch Linux virtual machine for reverse engineering, malware analysis and
binary exploitation

From ISO boot to fully functional and configure work station in under **5 minutes**.

### Why Config_End_Point?

**Fast deployment:** From the normal manual setup to an automated install.
**Reproducible:** Same environment every time.
**Security focus:** Build with malware analysis in mind.
**Minimal bloat:** Only reverse engineering tools, no unnecessary packages.
**Modular:** Ansible roles for easy customization.

----

## What Is Inside?

### Core System

| Component | Description |
|----------- | ------------- |
| **Base OS** | Arch Linux (minimal, rolling release) |
| **Kernel** | Linux (latest stable) |
| **Init System** | systemd |
| **File System** | ext4 |

### Window Manager & UI

| Component | Description |
|-----------|-------------|
| **i3-wm** | Lightweight tiling window manager |
| **i3status** | System status bar |
| **rofi** | Application launcher |
| **dunst** | Notification daemon |
| **picom** | Compositor for transparency/shadows |
| **kitty** | GPU-accelerated terminal |

### Reverse Engineering Tools

| Tool | Purpose |
|------|---------|
| **gdb** + pwndbg | Debugging with exploit dev helpers |
| **radare2** | Binary analysis framework |
| **ghidra** | NSA's reverse engineering suite |
| **binwalk** | Firmware analysis, file extraction |
| **checksec** | Binary security mitigation checker |
| **ltrace/strace** | Library/syscall tracing |
| **hexedit/xxd** | Hex editing and viewing |
| **upx** | Packing/unpacking binaries |

### Development & Automation

| Tool | Purpose |
|------|---------|
| **neovim** | Modern Vim-based editor |
| **git** | Version control |
| **python** + pip | Scripting and exploit development |
| **pwntools** | CTF/exploit framework |
| **zsh** | Advanced shell with completions |
| **tmux** | Terminal multiplexer |

### Network Analysis

| Tool | Purpose |
|------|---------|
| **wireshark-qt** | Packet analysis (GUI) |
| **tcpdump** | CLI packet capture |
| **netcat/socat** | Network debugging |
