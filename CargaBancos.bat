rem #***************************************************************************
rem # Arquivo...............: DatasulCargaBancos.bat
rem # Criado por............: Console Datasul
rem #*************************************************************************** 

set dlc=C:\DLC128
set path=C:\DLC128\bin;%path%

call proserve "C:\totvs\Datasul\Bancos\emsfnd" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20001 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\hcm" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20002 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\payroll2" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20003 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\ems5cad" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20004 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\ems5mov" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20005 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\ems5his" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20006 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\ems2cad" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20007 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\ems2mov" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20008 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\emsinc" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20009 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\ems2sor" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20010 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\ems2mp" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20011 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\ems2adt" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20012 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\dtviewer" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20013 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\srcadger" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20014 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\srmovfin" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20015 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\mdtcrm" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20016 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\cad2loc" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20017 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\mov2loc" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20018 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\cad5loc" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20019 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\mov5loc" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20020 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\eai" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20021 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\eai2" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20022 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\totvsgen" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20023 -n 140 -Ma 15 -Mn 9
call proserve "C:\totvs\Datasul\Bancos\neogrid" -B 1000 -L 200000 -Mm 4096 -N tcp -S 20024 -n 140 -Ma 15 -Mn 9
