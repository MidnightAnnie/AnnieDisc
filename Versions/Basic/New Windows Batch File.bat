set /p filename="Video Filename.format: "
set /p Length="Leangth of full video H:M:S>00:00:00: "
set /p Split="Time at split H:M:S>00:00:00: "
ffmpeg -v quiet -y -i %filename% -vcodec copy -acodec copy -ss 00:00:00 -t %Split% -sn Annie1.mp4
ffmpeg -v quiet -y -i %filename% -vcodec copy -acodec copy -ss %Split% -t %Length% -sn Annie2.mp4