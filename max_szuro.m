 function result = max_szuro(img, kernel_size)
    k = floor(kernel_size / 2);
    [height, width, channels] = size(img);
    expandedImage = uint8(zeros(height + 2 * k, width + 2 * k, channels));
    expandedImage(1 + k:height + k, 1 + k:width + k) = img;
    result = expandedImage;
    
    for c=1:channels
        for i=1+k:height+k
            for j=1+k:width+k
                result(i, j, c) = max(max(expandedImage(i - k:i + k, j - k:j + k)));
            end
        end
    end
    
    result = result(1 + k:height + k, 1 + k:width + k);
end
