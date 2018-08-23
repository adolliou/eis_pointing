; Save EIS windata objects to .sav files.

pro export_windata, wd_files, l0_files, wl0

nfiles = n_elements(l0_files)
for i=0, nfiles-1 do begin
  wd_file = wd_files[i]
  l0_file = l0_files[i]
  wd = eis_getwindata(l0_file, wl0, /refill)
  save, wd, filename=wd_file
endfor

end