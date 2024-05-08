-- Create the Level table
CREATE TABLE Level (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

-- Insert data into the Level table
INSERT INTO Level (name)
VALUES ('Level 1');

-- Create the Unit table
CREATE TABLE Unit (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    level_id INT,
    FOREIGN KEY (level_id) REFERENCES Level(id)
);

-- Insert data into the Unit table
INSERT INTO Unit (name, level_id)
VALUES ('Greetings and Introduction', 1);

-- Create the Vocabulary table
CREATE TABLE Vocabulary (
    id INT PRIMARY KEY AUTO_INCREMENT,
    unit_id INT,
    word VARCHAR(255) NOT NULL,
    translation VARCHAR(255) NOT NULL,
    FOREIGN KEY (unit_id) REFERENCES Unit(id)
);

-- Insert data into the Vocabulary table
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (1, '미국 사람', 'American'),
    (1, '이름', 'name'),
    (1, '저', 'I'),
    (1, '제', 'my'),
    (1, '네', 'yes'),
    (1, '안녕하다(안녕하십니까?)', 'doing well(Hello)'),
    (1, '나라', 'country'),
    (1, '노르웨이', 'Norway'),
    (1, '미국', 'the U.S'),
    (1, '베트남', 'Vietnam'),
    (1, '브라질', 'Brazil'),
    (1, '사람', 'person'),
    (1, '일본', 'Japan'),
    (1, '중국', 'China'),
    (1, '케냐', 'Kenya'),
    (1, '프랑스', 'France'),
    (1, '한국', 'Korea'),
    (1, '한국 사람', 'Korean'),
    (1, '호주', 'Australia'),
    (1, '어느', 'which'),
    (1, '감사합니다', 'Thank you'),
    (1, '괜찮습니다', 'I am okay'),
    (1, '죄송합니다', 'I am sorry'),
    (1, '안녕히 가십시오', 'goodbye'),
    (1, '안녕히 계십시오', 'goodbye'),
    (1, '씨', 'Mr./Ms.'),
    (1, '학생', 'student'),
    (1, '회사원', 'office worker'),
    (1, '아니요', 'no'),
    (1, '가수', 'singer'),
    (1, '간호사', 'nurse'),
    (1, '기자', 'journalist'),
    (1, '누구', 'who'),
    (1, '배우', 'actor'),
    (1, '선생님', 'teacher'),
    (1, '요리사', 'chef'),
    (1, '은행원', 'bank teller'),
    (1, '의사', 'doctor');


-- Insert data into the Unit table for "Objects" unit
INSERT INTO Unit (name, level_id)
VALUES ('Objects', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Objects" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (2, '교실', 'classroom'),
    (2, '그것', 'that (thing)'),
    (2, '무엇', 'what'),
    (2, '여기', 'here'),
    (2, '우리', 'we/us/our'),
    (2, '이것', 'this (thing)'),
    (2, '컴퓨터', 'computer'),
    (2, '거울', 'mirror'),
    (2, '누가', 'who'),
    (2, '달력', 'calendar'),
    (2, '지도', 'map'),
    (2, '문', 'door'),
    (2, '시계', 'clock'),
    (2, '옷걸이', 'clothes hanger'),
    (2, '의자', 'chair'),
    (2, '저것', 'that (thing)'),
    (2, '창문', 'window'),
    (2, '책상', 'desk'),
    (2, '친구', 'friend'),
    (2, '칠판', 'blackboard'),
    (2, '텔레비전', 'television'),
    (2, '공책', 'Notebook'),
    (2, '책', 'book'),
    (2, '없다', 'to not have'),
    (2, '있다', 'to have'),
    (2, '가방', 'bag'),
    (2, '돈', 'money'),
    (2, '볼펜', 'pen'),
    (2, '신문', 'newspaper'),
    (2, '연필', 'pencil'),
    (2, '잡지', 'magazine'),
    (2, '지갑', 'wallet'),
    (2, '지우개', 'eraser'),
    (2, '필통', 'pencil case'),
    (2, '학생증', 'student\'s ID card'),
    (2, '휴대전화', 'cell phone'),
    (2, '휴지', 'tissue');


-- Insert data into the Unit table for "School" unit
INSERT INTO Unit (name, level_id)
VALUES ('School', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "School" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (3, '도서관', 'library'),
    (3, '안', 'in/inside'),
    (3, '앞', 'front'),
    (3, '어디', 'where'),
    (3, '은행', 'bank'),
    (3, '학생회관', 'student union'),
    (3, '기숙사', 'dormitory'),
    (3, '꽃', 'flower'),
    (3, '뒤', 'behind'),
    (3, '밖', 'out/outside'),
    (3, '사무실', 'office'),
    (3, '서점', 'bookstore'),
    (3, '식당', 'restaurant'),
    (3, '아래', 'below/under'),
    (3, '옆', 'next to'),
    (3, '우체국', 'post office'),
    (3, '위', 'above'),
    (3, '저기', 'over there'),
    (3, '체육관', 'gym'),
    (3, '편의점', 'convenient store'),
    (3, '근처', 'near'),
    (3, '방', 'room'),
    (3, '학생식당', 'student cafeteria'),
    (3, '어떻다', 'to be how'),
    (3, '좋다', 'to be good/nice'),
    (3, '아주', 'very'),
    (3, '날씨', 'weather'),
    (3, '나쁘다', 'to be bad'),
    (3, '덥다', 'to be hot'),
    (3, '많다', 'to be many/much'),
    (3, '시끄럽다', 'to be noisy'),
    (3, '작다', 'to be small'),
    (3, '적다', 'to be little/few'),
    (3, '조용하다', 'to be quiet'),
    (3, '춥다', 'to be cold'),
    (3, '크다', 'to be big');

-- Insert data into the Unit table for "Friends" unit
INSERT INTO Unit (name, level_id)
VALUES ('Friends', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Friends" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (4, '저분', 'that person'),
    (4, '한국말', 'Korean'),
    (4, '배우다', 'to learn'),
    (4, '왔습니다', 'to come(came)'),
    (4, '물', 'water'),
    (4, '베트남말', 'Vietnamese'),
    (4, '빵', 'bread'),
    (4, '영어', 'English'),
    (4, '음악', 'Music'),
    (4, '일본말', 'Japanese'),
    (4, '중국말', 'Chinese'),
    (4, '커피', 'coffee'),
    (4, '프랑스말', 'French'),
    (4, '가르치다', 'to teach'),
    (4, '기다리다', 'to wait'),
    (4, '듣다', 'to listen/hear'),
    (4, '마시다', 'to drink'),
    (4, '만나다', 'to meet'),
    (4, '먹다', 'to eat'),
    (4, '보다', 'to see'),
    (4, '사다', 'to buy'),
    (4, '쓰다', 'to write'),
    (4, '읽다', 'to read'),
    (4, '입다', 'to wear'),
    (4, '지금', 'now'),
    (4, '게임', 'game'),
    (4, '날마다', 'everyday'),
    (4, '피시방', 'internet cafe'),
    (4, '하다', 'to do'),
    (4, '꽃집', 'flower shop'),
    (4, '노래방', 'Karaoke'),
    (4, '문구점', 'stationery store'),
    (4, '백화점', 'department store'),
    (4, '빵집', 'bakery'),
    (4, '찜질방', 'Korean sauna'),
    (4, '태권도', 'taekwondo'),
    (4, '게임하다', 'to play game'),
    (4, '공부하다', 'to study'),
    (4, '노래하다', 'to sing'),
    (4, '식사하다', 'to have a meal'),
    (4, '아르바이트하다', 'to work part time'),
    (4, '운동하다', 'to exercise'),
    (4, '일하다', 'to work');

-- Insert data into the Unit table for "Hometown" unit
INSERT INTO Unit (name, level_id)
VALUES ('Hometown', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Hometown" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (5, '고향', 'hometown'),
    (5, '내일', 'tomorrow'),
    (5, '바다', 'ocean'),
    (5, '수영', 'swimming'),
    (5, '언제', 'when'),
    (5, '가다', 'to go'),
    (5, '강', 'river'),
    (5, '누구', 'who'),
    (5, '무엇', 'what'),
    (5, '산', 'mountain'),
    (5, '어디', 'where'),
    (5, '집', 'house/home'),
    (5, '호수', 'lake'),
    (5, '회사', 'company'),
    (5, '가족을 만나다', 'to meet family'),
    (5, '고향 음식을 먹다', 'to eat hometown food'),
    (5, '고향 친구를 만나다', 'to meet hometown friends'),
    (5, '고향에 가다', 'to go to hometown'),
    (5, '서울', 'Seoul'),
    (5, '하와이', 'Hawaii'),
    (5, '복잡하다', 'to be crowded'),
    (5, '아름답다', 'to be beautiful'),
    (5, '경치', 'scenery'),
    (5, '남자', 'man'),
    (5, '생선', 'fish'),
    (5, '생활', 'life/living'),
    (5, '여자', 'woman'),
    (5, '깨끗하다', 'to be clean'),
    (5, '더럽다', 'to be dirty'),
    (5, '바쁘다', 'to be busy'),
    (5, '예쁘다', 'to be pretty'),
    (5, '재미없다', 'to be not fun'),
    (5, '재미있다', 'to be fun'),
    (5, '친절하다', 'to be kind'),
    (5, '한가하다', 'to be not busy');

    -- Insert data into the Unit table for "School Life" unit
INSERT INTO Unit (name, level_id)
VALUES ('School Life', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "School Life" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (6, '몇', 'what'),
    (6, '반', 'half'),
    (6, '보통', 'usually'),
    (6, '시', 'time/hour'),
    (6, '아홉', 'nine'),
    (6, '점심', 'lunch'),
    (6, '하나(한)', 'one'),
    (6, '아침', 'morning/breakfast'),
    (6, '영화', 'movie'),
    (6, '오전', 'morning'),
    (6, '오후', 'afternoon'),
    (6, '저녁', 'dinner/evening'),
    (6, '둘(두)', 'two'),
    (6, '셋(세)', 'three'),
    (6, '넷(네)', 'four'),
    (6, '다섯', 'five'),
    (6, '여섯', 'six'),
    (6, '일곱', 'seven'),
    (6, '여덟', 'eight'),
    (6, '열', 'ten'),
    (6, '열하나', 'eleven'),
    (6, '열둘', 'twelve'),
    (6, '30(삼십)', 'thirty'),
    (6, '교과서', 'textbook'),
    (6, '대화', 'conversation/dialogue'),
    (6, '번', 'times'),
    (6, '수업', 'class'),
    (6, '숙제', 'homework'),
    (6, '쪽', 'page'),
    (6, '알겠습니다', 'to know(okay)'),
    (6, '고맙다', 'to thank'),
    (6, '닫다', 'to close'),
    (6, '운전하다', 'to drive'),
    (6, '전화하다', 'to call'),
    (6, '피곤하다', 'to be tired'),
    (6, '복습을 하다', 'to review'),
    (6, '숙제를 하다', 'to do homework'),
    (6, '시험을 보다', 'to take a test'),
    (6, '예습을 하다', 'to study in advance'),
    (6, '일', 'one'),
    (6, '이', 'two'),
    (6, '삼', 'three'),
    (6, '사', 'four'),
    (6, '오', 'five'),
    (6, '육', 'six'),
    (6, '칠', 'seven'),
    (6, '팔', 'eight'),
    (6, '구', 'nine'),
    (6, '십', 'ten'),
    (6, '이십', 'twenty'),
    (6, '사십', 'forty'),
    (6, '오십', 'fifty'),
    (6, '분', 'minute');

-- Insert data into the Unit table for "Food" unit
INSERT INTO Unit (name, level_id)
VALUES ('Food', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Food" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (7, '불고기', 'bulgogi'),
    (7, '만들다', 'to make'),
    (7, '맛있다', 'to be delicious'),
    (7, '맵다', 'to be spicy'),
    (7, '좋아하다', 'to like'),
    (7, '무슨', 'what kind'),
    (7, '그럼', 'then'),
    (7, '과일', 'fruit'),
    (7, '냉면', 'cold noodles'),
    (7, '녹차', 'green tea'),
    (7, '딸기', 'strawberry'),
    (7, '맛', 'taste'),
    (7, '비빔밥', 'bibimbap'),
    (7, '사과', 'apple'),
    (7, '삼계탕', 'chicken soup'),
    (7, '샌드위치', 'sandwich'),
    (7, '서양', 'western'),
    (7, '액션영화', 'action movie'),
    (7, '우동', 'udon'),
    (7, '유자차', 'citron tea'),
    (7, '음식', 'food'),
    (7, '자장면', 'jajangmyeon'),
    (7, '짬뽕', 'jjamppong'),
    (7, '차', 'tea'),
    (7, '초밥', 'sushi'),
    (7, '코미디 영화', 'comedy movie'),
    (7, '피자', 'pizza'),
    (7, '맛없다', 'to be not delicious'),
    (7, '길다', 'to be long'),
    (7, '놀다', 'to play/hang out'),
    (7, '달다', 'to be sweet'),
    (7, '멀다', 'to be far'),
    (7, '살다', 'to live'),
    (7, '알다', 'to know'),
    (7, '열다', 'to open'),
    (7, '그릇', 'bowl'),
    (7, '삼겹살', 'pork belly'),
    (7, '인분', 'portion'),
    (7, '시키다', 'to order'),
    (7, '주다', 'to give'),
    (7, '반여기요', 'excuse me'),
    (7, '배가 고프다', 'to be hungry'),
    (7, '같이', 'together'),
    (7, '김밥', 'kimbap'),
    (7, '맥주', 'beer'),
    (7, '앉다', 'to sit'),
    (7, '개', 'counting word for objects'),
    (7, '마리', 'counting word for animals'),
    (7, '병', 'bottle'),
    (7, '잔', 'cup'),
    (7, '줄', 'roll'),
    (7, '판', 'pan'),
    (7, '반', 'half');

-- Insert data into the Unit table for "Daily Life" unit
INSERT INTO Unit (name, level_id)
VALUES ('Daily Life', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Daily Life" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (8, '오늘', 'today'),
    (8, '요일', 'days of the week'),
    (8, '토요일', 'Saturday'),
    (8, '며칠', 'what day'),
    (8, '생일', 'birthday'),
    (8, '크리스마스', 'Christmas'),
    (8, '월요일', 'Monday'),
    (8, '화요일', 'Tuesday'),
    (8, '수요일', 'Wednesday'),
    (8, '목요일', 'Thursday'),
    (8, '금요일', 'Friday'),
    (8, '일요일', 'Sunday'),
    (8, '월', 'month'),
    (8, '일', 'day'),
    (8, '산책', 'stroll'),
    (8, '저녁', 'dinner/evening'),
    (8, '샤워하다', 'to take a shower'),
    (8, '그리고', 'and'),
    (8, '먼저', 'first'),
    (8, '뭘', 'what'),
    (8, '끝나다', 'to finish'),
    (8, '세수하다', 'to wash one\'s face'),
    (8, '일어나다', 'to wake up'),
    (8, '자다', 'to sleep'),
    (8, '길을 묻다', 'to ask for direction'),
    (8, '아침을 먹다', 'to eat breakfast'),
    (8, '이를 닦다', 'to brush one\'s teeth'),
    (8, '저녁을 먹다', 'to eat dinner'),
    (8, '점심을 먹다', 'to eat lunch'),
    (8, '컴퓨터를 하다', 'to use a computer'),
    (8, '걷다', 'to walk'),
    (8, '듣다', 'to listen/hear'),
    (8, '묻다', 'to ask'),
    (8, '싣다', 'to load'),
    (8, '닫다', 'to close'),
    (8, '받다', 'to receive');

    -- Insert data into the Unit table for "The Weekends" unit
INSERT INTO Unit (name, level_id)
VALUES ('The Weekends', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "The Weekends" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (9, '운동장', 'playground'),
    (9, '주말', 'week-end'),
    (9, '축구', 'soccer'),
    (9, '힘들다', 'to be hard'),
    (9, '자주', 'often'),
    (9, '골프', 'golf'),
    (9, '골프장', 'golf course'),
    (9, '농구', 'basketball'),
    (9, '농구장', 'basketball court'),
    (9, '서핑', 'surfing'),
    (9, '수영', 'swimming'),
    (9, '수영장', 'swimming pool'),
    (9, '스노보드', 'snowboard'),
    (9, '스케이트', 'skate'),
    (9, '스케이트장', 'skating ring'),
    (9, '스키', 'ski'),
    (9, '스키장', 'ski resort'),
    (9, '요가', 'yoga'),
    (9, '지하철', 'subway'),
    (9, '탁구', 'table tennis'),
    (9, '탁구장', 'table tennis room'),
    (9, '테니스', 'tennis'),
    (9, '테니스장', 'tennis court'),
    (9, '비싸다', 'to be expensive'),
    (9, '빌리다', 'to borrow/rent'),
    (9, '빠르다', 'to be fast'),
    (9, '잘하다', 'to do well'),
    (9, '치다', 'to hit'),
    (9, '타다', 'to ride'),
    (9, '등산하다', 'to hike'),
    (9, '청소하다', 'to clean'),
    (9, '너무', 'too much'),
    (9, '김치', 'kimchi'),
    (9, '아이', 'child'),
    (9, '한식', 'Korean food'),
    (9, '데이트하다', 'to go out with someone'),
    (9, '빨래하다', 'to do laundry'),
    (9, '쇼핑하다', 'to go shopping'),
    (9, '여행하다', 'to travel'),
    (9, '많이', 'much/many'),
    (9, '아주', 'very'),
    (9, '조금', 'little/few'),
    (9, '좀', 'little/few'),
    (9, '귀엽다', 'to be cute'),
    (9, '더럽다', 'to be dirty'),
    (9, '돕다', 'to help'),
    (9, '맵다', 'to be spicy'),
    (9, '반갑다', 'to be glad'),
    (9, '쉽다', 'to be easy'),
    (9, '시끄럽다', 'to be noisy'),
    (9, '아름답다', 'to be beatiful'),
    (9, '어렵다', 'to be difficult'),
    (9, '춥다', 'to be cold'),
    (9, '입다', 'to wear'),
    (9, '좁다', 'to be narrow');


-- Insert data into the Unit table for "Past Experience" unit
INSERT INTO Unit (name, level_id)
VALUES ('Past Experience', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Past Experience" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (10, '공원', 'park'),
    (10, '어제', 'yesterday'),
    (10, '쉬다', 'to rest'),
    (10, '그제', 'a day before yesterday'),
    (10, '금년', 'this year'),
    (10, '내년', 'next year'),
    (10, '내일', 'tomorrow'),
    (10, '다음', 'next time'),
    (10, '달', 'month'),
    (10, '다음달', 'next month'),
    (10, '다음주', 'next week'),
    (10, '모레', 'a day after tomorrow'),
    (10, '오늘', 'today'),
    (10, '올해', 'this year'),
    (10, '이번', 'this time'),
    (10, '작년', 'last year'),
    (10, '주', 'week'),
    (10, '지난달', 'last month'),
    (10, '지난주', 'last week'),
    (10, '왜', 'why'),
    (10, '콘서트', 'concert'),
    (10, '표', 'ticket'),
    (10, '예매하다', 'to book(esp. tickets)'),
    (10, '일찍', 'early'),
    (10, '시간이 없다', 'to have no time'),
    (10, '기차표', 'train ticket'),
    (10, '병원', 'hospital'),
    (10, '비행기 표', 'plane ticket'),
    (10, '식당', 'restaurant'),
    (10, '영화표', 'movie ticket'),
    (10, '옷', 'clothes'),
    (10, '호텔', 'hotel'),
    (10, '늦다', 'to be late'),
    (10, '아프다', 'to be sick'),
    (10, '예약하다', 'to make a reservation'),
    (10, '늦게', 'late'),
    (10, '빨리', 'quickly'),
    (10, '천천히', 'slowly');

-- Insert data into the Unit table for "Appointments" unit
INSERT INTO Unit (name, level_id)
VALUES ('Appointments', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Appointments" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (11, '약속', 'appointment'),
    (11, '한강공원', 'Hangang park'),
    (11, '가끔', 'sometimes'),
    (11, '요즘', 'these days'),
    (11, '자전거를 타다', 'to ride a bicycle'),
    (11, '약속 시간', 'appointment time'),
    (11, '약속 장소', 'appointment place'),
    (11, '약속을 지키다', 'to keep appointment'),
    (11, '약속을 하다', 'to make appointment'),
    (11, '약속이 없다', 'to not have appointment'),
    (11, '약속이 있다', 'to have appointment'),
    (11, '날마다', 'everyday'),
    (11, '자주', 'often'),
    (11, '놀이공원', 'amusement park'),
    (11, '드라마', 'drama'),
    (11, '심심하다', 'to be bored'),
    (11, '글쎄요', 'well'),
    (11, '공원', 'park'),
    (11, '극장', 'theater'),
    (11, '동물원', 'zoo'),
    (11, '미술관', 'art gallery'),
    (11, '박물관', 'museum'),
    (11, '영화관', 'movie theater'),
    (11, '카페', 'cafe');

    -- Insert data into the Unit table for "Family" unit
INSERT INTO Unit (name, level_id)
VALUES ('Family', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Family" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (12, '교수', 'professor'),
    (12, '대학교', 'college'),
    (12, '아버지', 'father'),
    (12, '역사', 'history'),
    (12, '이분', 'this person'),
    (12, '남동생', 'younger brother'),
    (12, '누나', 'older sister(for male)'),
    (12, '부모님', 'parents'),
    (12, '어머니', 'mother'),
    (12, '언니', 'older sister(for female)'),
    (12, '여동생', 'younger sister'),
    (12, '오빠', 'older brother(for female)'),
    (12, '외할머니', 'grandmother(on mother\'s side)'),
    (12, '외할아버지', 'grandfather(on mother\'s side)'),
    (12, '할머니', 'grandmother'),
    (12, '할아버지', 'grandfather'),
    (12, '형', 'older brother(for male)'),
    (12, '형제', 'sibling'),
    (12, '계시다', 'to be(honorific)'),
    (12, '드시다', 'to eat/drink(honorific)'),
    (12, '말씀하시다', 'to speak(honorific)'),
    (12, '잡수시다', 'to eat(honorific)'),
    (12, '주무시다', 'to sleep(honorific)'),
    (12, '과자', 'cookie'),
    (12, '뭐', 'what'),
    (12, '요리', 'dish'),
    (12, '와', 'wow'),
    (12, '구경하다', 'to look around'),
    (12, '누구', 'who'),
    (12, '무엇', 'what'),
    (12, '이거', 'this (thing)'),
    (12, '그림을 그리다', 'to draw a picture'),
    (12, '독서를 하다', 'to read'),
    (12, '사진을 찍다', 'to take a photo'),
    (12, '요리를 하다', 'to cook'),
    (12, '춤을 추다', 'to dance');

    -- Insert data into the Unit table for "Shopping" unit
INSERT INTO Unit (name, level_id)
VALUES ('Shopping', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Shopping" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (13, '얼마', 'how much/many'),
    (13, '원', 'won'),
    (13, '치마', 'skirt'),
    (13, '그래요', 'yes, it is (is it?)'),
    (13, '길다', 'to be long'),
    (13, '짧다', 'to be short'),
    (13, '더', 'more'),
    (13, '만', 'ten thousand'),
    (13, '값', 'price'),
    (13, '구두', 'shoes'),
    (13, '바지', 'pants'),
    (13, '백', 'hundred'),
    (13, '슬리퍼', 'slippers'),
    (13, '신발', 'shoes'),
    (13, '십만', 'hundred thousand'),
    (13, '와이셔츠', 'shirt'),
    (13, '우산', 'umbrella'),
    (13, '운동화', 'sneakers'),
    (13, '천', 'thousand'),
    (13, '코트', 'coat'),
    (13, '티셔츠', 't-shirt'),
    (13, '가볍다', 'to be light'),
    (13, '두껍다', 'to be thick'),
    (13, '무겁다', 'to be heavy'),
    (13, '비싸다', 'to be expensive'),
    (13, '싸다', 'to be cheap'),
    (13, '얇다', 'to be thin'),
    (13, '들', 'a suffix to express plural'),
    (13, '송이', 'counting word for flower'),
    (13, '스물(스무)', 'twenty'),
    (13, '장미', 'rose'),
    (13, '찾다', 'to find'),
    (13, '제일', 'most'),
    (13, '어서 오세요', 'welcome'),
    (13, '가게', 'store'),
    (13, '곳', 'place'),
    (13, '면세점', 'duty free shop'),
    (13, '바나나', 'banana'),
    (13, '백화점', 'department store'),
    (13, '슈퍼마켓', 'supermarket'),
    (13, '시장', 'market'),
    (13, '양말', 'socks'),
    (13, '주스', 'juice'),
    (13, '크림빵', 'cream bread'),
    (13, '잘', 'well'),
    (13, '권', 'counting word for books'),
    (13, '벌', 'counting word for clothes'),
    (13, '자루', 'counting word for pen/pencil'),
    (13, '장', 'counting word for paper'),
    (13, '켤레', 'counting word for shoes/socks/gloves');

    -- Insert data into the Unit table for "Birthday" unit
INSERT INTO Unit (name, level_id)
VALUES ('Birthday', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Birthday" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (14, '모두', 'everyone/all'),
    (14, '선물', 'gift'),
    (14, '케이크', 'cake'),
    (14, '화장품', 'cosmetics'),
    (14, '선물하다', 'to give a gift'),
    (14, '이따가', 'later'),
    (14, '것', 'thing'),
    (14, '꽃다발', 'bouquet of flower'),
    (14, '넥타이', 'tie'),
    (14, '상품권', 'gift certificate'),
    (14, '생신', 'birthday(honorific)'),
    (14, '시디', 'CD'),
    (14, '액세서리', 'accessories'),
    (14, '이메일', 'e-mail'),
    (14, '인형', 'doll'),
    (14, '향수', 'perfume'),
    (14, '드리다', 'to give(honorific)'),
    (14, '말씀드리다', 'to say(honorific)'),
    (14, '말하다', 'to say'),
    (14, '보내다', 'to send'),
    (14, '연락드리다', 'to contact(honorific)'),
    (14, '연락하다', 'to contact'),
    (14, '인사드리다', 'to greet(honorific)'),
    (14, '인사하다', 'to greet'),
    (14, '전화드리다', 'to call(honorific)'),
    (14, '전화하다', 'to call'),
    (14, '주다', 'to give'),
    (14, '그리고', 'and'),
    (14, '그렇지만', 'however'),
    (14, '그래서', 'so'),
    (14, '초콜릿', 'chocolate'),
    (14, '고르다', 'to pick'),
    (14, '준비하다', 'to prepare'),
    (14, '축하하다', 'to congratulate'),
    (14, '정말', 'really'),
    (14, '여기저기', 'here and there'),
    (14, '생일축하 노래를 부르다', 'to sing a birthday song'),
    (14, '선물을 고르다', 'to pick a gift'),
    (14, '카드를 쓰다', 'to write a card'),
    (14, '케이크를 자르다', 'to cut a cake'),
    (14, '풍선을 불다', 'to blow a balloon'),
    (14, '다르다', 'to be different'),
    (14, '모르다', 'to not know'),
    (14, '부르다', 'to sing'),
    (14, '빠르다', 'to be fast'),
    (14, '자르다', 'to cut');


-- Insert data into the Unit table for "Telephone" unit
INSERT INTO Unit (name, level_id)
VALUES ('Telephone', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Telephone" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (15, '전화번호', 'telephone number'),
    (15, '좀', 'please'),
    (15, '잠깐만요', 'one moment'),
    (15, '국가 번호', 'country code'),
    (15, '지역 번호', 'area code'),
    (15, '휴대전화', 'cell phone'),
    (15, '이야기', 'story'),
    (15, '파티', 'party'),
    (15, '여보세요', 'hello'),
    (15, '전화를 받다', 'to receive a call'),
    (15, '뉴스', 'news'),
    (15, '전화하다', 'to call'),
    (15, '통화중이다', 'the line is busy'),
    (15, '문자메시지를 받다', 'to receive a text message'),
    (15, '문자메시지를 보내다', 'to send a text message'),
    (15, '전화가 오다', 'call is coming'),
    (15, '전화를 걸다', 'to make a call'),
    (15, '전화를 끊다', 'to hang up a call'),
    (15, '전화를 바꾸다', 'to put someone in the phone');


    -- Insert data into the Unit table for "Transportation" unit
INSERT INTO Unit (name, level_id)
VALUES ('Transportation', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Transportation" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (16, '택시', 'taxi'),
    (16, '가깝다', 'to be close'),
    (16, '걸리다', 'to take(time)'),
    (16, '얼마나', 'how long'),
    (16, '쯤', 'about'),
    (16, '고속버스', 'express bus'),
    (16, '공항버스', 'airport bus'),
    (16, '기차', 'train'),
    (16, '배', 'ship'),
    (16, '버스', 'bus'),
    (16, '비행기', 'airplane'),
    (16, '오토바이', 'motorcycle'),
    (16, '자전거', 'bicycle'),
    (16, '젓가락', 'chopsticks'),
    (16, '종업원', 'employee'),
    (16, '지하철', 'subway'),
    (16, '시간', 'hour/time'),
    (16, '삼성역', 'Samsung station'),
    (16, '코엑스', 'Coex'),
    (16, '호선', 'subway line'),
    (16, '내리다', 'to get off'),
    (16, '어떻게', 'how'),
    (16, '고속버스터미널', 'express bus terminal'),
    (16, '공항', 'airport'),
    (16, '역', 'station'),
    (16, '정류장', 'bus stop'),
    (16, '갈아타다', 'to transfer'),
    (16, '끄다', 'to turn off'),
    (16, '도착하다', 'to arrive'),
    (16, '출발하다', 'to depart'),
    (16, '타다', 'to get on'),
    (16, '번', 'number');

-- Insert data into the Unit table for "Get Direction" unit
INSERT INTO Unit (name, level_id)
VALUES ('Get Direction', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Get Direction" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (17, '미터', 'meter'),
    (17, '사거리', 'intersection'),
    (17, '약국', 'pharmacy'),
    (17, '오른쪽', 'right side'),
    (17, '실례지만', 'excuse me'),
    (17, '저', 'uhm'),
    (17, '그쪽', 'your side'),
    (17, '왼쪽', 'left side'),
    (17, '이쪽', 'this side'),
    (17, '저쪽', 'that side'),
    (17, '지하', 'basement'),
    (17, '층', 'floor'),
    (17, '한복', 'hanbok'),
    (17, '물어보다', 'to ask'),
    (17, '똑바로', 'straight'),
    (17, '거기', 'there'),
    (17, '건너편', 'the other side'),
    (17, '횡단보도', 'crosswalk'),
    (17, '건너다', 'to cross'),
    (17, '보이다', 'to be seen'),
    (17, '약', 'medicine'),
    (17, '육교', 'pedestrian overpass'),
    (17, '지하도', 'underpass'),
    (17, '출구', 'exit'),
    (17, '화장실', 'restroom'),
    (17, '나가다', 'to exit'),
    (17, '내려가다', 'to go down'),
    (17, '들어가다', 'to enter'),
    (17, '올라가다', 'to go up');

-- Insert data into the Unit table for "Weather and Seasons" unit
INSERT INTO Unit (name, level_id)
VALUES ('Weather and Seasons', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Weather and Seasons" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (18, '일기예보', 'weather forecast'),
    (18, '따뜻하다', 'to be warm'),
    (18, '가지고 오다', 'to bring'),
    (18, '비가 오다', 'it\'s raining'),
    (18, '우산을 쓰다', 'to use an umbrella'),
    (18, '물건', 'object'),
    (18, '맑다', 'to be clear'),
    (18, '선선하다', 'to be cool'),
    (18, '쌀쌀하다', 'to be chilly'),
    (18, '흐리다', 'to be cloudy'),
    (18, '눈이 오다', 'it\'s snowing'),
    (18, '바람이 불다', 'wind is blowing'),
    (18, '벚꽃', 'cherry blossom'),
    (18, '봄', 'spring'),
    (18, '피다', 'to blossom'),
    (18, '소풍을 가다', 'to go on a picnic'),
    (18, '계절', 'season'),
    (18, '눈사람', 'snowman'),
    (18, '팝콘', 'popcorn'),
    (18, '눈싸움을 하다', 'to have a snowfight'),
    (18, '단풍 구경을 하다', 'to see autumn leaves'),
    (18, '담배를 피우다', 'to smoke a cigarette'),
    (18, '해수욕장에 가다', 'to go to a beach'),
    (18, '여름', 'summer'),
    (18, '가을', 'autumn'),
    (18, '겨울', 'winter');

    -- Insert data into the Unit table for "Travel" unit
INSERT INTO Unit (name, level_id)
VALUES ('Travel', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Travel" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (19, '민박집', 'bed and breakfast'),
    (19, '전주', 'Jeonju'),
    (19, '민박하다', 'to stay at bed and breakfast'),
    (19, '아직', 'not yet'),
    (19, '게스트하우스', 'guesthouse'),
    (19, '여행', 'travel'),
    (19, '여행사', 'travel agency'),
    (19, '콘도', 'membership resort'),
    (19, '펜션', 'Korean rental cottage'),
    (19, '호텔', 'hotel'),
    (19, '계획을 세우다', 'to make a plan'),
    (19, '여행을 가다', 'to go on a trip'),
    (19, '모자', 'hat'),
    (19, '떠나다', 'to leave'),
    (19, '싸다', 'to pack'),
    (19, '다', 'all'),
    (19, '선글라스', 'sunglasses'),
    (19, '여권', 'passport'),
    (19, '우산', 'umbrella'),
    (19, '충전기', 'charger'),
    (19, '신다', 'to wear (shoes)'),
    (19, '쓰다', 'to wear (hat)'),
    (19, '돈을 바꾸다', 'to exchange money');

    -- Insert data into the Unit table for "Vacation and Holidays" unit
INSERT INTO Unit (name, level_id)
VALUES ('Vacation and Holidays', 1); -- Assuming it belongs to Level 1, update level_id accordingly

-- Insert data into the Vocabulary table for "Vacation and Holidays" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (20, '학기', 'semester'),
    (20, '돌아오다', 'to come back'),
    (20, '방학하다', 'to vacation'),
    (20, '시작되다', 'to be started'),
    (20, '한번', 'once'),
    (20, '끝', 'end'),
    (20, '방학', 'vacation'),
    (20, '방학중', 'during vacation'),
    (20, '시작', 'start'),
    (20, '학기중', 'during semester'),
    (20, '방학이 끝나다', 'vacation is over'),
    (20, '방학이 시작되다', 'vacation starts'),
    (20, '학기가 끝나다', 'semester is over'),
    (20, '학기가 시작되다', 'semester starts'),
    (20, '댁', 'house (honorific)'),
    (20, '떡국', 'tteokguk (rice cake soup)'),
    (20, '설날', 'New Year\'s day'),
    (20, '세배하다', 'to do New Year\'s bow'),
    (20, '어린이날', 'Children\'s day'),
    (20, '음력', 'lunar calendar'),
    (20, '크리스마스', 'Christmas'),
    (20, '크리스마스트리', 'Christmas tree'),
    (20, '한글날', 'Hangul Proclamation day'),
    (20, '휴가', 'vacation'),
    (20, '휴일', 'holiday');

-- Insert data into the Level table
INSERT INTO Level (name)
VALUES ('Level 2');

-- Insert data into the Unit table for "Greetings and Introduction" unit
INSERT INTO Unit (name, level_id)
VALUES ('Greetings and Introduction', 2);

-- Insert data into the Vocabulary table for "Greetings and Introduction" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (21, '지내다', 'to spend one\'s time'),
    (21, '오랜만이다', 'long time no see'),
    (21, '즐겁다', 'to be fun or be happy'),
    (21, '점점', 'eventually'),
    (21, '익숙하다', 'to be used to'),
    (21, '광고 회사', 'advertising company'),
    (21, '무역 회사', 'trading company'),
    (21, '방송국', 'broadcasting station'),
    (21, '신문사', 'newspaper publishing company'),
    (21, '잡지사', 'magazine company'),
    (21, '직장', 'job'),
    (21, '출판사', 'publishing company'),
    (21, '항공사', 'airline company'),
    (21, '건강하다', 'to be healthy'),
    (21, '그만두다', 'to quit'),
    (21, '다니다', 'to attend or go'),
    (21, '사귀다', 'to make friends'),
    (21, '대학원', 'graduate school'),
    (21, '열심히', 'diligently'),
    (21, '전공하다', 'to major in'),
    (21, '신문방송학', 'journalism and mass communication'),
    (21, '졸업하다', 'to graduate'),
    (21, '경영학', 'business administration'),
    (21, '경제학', 'economics'),
    (21, '교육학', 'educational studies'),
    (21, '국어국문학', 'Korean language and literature'),
    (21, '법학', 'law'),
    (21, '영문학', 'English literature'),
    (21, '의학', 'medical science'),
    (21, '컴퓨터공학', 'computer engineering'),
    (21, '새', 'new');

-- Insert data into the Unit table for "Friends and Family" unit
INSERT INTO Unit (name, level_id)
VALUES ('Friends and Family', 2);

-- Insert data into the Vocabulary table for "Friends and Family" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (22, '잘생기다', 'to be good-looking'),
    (22, '성격', 'personality'),
    (22, '착하다', 'to be good-natured or nice'),
    (22, '도와주다', 'to help'),
    (22, '연예인', 'entertainer'),
    (22, '귀', 'ear'),
    (22, '목소리', 'voice'),
    (22, '발', 'foot'),
    (22, '어깨', 'shoulder'),
    (22, '이마', 'forehead'),
    (22, '코', 'nose'),
    (22, '날씬하다', 'to be slim'),
    (22, '어리다', 'to be young'),
    (22, '마음', 'heart'),
    (22, '무릎', 'knee'),
    (22, '손', 'hand'),
    (22, '얼굴', 'face'),
    (22, '입', 'mouth'),
    (22, '허리', 'waist'),
    (22, '똑똑하다', 'to be smart'),
    (22, '친척', 'relatives'),
    (22, '이모', 'aunt on the mother\'s side'),
    (22, '시청', 'city hall'),
    (22, '공무원', 'public service worker'),
    (22, '조카', 'niece'),
    (22, '고모', 'aunt on the father\'s side'),
    (22, '고모부', 'uncle (husband of my aunt on the father\'s side)'),
    (22, '큰아버지', 'uncle (father\'s older brother)'),
    (22, '큰어머니', 'aunt (wife of one\'s father\'s older brother)'),
    (22, '외삼촌', 'uncle (brother of one\'s mother)'),
    (22, '외숙모', 'aunt (wife of one\'s mother\'s brother)'),
    (22, '외할아버지', 'grandfather of one\'s mother\'s side'),
    (22, '외할머니', 'grandmother of one\'s mother\'s side'),
    (22, '이모부', 'uncle (husband of one\'s mother\'s sister)'),
    (22, '어리다', 'to be young');

-- Insert data into the Unit table for "Hometown" unit
INSERT INTO Unit (name, level_id)
VALUES ('Hometown', 2);

-- Insert data into the Vocabulary table for "Hometown" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (23, '다녀오다', 'to go and return'),
    (23, '남해', 'Southern Sea'),
    (23, '섬', 'island'),
    (23, '푸르다', 'to be blue'),
    (23, '구경거리', 'tourist attraction'),
    (23, '거리', 'road or street'),
    (23, '동해', 'East sea'),
    (23, '빌딩', 'building'),
    (23, '숲', 'forest'),
    (23, '온천', 'hot spring or spa'),
    (23, '도시', 'city'),
    (23, '롤러코스터', 'roller coaster'),
    (23, '서해', 'West sea'),
    (23, '시골', 'countryside'),
    (23, '한라산', 'Halla mountain'),
    (23, '해변', 'seashore or beach'),
    (23, '해산물', 'sea food'),
    (23, '신선하다', 'to be fresh'),
    (23, '편리하다', 'to be convenient'),
    (23, '유명하다', 'to be famous'),
    (23, '관광지', 'tourist destination'),
    (23, '별로', 'not really'),
    (23, '그립다', 'to miss or long for'),
    (23, '오래되다', 'to be long time'),
    (23, '기쁘다', 'to be joyful'),
    (23, '부끄럽다', 'to feel shameful or embarassed'),
    (23, '부럽다', 'to be envious'),
    (23, '불안하다', 'to be anxious'),
    (23, '외롭다', 'to be lonely'),
    (23, '행복하다', 'to be happy'),
    (23, '화가 나다', 'to be angry');

    -- Insert data into the Unit table for "Houses" unit
INSERT INTO Unit (name, level_id)
VALUES ('Houses', 2);

-- Insert data into the Vocabulary table for "Houses" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (24, '이사하다', 'to move'),
    (24, '알아보다', 'to search or look into'),
    (24, '불편하다', 'to be inconvenient or uncomfortable'),
    (24, '룸메이트', 'roommate'),
    (24, '동네', 'neighborhood'),
    (24, '미용실', 'hair salon'),
    (24, '약도', 'map'),
    (24, '이삿짐센터', 'moving company'),
    (24, '주유소', 'gas station'),
    (24, '찜질방', 'Korean sauna'),
    (24, '싸다', 'to be cheap'),
    (24, '분식집', 'snack shop'),
    (24, '이삿짐', 'goods to be moved'),
    (24, '짐', 'goods or luggage'),
    (24, '계약하다', 'to make a contract'),
    (24, '정리하다', 'to organize'),
    (24, '거의', 'almost or mostly'),
    (24, '새로', 'newly'),
    (24, '주변', 'the surroundings'),
    (24, '욕실', 'bathroom'),
    (24, '세탁기', 'washing machine'),
    (24, '베란다', 'veranda'),
    (24, '놓다', 'to put or place'),
    (24, '거실', 'living room'),
    (24, '부엌', 'kitchen'),
    (24, '소파', 'sofa'),
    (24, '식탁', 'table'),
    (24, '현관', 'entrance or front door'),
    (24, '걸다', 'to hang'),
    (24, '변', 'wall'),
    (24, '서재', 'a study or library'),
    (24, '수건', 'towel'),
    (24, '옷장', 'closet');

    -- Insert data into the Unit table for "Food" unit
INSERT INTO Unit (name, level_id)
VALUES ('Food', 2);

-- Insert data into the Vocabulary table for "Food" unit
INSERT INTO Vocabulary (unit_id, word, translation)
VALUES
    (25, '갈비찜', 'galbijjim (braised short ribs)'),
    (25, '소고기', 'beef'),
    (25, '명절', 'holiday'),
    (25, '양념하다', 'to season or flavor'),
    (25, '접시', 'plate'),
    (25, '덜다', 'to put'),
    (25, '고추장', 'gochujang (red pepper paste)'),
    (25, '된장', 'doenjang (fermented soybean paste)'),
    (25, '방법', 'method'),
    (25, '삼성역', 'Samseong subway station'),
    (25, '설탕', 'sugar'),
    (25, '소금', 'salt'),
    (25, '스트레스', 'stress'),
    (25, '식초', 'vinegar'),
    (25, '양념', 'seasoning'),
    (25, '인사동', 'Insa dong'),
    (25, '후추', 'black pepper'),
    (25, '깎다', 'to cut'),
    (25, '넣다', 'to put in or add'),
    (25, '말다', 'to roll'),
    (25, '비비다', 'to mix'),
    (25, '뿌리다', 'to sprinkle'),
    (25, '섞다', 'to mix or blend'),
    (25, '찍다', 'to dip'),
    (25, '고기', 'meat'),
    (25, '프라이팬', 'fry pan'),
    (25, '채소', 'vegetables'),
    (25, '참기름', 'sesame oil'),
    (25, '기름', 'oil'),
    (25, '볶다', 'to fry or roast'),
    (25, '간', 'saltiness'),
    (25, '간을 보다', 'check seasoning'),
    (25, '감자', 'potato'),
    (25, '냄비', 'pot'),
    (25, '면', 'noodles'),
    (25, '닭고기', 'chicken'),
    (25, '당근', 'carrot'),
    (25, '돼지고기', 'pork'),
    (25, '버섯', 'mushroom'),
    (25, '설렁탕', 'beef and rice soup'),
    (25, '소스', 'sauce'),
    (25, '쓰레기', 'trash'),
    (25, '쓰레기통', 'trash can'),
    (25, '양파', 'onion'),
    (25, '요리법', 'recipe'),
    (25, '재료', 'ingredient'),
    (25, '책장', 'bookshelf'),
    (25, '파', 'green onion'),
    (25, '굽다', 'to grill'),
    (25, '꽃다', 'to stick (in/into)'),
    (25, '끓이다', 'to boil or heat'),
    (25, '다지다', 'to mince'),
    (25, '두다', 'to put or place'),
    (25, '버리다', 'to throw away'),
    (25, '삶다', 'to boil'),
    (25, '썰다', 'to cut or chop'),
    (25, '잃어버리다', 'to lose'),
    (25, '찌다', 'to steam'),
    (25, '튀기다', 'to deep fry');

    -- Insert data for Unit 6 - Market
INSERT INTO Unit (level_id, name) VALUES (2, 'Market');

-- Insert vocabulary data for Unit 6
INSERT INTO Vocabulary (unit_id, word, translation) VALUES
    (26, '비누', 'soap'),
    (26, '마트', 'market'),
    (26, '방석', 'sitting cushion'),
    (26, '생수', 'spring water'),
    (26, '이불', 'blanket'),
    (26, '팔다', 'to sell'),
    (26, '감', 'persimmon'),
    (26, '냉동식품', 'frozen food'),
    (26, '배추', 'Chinese cabbage'),
    (26, '소리', 'sound'),
    (26, '생활용품', 'living products'),
    (26, '식료품', 'groceries'),
    (26, '음료', 'beverage'),
    (26, '참외', 'Korean melon'),
    (26, '치약', 'toothpaste'),
    (26, '칫솔', 'toothbrush'),
    (26, '토마토', 'tomato'),
    (26, '포도', 'grape'),
    (26, '포스터', 'poster'),
    (26, '햄', 'ham'),
    (26, '할인', 'discount'),
    (26, '매장', 'store'),
    (26, '항상', 'always'),
    (26, '세일하다', 'to be on sale'),
    (26, '상품', 'products'),
    (26, '가전제품', 'electric home appliances'),
    (26, '귀걸이', 'earring'),
    (26, '남성복', 'men\'s clothing'),
    (26, '목걸이', 'necklace'),
    (26, '반지', 'ring'),
    (26, '배낭', 'backpack'),
    (26, '수영복', 'swimsuit'),
    (26, '스포츠용품', 'sporting goods'),
    (26, '여성복', 'women\'s clothing'),
    (26, '장갑', 'gloves'),
    (26, '패션잡화', 'fashion goods'),
    (26, '핸드백', 'handbag'),
    (26, '들다', 'to hold'),
    (26, '메다', 'to carry'),
    (26, '쓰다', 'to use'),
    (26, '차다', 'to wear (a watch)');

-- Insert data for Unit 7 - Shopping
INSERT INTO Unit (level_id, name) VALUES (2, 'Shopping');

-- Insert vocabulary data for Unit 7
INSERT INTO Vocabulary (unit_id, word, translation) VALUES
    (27, '특별히', 'especially'),
    (27, '반바지', 'shorts'),
    (27, '유행이다', 'to be in fashion'),
    (27, '흰색', 'white'),
    (27, '갈아입다', 'to change clothes'),
    (27, '보라색', 'purple'),
    (27, '색깔', 'color'),
    (27, '운동복', 'sportswear'),
    (27, '점퍼', 'jacket'),
    (27, '청바지', 'blue jeans'),
    (27, '회색', 'grey'),
    (27, '뛰다', 'to run or jump'),
    (27, '목이 마르다', 'to be thirsty'),
    (27, '분홍색', 'pink'),
    (27, '양복', 'suit'),
    (27, '원피스', 'one-piece dress'),
    (27, '조끼', 'vest'),
    (27, '하늘색', 'sky-blue'),
    (27, '떠들다', 'to chatter'),
    (27, '만지다', 'to touch'),
    (27, '빨갛다', 'to be red'),
    (27, '멋있다', 'to be cool or gorgeous'),
    (27, '사이즈', 'size'),
    (27, '마음에 들다', 'to like'),
    (27, '주머니', 'pocket'),
    (27, '첫', 'first'),
    (27, '월급', 'salary or paycheck'),
    (27, '디자인', 'design'),
    (27, '모양', 'appearance or shape'),
    (27, '단순하다', 'to be simple or plain'),
    (27, '맞다', 'to be right or correct'),
    (27, '밝다', 'to be bright'),
    (27, '비슷하다', 'to be similar'),
    (27, '어둡다', 'to be dark'),
    (27, '화려하다', 'to be ornate or gorgeous'),
    (27, '그렇다', 'to be like that'),
    (27, '까맣다', 'to be black'),
    (27, '노랗다', 'to be yellow'),
    (27, '빨갛다', 'to be red'),
    (27, '어떻다', 'how it is'),
    (27, '이렇다', 'to be like this'),
    (27, '저렇다', 'to be like that'),
    (27, '파랗다', 'to be blue'),
    (27, '하얗다', 'to be white');

-- Insert data for Unit 8 - Invitations
INSERT INTO Unit (level_id, name) VALUES (2, 'Invitations');

-- Insert vocabulary data for Unit 8
INSERT INTO Vocabulary (unit_id, word, translation) VALUES
    (28, '모임', 'meeting or gathering'),
    (28, '초대하다', 'to invite'),
    (28, '기대', 'anticipation or expectation'),
    (28, '시작하다', 'to start'),
    (28, '도움', 'to help'),
    (28, '필요하다', 'to need'),
    (28, '강아지', 'puppy'),
    (28, '동아리', 'school club'),
    (28, '동창', 'schoolmate'),
    (28, '동창회', 'alumni association'),
    (28, '동호회', 'workplace club'),
    (28, '뒤풀이', 'after party'),
    (28, '송별회', 'farewell party'),
    (28, '초대장', 'invitation card'),
    (28, '환영회', 'welcoming reception'),
    (28, '회비', '(membership) fee'),
    (28, '들다', 'to join'),
    (28, '모으다', 'to gather'),
    (28, '모이다', 'to get together'),
    (28, '선배', 'senior'),
    (28, '집들이', 'housewarming party'),
    (28, '쓰다', 'to use'),
    (28, '주방용품', 'kitchen products'),
    (28, '부인', 'wife'),
    (28, '찾잔', 'tea set or teacup'),
    (28, '분위기', 'atmosphere'),
    (28, '어울리다', 'to match'),
    (28, '꽃바구니', 'flower basket'),
    (28, '떡', 'rice cake'),
    (28, '샤부샤부', 'shabu-shabu'),
    (28, '샐러드', 'salad'),
    (28, '세제', 'detergent'),
    (28, '벽시계', 'wall clock'),
    (28, '부케', 'bouquet'),
    (28, '앨범', 'album'),
    (28, '잡채', 'japchae'),
    (28, '향초', 'scented candle'),
    (28, '화분', 'flower pot'),
    (28, '졸다', 'to doze'),
    (28, '휴지', 'tissue'),
    (28, '씹다', 'to chew'),
    (28, '박수를 치다', 'to applaud'),
    (28, '발로 차다', 'to kick');

    -- Insert data for Unit 9 - Appointments
INSERT INTO Unit (level_id, name) VALUES (2, 'Appointments');

-- Insert vocabulary data for Unit 9
INSERT INTO Vocabulary (unit_id, word, translation) VALUES
    (29, '드디어', 'finally'),
    (29, '벌써', 'already'),
    (29, '지나다', 'to pass'),
    (29, '바로', 'right'),
    (29, '무척', 'very or extremely'),
    (29, '그래', 'yes'),
    (29, '너희', 'you'),
    (29, '말', 'word'),
    (29, '성함', 'name'),
    (29, '세상', 'world'),
    (29, '여러분', 'all of you; ladies and gentlemen'),
    (29, '연세', 'age (honorific)'),
    (29, '저희', 'we'),
    (29, '진지', 'meal or food (honorific)'),
    (29, '이틀', 'two days'),
    (29, '후', 'after'),
    (29, '급하다', 'to be urgent'),
    (29, '생기다', 'to come into being'),
    (29, '갑자기', 'suddenly or unexpectedly'),
    (29, '뵙다', 'to meet (honorific)'),
    (29, '섭섭하다', 'to be sad or disappointed'),
    (29, '나흘', 'four days'),
    (29, '마흔', 'forty'),
    (29, '서른', 'thirty'),
    (29, '쉰', 'fifty'),
    (29, '여든', 'eighty'),
    (29, '닷새', 'five days'),
    (29, '사흘', 'three days'),
    (29, '_세', 'age or years'),
    (29, '아흔', 'ninety'),
    (29, '열흘', 'ten days'),
    (29, '예순', 'sixty'),
    (29, '세다', 'to count'),
    (29, '일흔', 'seventy'),
    (29, '하루', 'one day');

    -- Insert data for Unit 10 - Requests or Favors
INSERT INTO Unit (level_id, name) VALUES (2, 'Requests or Favors');

-- Insert vocabulary data for Unit 10
INSERT INTO Vocabulary (unit_id, word, translation) VALUES
    (30, '부탁', 'request or favor'),
    (30, '설명하다', 'to explain'),
    (30, '빌려주다', 'to borrow'),
    (30, '들어주다', 'to do (a favor)'),
    (30, '결석하다', 'to be absent'),
    (30, '놓다', 'to place or put'),
    (30, '당기다', 'to pull'),
    (30, '벗다', 'to take off'),
    (30, '접다', 'to fold'),
    (30, '줄다', 'to decrease or be reduced'),
    (30, '펴다', 'to unfold or spread'),
    (30, '늘다', 'to increase or improve'),
    (30, '밀다', 'to push'),
    (30, '잡다', 'to grasp or catch'),
    (30, '저', 'excuse me'),
    (30, '이미', 'already'),
    (30, '퇴근하다', 'to leave one\'s office or get off from work'),
    (30, '서류', 'document'),
    (30, '전하다', 'to deliver or hand over'),
    (30, '부장', 'head of department or director'),
    (30, '아', 'ah'),
    (30, '음', 'um'),
    (30, '저기', 'excuse me'),
    (30, '어', 'uh'),
    (30, '자', 'okay');

    -- Insert data for Unit 11 - Transportation
INSERT INTO Unit (level_id, name) VALUES (2, 'Transportation');

-- Insert vocabulary data for Unit 11
INSERT INTO Vocabulary (unit_id, word, translation) VALUES
    (31, '이태원역', 'Itaewon station'),
    (31, '을지로입구역', 'Euljiro station'),
    (31, '홍대', 'Hongdae'),
    (31, '쪽', 'direction'),
    (31, '반대', 'opposite'),
    (31, '노선도', 'route map'),
    (31, '교통카드', 'transportation card'),
    (31, '광화문', 'Gwanghwamun'),
    (31, '노약자석', 'seats for the elderly'),
    (31, '단말기', 'card reader'),
    (31, '벨', 'bell'),
    (31, '스크린도어', 'screen door'),
    (31, '손잡이', 'door knob'),
    (31, '승강장', 'platform'),
    (31, '안전선', 'safety line'),
    (31, '여의도역', 'Yeoido station'),
    (31, '요금', 'rate or fee'),
    (31, '종로', 'Jongno'),
    (31, '줄', 'line'),
    (31, '깨다', 'to wake up'),
    (31, '내다', 'to pay'),
    (31, '누르다', 'to press or push'),
    (31, '대다', 'to put or apply'),
    (31, '서다', 'to stand'),
    (31, '열리다', 'to be opened'),
    (31, '기사', 'driver'),
    (31, '경복궁', 'Gyeongbokgung palace'),
    (31, '출되근', 'enter and leave one\'s office'),
    (31, '밀리다', 'to be backed up'),
    (31, '삼거리', 'three-way intersection'),
    (31, '좌회전하다', 'to make a left turn'),
    (31, '세우다', 'to stop'),
    (31, '광장 시장', 'Gwangjang market'),
    (31, '우회전', 'right turn'),
    (31, '유턴', 'u-turn'),
    (31, '좌회전', 'left turn'),
    (31, '주차 금지', 'no parking'),
    (31, '주차장', 'parking lot'),
    (31, '직진', 'straight ahead'),
    (31, '막히다', 'to be stuck'),
    (31, '주차하다', 'to park');

-- Insert data for Unit 12 - School Life
INSERT INTO Unit (level_id, name) VALUES (2, 'School Life');

-- Insert vocabulary data for Unit 12
INSERT INTO Vocabulary (unit_id, word, translation) VALUES
    (32, '자꾸', 'frequently'),
    (32, '연습하다', 'to practice'),
    (32, '사용하다', 'to use'),
    (32, '잊어버리다', 'to forget'),
    (32, '외우다', 'to memorize'),
    (32, '기억하다', 'to remember'),
    (32, '메모', 'memo'),
    (32, '끝내다', 'to end or finish'),
    (32, '버튼', 'button'),
    (32, '대답하다', 'to reply or answer'),
    (32, '마치다', 'to end or finish'),
    (32, '발표하다', 'to announce or make a presentation'),
    (32, '지각하다', 'to be late'),
    (32, '질문하다', 'to ask a question'),
    (32, '출석하다', 'to attend or be present'),
    (32, '신청하다', 'to apply'),
    (32, '직접', 'in person or directly'),
    (32, '신청서', 'application or registration form'),
    (32, '내다', 'to turn in'),
    (32, '홈페이지', 'homepage'),
    (32, '결과', 'result'),
    (32, '기간', 'time period'),
    (32, '등록금', 'registration fee'),
    (32, '교환', 'exchange'),
    (32, '등록', 'registration'),
    (32, '시간표', 'time schedule'),
    (32, '취소', 'cancellation'),
    (32, '휴학', 'temporary absence from school');

    -- Insert data for Unit 13 - Public Institutions
INSERT INTO Unit (level_id, name) VALUES (2, 'Public Institutions');

-- Insert vocabulary data for Unit 13
INSERT INTO Vocabulary (unit_id, word, translation) VALUES
    (33, '체크카드', 'debit card'),
    (33, '우선', 'first'),
    (33, '서명하다', 'to sign one\'s name'),
    (33, '잠시', 'a little while or moment'),
    (33, '통장', 'bank book'),
    (33, '비밀번호', 'password'),
    (33, '계좌 번호', 'account number'),
    (33, '공과금', 'utility bill'),
    (33, '도장', 'seal or stamp'),
    (33, '번호표', 'number ticket'),
    (33, '부부', 'husband and wife'),
    (33, '순서', 'order or sequence'),
    (33, '저금', 'savings or deposit'),
    (33, '현금 자동 인출기', 'ATM'),
    (33, '환전', 'exchange of money'),
    (33, '씻다', 'to wash or clean'),
    (33, '(돈을) 찾다', 'to withdraw (money)'),
    (33, '소포', 'package or parcel'),
    (33, '상자', 'box'),
    (33, '포장하다', 'to wrap'),
    (33, '저울', 'scale'),
    (33, '올려놓다', 'to place on top of something'),
    (33, '항공편', 'by airmail'),
    (33, '부치다', 'to send or ship'),
    (33, '배편', 'by ship'),
    (33, '국제 특급', 'express mail service'),
    (33, '길이', 'length'),
    (33, '높이', 'height'),
    (33, '무게', 'weight'),
    (33, '봉투', 'envelope'),
    (33, '우편번호', 'zip code'),
    (33, '우표', 'stamp'),
    (33, '크기', 'size'),
    (33, '택배', 'package'),
    (33, '낮다', 'to be low or short'),
    (33, '높다', 'to be high or tall');

    -- Insert data for Unit 14 - Telephone
INSERT INTO Unit (level_id, name) VALUES (2, 'Telephone');

-- Insert vocabulary data for Unit 14
INSERT INTO Vocabulary (unit_id, word, translation) VALUES
    (34, '이전', 'before'),
    (34, '고장 나다', 'to break down or be broken'),
    (34, '서비스 센터', 'service center'),
    (34, '고치다', 'to repair or fix'),
    (34, '검색하다', 'to search'),
    (34, '속도', 'speed'),
    (34, '동영상', 'video file'),
    (34, '위치', 'position'),
    (34, '계산하다', 'to calculate'),
    (34, '녹음하다', 'to record'),
    (34, '통화하다', 'to speak over the phone'),
    (34, '방금', 'just now'),
    (34, '캠핑장', 'camping site'),
    (34, '데려오다', 'to bring someone'),
    (34, '함께', 'with'),
    (34, '바비큐', 'barbecue'),
    (34, '농구공', 'basketball'),
    (34, '남기다', 'to leave'),
    (34, '지우다', 'to erase'),
    (34, '가까이', 'near or nearby'),
    (34, '멀리', 'far away'),
    (34, '답장', 'answer or reply'),
    (34, '싸우다', 'to fight'),
    (34, '확인하다', 'to confirm'),
    (34, '따로', 'separately');

    -- Insert data for Unit 15 - Reservations and Ordering
INSERT INTO Unit (level_id, name) VALUES (2, 'Reservations and Ordering');

-- Insert vocabulary data for Unit 15
INSERT INTO Vocabulary (unit_id, word, translation) VALUES
    (35, '팀장', 'manager'),
    (35, '중요하다', 'to be important'),
    (35, '서비스', 'service'),
    (35, '메뉴', 'menu'),
    (35, '선택', 'selection or choice'),
    (35, '남다', 'to remain'),
    (35, '공휴일', 'legal holiday'),
    (35, '마지막', 'last'),
    (35, '연락처', 'contact information'),
    (35, '연말', 'end of the year'),
    (35, '연휴', 'consecutive holidays'),
    (35, '예약석', 'reserved seats'),
    (35, '평일', 'weekday'),
    (35, '꺼내다', 'to take out or bring up'),
    (35, '비다', 'to be empty'),
    (35, '날짜', 'date'),
    (35, '말', 'the end'),
    (35, '연초', 'beginning of the year'),
    (35, '초', 'the beginning'),
    (35, '신용카드', 'credit card'),
    (35, '현금', 'cash'),
    (35, '결제하다', 'to make a payment'),
    (35, '지난번', 'last time'),
    (35, '이상', 'something wrong'),
    (35, '금방', 'right away'),
    (35, '과거', 'past'),
    (35, '외출', 'going out'),
    (35, '미래', 'future'),
    (35, '현재', 'present'),
    (35, '배달되다', 'to be delivered'),
    (35, '배달시키다', 'to order for delivery'),
    (35, '잊다', 'to forget'),
    (35, '늘', 'always'),
    (35, '아까', 'a short while ago'),
    (35, '앞으로', 'in the future');

    -- Insert data for Unit 16 - Health
INSERT INTO Unit (level_id, name) VALUES (2, 'Health');

-- Insert vocabulary data for Unit 16
INSERT INTO Vocabulary (unit_id, word, translation) VALUES
    (36, '열', 'fever'),
    (36, '나다', 'to have'),
    (36, '두통', 'headache'),
    (36, '심하다', 'to be severe'),
    (36, '붓다', 'to swell up / to pour'),
    (36, '기침', 'cough'),
    (36, '콧물', 'nose running or drippings'),
    (36, '감기', 'cold'),
    (36, '푹', 'completely or entirely'),
    (36, '냄새', 'smell'),
    (36, '배탈', 'stomach disorder'),
    (36, '사고', 'accident'),
    (36, '소화', 'digestion'),
    (36, '땀', 'sweat'),
    (36, '변비', 'constipation'),
    (36, '상처', 'injury or wound'),
    (36, '피', 'blood'),
    (36, '뜨겁다', 'to be hot'),
    (36, '목이 쉬다', 'to have a hoarse throat'),
    (36, '몸이 떨리다', 'to tremble in the body'),
    (36, '긋다', 'to draw a line'),
    (36, '낫다', 'to get well or recover / to be better'),
    (36, '잇다', 'to join or connect'),
    (36, '젓다', 'to stir'),
    (36, '짓다', 'to build'),
    (36, '약사', 'pharmacist'),
    (36, '다치다', 'to get hurt or injured'),
    (36, '소독약', 'antiseptic'),
    (36, '바르다', 'to apply'),
    (36, '치료', 'treatment'),
    (36, '치료비', 'medical fee'),
    (36, '건강 보험', 'health insurance'),
    (36, '감기약', 'cold medicine'),
    (36, '기침약', 'cough medicine'),
    (36, '두통약', 'headache medicine'),
    (36, '몸무게', 'person\'s weight'),
    (36, '변비약', 'constipation medicine'),
    (36, '선풍기', 'electric fan'),
    (36, '소화제', 'digestion medicine'),
    (36, '이상', 'the above'),
    (36, '점수', 'score'),
    (36, '한약', 'herbal medicine'),
    (36, '줄이다', 'to reduce');

    -- Insert data for Unit 17 - Hobbies
INSERT INTO Unit (level_id, name) VALUES (2, 'Hobbies');

-- Insert vocabulary data for Unit 17
INSERT INTO Vocabulary (unit_id, word, translation) VALUES
    (37, '관심', 'interest'),
    (37, '아무리', 'no matter how'),
    (37, '즐기다', 'to enjoy'),
    (37, '무료', 'free'),
    (37, '가족 영화', 'family movie'),
    (37, '공상 과학 영화', 'science fiction movie'),
    (37, '공포 영화', 'horror movie'),
    (37, '동물', 'animal'),
    (37, '록', 'rock'),
    (37, '만화 영화', 'animated film'),
    (37, '멜로 영화', 'melodramatic movie'),
    (37, '세계', 'world'),
    (37, '전쟁 영화', 'war movie'),
    (37, '달리다', 'to run'),
    (37, '피아노', 'piano'),
    (37, '조깅하다', 'to go jogging'),
    (37, '치다', 'to play (instrument)'),
    (37, '낚시하다', 'to fish'),
    (37, '기타', 'guitar'),
    (37, '동전', 'copper coin'),
    (37, '만화책', 'comic book'),
    (37, '볼링', 'bowling'),
    (37, '연극', 'play'),
    (37, '오토바이', 'motorcycle'),
    (37, '매다', 'to tie up'),
    (37, '키우다', 'to bring up or raise'),
    (37, '당구', 'billiards'),
    (37, '드럼', 'drum'),
    (37, '물고기', 'fish'),
    (37, '새', 'bird'),
    (37, '엽서', 'postcard'),
    (37, '팩스', 'fax'),
    (37, '올리다', 'to raise or lift up');