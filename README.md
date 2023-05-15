# Brother-Shortcus
Templates as well as instructions on how to send, receive, and edit Brother edpk/json files.

In order to use getandunpack.ps1, you first need to first download the Mass Deployment Tool from
the Brother website. https://support.brother.com/g/b/agreement.aspx?dlid=dlf103360_000&c=us&lang=en
Then place the SettingCommand folder into your Program Files DIR.(C:\Program Files\SettingCommand)

1. Move the SettingCommand folder into you program files DIR
2. Run the getandunpack.ps1 file
3. Edit the Setting.json File to fit your needs
4. Send the updated Setting.json file back to the printer user BRAdmin4

OCR:
Line 1: ID of shortcut on printer
Line 2: Name of button on printer
Line 496: Node name of computer

Copy:
Line 1: ID of shortcut on printer
Line 2: Name of button on printer

Scan to Email:
Line 1: ID of shortcut on printer
Line 2: Name of button on printer
Line 218: Change this to match the printers online fax message
Line 261: Change this to match the Persons ID in the address book (Found in the original Setting.json or on the printers online interface)
