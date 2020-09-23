ALTER TABLE Cart
	DROP
		CONSTRAINT FK_Member_TO_Cart
		CASCADE;

ALTER TABLE Cart
	DROP
		CONSTRAINT FK_product_TO_Cart
		CASCADE;

ALTER TABLE Cart
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_Cart;

/* 장바구니 */
DROP TABLE Cart 
	CASCADE CONSTRAINTS;

/* 장바구니 */
CREATE TABLE Cart (
	cartNum NUMBER(8) NOT NULL, /* 장바구니번호 */
	oqty NUMBER(8) NOT NULL, /* 수량 */
	indate DATE, /* 날짜 */
	idx NUMBER(8), /* 회원번호 */
	pnum NUMBER(8) /* 상품번호 */
);

CREATE UNIQUE INDEX PK_Cart
	ON Cart (
		cartNum ASC
	);

ALTER TABLE Cart
	ADD
		CONSTRAINT PK_Cart
		PRIMARY KEY (
			cartNum
		);

ALTER TABLE Cart
	ADD
		CONSTRAINT FK_Member_TO_Cart
		FOREIGN KEY (
			idx
		)
		REFERENCES Member (
			idx
		);

ALTER TABLE Cart
	ADD
		CONSTRAINT FK_product_TO_Cart
		FOREIGN KEY (
			pnum
		)
		REFERENCES product (
			pnum
		);
		
drop sequence Cart_seq; 
create sequence Cart_seq NOCACHE;