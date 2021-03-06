@echo off
REM 取得今天的年、月、日 (自動補零)
SET TodayYear=%date:~0,4%
SET TodayMonthP0=%date:~5,2%
SET TodayDayP0=%date:~8,2%

REM 取得今天的年、月、日 (純數字)
REM 2010/08/03 更新：以下是為了修正 Batch 遇到 08, 09 會視為八進位的問題
IF %TodayMonthP0:~0,1% == 0 (
	SET /A TodayMonth=%TodayMonthP0:~1,1%+0
) ELSE (
	SET /A TodayMonth=TodayMonthP0+0
)

IF %TodayMonthP0:~0,1% == 0 (
	SET /A TodayDay=%TodayDayP0:~1,1%+0
) ELSE (
	SET /A TodayDay=TodayDayP0+0
)

echo 日期 %TodayYear%/%TodayMonthP0%/%TodayDayP0%
set dateorign=%TodayYear%/%TodayMonthP0%/%TodayDayP0%
echo ------------------------------
set nowdate=%date%

date 2012-05-02
cd /d "C:\Downloads\[2015-04-02]Major.League.Baseball.2K12.CHS.Green.Edition-ALI213\Major League Baseball 2K12"
start mlb2k12.exe
ping 127.0.0.1 -n 5 > nul
GOTO :Stop


:Stop
date %dateorign%
pause
exit