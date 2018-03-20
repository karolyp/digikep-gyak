function result = hisztogram_szehuzas(img)
  img2 = int16(img);  %% az átskálázás során ideiglenesen túllépnénk a [0;255] tartományon
  minval = min(img2(:));
  maxval = max(img2(:));
  result = 255 * double((img2-minval)) / double((maxval - minval));
  result = uint8(result);
    
end