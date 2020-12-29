# AnnieDisc
Discord Video Crash

## How its done.

Drag and drop the Video onto either the bat or the .exe whatever you decide to get.
Just make sure you put in the [Correct time format](https://i.imgur.com/S5BHdms.png) when it asks
I used a software called [Bat to exe converter](https://www.majorgeeks.com/files/details/bat_to_exe_converter.html) to embed [ffmpeg](https://github.com/BtbN/FFmpeg-Builds/releases) to make it simple but becuase of that some AV flag it.

## What it does.

split the video into two parts, The split is when it will crash.

then encode one video with yuv420p while the other with yuv444p.

Then its pretty much done merge both files with concat and done.

## FYI
 If you gonna use the bat version make sure you put [ffmpeg](https://github.com/BtbN/FFmpeg-Builds/releases) in the same dir as the bat file or you could change up the bat file (The exe version is more clean and easy)

As for the exe its all good ffmpeg is built into it
