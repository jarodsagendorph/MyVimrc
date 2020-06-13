# MyVimrc
My work-in-progress Vimrc

## Description
This is the simple Vimrc that I've started using in an attempt to switch to Vim full-time. Right now, it consists mostly of visual formatting as well as some basic mappings and settings to increase functionality.

## Features
### Formatting
* Disables Vim startup message
* Enables relative numbering
* Syntax highlighting
* Highlighted search results
* Status line on the bottom of the screen
* Turned off error bells/visuals

### Functionality
* Fixed backspace functionality
* Lower-case searches are case-insensitive, searches containing capitals are treated as case-sensitive
* Unmaps Q in normal mode (I don't know what Ex mode is)
* Enabled mouse support
* Auto-close brackets ((, {, and \[ respectively)
* Quick-Edit Vimrc: -ev in normal mode opens Vimrc in split view for easy editing, -sv sources Vimrc after updates have been made

## Getting started
### Dependencies
* Vim (you probably have it)

### Installing
* Download the Vimrc file
* From command line, open Vimrc 
  * vim ~/.vimrc for Mac/Linux
  * vim $VIM/\_vimrc for Windows
* Read the file into your own Vimrc
  * :r *path to MyVimrc* 
* Save with :wq

## Authors
* Jarod Sagendorph

## Acknowledgements and Resources
* Vimtutor (you can access this by typing "vimtutor" in the commandline
* [MIT' Missing Semester (2020) lecture and notes on editors](missing.csail.mit.edu/2020/editors/)
* [Learn Vimscript the Hard Way](https://learnvimscripttheheardway.stevelosh.com) by Steve Losh
