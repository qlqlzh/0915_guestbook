-- �ڵ����� 1�� �����ϴ� �������� �����.
CREATE SEQUENCE guestbook_idx_seq;
-- �ڵ����� 1�� �����ϴ� �������� �����Ѵ�.
DROP SEQUENCE guestbook_idx_seq;

-- SEQUENCE�� 1���� �ٽ� ���۵ǰ� �Ϸ��� �Ʒ��� ���� �����ϸ� �ȴ�.
DELETE FROM GUESTBOOK;
DROP SEQUENCE guestbook_idx_seq;
CREATE SEQUENCE guestbook_idx_seq;

INSERT into guestbook(idx, name, password, memo, ip) VALUES (guestbook_idx_seq.nextval, 'ȫ�浿', '1111', '1�� �Դϴ�.', '192.168.100.101');
INSERT into guestbook(idx, name, password, memo, ip) VALUES (guestbook_idx_seq.nextval, '�Ӳ���', '2222', '2�� �Դϴ�.', '192.168.100.102');
INSERT into guestbook(idx, name, password, memo, ip) VALUES (guestbook_idx_seq.nextval, '����', '3333', '3�� �Դϴ�.', '192.168.100.103');
INSERT into guestbook(idx, name, password, memo, ip) VALUES (guestbook_idx_seq.nextval, '������', '4444', '4�� �Դϴ�.', '192.168.100.104');

SELECT * FROM GUESTBOOK;

SELECT COUNT(*) FROM GUESTBOOK;
SELECT * FROM GUESTBOOK WHERE idx = 1;

SELECT COUNT(*) FROM GUESTBOOK WHERE memo LIKE '%1��%';
SELECT COUNT(*) FROM GUESTBOOK WHERE name LIKE '%��%';
SELECT COUNT(*) FROM GUESTBOOK WHERE memo LIKE '%�Ѹ�%' or name LIKE '%�Ѹ�%';

COMMIT;
