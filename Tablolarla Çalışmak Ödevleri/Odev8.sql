-- 1.test veritabanınızda employee isimli sütun bilgileri id(INTEGER)
--name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CREATE TABLE employee (
    id INTEGER,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);
----------------------------------------------------------------------------------------------------------------------
-- 2.Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.

insert into employee (name, email, birthday) values ('Devland', 'dclows0@eepurl.com', '1986-05-13');
----------------------------------------------------------------------------------------------------------------------
-- 3.Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

--id sütununa göre name sütununu güncelleme
UPDATE employee
SET name = 'John Doe'
WHERE id = 1;

--name sütununa göre email sütununu güncelleme
UPDATE employee
SET email = 'johndoe@example.com'
WHERE name = 'John Doe';

--email sütununa göre birthday sütununu güncelleme
UPDATE employee
SET birthday = '1990-05-20'
WHERE email = 'johndoe@example.com';

--birthday sütununa göre id sütununu güncelleme
UPDATE employee
SET id = 2
WHERE birthday = '1990-05-20';

--id sütununa göre hem name hem de email sütunlarını güncelleme
UPDATE employee
SET name = 'Jane Smith', email = 'janesmith@example.com'
WHERE id = 3;
-------------------------------------------------------------------------------------------------------------------------
-- 4.Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

--id sütununa göre satır silme
DELETE FROM employee
WHERE id = 1;

--name sütununa göre satır silme
DELETE FROM employee
WHERE name = 'John Doe';

--email sütununa göre satır silme
DELETE FROM employee
WHERE email = 'johndoe@example.com';

--birthday sütununa göre satır silme
DELETE FROM employee
WHERE birthday = '1990-05-20';

--id sütununa göre birden fazla koşul belirterek satır silme
DELETE FROM employee
WHERE id = 3 AND email = 'janesmith@example.com';