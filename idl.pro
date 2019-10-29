pro idl
nmax3=30476
header=''
time3=dblarr(nmax3)
numb3=strarr(nmax3)
lati3=fltarr(nmax3) 
area3=fltarr(nmax3)
tilt3=fltarr(nmax3)
openr,unit,'C:\Users\jiao\Desktop\DPD_SOON2Rirong_20180912\compare\totdata_kk.dat',/get_lun
readf,unit,header
for i=0,nmax3-1 do begin
  readf, unit, aa,bb,cc,dd,ee
        aa=long(aa)
        time3(i)=double(strmid(aa,0,8))+double((strmid(aa,8,2)-1))/12.+$
           double(strmid(aa,10,2))/365.
        numb3(i)=strtrim(bb)
        lati3(i)=cc
        area3(i)=dd
        tilt3(i)=ee
endfor
stop
end