@echo off

rem The MIT License (MIT)

rem Copyright (c) 2015 Joshua Coady

rem Permission is hereby granted, free of charge, to any person obtaining a copy
rem of this software and associated documentation files (the "Software"), to deal
rem in the Software without restriction, including without limitation the rights
rem to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
rem copies of the Software, and to permit persons to whom the Software is
rem furnished to do so, subject to the following conditions:

rem The above copyright notice and this permission notice shall be included in all
rem copies or substantial portions of the Software.

rem THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
rem IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
rem FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
rem AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
rem LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
rem OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
rem SOFTWARE.

set STEINS_GATE_DIR=%USERPROFILE%/appdata/roaming/nitroplus/steins;gate/1.000

rem sets source and destination variables to copy the save data from Steins;Gate directory to a specified directory.
if "%1"=="copy" (
	set SOURCE_DIR=%STEINS_GATE_DIR%
	set DEST_DIR=%2
)

rem sets the source and destination variables to transfer the save data from a directory to Steins;Gate directory.
if "%1"=="transfer" (
	set SOURCE_DIR=%2
	set DEST_DIR=%STEINS_GATE_DIR%
) else (
	echo "This batch file copies save data for the Steins;Gate visual novel into a specified directory."
	echo "This batch file can also copy the save data from a specified directory to the Steins;Gate game folder."
	echo " "
	echo "copySteinsSaves [CMD] dir"
	echo " "
	echo "CMD: "
	echo "		copy 		copy the save data from the game directory to dir"
	echo "		transfer	copy the save data from dir to the game directory"
)

rem if no destintation directory is specified, use the current directory.
if "%DEST_DIR%"=="" (
	set DEST_DIR=%CD%
)

@echo on
xcopy /s "%SOURCE_DIR%" "%DEST_DIR%"
