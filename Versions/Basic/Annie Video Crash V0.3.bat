@echo off
color 5
:Settings
cls
echo _______________________________________________________________________________________________________
echo                               Drag your file onto this exe.                     
echo _______________________________________________________________________________________________________

echo  Pick one of the options once you are done it will take you back here to continue,
echo  1. Change my video resolution
echo  2. Change my Gif to video
echo  3. Exit Without deleting (save Output from options 1 and 2)
echo  4. I just edited my video with Option 1 or 2 now crash it
echo  5. Skip this all Just crash the video


set /p Options="What would you like to do: "
if "%Options%"=="1" GOTO aspect
if "%Options%"=="2" GOTO Gif
if "%Options%"=="3" GOTO Save
if "%Options%"=="4" GOTO CCrash
if "%Options%"=="5" GOTO skip



:aspect
cls
echo  What aspect Ratio is your Video
echo  1. 16:9 (Widescreen)
echo  2. 4:3 (Square)
echo  3. 9:16 (Mobile)


set /p aspect="Pick an option 1-17 for respective choice: "
if "%aspect%"=="1" GOTO Widescreen
if "%aspect%"=="2" GOTO Square
if "%aspect%"=="3" GOTO Mobile

:Widescreen
cls
echo  Change up the video resolution
echo  1. 128x72
echo  2. 256x144
echo  3. 384x216
echo  4. 512x288
echo  5. 640x360
echo  6. 768x432
echo  7. 896x504
echo  8. 1024x576
echo  9. 1152x648
echo  10. 1280x720  (720P)
echo  11. 1408x792
echo  12. 1536x864
echo  13. 1664x936
echo  14. 1792x1008
echo  15. 1920x1080   (1080P)
echo  16. Custom DYI
echo  17. Back to Settings


set /p Widescreen="Pick an option 1-17 for respective choice: "
if "%Widescreen%"=="17" GOTO Custom
if "%Widescreen%"=="16" GOTO Other
if "%Widescreen%"=="15" GOTO 1920x1080
if "%Widescreen%"=="14" GOTO 1664x936
if "%Widescreen%"=="13" GOTO 1664x936
if "%Widescreen%"=="12" GOTO 1536x864
if "%Widescreen%"=="11" GOTO 1408x792
if "%Widescreen%"=="10" GOTO 1280x720
if "%Widescreen%"=="9" GOTO 1152x648
if "%Widescreen%"=="8" GOTO 1024x576
if "%Widescreen%"=="7" GOTO 896x504
if "%Widescreen%"=="6" GOTO 768x432
if "%Widescreen%"=="5" GOTO 640x360
if "%Widescreen%"=="4" GOTO 512x288
if "%Widescreen%"=="3" GOTO 384x216
if "%Widescreen%"=="2" GOTO 256x144
if "%Widescreen%"=="1" GOTO 128x72



:: widescreen 16:9
:1920x1080
ffmpeg -i %1 -vf scale=1920x1080 "Annie_Custom_edit.mp4"
goto Settings
:1664x936
ffmpeg -i %1 -vf scale=1664x936 "Annie_Custom_edit.mp4"
goto Settings
:1536x864
ffmpeg -i %1 -vf scale=1536x864 "Annie_Custom_edit.mp4"
goto Settings
:1408x792
ffmpeg -i %1 -vf scale=1408x792 "Annie_Custom_edit.mp4"
goto Settings
:1280x720
ffmpeg -i %1 -vf scale=1280x720 "Annie_Custom_edit.mp4"
goto Settings
:1152x648
ffmpeg -i %1 -vf scale=1152x648 "Annie_Custom_edit.mp4"
goto Settings
:1024x576
ffmpeg -i %1 -vf scale=1024x576 "Annie_Custom_edit.mp4"
goto Settings
:896x504
ffmpeg -i %1 -vf scale=896x504 "Annie_Custom_edit.mp4"
goto Settings
:768x432
ffmpeg -i %1 -vf scale=768x432 "Annie_Custom_edit.mp4"
goto Settings
:640x360
ffmpeg -i %1 -vf scale=640x360 "Annie_Custom_edit.mp4"
goto Settings
:512x288
ffmpeg -i %1 -vf scale=512x288 "Annie_Custom_edit.mp4"
goto Settings
:384x216
ffmpeg -i %1 -vf scale=384x216 "Annie_Custom_edit.mp4"
goto Settings
:256x144
ffmpeg -i %1 -vf scale=256x144 "Annie_Custom_edit.mp4"
goto Settings
:128x72
ffmpeg -i %1 -vf scale=128x72 "Annie_Custom_edit.mp4"
goto Settings



:Square
cls
echo  Change up the video resolution
, , , , , , , , , 
echo 1. 256x192
echo 2. 320x240
echo 3. 800x600
echo 4. 640x480
echo 5. 960x720
echo 6. 1024x768
echo 7. 1152x864
echo 8. 1280x960
echo 9. 1024x1024
echo 10. 1440x1080
echo 11. Custom DYI
echo 12. Back to Settings


set /p Square="Pick an option 1-17 for respective choice: "
if "%Square%"=="12" GOTO Custom
if "%Square%"=="11" GOTO Other
if "%Square%"=="10" GOTO 1440x1080
if "%Square%"=="9" GOTO 1024x1024
if "%Square%"=="8" GOTO 1280x960
if "%Square%"=="7" GOTO 1152x864
if "%Square%"=="6" GOTO 1024x768
if "%Square%"=="5" GOTO 960x720
if "%Square%"=="4" GOTO 640x480
if "%Square%"=="3" GOTO 800x600
if "%Square%"=="2" GOTO 320x240
if "%Square%"=="1" GOTO 256x192





