CREATE TABLE Card_Holder (
    card_holder_id INT   NOT NULL,
    card_holder_name VARCHAR(50)   NOT NULL,
    CONSTRAINT pk_Card_Holder PRIMARY KEY (
        card_holder_id
     )
);

CREATE TABLE Credit_Card (
    card_number VARCHAR(20)   NOT NULL,
    id_card_holder INT   NOT NULL,
    CONSTRAINT pk_Credit_Card PRIMARY KEY (
        card_number
     )
);

CREATE TABLE Merchant_Category (
    merchant_id INT   NOT NULL,
    merchant_category VARCHAR(15)   NOT NULL,
    CONSTRAINT pk_Merchant_Category PRIMARY KEY (
        merchant_id
     )
);

CREATE TABLE Merchant (
    merchant_store_id INT   NOT NULL,
    merchant_name VARCHAR(50)   NOT NULL,
    id_merchant_category INT   NOT NULL,
    CONSTRAINT pk_Merchant PRIMARY KEY (
        merchant_store_id
     )
);

CREATE TABLE Transaction (
    transaction_id INT   NOT NULL,
    date TIMESTAMP   NOT NULL,
    amount FLOAT   NOT NULL,
    card_number VARCHAR(20)   NOT NULL,
    id_merchant INT   NOT NULL,
    CONSTRAINT pk_Transaction PRIMARY KEY (
        transaction_id
     )
);

ALTER TABLE Credit_Card ADD CONSTRAINT fk_Credit_Card_id_card_holder FOREIGN KEY(id_card_holder)
REFERENCES Card_Holder (card_holder_id);

ALTER TABLE Merchant ADD CONSTRAINT fk_Merchant_id_merchant_category FOREIGN KEY(id_merchant_category)
REFERENCES Merchant_Category (merchant_id);

ALTER TABLE Transaction ADD CONSTRAINT fk_Transaction_card_number FOREIGN KEY(card_number)
REFERENCES Credit_Card (card_number);

ALTER TABLE Transaction ADD CONSTRAINT fk_Transaction_id_merchant FOREIGN KEY(id_merchant)
REFERENCES Merchant (merchant_store_id);
