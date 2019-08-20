# Game Streaming VM Build Steps

This document will assist you in completing the required steps for a game streaming VM.
All of the following programs must be installed, with installers pre-downloaded in `C:\gamestream-setup-files`

- Install NVIDIA GRID driver
- Disable Microsoft Hyper-V Video (Start -> Device Manager -> Display adapters)
- Disable Monitors with locations other than 'on NVIDIA Tesla M60'
- Install Virtual Audio Cable (unzipped in folder)
- Install Parsec
- Select 'Run Parsec when my computer starts' from Parsec task tray item (log in first)
- Remove Ctrl + Alt + Del requirement for login (Local Security Policy -> Local Policies -> Security Options -> Interactive Logon: Do not require CTRL + ALT + DEL)

## Optional Steps

- Disable Windows Defender 'Real-time protection'
- Disable defragmentation (Start -> Defragment and Optimize drives -> Optimization schedule -> Change settings -> Run on a schedule)
- Disable File and Printer sharing (Start -> Network Connections -> Ethernet -> Properties -> 'Client for Microsoft Networks' and 'File and Printer Sharing for Microsoft Networks' )
- Disable Server Manager startup at login (Start -> Server Manager -> Manage -> Server Manager Properties -> Do not start Server Manager automatically at logon)
- Install Battlenet (pre-downloaded)
- Install Steam (pre-downloaded)
- Change account password (recommended)
