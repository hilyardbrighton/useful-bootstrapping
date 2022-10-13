import requests
import os
from discord import SyncWebhook, File
from datetime import datetime

def main():
    key_filename = 'mark-utility-box-1.ssh-server.key.pub'
    key_path = os.path.expanduser(f'./{key_filename}') 
    webhook = SyncWebhook.from_url('https://discordapp.com/api/webhooks/1028078888720539730/uMAcyxRJW-pxZdGktc2iUtErGGY_-1nu4NleAXpOYkyugGrC3mgdxnkfo-s1Bk72XKfZ')
    
    message = 'Hey Mark, here is the mark-utility-box-1 SSH Pub Key. This key was generated on ' + datetime.now().strftime('%Y-%m-%d %H:%M:%S') + '.'

    with open(file=key_path, mode='rb') as f:
        key_file = File(f)
        key_file.filename = key_filename

    webhook.send(message, file=key_file)


main()

