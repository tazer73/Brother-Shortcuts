# Brother-Shortcus
Templates for adding, editing, or deleting shortcuts remotely. As well as instructions on how to send, receive, and edit Brother edpk/json files.

Using getandunpack.ps1:

    1. Download the Mass Deployment Tool from the Brother website. 
    (https://support.brother.com/g/b/agreement.aspx?dlid=dlf103360_000&c=us&lang=en)
    2. Then place the SettingCommand folder into your Program Files DIR.(C:\Program Files\SettingCommand)
    3. Run the getandunpack.ps1 file.
    4. Enter the Node name/IP , then specify the output DIR along with the name you want to give your file.  
    (C:\Users\User\test.edpk) Finally enter the password of the printer.
    5. The edpk along with the Setting.json file will be in the output DIR specified in the previous step.

Edit, add, or remove shortcuts:

    1. Format the json file as it comes all on one line. 
    2. Collapse attributes, general, and addressbook. Shortcuts will be the first section under display.
    3. Review what kind of button You will need to add, and open their respective json template.
    
    OCR:
    4. Line 1: ID of shortcut on printer
    5. Line 2: Name of button on printer
    6. Line 496: Node name of computer
    7. Copy the entire ocr.json file and replace the null field in the Setting.json file
    8. Save and send the file using Bradmin4

    Copy:
    4. Line 1: ID of shortcut on printer
    5. Line 2: Name of button on printer
    6. Copy the entire copy.json file and replace the null field in the Setting.json file
    7. Save and send the file using Bradmin4

    Scan to Email:
    4. Line 1: ID of shortcut on printer
    5. Line 2: Name of button on printer
    6. Line 218: Change this to match the printers online fax message
    7. Line 261: Change this to match the Persons ID in the address book 
    (Found in the original Setting.json or on the printers online interface)
    8. Copy the entire emailtoserver.json file and replace the null field in the Setting.json file
    9. Save and send the file using Bradmin4
    