:: Square 4:3
:1440x1080
ffmpeg -i %1 -vf scale=1440x1080 "Annie_Custom_edit.mp4"
goto Settings
:1024x1024
ffmpeg -i %1 -vf scale=1024x1024 "Annie_Custom_edit.mp4"
goto Settings
:1280x960
ffmpeg -i %1 -vf scale=1280x960 "Annie_Custom_edit.mp4"
goto Settings
:1152x864
ffmpeg -i %1 -vf scale=1152x864 "Annie_Custom_edit.mp4"
goto Settings
:1024x768
ffmpeg -i %1 -vf scale=1024x768 "Annie_Custom_edit.mp4"
goto Settings
:960x720
ffmpeg -i %1 -vf scale=960x720 "Annie_Custom_edit.mp4"
goto Settings
:640x480
ffmpeg -i %1 -vf scale=640x480 "Annie_Custom_edit.mp4"
goto Settings
:640x480
ffmpeg -i %1 -vf scale=640x480 "Annie_Custom_edit.mp4"
goto Settings
:320x240
ffmpeg -i %1 -vf scale=320x240 "Annie_Custom_edit.mp4"
goto Settings
:256x192
ffmpeg -i %1 -vf scale=256x192 "Annie_Custom_edit.mp4"
goto Settings


:Mobile
cls
echo  Change up the video resolution
echo  1. 720x1280  (720P)
echo  2. 792x1408
echo  3. 864x1536
echo  4. 936x1664
echo  5. 1080x1920   (1080P)
echo  6. Custom DYI
echo  8. Back to Settings


set /p resolution="Pick an option 1-17 for respective choice: "
if "%resolution%"=="7" GOTO Custom
if "%resolution%"=="6" GOTO Other
if "%resolution%"=="5" GOTO 1080x1920
if "%resolution%"=="4" GOTO 936x1664
if "%resolution%"=="3" GOTO 864x1536
if "%resolution%"=="2" GOTO 792x1408
if "%resolution%"=="1" GOTO 720x1280

:: Mobile reverse 16:9
:1080x1920
ffmpeg -i %1 -vf scale=1080x1920 "Annie_Custom_edit.mp4"
goto Settings
:936x1664
ffmpeg -i %1 -vf scale=936x1664 "Annie_Custom_edit.mp4"
goto Settings
:864x1536
ffmpeg -i %1 -vf scale=864x1536 "Annie_Custom_edit.mp4"
goto Settings
:792x1408
ffmpeg -i %1 -vf scale=792x1408 "Annie_Custom_edit.mp4"
goto Settings
:720x1280
ffmpeg -i %1 -vf scale=720x1280 "Annie_Custom_edit.mp4"
goto Settings



:Custom
cls
echo 1920x1080 = WidthxHight
set /p width=
set /p height=
ffmpeg -i %1 -vf scale=%width%x%height% "Annie_Custom_edit.mp4"
goto settings



:Save
DEL /F /A Annie1.mp4
DEL /F /A Annie2.mp4
DEL /F /A Annie1Raw.mp4
DEL /F /A Annie2Raw.mp4
DEL /F /A Annie.txt
@exit



:Gif
ffmpeg -f gif -i %1  -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" "Annie_Custom_edit.mp4" -y
goto settings

:Crash
cls
echo  Time format should be like this Hours:Minutes:seconds
echo  EG 00:01:12
set /p Length="length of full video: "
set /p Split="Time at split: "
ffmpeg -v quiet -y -i %1 -vcodec copy -acodec copy -ss 00:00:00 -t %Split% -sn Annie1Raw.mp4
ffmpeg -v quiet -y -i %1 -vcodec copy -acodec copy -ss %Split% -t %Length% -sn Annie2Raw.mp4
ffmpeg -i Annie1Raw.mp4 -pix_fmt yuv420p -vcodec libx264 -acodec copy Annie1.mp4
ffmpeg -i Annie2Raw.mp4 -pix_fmt yuv444p -vcodec libx264 -acodec copy Annie2.mp4
Echo file 'Annie1.mp4' > "Annie.txt"
Echo file 'Annie2.mp4' >> "Annie.txt"
ffmpeg -f concat -i Annie.txt -c copy Annie_crash.mp4
goto Exit

:CCrash
cls
echo  Time format should be like this Hours:Minutes:seconds
echo  EG 00:01:12
set /p Length="length of full video: "
set /p Split="Time at split: "
ffmpeg -v quiet -y -i Annie_Custom_edit.mp4 -vcodec copy -acodec copy -ss 00:00:00 -t %Split% -sn Annie1Raw.mp4
ffmpeg -v quiet -y -i Annie_Custom_edit.mp4 -vcodec copy -acodec copy -ss %Split% -t %Length% -sn Annie2Raw.mp4
ffmpeg -i Annie1Raw.mp4 -pix_fmt yuv420p -vcodec libx264 -acodec copy Annie1.mp4
ffmpeg -i Annie2Raw.mp4 -pix_fmt yuv444p -vcodec libx264 -acodec copy Annie2.mp4
Echo file 'Annie1.mp4' > "Annie.txt"
Echo file 'Annie2.mp4' >> "Annie.txt"
ffmpeg -f concat -i Annie.txt -c copy Annie_crash.mp4
goto Exit

:Exit
DEL /F /A Annie_Custom_edit.mp4
DEL /F /A Annie1.mp4
DEL /F /A Annie2.mp4
DEL /F /A Annie1Raw.mp4
DEL /F /A Annie2Raw.mp4
DEL /F /A Annie.txt
