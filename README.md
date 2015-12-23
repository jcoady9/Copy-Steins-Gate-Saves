CopySteinsSaves.bat
======
After recently getting a new computer I wanted to play the Steins;Gate VN on my new computer but I didn't want to have to start all
over again. I made this batch file to help backup and transfer my save data to the new computer. Hope this helps anyone else who wants
to do the same thing!

## Usage
In order to make a backup of your save data, use the "copy" command and the directory were you want to store the save data.
By not specifying a directory the save data will be copied to the current directory.
```
$ copySteinsSaves.bat copy C:/store/my/save/data/here

```

If you want to move the backup of you save data into the Steins;Gate save directory use the "transfer" command and the directory your
backup data is stored like so:
```
$ copySteinsSaves.bat transfer C:/move/my/save/data/from/here

```

## License 
* This script is licensed under the [MIT](http://opensource.org/licenses/MIT) License.
