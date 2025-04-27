@echo off
set map=####################.........#e##.##.##########.#.......##.....###.#.########.###.###.#.......##.###.###.#.#####.##.###.....#.#...#.##.#######.#.#.###.##.#######...#.....####################
set /a cl=19
set /a px=2
set /a py=1
set ce=[40;97m
set fo=[40m
set le=[40m
set ri=[46m
set or=[40;97m
set /a direction=0
set dir_txt=S
set p1_1=[38;5;121;48;5;35m          [0m
set p1_5=[38;5;121;48;5;35m        [38;5;173;48;5;173m [38;5;121;48;5;35m [0m
set p1_6=[38;5;173;48;5;173m [38;5;121;48;5;35m   [38;5;173;48;5;173m [38;5;121;48;5;35m   [38;5;119;48;5;2m [38;5;119;48;5;2m [0m
set p1_7=[38;5;121;48;5;35m  [38;5;173;48;5;173m  [38;5;121;48;5;35m [38;5;119;48;5;2m   [38;5;88;48;5;88m [38;5;119;48;5;2m [0m
set p1_8=[38;5;88;48;5;88m [38;5;119;48;5;2m [38;5;88;48;5;88m   [38;5;119;48;5;2m  [38;5;88;48;5;88m [38;5;119;48;5;2m [38;5;16;48;5;16m [0m
set p1_9=[38;5;119;48;5;2m  [38;5;88;48;5;88m  [38;5;16;48;5;16m  [38;5;88;48;5;88m  [38;5;16;48;5;16m  [0m
set p1_10=[38;5;16;48;5;16m  [38;5;88;48;5;88m  [38;5;16;48;5;16m  [38;5;88;48;5;88m  [38;5;16;48;5;16m  [0m
set p1_13=[38;5;16;48;5;16m  [38;5;88;48;5;88m  [38;5;16;48;5;16m  [38;5;88;48;5;88m [38;5;16;48;5;16m   [0m
set p1_14=[38;5;16;48;5;16m  [38;5;88;48;5;88m  [38;5;16;48;5;16m     [38;5;119;48;5;82m [0m
set p1_15=[38;5;16;48;5;16m  [38;5;88;48;5;88m  [38;5;16;48;5;16m   [38;5;119;48;5;82m   [0m
set p1_16=[38;5;16;48;5;16m [38;5;16;48;5;16m     [38;5;119;48;5;82m    [0m

set p2_1=[38;5;117;48;5;39m          [0m
rem 4 line       ?  ?   
set p2_2=[38;5;117;48;5;39m     [38;5;231;48;5;231m   [38;5;117;48;5;39m  [0m
set p2_12=[38;5;119;48;5;82m          [0m

rem p3 12 line      p1       
set p3_13=[38;5;16;48;5;16m   [38;5;88;48;5;88m [38;5;16;48;5;16m  [38;5;88;48;5;88m  [38;5;16;48;5;16m  [0m
set p3_14=[38;5;119;48;5;82m [38;5;16;48;5;16m     [38;5;88;48;5;88m  [38;5;16;48;5;16m  [0m
set p3_15=[38;5;119;48;5;82m [38;5;119;48;5;82m [38;5;119;48;5;82m [38;5;16;48;5;16m   [38;5;88;48;5;88m  [38;5;16;48;5;16m  [0m
set p3_16=[38;5;119;48;5;82m [38;5;119;48;5;82m   [38;5;16;48;5;16m      [0m
rem 0 S 1 E 2 N 3 W

set p4_1=[38;5;121;48;5;35m          [0m
set p4_5=[38;5;121;48;5;35m [38;5;173;48;5;173m [38;5;121;48;5;35m        [0m
set p4_6=[38;5;119;48;5;2m  [38;5;121;48;5;35m   [38;5;173;48;5;173m [38;5;121;48;5;35m   [38;5;173;48;5;173m [0m
set p4_7=[38;5;119;48;5;2m [38;5;88;48;5;88m [38;5;119;48;5;2m   [38;5;121;48;5;35m [38;5;173;48;5;173m  [38;5;121;48;5;35m  [0m
set p4_8=[38;5;16;48;5;16m [38;5;119;48;5;2m [38;5;88;48;5;88m [38;5;119;48;5;2m  [38;5;88;48;5;88m   [38;5;119;48;5;2m [38;5;88;48;5;88m [0m
set p4_9=[38;5;16;48;5;16m  [38;5;88;48;5;88m  [38;5;16;48;5;16m  [38;5;88;48;5;88m  [38;5;119;48;5;2m  [0m
set p4_10=[38;5;16;48;5;16m  [38;5;88;48;5;88m  [38;5;16;48;5;16m  [38;5;88;48;5;88m  [38;5;16;48;5;16m  [0m
set p4_12=[38;5;119;48;5;82m [38;5;16;48;5;16m  [38;5;88;48;5;88m [38;5;16;48;5;16m   [38;5;88;48;5;88m [38;5;16;48;5;16m [38;5;119;48;5;82m [0m
set p4_13=[38;5;119;48;5;82m          [0m

:start
cls
set /a p_now=%px%+%py%*%cl%-1
set /a p_w=%px%-1+%py%*%cl%-1
set /a p_e=%px%+1+%py%*%cl%-1
set /a p_s=%px%+(%py%+1)*%cl%-1
set /a p_n=%px%+(%py%-1)*%cl%-1
set /a p_sw=%px%-1+(%py%+1)*%cl%-1
set /a p_se=%px%+1+(%py%+1)*%cl%-1
set /a p_nw=%px%-1+(%py%-1)*%cl%-1
set /a p_ne=%px%+1+(%py%-1)*%cl%-1
call set p_h=%%map:~%p_now%,1%%

if %direction% equ 0 (
    call set p_l=%%map:~%p_e%,1%%
    call set p_r=%%map:~%p_w%,1%%
    call set p_f=%%map:~%p_s%,1%%
    call set p_b=%%map:~%p_n%,1%%
    call set p_dl=%%map:~%p_se%,1%%
    call set p_dr=%%map:~%p_sw%,1%%
    set dir_txt=S
) else if %direction% equ 1 (
    call set p_l=%%map:~%p_n%,1%%
    call set p_r=%%map:~%p_s%,1%%
    call set p_f=%%map:~%p_e%,1%%
    call set p_b=%%map:~%p_w%,1%%
    call set p_dl=%%map:~%p_ne%,1%%
    call set p_dr=%%map:~%p_se%,1%%
    set dir_txt=E
) else if %direction% equ 2 (
    call set p_l=%%map:~%p_w%,1%%
    call set p_r=%%map:~%p_e%,1%%
    call set p_f=%%map:~%p_n%,1%%
    call set p_b=%%map:~%p_s%,1%%
    call set p_dl=%%map:~%p_nw%,1%%
    call set p_dr=%%map:~%p_ne%,1%%
    set dir_txt=N
) else if %direction% equ 3 (
    call set p_l=%%map:~%p_s%,1%%
    call set p_r=%%map:~%p_n%,1%%
    call set p_f=%%map:~%p_w%,1%%
    call set p_b=%%map:~%p_e%,1%%
    call set p_dl=%%map:~%p_sw%,1%%
    call set p_dr=%%map:~%p_nw%,1%%
    set dir_txt=W
)
rem (     p_l, p_r, p_f    ó    ڵ    ״       )

if %p_l% equ # (
    set le_1=%p1_1%
    set le_2=%p1_1%
    set le_3=%p1_1%
    set le_4=%p1_1%
    set le_5=%p1_5%
    set le_6=%p1_6%
    set le_7=%p1_7%
    set le_8=%p1_8%
    set le_9=%p1_9%
    set le_10=%p1_10%
    set le_11=%p1_10%
    set le_12=%p1_10%
    set le_13=%p1_13%
    set le_14=%p1_14%
    set le_15=%p1_15%
    set le_16=%p1_16%
) else if %p_dl% equ # (
    set le_1=%p4_1%
    set le_2=%p4_1%
    set le_3=%p4_1%
    set le_4=%p4_1%
    set le_5=%p4_5%
    set le_6=%p4_6%
    set le_7=%p4_7%
    set le_8=%p4_8%
    set le_9=%p4_9%
    set le_10=%p4_10%
    set le_11=%p1_10%
    set le_12=%p4_12%
    set le_13=%p4_13%
    set le_14=%p4_13%
    set le_15=%p4_13%
    set le_16=%p4_13%
) else (
    set le_1=%p2_1%
    set le_2=%p2_2%
    set le_3=%p2_2%
    set le_4=%p2_1%
    set le_5=%p2_1%
    set le_6=%p2_1%
    set le_7=%p2_1%
    set le_8=%p2_1%
    set le_9=%p2_1%
    set le_10=%p2_1%
    set le_11=%p2_1%
    set le_12=%p2_12%
    set le_13=%p2_12%
    set le_14=%p2_12%
    set le_15=%p2_12%
    set le_16=%p2_12%
)
if %p_r% equ # (
    set ri_1=%p1_1%
    set ri_2=%p1_1%
    set ri_3=%p1_1%
    set ri_4=%p1_1%
    set ri_5=%p1_5%
    set ri_6=%p1_6%
    set ri_7=%p1_7%
    set ri_8=%p1_8%
    set ri_9=%p1_9%
    set ri_10=%p1_10%
    set ri_11=%p1_10%
    set ri_12=%p1_10%
    set ri_13=%p3_13%
    set ri_14=%p3_14%
    set ri_15=%p3_15%
    set ri_16=%p3_16%
) else if %p_dr% equ # (
    set ri_1=%p4_1%
    set ri_2=%p4_1%
    set ri_3=%p4_1%
    set ri_4=%p4_1%
    set ri_5=%p4_5%
    set ri_6=%p4_6%
    set ri_7=%p4_7%
    set ri_8=%p4_8%
    set ri_9=%p4_9%
    set ri_10=%p4_10%
    set ri_11=%p1_10%
    set ri_12=%p4_12%
    set ri_13=%p4_13%
    set ri_14=%p4_13%
    set ri_15=%p4_13%
    set ri_16=%p4_13%
) else (
    set ri_1=%p2_1%
    set ri_2=%p2_2%
    set ri_3=%p2_2%
    set ri_4=%p2_1%
    set ri_5=%p2_1%
    set ri_6=%p2_1%
    set ri_7=%p2_1%
    set ri_8=%p2_1%
    set ri_9=%p2_1%
    set ri_10=%p2_1%
    set ri_11=%p2_1%
    set ri_12=%p2_12%
    set ri_13=%p2_12%
    set ri_14=%p2_12%
    set ri_15=%p2_12%
    set ri_16=%p2_12%
)
if %p_f% equ # (
    set fo_1=%p4_1%
    set fo_2=%p4_1%
    set fo_3=%p4_1%
    set fo_4=%p4_1%
    set fo_5=%p4_5%
    set fo_6=%p4_6%
    set fo_7=%p4_7%
    set fo_8=%p4_8%
    set fo_9=%p4_9%
    set fo_10=%p4_10%
    set fo_11=%p1_10%
    set fo_12=%p4_12%
    set fo_13=%p4_13%
    set fo_14=%p4_13%
    set fo_15=%p4_13%
    set fo_16=%p4_13%
) else (
    set fo_1=%p2_1%
    set fo_2=%p2_2%
    set fo_3=%p2_2%
    set fo_4=%p2_1%
    set fo_5=%p2_1%
    set fo_6=%p2_1%
    set fo_7=%p2_1%
    set fo_8=%p2_1%
    set fo_9=%p2_1%
    set fo_10=%p2_1%
    set fo_11=%p2_1%
    set fo_12=%p2_12%
    set fo_13=%p2_12%
    set fo_14=%p2_12%
    set fo_15=%p2_12%
    set fo_16=%p2_12%
)

echo %le_1%%fo_1%%fo_1%%ri_1%
echo %le_2%%fo_2%%fo_2%%ri_2%
echo %le_3%%fo_3%%fo_3%%ri_3%
echo %le_4%%fo_4%%fo_4%%ri_4%
echo %le_5%%fo_5%%fo_5%%ri_5%
echo %le_6%%fo_6%%fo_6%%ri_6%
echo %le_7%%fo_7%%fo_7%%ri_7%
echo %le_8%%fo_8%%fo_8%%ri_8%
echo %le_9%%fo_9%%fo_9%%ri_9%
echo %le_10%%fo_10%%fo_10%%ri_10%
echo %le_11%%fo_11%%fo_11%%ri_11%
echo %le_12%%fo_12%%fo_12%%ri_12%
echo %le_13%%fo_13%%fo_13%%ri_13%
echo %le_14%%fo_14%%fo_14%%ri_14%
echo %le_15%%fo_15%%fo_15%%ri_15%
echo %le_16%%fo_16%%fo_16%%ri_16%
echo     : %dir_txt%   ?: %px%,%py%

rem ---  ̴ϸ       ߰  (     ȭ    ϴ ) ---
call :DisplayMinimap
rem -----------------------------------------

if "%p_h%" equ "e" (
goto end
)
choice /c wasdp /t 5 /d p

set answer=%errorlevel%
if %answer% equ 1 goto forward
if %answer% equ 2 set /a direction += 1
if %answer% equ 3 set /a direction += 2
if %answer% equ 4 set /a direction -= 1
:return_here
if %direction% equ 4 set /a direction = 0
if %direction% equ 5 set /a direction = 1
if %direction% equ -1 set /a direction = 3
goto start

:forward
if %direction% equ 0 if not %p_f% equ # set /a py += 1
if %direction% equ 1 if not %p_f% equ # set /a px += 1
if %direction% equ 2 if not %p_f% equ # set /a py -= 1
if %direction% equ 3 if not %p_f% equ # set /a px -= 1
goto return_here

:DisplayMinimap
setlocal enabledelayedexpansion
rem  ÷  ̾      /  (0   )    
set /a playerRow=%py%-1
set /a playerCol=%px%-1

rem   ü            ϱ 
set "tempMap=%map%"
set /a len=0
:count_loop
if not "!tempMap!"=="" (
    set "tempMap=!tempMap:~1!"
    set /a len+=1
    goto count_loop
)

rem           (            ȣ)
set /a rows=len / cl
set /a lastRow=rows - 1

rem ANSI     ڷ   ̴ϸ               Ŀ    ̵  (  : 20   1  )
echo([20;1H

rem   ü                       ( ÷  ̾  ǥ ô           )
for /L %%r in (0,1,!lastRow!) do (
    set /a start=%%r * cl
    call set "rowStr=%%map:~!start!,%cl%%%"
    echo !rowStr!
)

rem  ÷  ̾    ġ   ANSI CUP  ڵ   Ŀ      ̵  Ͽ  "@"    
rem  ̴ϸ                  ġ:    25,    1 ( ʿ         )
set /a minimapRow = 22 + playerRow
set /a minimapCol = 1 + playerCol
if %direction% equ 0 echo([%minimapRow%;%minimapCol%HV
if %direction% equ 1 echo([%minimapRow%;%minimapCol%H^>
if %direction% equ 2 echo([%minimapRow%;%minimapCol%HA
if %direction% equ 3 echo([%minimapRow%;%minimapCol%H^<
echo([19;1H
endlocal
exit /b
:end
echo Ż       
pause
