create user bungsu
identified by bungsu
default tablespace users;

grant connect, resource to bungsu;
show user;

create table shop(
    id varchar2(30) primary key,
    address varchar2(30) 
);

select * from schedule where sch_no=13;
select * from performance where per_no=3;
select sysdate from dual;
select * from member;
select * from MEMBER_PAY_LIST_VIEW;
drop table performance;

select * from notice;

        select 
		      *
		from(
		 	select 
		 		rownum as rnum,
                N.* 
			from 
                notice N
            order by
                notice_reg_date desc
		    )P
		where rnum between 11 and 20;
        
update performance set detail_img_original_filename = replace(detail_img_original_filename, 'gif', '.gif') where detail_img_original_filename like '%gif';
update member set password='$2a$10$s6cxbnwOIt7Z/yhlQ.AziOWhiY9OAG6gqPVx8IpRT9YaQmxFf2f52';
commit;

select T.*
from (select rownum as rnum, T.*
from (
select * from notice order by notice_reg_date) T
) T
where rnum between 11 and 20
order by rnum desc;

select * from notice;
update notice set notice_title='[시스템작업]KB국민카드, 토스페이먼츠 전산작업으로 인한 결제중단 안내' where notice_no=40;

select * from performance;
SELECT * 

    FROM DBA_ROLE_PRIVS 

    WHERE GRANTEE = 'final';
select * from performance;
insert into
			performance
		values (
			performance_seq.nextval,
			'company1',
			'C2',
			'L1',
			'연극 〈아마데우스〉',
			'-',
			'지현준,김재범,차지연 외',
			'30',
			150,
			'※ 캐스팅 변경
12월 6일(일) 14:00 살리에리 역 한지상 -〉 차지연

한지상 배우의 하차와 강영석 배우의 개인 사정으로 인하여 부득이하게 위와 같이 캐스팅 일정이 변경되었습니다.

변경된 회차의 티켓 취소 및 변경을 원하실 경우  예매처 고객센터로 연락주시면 수수료 없이 전액 환불 가능합니다.
예매처에서 직접 취소하실 경우 수수료가 부과되니 반드시 고객센터를 통해 문의 부탁드립니다.

※ 12월 3일(목) 20시 공연 취소
12월 3일(목) 20시 공연은 취소하게 되었음을 알려드립니다.
티켓취소는 11월 17일부터 순차적으로 일괄 자동 취소되며, 17일 내에 취소가 완료되지 못할 수 있습니다. 양해 부탁드립니다.
예매자분들이 직접취소 시 수수료가 부과될 수 있으니 일괄취소를 기다려주시기 바랍니다.

관객 여러분들께 불편을 끼쳐드린 점 진심으로 사과드립니다.
감사합니다.',
			'20008513_p.gif',
			'20201202_172600554_728.gif',
			'20008513-09.jpg',
			'20201202_172600557_670.jpg',
			15,
			default,
			default,
			default,
			to_date('12/10/2020 00:00:00', 'mm/dd/yyyy hh24:mi:ss'),
			to_date('01/17/2021 00:00:00', 'mm/dd/yyyy hh24:mi:ss'),
			default,
			'Y',
			default,
			to_timestamp('12/02/2020 17:30:00.000', 'mm/dd/yyyy hh24:mi:ss.ff3')
            );
            
SELECT COLUMN_NAME, DATA_TYPE FROM all_tab_columns where table_name='PERFORMANCE';

SELECT a.TABLE_NAME, c.COMMENTS, a.COLUMN_NAME, b.COMMENTS, a.DATA_TYPE, a.DATA_LENGTH, a.NULLABLE

FROM  USER_TAB_COLUMNS a, USER_COL_COMMENTS b, USER_TAB_COMMENTS c, USER_TABLES  d

where 1=1

   and  a.TABLE_NAME = D.TABLE_NAME

   and  a.TABLE_NAME=b.TABLE_NAME

   and b.TABLE_NAME=c.TABLE_NAME

   and a.COLUMN_NAME=b.COLUMN_NAME

   and a.TABLE_NAME = 'PERFORMANCE'

order by a.TABLE_NAME, a.COLUMN_ID;

select * from member;

insert into
			performance
		values (
			performance_seq.nextval,
			'company1',
			'C1',
			'L1',
			'뮤지컬 〈그라피티〉',
			'-',
			'-',
			'172',
			100,
			'화,수,목,금 8시 / 토,일 3시 (월 공연없음)
*01/01(금) 공연없음

※ 12월29일(화)~ 01월03일(일) 공연은 추후 코로나19 사회적 거리두기 단계에 따라 한칸띄어앉기 좌석으로 재오픈될 수 있으니 예매시 참고 부탁드립니다.
단, 각 판매처의 시스템이 동일하지 않기 때문에 재오픈 시 별도의 선예매는 진행되지 않습니다. 너른 양해 부탁드립니다.',
			'그라피티.gif',
			'20201209_152553828_912.gif',
			'그라피티내용.jpg',
			'20201209_152553831_357.jpg',
			8,
			default,
			default,
			default,
			to_date('12/30/2020 00:00:00', 'mm/dd/yyyy hh24:mi:ss'),
			to_date('01/31/2021 00:00:00', 'mm/dd/yyyy hh24:mi:ss'),
			default,
			'Y',
			default,
			to_timestamp('12/26/2020 12:00:00.000', 'mm/dd/yyyy hh24:mi:ss.ff3'))
            
            ;
            
            commit;
update member set email = 'silverwise41@naver.com' where member_id='dmswl';
select * from member;
select * from theater;

select *  from auth;