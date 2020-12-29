# AnnieDisc
I originaly made this just for myslef and friends but i had to much fun making it started off as a many step process, and with trying to make it as simple ass possible it became like this. then I noticed on reddit people were asking about how its done so I ended up just putting it up on git for others to use aswell.

## peoples concerns

I used a software called [Bat to exe converter](https://www.majorgeeks.com/files/details/bat_to_exe_converter.html) to embed [ffmpeg](https://github.com/BtbN/FFmpeg-Builds/releases) to make it simple but becuase of that some AV flag it. (if you know a better way plz tell me So I can update it) <3
[Embed settings](https://i.imgur.com/WYOWiOD.png)
[Whats embeded](https://i.imgur.com/x5kq0R7.png)

## How you use it.

Drag and drop the Video onto either the bat or the .exe whatever you decide to get.
Just make sure you put in the [Correct time format](https://i.imgur.com/S5BHdms.png) when it asks

## What it does.

split the video into two parts, The split is when it will crash.

then encode one video with yuv420p while the other with yuv444p.

Then its pretty much done merge both files with concat and done.

## FYI
If you gonna use the bat version make sure you put [ffmpeg](https://github.com/BtbN/FFmpeg-Builds/releases) in the same dir as the bat file or you could change up the bat file (The exe version is more clean and easy)

As for the exe its all good ffmpeg is built into it
