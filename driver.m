clear 
clc

img = imread('photos/einstein.png');

figure('Name', 'Álszínezés'), imshow(alszinezes(img));

figure('Name', 'Vágás'), imshow(vagas(img));

hisztogram = hisztogram_szamitas(img);
figure('Name', 'Hisztogram számítás'), plot(hisztogram(:, 1), hisztogram(:, 2));

figure('Name', 'Hisztogram széthúzás'), imshow([img, hisztogram_szethuzas(img)])

figure('Name', 'Átlagoló szûrõ'), imshow([img, atlagolo_szuro(img, 10)]);

figure('Name', 'Medián szûrõ'), imshow([img, median_szuro(img, 10)]);

figure('Name', 'Min szûrõ'), imshow([img, min_szuro(img, 10)]);

figure('Name', 'Max szûrõ'), imshow([img, max_szuro(img, 10)]);
