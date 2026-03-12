import os, sys, time
from colorama import Fore, Style, init

init(autoreset=True)
C, G, Y, R, M, W = Fore.CYAN, Fore.GREEN, Fore.YELLOW, Fore.RED, Fore.MAGENTA, Fore.WHITE

def logo():
    os.system('clear')
    print(f"{C}  ███████╗██╗  ██╗███████╗██████╗ ██╗      ██████╗ ██╗  ██╗")
    print(f"{C}  ██╔════╝██║  ██║██╔════╝██╔══██╗██║     ██╔═══██╗██║ ██╔╝")
    print(f"{C}  ███████╗███████║█████╗  ██████╔╝██║     ██║   ██║█████╔╝ ")
    print(f"{C}  ╚════██║██╔══██║██╔══╝  ██╔══██╗██║     ██║   ██║██╔═██╗ ")
    print(f"{C}  ███████║██║  ██║███████╗██║  ██║███████╗╚██████╔╝██║  ██╗")
    print(f"{C}  ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝ ╚═════╝  ╚═╝  ╚═╝")
    print(f"{W}             >>> S H E R L O C K - T E R M U X <<<")
    print(f"{C} ┌────────────────────────────────────────────────────────┐")
    print(f"{C} │ {W}OWNER : {M}zeroXploit {C}│ {W}STATUS : {G}PREMIUM {C}│ {W}VER : {Y}2.0 {C}   │")
    print(f"{C} └────────────────────────────────────────────────────────┘")

def menu():
    logo()
    print(f"\n  {C}[01] {W}SHERLOCK OSINT {G}(Search Username)")
    print(f"  {C}[02] {W}TIKTOK DL {G}(No Watermark)")
    print(f"  {C}[03] {W}UPDATE SYSTEM")
    print(f"  {C}[00] {R}EXIT PROGRAM")
    
    pilih = input(f"\n  {C}zero{M}Xploit {W}>> {G}")

    if pilih == '1' or pilih == '01':
        user = input(f"  {Y}[?] {W}Target Username: {G}")
        if user:
            print(f"  {Y}[*] Launching Sherlock-JS Engine...")
            os.system(f"node sherlock.js {user}")
            input(f"\n{Y} Press Enter to back..."); menu()
        else:
            print(f"  {R}[!] Username invalid!"); time.sleep(1); menu()
    elif pilih == '2' or pilih == '02':
        os.system("python main.py")
        menu()
    elif pilih == '3' or pilih == '03':
        print(f"  {Y}[*] Updating dependencies..."); time.sleep(1)
        os.system("npm install axios chalk@4.1.2 gradient-string cli-table3 log-update && pip install requests colorama yt-dlp")
        print(f"  {G}[+] Update Success!"); time.sleep(1.5); menu()
    elif pilih == '0' or pilih == '00':
        print(f"\n  {M}[*] Closing session... See you!{Style.RESET_ALL}"); sys.exit()
    else:
        menu()

if __name__ == "__main__":
    menu()

