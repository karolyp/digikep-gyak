function result = alszinezes(img)
    colorMap = uint8(zeros(256, 3));
    dims = size(img);
    result = uint8(zeros(dims));
    
    for i=1:256
       colorMap(i, :) = [255, i - 1, 0]; 
    end
    
    for r=1:dims(1)
        for c=1:dims(2)
           for i=1:3
            result(r, c, i) = colorMap(img(r, c) + 1, i);
           end
        end
    end    
end

