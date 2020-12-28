@echo off
set /p Length="length of full video H:M:S>00:00:00: "
set /p Split="Time at split H:M:S>00:00:00: "
ffmpeg -v quiet -y -i %1 -vcodec copy -acodec copy -ss 00:00:00 -t %Split% -sn Annie1Raw.mp4
ffmpeg -v quiet -y -i %1 -vcodec copy -acodec copy -ss %Split% -t %Length% -sn Annie2Raw.mp4
ffmpeg -i Annie1Raw.mp4 -pix_fmt yuv420p -vcodec libx264 -acodec copy Annie1.mp4
ffmpeg -i Annie2Raw.mp4 -pix_fmt yuv444p -vcodec libx264 -acodec copy Annie2.mp4
Echo file 'Annie1.mp4' > "Annie.txt"
Echo file 'Annie2.mp4' >> "Annie.txt"
ffmpeg -f concat -i Annie.txt -c copy Annie_crash.mp4
DEL /F /A Annie1.mp4
DEL /F /A Annie2.mp4
DEL /F /A part1.mp4
DEL /F /A part2.mp4
DEL /F /A Annie.txt