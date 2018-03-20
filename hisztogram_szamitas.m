function result = hisztogram_szamitas(img)
    result = zeros(256, 2);
    dims = size(img);
    
    result(:, 1) = (0:255)';

    for i=1:dims(1)
       for j=1:dims(2)
          result(img(i, j) + 1, 2) =  result(img(i, j) + 1, 2) + 1;
       end
    end
    
end