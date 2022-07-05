CREATE TABLE company(
    company_id BIGSERIAL PRIMARY KEY,
    company_name VARCHAR(64) NOT NULL,
    company_img text
);

INSERT INTO company(company_name,company_img) VALUES('Murod Building','https://www.mbc.uz/includes/images/new_layout/logo.svg');
INSERT INTO company(company_name,company_img) VALUES('Golden House','https://manhattan.uz/wp-content/uploads/2022/01/fdg-premium-logo.svg');
INSERT INTO company(company_name,company_img) VALUES('Olmazor City','https://www.mbc.uz/includes/images/new_layout/logo.svg');
INSERT INTO company(company_name,company_img) VALUES('Sheyx Bobo',' https://novastroy.uz/assets/svg/logo.svg');
INSERT INTO company(company_name,company_img) VALUES('Uz Indestor','https://vekbuilding.uz/img/logo.png');

CREATE TABLE branches(
    branch_id BIGSERIAL PRIMARY KEY,
    branch_name VARCHAR(64) NOT NULL,
    branch_addres VARCHAR(64) NOT NULL,
    company_id int
);

INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Nest one', 'Shayxon toxur',1);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Murod Houses', 'bektemir',1);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Som Murot', 'Chilonzor',1);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Murod With Eshmat', 'Yunusobod',1);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Murot TTZ', 'Qibray', 1);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Golden doms', 'Amir temur xiyoboni',2);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Golden Genders', 'chorsu',2);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Golden bags', 'Ganga',2);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Golden Go', 'Qoyliq',2);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Golden Dent', 'Yashnaobod', 2);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Olmagazor sen men kim sen', 'Mirobod',3);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Olmazor House', 'Mirzo Ulugbek',3);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Olmazor City' ,'Olmazor',3);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Olmazor Lend', 'Uchtepa',3);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Olmazor mego dent', 'Shayxontoxur',3);

INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Shex bolasi', 'Yakkasaroy',4);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Bek Shex', 'Yashnabod',4);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Sheyx Bobo', 'Olmazor',4);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Shex Killer', 'Yakkasaroy',4);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Shexi Izlab', 'Mirabod', 4);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Uz Complex', 'Chorsu',5);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Uz indestro', 'Uchtepa',5);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Develope Uz' ,'Shayxontoxur',5);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('Uz Lend', 'Bektemir',5);
INSERT INTO branches(branch_name, branch_addres,company_id) VALUES('impro Uz', 'Yunusobod',5);

