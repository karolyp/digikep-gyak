function result = hisztogram_szehuzas(img)
  img2 = int16(img);  %% az �tsk�l�z�s sor�n ideiglenesen t�ll�pn�nk a [0;255] tartom�nyon
  minval = min(img2(:));
  maxval = max(img2(:));
  result = 255 * double((img2-minval)) / double((maxval - minval));
  result = uint8(result);
    
end