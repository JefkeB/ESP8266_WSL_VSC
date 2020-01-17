# ESP8266_WSL_VSC
A basic ESP8266 template using WSL for compiling and Visual Studio Code  for editing.
We are using a tree like containing the development tools.
```
C:\ESP8266_Dev
            \VSC
            \WSL\xtensa-lx106-elf
            \WSL\ESP8266_RTOS_SDK
```  
Project will be installed in the following tree.
```
d:\ESP8266_Projects
            \ESP8266_WSL_VSC
```
  
  
## Installing the tools

* **WSL**   
Start with the default Ubuntu distribution.
TODO: how, name, default etc
Start WSL by entering bash in a command prompt.  
In WSL edit /root/.profile and append following lines to it
  ```batch
  cd /mnt/c/ESP8266_Dev/WSL
  source env_init
  ```
  Add a file named *env_init* to *c:\ESP8266_Dev\WSL* with the following content
  ```bash
  #!/bin/bash
  export PATH=$PWD/xtensa-lx106-elf/bin:$PWD:$PATH
  export IDF_PATH=$PWD/ESP8266_RTOS_SDK
  export IDF_WINDOWS_TOOLS_PATH=$PWD/../Tools
  ```
  This will setup the Linux environment.
* **batch file to start environment**
Create a batch file to start VSCode in portable mode in *c:\ESP8266_Dev* called *start_environment.bat* and put the text below in it. This will start VSC in the portable mode keeping everything in VSC_port subfolder.
  ```
  start "" "%CD%\VSC\Code.exe" --extensionHomePath=%CD%\VSC_port\Extensions --user-data-dir=%CD%\VSC_port\data
  ```
* **Visual Studio Code** (VSC)  
We are using the zipped version so we can place it anywhere and make a portable version out of it. After downloading unzip it in *C:\ESP8266_Dev\VSC*.  
Start VSC with the batch file, some folders will be created for storing settings and the extensions by VSC.
  Install the following extensions :
  * Markdown Preview Enhanced
  * C/C++
  * Tasks Here

  Set the default shell to *Command Prompt C:\Windows\System32\cmd.exe*. Press *F1*, type *default* and select *Terminal: Select Default Shell* and select *Command Prompt*.
* **ESP8266 IDF clone**
Clone the idf git repository to *c:\ESP8266_Dev\WSL\ESP8266_RTOS_SDK*.


## Projects
For a project some things must be taken note off to have working tasks in VSC.

For a project the name of the folder must match the name in the Makefile set for the project name. For the template this is
*PROJECT_NAME := ESP8266_WSL_VSC*


## Notes
Some things are not working automatically
* up to now i'm unable to define variables in VSC that can be used in *tasks.json*.
* unable to use a variable in the regexp for the problemmatcher