CREATE TABLE rooms(
    room_id BIGSERIAL PRIMARY KEY,
    room_name int NOT NULL,
    room_ametr_price int NOT NULL,
    room_meter int NOT NULL,
    branches_id int NOT NULL
);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,5000000,55,1);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,5000000,69,1);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,5000000,98,1);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,5000000,114,1);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,5000000,128,1);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,6210000,65,2);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,6210000,76,2);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,6210000,109,2);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,6210000,125,2);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,6210000,140,2);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,7000000,60,3);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,7000000,70,3);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,7000000,99,3);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,7000000,110,3);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,7000000,128,3);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,6685000,55,4);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,6685000,69,4);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,6685000,98,4);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,6685000,114,4);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,6685000,128,4);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,6405000,55,5);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,6405000,69,5);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,6405000,98,5);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,6405000,114,5);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,6405000,128,5);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,4500000,55,6);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,4500000,69,6);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,4500000,98,6);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,4500000,114,6);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,4500000,128,6);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,8000000,55,7);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,8000000,69,7);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,8000000,98,7);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,8000000,114,7);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,8000000,128,7);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,6000000,55,8);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,6000000,69,8);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,6000000,98,8);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,6000000,114,8);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,6000000,128,8);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,7740000,55,9);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,7740000,69,9);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,7740000,98,9);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,7740000,114,9);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,7740000,128,9);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,5999999,55,10);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,5999999,69,10);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,5999999,98,10);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,5999999,114,10);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,5999999,128,10);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,4990000,55,11);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,4990000,69,11);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,4990000,98,11);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,4990000,114,11);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,4990000,128,11);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,5889000,55,12);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,5889000,69,12);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,5889000,98,12);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,5889000,114,12);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,5889000,128,12);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,6890000,55,13);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,6890000,69,13);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,6890000,98,13);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,6890000,114,13);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,6890000,128,13);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,7145000,55,14);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,7145000,69,14);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,7145000,98,14);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,7145000,114,14);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,7145000,128,14);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,6980000,55,15);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,6980000,69,15);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,6980000,98,15);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,6980000,114,15);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,6980000,128,15);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,5165000,55,16);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,5165000,69,16);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,5165000,98,16);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,5165000,114,16);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,5165000,128,16);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,4899000,55,17);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,4899000,69,17);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,4899000,98,17);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,4899000,114,17);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,4899000,128,17);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,8100000,55,18);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,8100000,69,18);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,8100000,98,18);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,8100000,114,18);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,8100000,128,18);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,7004000,55,19);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,7004000,69,19);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,7004000,98,19);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,7004000,114,19);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,7004000,128,19);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,6570000,55,20);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,6570000,69,20);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,6570000,98,20);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,6570000,114,20);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,6570000,128,20);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,5200000,55,21);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,5200000,69,21);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,5200000,98,21);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,5200000,114,21);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,5200000,128,21);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,7962000,55,22);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,7962000,69,22);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,7962000,98,22);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,7962000,114,22);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,7962000,128,22);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,6520000,55,23);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,6520000,69,23);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,6520000,98,23);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,6520000,114,23);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,6520000,128,23);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,5638000,55,24);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,5638000,69,24);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,5638000,98,24);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,5638000,114,24);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,5638000,128,24);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(2,8500000,55,25);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(3,8500000,69,25);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(4,8500000,98,25);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(5,8500000,114,25);
INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES(6,8500000,128,25);

CREATE TABLE banks(
    bank_id BIGSERIAL PRIMARY KEY,
    bank_name VARCHAR(64) NOT NULL,
    bank_many int NOT NULL,
    bank_durection int NOT NULL,
    bank_start_payment int NOT NULL,
    bank_service int NOT NULL,
    bank_img text
);

INSERT INTO banks(bank_name, bank_many,bank_durection,bank_start_payment,bank_service, bank_img) VALUES('Xalq Baknk',1100000000,20,18,5000000, 'https://www.infinbank.com/upload/icons/full-logo.svg ');
INSERT INTO banks(bank_name, bank_many,bank_durection,bank_start_payment,bank_service, bank_img) VALUES('Agra Bank',980000000,25,23,7600000, 'https://www.infinbank.com/upload/icons/full-logo.svg ');
INSERT INTO banks(bank_name, bank_many,bank_durection,bank_start_payment,bank_service, bank_img) VALUES('Anor Bank',1050000000,15,30,8500000, 'https://www.infinbank.com/upload/icons/full-logo.svg ');
INSERT INTO banks(bank_name, bank_many,bank_durection,bank_start_payment,bank_service, bank_img) VALUES('Ipoteka Baknk',800000000,10,24,4600000, 'https://www.infinbank.com/upload/icons/full-logo.svg ');
INSERT INTO banks(bank_name, bank_many,bank_durection,bank_start_payment,bank_service, bank_img) VALUES('Nafs Baknk',1900000000,10,50,10000000, 'https://www.infinbank.com/upload/icons/full-logo.svg ');


CREATE TABLE user_admin (
    user_admin_id BIGSERIAL PRIMARY KEY,
    user_admin_name VARCHAR(64) NOT NULL,
    user_admin_password  VARCHAR(64) NOT NULL
);

INSERT INTO user_admin (user_admin_name,user_admin_password) VALUES('admin', 'admin007');