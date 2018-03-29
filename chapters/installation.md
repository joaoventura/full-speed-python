# Installation

In this chapter we will install and run the Python interpreter in your local computer.

## Installing on Windows

1.  Download the latest Python 3 release for Windows on <https://www.python.org/downloads/windows/> and execute the installer. At the time of writing, this is Python 3.6.4.

2.  Make sure that the "Install launcher for all users" and "Add Python to PATH" settings are selected and choose "Customize installation".

    ![Windows installation](images/python_windows.jpg){width=62%}

3.  In the next screen "Optional Features", you can install everything, but it is essential to install "pip" and "pylauncher (for all users)". Pip is the Python package manager that allows you to install several Python packages and libraries.

4.  In the Advanced Options, make sure that you select "Add Python to environment variables". Also, I suggest that you change the install location to something like C:\\Python36\\ as it will be easier for you to find the Python installation if something goes wrong.

    ![Windows installation](images/python_windows2.jpg){width=62%}

5.  Finally, allow Python to use more than 260 characters on the file system by selecting "Disable path length limit" and close the installation dialog.

    ![Windows installation](images/python_windows3.jpg){width=62%}

6.  Now, open the command line (cmd) and execute "python" or "python3". If everything was correctly installed, you should see the Python REPL. The REPL (from Read, Evaluate, Print and Loop) is a environment that you can use to program small snippets of Python code. Run *exit()* to leave the REPL.

    ![Python REPL](images/python_windows4.jpg){width=62%}

## Installing on macOS

You can download the latest macOS binary releases from <https://www.python.org/downloads/mac-osx/>. Make sure you download the latest Python 3 release (3.6.4 at the time of writing). You can also use Homebrew, a package manager for macOS (<https://brew.sh/>). To install the latest Python 3 release with Homebrew, just do "`brew install python3`" on your terminal. Another option is to use the MacPorts package manager (<https://www.macports.org/>) and command "`port install python36`".

![Python REPL](images/python_macos.png){width=62%}

Finally, open the terminal, execute `python3` and you should see the Python REPL as above. Press Ctrl+D or write `exit()` to leave the REPL.

## Installing on Linux

To install Python on Linux, you can download the latest Python 3 source releases from <https://www.python.org/downloads/source/> or use your package manager (apt-get, aptitude, synaptic and others) to install it. To make sure you have Python 3 installed on your system, run `python3 --version` in your terminal.

Finally, open the terminal, execute `python3` and you should see the Python REPL as in the following image. Press Ctrl+D or write `exit()` to leave the REPL.

![Python REPL](images/python_linux.png){width=62%}
