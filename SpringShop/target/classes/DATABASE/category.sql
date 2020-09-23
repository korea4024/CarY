drop table upCategory;

--���� ī�װ� ���̺�
create table upCategory(
  upCg_code number(8) constraint upCategory_pk primary key, --���� ī�װ� �ڵ�
  upCg_name varchar2(30) not null --���� ī�װ���
);

drop sequence upCategory_seq;

create sequence upCategory_seq
start with 1 increment by 1 nocache;

drop table downCategory;

create table downCategory(
  downCg_code number(8) constraint downCategory_pk primary key, --���� ī�װ� �ڵ�
  downCg_name varchar2(30) not null, --���� ī�װ���
  upCg_code number(8) constraint upCg_code_fk references upCategory(upCg_code)
);

drop sequence downCategory_seq;

create sequence downCategory_seq nocache;

insert into upCategory values(upCategory_seq.nextval,'��ǰ.��Ȱ��ǰ');
insert into upCategory values(upCategory_seq.nextval,'������.���ڰ���');
commit;

select * from upCategory;

insert into downCategory values(downCategory_seq.nextval,'�ż���ǰ', 1);
insert into downCategory values(downCategory_seq.nextval,'����', 1);

insert into downCategory values(downCategory_seq.nextval,'��Ʈ��', 2);
insert into downCategory values(downCategory_seq.nextval,'�����', 2);

commit;

select * from downCategory;








