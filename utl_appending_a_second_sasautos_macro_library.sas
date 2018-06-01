
Append c:/oto to sasautos seach

see
https://communities.sas.com/t5/Base-SAS-Programming/Test-if-filename-exists-in-sasautos/m-p/466654


INPUT
=====

  c:/oto


PROCESS
=======

data _null_;

  retain rc 1;

  if find(getoption('sasautos'),"c:/oto",'i') > 0 then
        putlog "c:/oto already searched in SASAUTOS";
  else rc=dosubl('options append=sasautos=("c:/oto");');

  if rc=0 then do;
     putlog "c:/oto added to sassautos";
  end;

run;quit;


OUTPUTS
-------

c:/oto already searched in SASAUTOS

or

c:/oto added to sassautos


