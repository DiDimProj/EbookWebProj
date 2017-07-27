CREATE TABLE BOOKINFO(
	BOOKNUM 	NUMBER(5) PRIMARY KEY,
	TITLE		VARCHAR2(40) NOT NULL,
	GENRENUM	VARCHAR2(10) NOT NULL,
	AUTHOR		VARCHAR2(30) NOT NULL,
	CONTENT		VARCHAR2(300) NOT NULL,
	LIKECNT		NUMBER(5) 	NOT NULL
);

ALTER TABLE BOOKINFO MODIFY AUTHOR VARCHAR2(30);
SELECT * FROM BOOKINFO;
DROP TABLE BOOKINFO;

INSERT INTO BOOKINFO
VALUES(1, '�ȷ�Ȩ��', '01-1', '�Ƽ��ڳ�����', '.', 0);
INSERT INTO BOOKINFO
VALUES(2, '�������', '01-1', '����žٷ���', '.', 0);
INSERT INTO BOOKINFO
VALUES(3, '��������ġ', '01-1', '��Ƽ��ŷ', '.', 0);
INSERT INTO BOOKINFO
VALUES(4, 'ũ�����ṉ̀�', '01-2', '���������', '.', 0);
INSERT INTO BOOKINFO
VALUES(5, '��Ʋ�ξ�', '01-2', 'Ÿī���ڼ�', '.', 0);
INSERT INTO BOOKINFO
VALUES(6, '������', '01-2', '�������̱���', '.', 0);
INSERT INTO BOOKINFO
VALUES(7, '��Űű��־��ٷ���', '01-3', '��蹿��', '.', 0);
INSERT INTO BOOKINFO
VALUES(8, '������', '01-3', '�ֵ���', '.', 0);
INSERT INTO BOOKINFO
VALUES(9, '���Ǳ׸���', '01-3', 'Ȳ����', '.', 0);
INSERT INTO BOOKINFO
VALUES(10, '�����ڵ��ǵ���', '01-2', '������󸶱�', '.', 0);
INSERT INTO BOOKINFO
VALUES(11, '����C���α׷���', '02-1', '������', '.', 0);
INSERT INTO BOOKINFO
VALUES(12, '�̰��̸�������', '02-1', '���糲', '.', 0);
INSERT INTO BOOKINFO
VALUES(13, '����ŬSQLƩ��', '02-1', '�̰��', '.', 0);
INSERT INTO BOOKINFO
VALUES(14, '���������ǰ����ֿ����', '02-2', '�̿���', '.', 0);
INSERT INTO BOOKINFO
VALUES(15, '����ȸ��������', '02-2', '�����', '.', 0);
INSERT INTO BOOKINFO
VALUES(16, '���������Ȱ��鼭', '02-2', '�����', '.', 0);
INSERT INTO BOOKINFO
VALUES(17, '��������³���', '02-3', '��õ��', '.', 0);
INSERT INTO BOOKINFO
VALUES(18, '���డ����20��', '02-3', '�ȵ��ٴٿ�', '.', 0);
INSERT INTO BOOKINFO
VALUES(19, '���������Ͽ�', '02-3', '���ڸ�������', '.', 0);
INSERT INTO BOOKINFO
VALUES(20, '�̰����ڹٴ�', '02-1', '�ſ��', '.', 0);
INSERT INTO BOOKINFO
VALUES(21, '��¥����', '03-1', '�ϸ�ȣī����', '.', 0);
INSERT INTO BOOKINFO
VALUES(22, '����������', '03-1', '���Ű������', '.', 0);
INSERT INTO BOOKINFO
VALUES(23, 'ũ�����¯', '03-1', '�콺�̿����', '.', 0);
INSERT INTO BOOKINFO
VALUES(24, '���ۻ��', '03-2', '�׿º�', '.', 0);
INSERT INTO BOOKINFO
VALUES(25, '��°�����⼱������', '03-2', '�Һ���', '.', 0);
INSERT INTO BOOKINFO
VALUES(26, '�����ⱸ��', '03-2', 'ȥ�����ڿ�', '.', 0);
INSERT INTO BOOKINFO
VALUES(27, '�̴��߻�', '03-3', '��ī�Ͻ÷����', '.', 0);
INSERT INTO BOOKINFO
VALUES(28, '�⵿����Ǵ�', '03-3', 'ī���������', '.', 0);
INSERT INTO BOOKINFO
VALUES(29, '������', '03-3', '�̳����ī���', '.', 0);
INSERT INTO BOOKINFO
VALUES(30, '�巡�ﺼ', '03-1', '�丮�߸���Ű��', '.', 0);
INSERT INTO BOOKINFO
VALUES(31, '4��������������', '04-1', 'Ŭ��콺����', '.', 0);
INSERT INTO BOOKINFO
VALUES(32, 'Ʈ�����ڸ���2017', '04-1', '�賭��', '.', 0);
INSERT INTO BOOKINFO
VALUES(33, '��������', '04-1', '�ӹ���', '.', 0);
INSERT INTO BOOKINFO
VALUES(34, '���ھ�Ϻ��ڿ���', '04-2', '������', '.', 0);
INSERT INTO BOOKINFO
VALUES(35, '���ѹα��ε�������', '04-2', '���з�', '.', 0);
INSERT INTO BOOKINFO
VALUES(36, '���ھƺ��Ǽ���������', '04-2', '�ι�Ʈ����Ű', '.', 0);
INSERT INTO BOOKINFO
VALUES(37, '�ѱ����������ڵ�', '04-3', '�̽ſ�', '.', 0);
INSERT INTO BOOKINFO
VALUES(38, '�����غ��丮', '04-3', '���̰�����', '.', 0);
INSERT INTO BOOKINFO
VALUES(39, '��������', '04-3', '���漮', '.', 0);
INSERT INTO BOOKINFO
VALUES(40, '�������¿��鵵�ִ�', '04-1', '���뿵', '.', 0);
INSERT INTO BOOKINFO
VALUES(41, '���е���', '05-1', '������ī�����', '.', 0);
INSERT INTO BOOKINFO
VALUES(42, '����������', '05-1', 'ȫ����', '.', 0);
INSERT INTO BOOKINFO
VALUES(43, '���к�Ÿ��', '05-1', '�ڰ��', '.', 0);
INSERT INTO BOOKINFO
VALUES(44, '�ڽ���', '05-2', 'Į���̰�', '.', 0);
INSERT INTO BOOKINFO
VALUES(45, '���ǹ�����', '05-2', '������', '.', 0);
INSERT INTO BOOKINFO
VALUES(46, '�������ǹ�����', '05-2', 'ī���ηκ���', '.', 0);
INSERT INTO BOOKINFO
VALUES(47, 'ȭ�п����λ�������', '05-3', 'Ȳ����', '.', 0);
INSERT INTO BOOKINFO
VALUES(48, '�ֱ���ǥ�μ������д�', '05-3', '��ôٴ�ī���', '.', 0);
INSERT INTO BOOKINFO
VALUES(49, '�ξ���ȭ����', '05-3', '���Ŀ�����', '.', 0);
INSERT INTO BOOKINFO
VALUES(50, '���θ��ǹ����а���', '05-2', '��ó�����θ�', '.', 0);
INSERT INTO BOOKINFO
VALUES(51, 'Ŭ���Ŀ��̿�', '06-1', '������', '.', 0);
INSERT INTO BOOKINFO
VALUES(52, '���ֽ����رݱ���', '06-1', '������', '.', 0);
INSERT INTO BOOKINFO
VALUES(53, '�ȳȸ��ִ�����Ұ���', '06-1', '������', '.', 0);
INSERT INTO BOOKINFO
VALUES(54, 'Ķ���ֺ�����', '06-2', '������', '.', 0);
INSERT INTO BOOKINFO
VALUES(55, '�������غ��г�Ʈ', '06-2', '������', '.', 0);
INSERT INTO BOOKINFO
VALUES(56, '����ù��°��äȭ����', '06-2', '��Ҷ�', '.', 0);
INSERT INTO BOOKINFO
VALUES(57, '���ı���', '06-3', '�Թ̰���', '.', 0);
INSERT INTO BOOKINFO
VALUES(58, 'ü���ð������', '06-3', '����', '.', 0);
INSERT INTO BOOKINFO
VALUES(59, '�߷�����', '06-3', '������', '.', 0);
INSERT INTO BOOKINFO
VALUES(60, '����ġ�����ϱ�', '06-2', '�����', '.', 0);
INSERT INTO BOOKINFO
VALUES(61, '�����ϳ��ٲ������ε�', '07-1', '������������', '.', 0);
INSERT INTO BOOKINFO
VALUES(62, '�����׿ֱ׷���', '07-1', '���ڷξ����뽺��', '.', 0);
INSERT INTO BOOKINFO
VALUES(63, '���±�ĥ�ϰԻ����ߴ�', '07-1', '��â��', '.', 0);
INSERT INTO BOOKINFO
VALUES(64, '����������', '07-2', '��ȫ��', '.', 0);
INSERT INTO BOOKINFO
VALUES(65, '�αٵα�', '07-2', '�ſ���', '.', 0);
INSERT INTO BOOKINFO
VALUES(66, '�ູ��Ǯ��', '07-2', '�𰡴�', '.', 0);
INSERT INTO BOOKINFO
VALUES(67, '����ǰ��', '07-3', '�̱���', '.', 0);
INSERT INTO BOOKINFO
VALUES(68, '�ְ��Ǽ���', '07-3', 'ī�ΰ���', '.', 0);
INSERT INTO BOOKINFO
VALUES(69, '�Ѹ��������ϴ�', '07-3', '�幮��', '.', 0);
INSERT INTO BOOKINFO
VALUES(70, '���ּ�����', '07-2', '�ʹ�', '.', 0);
INSERT INTO BOOKINFO
VALUES(71, '���ǹ�ȭ�������', '08-1', '��ȫ��', '.', 0);
INSERT INTO BOOKINFO
VALUES(72, '���μ������������Ƿ�', '08-1', '���μ�', '.', 0);
INSERT INTO BOOKINFO
VALUES(73, '�����ѱ������', '08-1', '���ù�', '.', 0);
INSERT INTO BOOKINFO
VALUES(74, '���ؿ��簡�ٲ��', '08-2', '�ְ�ö', '.', 0);
INSERT INTO BOOKINFO
VALUES(75, '�������������ΰ�', '08-2', '�ϸ�������', '.', 0);
INSERT INTO BOOKINFO
VALUES(76, '���ɸ�ũ', '08-2', '�������Ű��ä����', '.', 0);
INSERT INTO BOOKINFO
VALUES(77, '��������ȭ', '08-3', '�ɺ�ũ�ν���Ȧ����', '.', 0);
INSERT INTO BOOKINFO
VALUES(78, '�������Ǳ׸����θ���ȭ', '08-3', '������', '.', 0);
INSERT INTO BOOKINFO
VALUES(79, '�Ű��Բ���ȭ��', '08-3', '��ȣ��', '.', 0);
INSERT INTO BOOKINFO
VALUES(80, '�ؼ��뵿������', '08-1', '����ȣ', '.', 0);
INSERT INTO BOOKINFO
VALUES(81, '������', '09-1', '��������', '.', 0);
INSERT INTO BOOKINFO
VALUES(82, '�����θ��޺����', '09-1', '��ö', '.', 0);
INSERT INTO BOOKINFO
VALUES(83, '�ݰ��氭��', '09-1', '����', '.', 0);
INSERT INTO BOOKINFO
VALUES(84, '�ϳ��԰���ġ', '09-2', '���������', '.', 0);
INSERT INTO BOOKINFO
VALUES(85, '��������������', '09-2', '�迵��', '.', 0);
INSERT INTO BOOKINFO
VALUES(86, '��ȭ�ο��¼���', '09-2', '��â��', '.', 0);
INSERT INTO BOOKINFO
VALUES(87, '�ŷ��ѹ̻�', '09-3', 'īŸ�������ٽ�', '.', 0);
INSERT INTO BOOKINFO
VALUES(88, '���������Դϴ�', '09-3', '�������', '.', 0);
INSERT INTO BOOKINFO
VALUES(89, '���ּ���', '09-3', '�丶�������ǽ�', '.', 0);
INSERT INTO BOOKINFO
VALUES(90, '��翡Ȧ�ξɾ�', '09-1', '�Ͽ�', '.', 0);
INSERT INTO BOOKINFO
VALUES(91, '�̿����츮�۹ٷξ���', '10-1', '�̿���', '.', 0);
INSERT INTO BOOKINFO
VALUES(92, '�ȶ��ѿ츮�������', '10-1', '���ֿ�', '.', 0);
INSERT INTO BOOKINFO
VALUES(93, '�������������', '10-1', '���߼���������', '.', 0);
INSERT INTO BOOKINFO
VALUES(94, '�����ŷ�Ǳ��', '10-2', '����', '.', 0);
INSERT INTO BOOKINFO
VALUES(95, '�б⸸�ص�����Ǵ�å', '10-2', '���ر�', '.', 0);
INSERT INTO BOOKINFO
VALUES(96, '�ױ۸������丮', '10-2', '��������', '.', 0);
INSERT INTO BOOKINFO
VALUES(97, '�����Ǹ������߱���', '10-3', '������', '.', 0);
INSERT INTO BOOKINFO
VALUES(98, '���������߱���ù����', '10-3', '�ٶ���', '.', 0);
INSERT INTO BOOKINFO
VALUES(99, '�߱������ھϱ⸶����', '10-3', '���γ�', '.', 0);
INSERT INTO BOOKINFO
VALUES(100, '�������ͺ��г�Ʈ', '10-2', '������', '.', 0);


