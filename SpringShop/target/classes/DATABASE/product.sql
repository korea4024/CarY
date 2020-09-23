drop table product;

create table product(
   pnum number(8) constraint product_pk primary key, --��ǰ��ȣ
   upCg_code number(8) references upCategory(upCg_code), --���� ī�װ��ڵ�
   downCg_code number(8) references downCategory(downCg_code), --���� ī�װ��ڵ�
   pname varchar2(100) not null, --��ǰ��
   pimage1 varchar2(200) default 'noimage.png', --��ǰ�̹���1
   pimage2 varchar2(200) default 'noimage.png', --��ǰ�̹���1
   pimage3 varchar2(200) default 'noimage.png', --��ǰ�̹���1
   price number(8) default 0, --��ǰ ����
   saleprice number(8) default 0, --�ǸŰ�
   pqty number(5), --���� ����
   point number(8) default 0, --���� ����Ʈ
   pspec varchar2(20), --��ǰ ���� (HIT,NEW, BEST...)
   pcontents varchar2(1000), --��ǰ ����
   pcompany varchar2(30), --������
   pindate date default sysdate
);

drop sequence product_seq;

create sequence product_seq nocache;

insert into product values(product_seq.nextval,1,1,'�ƿ������','apple1.png','apple2.png',
'apple3.png',20000,18000,100,50,'HIT','���־��, �ż��ؿ�!!','�ż�����',sysdate);
insert into product values(product_seq.nextval,1,1,'����','water1.png','water2.png',
'water3.png',25000,15000,300,150,'HIT','���־��, �ż��ؿ�!!','�ż�����',sysdate);

insert into product values(product_seq.nextval,2,3,'Lg��Ʈ��','note1.png','note2.png',
'note3.png',2000000,1700000,200,500,'HIT','�������� ��Ʈ��','LG',sysdate);

insert into product values(product_seq.nextval,2,3,'�Ｚ��Ʈ��','note4.png','note4.png',
'note6.png',2200000,1800000,300,550,'NEW','�������� ��Ʈ��','LG',sysdate);
commit;





