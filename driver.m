clear 
clc

img = imread('photos/einstein.png');

figure('Name', '�lsz�nez�s'), imshow(alszinezes(img));

figure('Name', 'V�g�s'), imshow(vagas(img));

hisztogram = hisztogram_szamitas(img);
figure('Name', 'Hisztogram sz�m�t�s'), plot(hisztogram(:, 1), hisztogram(:, 2));

figure('Name', 'Hisztogram sz�th�z�s'), imshow([img, hisztogram_szethuzas(img)])

figure('Name', '�tlagol� sz�r�'), imshow([img, atlagolo_szuro(img, 10)]);

figure('Name', 'Medi�n sz�r�'), imshow([img, median_szuro(img, 10)]);

figure('Name', 'Min sz�r�'), imshow([img, min_szuro(img, 10)]);

figure('Name', 'Max sz�r�'), imshow([img, max_szuro(img, 10)]);
