@echo off
REM ���o���Ѫ��~�B��B�� (�۰ʸɹs)
SET TodayYear=%date:~0,4%
SET TodayMonthP0=%date:~5,2%
SET TodayDayP0=%date:~8,2%

REM ���o���Ѫ��~�B��B�� (�¼Ʀr)
REM 2010/08/03 ��s�G�H�U�O���F�ץ� Batch �J�� 08, 09 �|�����K�i�쪺���D
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

echo ��� %TodayYear%/%TodayMonthP0%/%TodayDayP0%
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