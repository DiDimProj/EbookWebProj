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
VALUES(1, '셜록홈즈', '01-1', '아서코난도일', '.', 0);
INSERT INTO BOOKINFO
VALUES(2, '포우단편선', '01-1', '에드거앨런포', '.', 0);
INSERT INTO BOOKINFO
VALUES(3, '엔드오브왓치', '01-1', '스티븐킹', '.', 0);
INSERT INTO BOOKINFO
VALUES(4, '크림슨의미궁', '01-2', '기시유스케', '.', 0);
INSERT INTO BOOKINFO
VALUES(5, '배틀로얄', '01-2', '타카미코순', '.', 0);
INSERT INTO BOOKINFO
VALUES(6, '기억술사', '01-2', '오리가미교야', '.', 0);
INSERT INTO BOOKINFO
VALUES(7, '당신거기있어줄래요', '01-3', '기욤뮈소', '.', 0);
INSERT INTO BOOKINFO
VALUES(8, '포에버', '01-3', '주디블룸', '.', 0);
INSERT INTO BOOKINFO
VALUES(9, '백의그림자', '01-3', '황정은', '.', 0);
INSERT INTO BOOKINFO
VALUES(10, '눈먼자들의도시', '01-2', '주제사라마구', '.', 0);
INSERT INTO BOOKINFO
VALUES(11, '열혈C프로그래밍', '02-1', '윤성우', '.', 0);
INSERT INTO BOOKINFO
VALUES(12, '이것이리눅스다', '02-1', '우재남', '.', 0);
INSERT INTO BOOKINFO
VALUES(13, '오라클SQL튜닝', '02-1', '이경오', '.', 0);
INSERT INTO BOOKINFO
VALUES(14, '전기전자의개념주워담기', '02-2', '이용훈', '.', 0);
INSERT INTO BOOKINFO
VALUES(15, '전자회로의이해', '02-2', '김원찬', '.', 0);
INSERT INTO BOOKINFO
VALUES(16, '라즈베리파이활용백서', '02-2', '이재상', '.', 0);
INSERT INTO BOOKINFO
VALUES(17, '가구만드는남자', '02-3', '이천희', '.', 0);
INSERT INTO BOOKINFO
VALUES(18, '건축가들의20대', '02-3', '안도다다오', '.', 0);
INSERT INTO BOOKINFO
VALUES(19, '건축을향하여', '02-3', '르코르뷔지에', '.', 0);
INSERT INTO BOOKINFO
VALUES(20, '이것이자바다', '02-1', '신용권', '.', 0);
INSERT INTO BOOKINFO
VALUES(21, '괴짜가족', '03-1', '하마호카켄지', '.', 0);
INSERT INTO BOOKINFO
VALUES(22, '아즈망가대왕', '03-1', '아즈마키요히코', '.', 0);
INSERT INTO BOOKINFO
VALUES(23, '크레용신짱', '03-1', '우스이요시토', '.', 0);
INSERT INTO BOOKINFO
VALUES(24, '나쁜상사', '03-2', '네온비', '.', 0);
INSERT INTO BOOKINFO
VALUES(25, '어째서여기선생님이', '03-2', '소보로', '.', 0);
INSERT INTO BOOKINFO
VALUES(26, '엿보기구멍', '03-2', '혼나와코우', '.', 0);
INSERT INTO BOOKINFO
VALUES(27, '이누야사', '03-3', '다카하시루미코', '.', 0);
INSERT INTO BOOKINFO
VALUES(28, '기동전사건담', '03-3', '카츠라기히욘', '.', 0);
INSERT INTO BOOKINFO
VALUES(29, '최유기', '03-3', '미네쿠라카즈야', '.', 0);
INSERT INTO BOOKINFO
VALUES(30, '드래곤볼', '03-1', '토리야마아키라', '.', 0);
INSERT INTO BOOKINFO
VALUES(31, '4차산업혁명의충격', '04-1', '클라우스슈밥', '.', 0);
INSERT INTO BOOKINFO
VALUES(32, '트렌드코리아2017', '04-1', '김난도', '.', 0);
INSERT INTO BOOKINFO
VALUES(33, '레버리지', '04-1', '롭무어', '.', 0);
INSERT INTO BOOKINFO
VALUES(34, '부자언니부자연습', '04-2', '유수진', '.', 0);
INSERT INTO BOOKINFO
VALUES(35, '대한민국부동사투자', '04-2', '김학렬', '.', 0);
INSERT INTO BOOKINFO
VALUES(36, '부자아빠의세컨드찬스', '04-2', '로버트기요사키', '.', 0);
INSERT INTO BOOKINFO
VALUES(37, '한국의젊은부자들', '04-3', '이신영', '.', 0);
INSERT INTO BOOKINFO
VALUES(38, '에어비앤비스토리', '04-3', '레이갤러거', '.', 0);
INSERT INTO BOOKINFO
VALUES(39, '사장하자', '04-3', '서경석', '.', 0);
INSERT INTO BOOKINFO
VALUES(40, '동전에는옆면도있다', '04-1', '정대영', '.', 0);
INSERT INTO BOOKINFO
VALUES(41, '수학독본', '05-1', '마츠자카가즈오', '.', 0);
INSERT INTO BOOKINFO
VALUES(42, '수학의정석', '05-1', '홍성대', '.', 0);
INSERT INTO BOOKINFO
VALUES(43, '수학비타민', '05-1', '박경미', '.', 0);
INSERT INTO BOOKINFO
VALUES(44, '코스모스', '05-2', '칼세이건', '.', 0);
INSERT INTO BOOKINFO
VALUES(45, '빛의물리학', '05-2', '김형준', '.', 0);
INSERT INTO BOOKINFO
VALUES(46, '모든순간의물리학', '05-2', '카를로로벨리', '.', 0);
INSERT INTO BOOKINFO
VALUES(47, '화학에서인생을배우다', '05-3', '황영애', '.', 0);
INSERT INTO BOOKINFO
VALUES(48, '주기율표로세상을읽다', '05-3', '요시다다카요시', '.', 0);
INSERT INTO BOOKINFO
VALUES(49, '부엌의화학자', '05-3', '라파엘오몽', '.', 0);
INSERT INTO BOOKINFO
VALUES(50, '파인만의물리학강의', '05-2', '리처드파인만', '.', 0);
INSERT INTO BOOKINFO
VALUES(51, '클래식에이요', '06-1', '조윤범', '.', 0);
INSERT INTO BOOKINFO
VALUES(52, '아주쉬운해금교본', '06-1', '조성래', '.', 0);
INSERT INTO BOOKINFO
VALUES(53, '냠냠맛있는재즈소곡집', '06-1', '윤소희', '.', 0);
INSERT INTO BOOKINFO
VALUES(54, '캘리애빠지다', '06-2', '배정애', '.', 0);
INSERT INTO BOOKINFO
VALUES(55, '석가의해부학노트', '06-2', '석정현', '.', 0);
INSERT INTO BOOKINFO
VALUES(56, '나의첫번째수채화수업', '06-2', '김소라', '.', 0);
INSERT INTO BOOKINFO
VALUES(57, '쿵후교본', '06-3', '입미공이', '.', 0);
INSERT INTO BOOKINFO
VALUES(58, '체육시간만들기', '06-3', '김양수', '.', 0);
INSERT INTO BOOKINFO
VALUES(59, '발레사전', '06-3', '편집부', '.', 0);
INSERT INTO BOOKINFO
VALUES(60, '스케치쉽게하기', '06-2', '김충원', '.', 0);
INSERT INTO BOOKINFO
VALUES(61, '말투하나바꿨을뿐인데', '07-1', '나이토요시히토', '.', 0);
INSERT INTO BOOKINFO
VALUES(62, '나한테왜그래요', '07-1', '고코로야진노스케', '.', 0);
INSERT INTO BOOKINFO
VALUES(63, '나는까칠하게살기로했다', '07-1', '양창순', '.', 0);
INSERT INTO BOOKINFO
VALUES(64, '자존감수업', '07-2', '윤홍균', '.', 0);
INSERT INTO BOOKINFO
VALUES(65, '두근두근', '07-2', '신영준', '.', 0);
INSERT INTO BOOKINFO
VALUES(66, '행복을풀다', '07-2', '모가댓', '.', 0);
INSERT INTO BOOKINFO
VALUES(67, '말의품격', '07-3', '이기주', '.', 0);
INSERT INTO BOOKINFO
VALUES(68, '최고의설득', '07-3', '카민갤로', '.', 0);
INSERT INTO BOOKINFO
VALUES(69, '한마디면충분하다', '07-3', '장문정', '.', 0);
INSERT INTO BOOKINFO
VALUES(70, '연애성공적', '07-2', '와니', '.', 0);
INSERT INTO BOOKINFO
VALUES(71, '나의문화유산답사기', '08-1', '유홍준', '.', 0);
INSERT INTO BOOKINFO
VALUES(72, '설민석의조선왕조실록', '08-1', '설민석', '.', 0);
INSERT INTO BOOKINFO
VALUES(73, '나의한국현대사', '08-1', '유시민', '.', 0);
INSERT INTO BOOKINFO
VALUES(74, '그해역사가바뀌다', '08-2', '주경철', '.', 0);
INSERT INTO BOOKINFO
VALUES(75, '왜지금지리학인가', '08-2', '하름데블레이', '.', 0);
INSERT INTO BOOKINFO
VALUES(76, '덩케르크', '08-2', '에드워드키블채터턴', '.', 0);
INSERT INTO BOOKINFO
VALUES(77, '북유럽신화', '08-3', '케빈크로슬리홀런드', '.', 0);
INSERT INTO BOOKINFO
VALUES(78, '이윤기의그리스로마신화', '08-3', '이윤기', '.', 0);
INSERT INTO BOOKINFO
VALUES(79, '신과함께신화편', '08-3', '주호민', '.', 0);
INSERT INTO BOOKINFO
VALUES(80, '해설대동여지도', '08-1', '김정호', '.', 0);
INSERT INTO BOOKINFO
VALUES(81, '무소유', '09-1', '법정스님', '.', 0);
INSERT INTO BOOKINFO
VALUES(82, '스스로를달빛삼다', '09-1', '원철', '.', 0);
INSERT INTO BOOKINFO
VALUES(83, '금강경강의', '09-1', '법륜', '.', 0);
INSERT INTO BOOKINFO
VALUES(84, '하나님과정치', '09-2', '요람하조니', '.', 0);
INSERT INTO BOOKINFO
VALUES(85, '설교자의일주일', '09-2', '김영봉', '.', 0);
INSERT INTO BOOKINFO
VALUES(86, '명화로여는성경', '09-2', '전창림', '.', 0);
INSERT INTO BOOKINFO
VALUES(87, '거룩한미사', '09-3', '카타리나리바스', '.', 0);
INSERT INTO BOOKINFO
VALUES(88, '몸은선물입니다', '09-3', '레아페로', '.', 0);
INSERT INTO BOOKINFO
VALUES(89, '준주성범', '09-3', '토마스아켐피스', '.', 0);
INSERT INTO BOOKINFO
VALUES(90, '산사에홀로앉아', '09-1', '일운', '.', 0);
INSERT INTO BOOKINFO
VALUES(91, '이오덕우리글바로쓰기', '10-1', '이오덕', '.', 0);
INSERT INTO BOOKINFO
VALUES(92, '똑똑한우리말맞춤법', '10-1', '공주영', '.', 0);
INSERT INTO BOOKINFO
VALUES(93, '엣센스국어사전', '10-1', '민중서림편집국', '.', 0);
INSERT INTO BOOKINFO
VALUES(94, '영어스피킹의기술', '10-2', '장경미', '.', 0);
INSERT INTO BOOKINFO
VALUES(95, '읽기만해도영어가되는책', '10-2', '조앤김', '.', 0);
INSERT INTO BOOKINFO
VALUES(96, '잉글리시팩토리', '10-2', '은정브라운', '.', 0);
INSERT INTO BOOKINFO
VALUES(97, '페이의마성의중국어', '10-3', '배정현', '.', 0);
INSERT INTO BOOKINFO
VALUES(98, '힘내라독학중국어첫걸음', '10-3', '다락원', '.', 0);
INSERT INTO BOOKINFO
VALUES(99, '중국어한자암기마스터', '10-3', '김인나', '.', 0);
INSERT INTO BOOKINFO
VALUES(100, '영어인터뷰비밀노트', '10-2', '조혜정', '.', 0);


