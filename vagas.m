function result = vagas(img)
    minValue = min(img(:));
    maxValue = max(img(:));
    diff = maxValue - minValue;
    
    threshold = minValue + 0.1 * diff < img & img < maxValue - 0.1 * diff;
    
    result = img .* uint8(threshold);
end