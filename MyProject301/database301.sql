create table CategoryNews_HE150490_SE1724(
	id int IDENTITY(1,1) primary key,
	[name] nvarchar(200) not null,
	country varchar(10) not null
)
ALTER TABLE CategoryNews_HE150490_SE1724
  ADD codeConcept nchar(10);

create table Authur_HE150490_SE1724(
	idAuthur int IDENTITY(1,1) primary key,
	[authurName] nvarchar(20) not null
)

create table Post_HE150490_SE1724(
	idPost int IDENTITY(1,1) primary key,
	title nvarchar(max) not null,
	datePost datetime not null,
	concept ntext not null,
	[description] nvarchar(max) not null,
	urlImg varchar(200),
	idAuthur int Foreign Key  REFERENCES Authur_HE150490_SE1724(idAuthur),
	idConcept int Foreign Key  REFERENCES CategoryNews_HE150490_SE1724(id)
)

create table Images_HE150490_SE1724(
	idImg int IDENTITY(1,1) primary key,
	[name] varchar(max),
	postId int Foreign Key  REFERENCES Post_HE150490_SE1724(idPost)
)

create table Videos_HE150490_SE1724(
	idVideo int IDENTITY(1,1) primary key,
	[name] varchar(max),
	postIdVideo int Foreign Key  REFERENCES Post_HE150490_SE1724(idPost)
)

insert into Authur_HE150490_SE1724 values('Mouse');
insert into Authur_HE150490_SE1724 values('Buffalo');
insert into Authur_HE150490_SE1724 values('Tiger');
insert into Authur_HE150490_SE1724 values('Cat');
insert into Authur_HE150490_SE1724 values('Dragon');
insert into Authur_HE150490_SE1724 values('Snake');
insert into Authur_HE150490_SE1724 values('Horse');
insert into Authur_HE150490_SE1724 values('Goat');
insert into Authur_HE150490_SE1724 values('Monkey');
insert into Authur_HE150490_SE1724 values('Cock');
insert into Authur_HE150490_SE1724 values('Dog');
insert into Authur_HE150490_SE1724 values('Pig');


insert into CategoryNews_HE150490_SE1724 values(N'Đội tuyển quốc gia','VN','ĐTQG');
delete from CategoryNews_HE150490_SE1724 where id between 1 and 2;
insert into CategoryNews_HE150490_SE1724 values(N'V-League','VN','VL');
insert into CategoryNews_HE150490_SE1724 values(N'Hạng nhất','VN','HN');
insert into CategoryNews_HE150490_SE1724 values(N'Bóng đá trẻ','VN','BĐT');
insert into CategoryNews_HE150490_SE1724 values(N'Chuyển nhượng Việt Nam','VN','CNVN');
insert into CategoryNews_HE150490_SE1724 values(N'Chuyển nhượng quốc tế','QT','CNQT');
insert into CategoryNews_HE150490_SE1724 values(N'Premier League','QT','PL');
insert into CategoryNews_HE150490_SE1724 values(N'La Liga','QT','LL');
insert into CategoryNews_HE150490_SE1724 values(N'Serie A','QT','SA');
insert into CategoryNews_HE150490_SE1724 values(N'Ligue 1','QT','Ligue 1');
insert into CategoryNews_HE150490_SE1724 values(N'Bundesliga','QT','BUN');
insert into CategoryNews_HE150490_SE1724 values(N'UEFA Champions League','QT','C1');
insert into CategoryNews_HE150490_SE1724 values(N'UEFA Europa League','QT','C2');
insert into CategoryNews_HE150490_SE1724 values(N'Copa America','QT','CA');
insert into CategoryNews_HE150490_SE1724 values(N'AFCON','QT','CAN');


insert into Post_HE150490_SE1724 values(N'Rio Ferdinand kêu gọi cầu thủ Man Utd dồn bóng cho "át chủ bài"','2022-02-15 18:00:00.000' ,
N'Cựu cầu thủ của Real Madrid và Juventus đã chấm dứt cơn hạn bàn thắng kéo dài 7 trận bằng bàn mở tỷ số trong chiến thắng 2-0 trên sân nhà của Man Utd trước Brighton and Hove Albion. Cristiano Ronaldo đưa đội bóng của Ralf Rangnick vượt lên dẫn trước bằng một cú sút hiểm hóc từ rìa vòng cấm. Trong những giây cuối cùng, Bruno Fernandes đã ấn định chiến thắng cho Quỷ đỏ bằng pha dứt điểm lạnh lùng trong tư thế đối mặt.
Sau trận đấu, Rio Ferdinand cho rằng những lo lắng vẫn còn đó cho Man Utd. "Đó là vấn đề, sự thiếu nhất quán. Thật sự lo lắng về những gì Man Utd sẽ diễn ra, những gì đội sẽ làm trong hiệp một, so với hiệp hai."
Tuy nhiên, Ferdinand tin rằng Man Utd sẽ luôn có cơ hội giành chiến thắng, nếu họ có thể cung cấp nguồn bóng cho Ronaldo.
“Người đàn ông này đây [Ronaldo] ... Trong giải đấu này, bạn không thể đặt cược cho việc chống lại rằng anh ta sẽ là át chủ bài," Ferdinand nói thêm.
"Anh ấy là vua của giải đấu này về số bàn thắng và về việc ra quyết định ở các trận đấu lớn. Với anh ấy trong đội, trong giải đấu này, bạn luôn có cơ hội."
Với bàn thắng vào lưới Brighton, Ronaldo đã nâng tổng số pha lập công có được ở Premier League lên con số 9. Trong khi đó, người đồng đội của anh, Bruno Fernandes cũng chỉ kém hơn 1 bàn.',
N'Huyền thoại của Manchester United, Rio Ferdinand tin rằng một khi Quỷ đỏ dồn bóng được cho Cristiano Ronaldo, họ sẽ có cơ hội chiến thắng.',
'img1.png',1, 3);

insert into Post_HE150490_SE1724 values(N'Cách Courtois bắt bài sút penalty của Messi', '2022-02-14 18:00:00.000', 
N'Chạm trán đối thủ đầy duyên nợ Real Madrid, tiền đạo Lionel Messi được kỳ vọng sẽ tỏa sáng để giúp Paris Saint-Germain chiếm lợi thế ngay trận lượt đi vòng 1/8 Champions League.

Và siêu sao người Argentina đã thực sự đứng trước cơ hội để làm điều đó, khi trọng tài trao cho PSG quả penalty vào khoảng thời gian đầu hiệp hai sau tình huống Kylian Mbappe bị phạm lỗi.

Trên chấm 11 mét, El Pulga vẫn thực hiện những bước chạy đà quen thuộc, nhưng cú dứt điểm của anh lại không thể vượt qua Thibaut Courtois.  Theo thống kê từ Goal, hiện tại Messi đã trở thành ngôi sao bỏ lỡ nhiều quả phạt đền nhất lịch sử Champions League, sánh ngang với Thierry Henry. Cụ thể, sau 23 lần đứng trước chấm 11 mét, El Pulga có đến 5 lần thực hiện không thành công. Bên cạnh đó, pha sút penalty vừa rồi cũng đưa Messi vượt qua Ronaldo về số lần đá phạt đền nhiều nhất.

Phát biểu sau tình huống cản phá cú sút từ Messi, thủ thành Thibaut Courtois cho biết:

"Rõ ràng là anh ấy sút rất nhiều quả phạt đền, vì vậy thật khó để đoán đúng. Anh ấy bỏ lỡ một vài pha ở bên này, vì vậy tôi nghĩ khả năng cao là anh ấy sẽ sút bên trái. Nhưng cũng có trường hợp ở giữa, anh ấy đã ghi một bàn như thế vào lưới Leipzig.

Tôi chỉ nói "được rồi, chúng ta sẽ bay sang bên trái", và tôi đã cứu thua thành công."', 
N'Thủ thành người Bỉ đã có những chia sẻ sau khi cản phá thành công cú sút 11 mét từ chủ nhân 7 QBV.', '', 1, 4);

insert into Post_HE150490_SE1724 values(N'3 cầu thủ Man Utd xuất sắc nhất trận thắng Brighton', '2022-02-13 18:00:00.000', 
N'David de Gea

Khác với những trận đấu gần đây, Man Utd đã chơi khá tệ trong hiệp một. Brighton đã làm rất tốt để gây ra nhiều vấn đề cho Quỷ đỏ tại Nhà hát của những giấc mơ. Tiền vệ Jakub Moder của Brighton vẫn chưa ghi bàn ở Premier League và anh đã làm được gần như mọi thứ trước Man Utd, trừ việc ghi bàn thắng vào lưới Old Trafford rạng sáng nay. Ở giai đoạn đầu trận, tuyển thủ Ba Lan buộc De Gea phải cản phá pha dứt điểm ở góc gần.

Cú đánh đầu sau đó của Moder thật sự hiểm hóc, nhưng thủ môn người Tây Ban Nha đã xuất thần từ chối bàn thắng của cầu thủ 22 tuổi. Rõ ràng nếu đội khách ghi bàn dẫn trước, áp lực sẽ đè nặng lên các học trò của Ralf Rangnick và không dễ để Quỷ đỏ có thể giành trọn vẹn 3 điểm. 

Bruno Fernandes

Cũng giống như trận gặp Middlesbrough, Fernandes đã bỏ lỡ một cơ hội tuyệt vời. Nhưng rồi, số 18 của Quỷ đỏ vẫn có được bàn thắng quyết định vào lưới đội bóng của Graham Potter. 

Fernandes đã có màn trình diễn nổi bật, với những bước chạy không mệt mỏi và cuối cùng đã được đền đáp bằng bàn thắng. Nhận đường chuyền của Paul Pogba, Fernandes đã thể hiện sự điềm tĩnh tuyệt vời để hạ gục Robert Sanchez, mang về 3 điểm quý giá cho Quỷ đỏ.

Nhạc trưởng người Bồ Đào Nha kết thúc trận đấu với 78 lần chạm bóng và năm cơ hội được tạo ra - một thống kê ấn tượng.', 
N'Man Utd vừa có thắng lợi 2-0 cần thiết trước Brighton. Dưới đây là 3 cầu thủ Quỷ đỏ có màn trình diễn ấn tượng nhất.', NULL, 1, 5);

insert into Post_HE150490_SE1724 values(N'HLV Brighton thừa nhận Man Utd có một cầu thủ đẳng cấp thế giới', '2022-02-12 18:00:00.000', 
N'Sau tất cả, Manchester United cũng đã phá dớp được chuỗi trận hòa với thắng lợi trước Brighton vào đêm qua. Đáng chú ý, đội khách đã phải chơi thiếu người từ phút thứ 54, sau khi trọng tài kiểm tra VAR và thẳng tay đuổi Lewis Dunk khỏi sân do phạm lỗi với Anthony Elanga.

Phát biểu sau trận đấu, thuyền trưởng của Brighton - HLV Graham Potter cho rằng cậu học trò của mình chỉ đáng nhận thẻ vàng. Daily Mail dẫn lời chiến lược gia người Anh:

"Đó là những gì tôi đã thấy, một tấm thẻ vàng trực tiếp. Tôi muốn xem một vài số liệu thống kê, bởi vì ngay sau khi trọng tài đi đến màn hình, mọi thứ sẽ chỉ diễn ra theo một chiều." Khi được hỏi về hành động của các cầu thủ Man United (gây áp lực cho trọng tài), Potter nói thêm:

"Tôi không trách họ. Tôi không chỉ trích, thế thôi. Bạn lường trước được phản ứng đó - họ phải cố gắng hết sức vì đội của mình."

"Sau đó, bạn cần trọng tài và VAR để thực hiện các quyết định một cách độc lập khi phải đối mặt với áp lực bên ngoài, điều này không dễ dàng."

"Chúng tôi là đội chơi tốt hơn trong hiệp một. Nhưng chúng tôi bắt đầu hiệp hai không tốt và đã bị trừng phạt bởi một pha dứt điểm đẳng cấp thế giới của một cầu thủ đẳng cấp thế giới, và sau đó là một tấm thẻ đỏ gây tranh cãi."', 
N'Thuyền trưởng của Brighton có những chia sẻ đáng chú ý xoay quanh thất bại trên sân Old Trafford đêm qua.' , NULL, 1, 6);

insert into Post_HE150490_SE1724 values(N'Rangnick: "Cậu ấy thi đấu tràn đầy năng lượng"', '2022-02-11 18:00:00.000', 
N'Sau chuỗi trận hòa thất vọng, Man United đã nhen nhóm lại hy vọng nơi các CĐV khi hạ gục Brighton với tỷ số 2-0. Cristiano Ronaldo và Bruno Fernandes lần lượt lập công, đem về 3 điểm trọn vẹn cho nửa đỏ thành Manchester. 

Siêu sao Ronaldo là một trong những cầu thủ thi đấu nổi bật nhất ở chiến thắng của Man United. Chia sẻ về màn trình diễn của cậu học trò, HLV Ralf Rangnick cho hay: "Một bàn thắng quan trọng. Cậu ấy không chỉ ghi bàn mà còn ghi bàn thắng tuyệt đẹp.".

"Điều đó rất quan trọng với tất cả chúng tôi. Màn trình diễn tốt nhất của Ronaldo kể từ khi tôi đặt chân đến đây. Nhìn chung, Ronaldo đã có trận đấu tốt. Cậu ấy thi đấu tràn đầy năng lượng và luôn cố gắng giúp đỡ các đồng đội khác," chiến lược gia người Đức bình luận. Bên cạnh Ronaldo, David de Gea là điểm sáng thứ 2 của Man United trước Brighton. Thủ thành người Tây Ban Nha có ít nhất 2 tình huống cứu thua xuất sắc ở hiệp 1. Phong độ đỉnh cao nơi De Gea đem đến sự vững chãi cho khung thành Man United.

"De Gea có tình huống cứu thua xuất sắc trước Jakub Moder. Man United đang sở hữu một trong những thủ môn xuất sắc nhất thế giới," Rangnick bình luận.

Với thắng lợi trước Brighton, Man United đã vượt qua West Ham United, tạm đứng thứ 4 trên BXH. Đối thủ tiếp theo của thầy trò Rangnick là Leeds United. ', 
N'Chiến lược gia người Đức dành những lời ngợi khen cho cậu học trò sau chiến thắng của Man United trước Brighton.' , NULL, 1, 7);

insert into Post_HE150490_SE1724 values(N'Sự kết hợp hào nhoáng của PSG làm nên điều khác biệt', '2022-02-11 21:00:00.000', 
N'Khi tất cả đều đã nghĩ về viễn cảnh một trận hòa không bàn thắng, vào đúng phút bù giờ thứ 4, Neymar tạo ra sự khác biệt bằng cú giật gót tinh tế để Kylian Mbappe thoát xuống bên cánh trái và thực hiện pha đi bóng lắt léo vượt qua bộ đôi Lucas Vazquez và Eder Militao trong vòng cấm, trước khi tung ra cú dứt điểm bằng chân phải làm tung lưới Thibaut Courtois.

Thủ môn Real Madrid dù đã thi đấu xuất sắc, thậm chí còn cản phá cú sút penalty của Lionel Messi ngay đầu hiệp hai, nhưng ở tình huống đối diện Mbappe, anh chẳng có cơ hội nào để đẩy bóng ra ngoài. Màn trình diễn sáng chói từ Mbappe giúp PSG chiếm lợi thế trước trận đấu lượt về tại Bernabeu, nhưng đồng thời ngôi sao người Pháp cũng đã quảng bá bản thân một lần nữa trước CLB được xem như điểm đến tiếp theo của anh.

Chỉ trong chớp mắt, Mbappe đã thể hiện hết những phẩm chất sáng giá nhất. Chính khả năng chọn vị trí kết hợp cùng tốc độ và kỹ thuật rê bóng ấn tượng mà cầu thủ sinh năm 1998 tạo ra khiến Courtois hoàn toàn bất lực.

Dù đây có thể là mùa giải cuối cùng Mbappe khoác áo PSG, nhưng ngôi sao người Pháp vẫn đang nỗ lực hết mình để giúp Gã khổng lồ Ligue 1 cạnh tranh danh hiệu.  Cựu tài năng Monaco không chỉ xuất sắc trên khía cạnh chuyên môn mà còn thể hiện sự chuyên nghiệp đáng ngưỡng mộ.

"Tôi luôn sẵn sàng thi đấu, để giúp đỡ đội bóng của mình. Mọi người nói về tôi vì trận đấu này, đó là điều bình thường, nhưng tôi tập trung, tôi hạnh phúc khi trở thành một cầu thủ của Paris, và tôi cống hiến 100% cho câu lạc bộ," Mbappe chia sẻ sau trận.

Tuy nhiên bên cạnh Mbappe, cá nhân Neymar cũng xứng đáng nhận về những lời khen ngợi ở cuộc đụng độ vừa qua.', 
N'Không chỉ Kylian Mbappe, một ngôi sao khác của đại diện nước Pháp cũng chơi ấn tượng khi vào sân từ băng ghế dự bị.' , NULL, 1, 8);

insert into Post_HE150490_SE1724 values(N'Giúp PSG chiến thắng, Mbappe nói thẳng suy nghĩ về sức mạnh của Real Madrid', '2022-02-11 10:00:00.000', 
N'Hành quân đến sân Parc des Princes chạm trán Paris Saint-Germain, Real Madrid đã có 1 màn trình diễn lép vế khi chỉ kiểm soát được 42% thời lượng bóng lăn, tung ra 3 cú sút nhưng không 1 lần đưa bóng đi trúng đích. 

Trong khi đó, đại diện Ligue 1 đã liên tiếp có những pha tấn công dồn dập, tung 21 cú dứt điểm, 8 lần đưa bóng trúng đích và thu về chiến thắng 1-0 nhờ pha lập công duy nhất của Kylian Mbappe. 

  
Nhận xét sau trận đấu, Mbappe có chia sẻ trên kênh RMC Sport được trang Get French Football News dẫn lời: "Tôi thật sự hạnh phúc, đây là màn trình diễn tốt của toàn đội PSG. Chúng tôi hài lòng với kết quả giành được nhưng nên nhớ, đây mới chỉ là trận lượt đi. ', 
N'Real Madrid đã có màn trình diễn không như kỳ vọng khi nhận thất bại 0-1 trước Paris Saint-Germain tại Parc des Princes.' , NULL, 1, 9);

insert into Post_HE150490_SE1724 values(N'Đội hình Liverpool đấu Inter: Họng pháo Salah', '2022-02-15 21:00:00.000', 
N'Thủ môn: Alisson Becker

Ngôi sao người Brazil là chốt chặn số 1 trong khung gỗ Liverpool tại sân chơi Premier League. Alisson có phong độ cao mùa giải năm nay với hàng loạt pha cứu thua xuất thần. Đại chiến với Inter Milan là bài test khó khăn dành cho cựu sao AS Roma.

Hậu vệ trái: Andrew Robertson

Tuyển thủ quốc gia Scotland là hậu vệ trái xuất sắc bậc nhất nước Anh thời điểm hiện tại. HLV Simone Inzaghi của Inter Milan đánh giá cao tài năng của Robertson. Khả năng công thủ toàn diện là điểm mạnh của Robertson.

Trung vệ: Joel Matip

Matip là đối tác ăn ý nhất với Virgil van Dijk. Ngôi sao người Cameroon sở hữu chiều cao lý tưởng, khả năng phán đoán tình huống, bọc lót tốt. Matip sẽ chiếm một suất đá chính nếu anh không dính chấn thương bất ngờ.

Trung vệ: Virgil van Dijk Van Dijk là trung vệ đẳng cấp nhất mà Liverpool đang sở hữu. Ngôi sao người Hà Lan sở hữu chiều cao lý tưởng, khả năng phán đoán, chơi chân ấn tượng. Bên cạnh yếu tố chuyên môn, Van Dijk còn đóng vai trò thủ lĩnh nơi hệ thống phòng ngự.

Hậu vệ phải: Trent Alexander-Arnold.', 
N'The Kop sẽ có cuộc chạm trán nảy lửa với nhà ĐKVĐ Serie A ở vòng 16 đội Champions League.' , NULL, 1, 10);

insert into Post_HE150490_SE1724 values(N'3 quyết định sai lầm của Rangnick trong trận gặp Brighton', '2022-02-15 10:00:00.000', 
N'1. Bị động trong hiệp 1

Manchester United nhập cuộc có phần bị động trong hiệp 1 trận gặp Brighton vừa qua. Dù được thi đấu trên sân nhà nhưng Quỷ Đỏ vẫn để cho đối thủ kiểm soát bóng nhiều hơn (59% so với 41%) cũng như dứt điểm nhiều hơn (8 so với 3). Thủ thànhDavid De Gea đã chơi xuất sắc và có ít nhất 3 tình huống cứu thua cho đội nhà. Man Utd có vẻ vẫn bị đè nặng về tâm lý sau hàng loạt kết quả không như ý vừa qua. Họ thi đấu thiếu nhịp độ và không tạo ra nhiều cơ hội ngon ăn.

2. Tin dùng Fred

Vị thuyền trưởng người Đức đã tin tưởng Fred và cho anh đá chính ở trận này. Tuy nhiên trái với kỳ vọng, anh đã không để lại dấu ấn nào trong suốt 73 phút thi đấu. Tác giả Dan Marsh viết: "Sức ép ấn tượng, gắn kết của Brighton chỉ khiến những nỗ lực của Fred ngày càng trở nên vô dụng. Sự kết hợp của Fred và Scott McTominay lại một lần nữa cho thấy sự kém hiệu quả.', 
N'Tác giả Dan Marsh của trang Daily Star đánh giá rằng HLV Ralf Rangnick có những quyết định chưa hợp lý trong trận gặp Brighton.' , NULL, 1, 11);

insert into Post_HE150490_SE1724 values(N'Khi Mbappe tiếp tục làm lu mờ Messi', '2022-02-14 22:00:00.000', 
N'Ngày 17/2/2021, trên sân Camp Nou của Barca, Kylian Mbappe nhấn chìm đội chủ nhà bằng cú hat-trick, còn Lionel Messi đứng nhìn bất lực.

Một năm sau, Messi và Mbappe đứng chung chiến tuyến. Lần này, trước Real Madrid chơi thứ bóng đá phòng ngự, kịch bản cũ tái hiện. Messi đá hỏng phạt đền, nhưng may cho PSG khi họ vẫn còn Mbappe, tác giả của bàn thắng duy nhất trận đấu.

Mbappe là khác biệt giữa PSG và Real

Trước khi cuộc chạm trán giữa PSG và Real Madrid thuộc vòng 16 đội ở Champions League diễn ra, nhà báo Adam White của Guardian có bài phân tích với tiêu đề "PSG có quá nhiều vấn đề lớn, nhưng mọi thứ đều khả thi với Mbappe". Thoạt nhìn, tất cả đều cảm tưởng PSG đang rất mạnh. Thế nhưng, sự thật lại không phải như vậy.

Thậm chí, phong độ của Messi cũng bị đem ra mổ xẻ. Ngôi sao người Argentina bị chỉ trích vì ghi quá ít bàn ở Ligue 1. Hơn nữa, cựu sao Barca thường gặp nhiều khó khăn mỗi lần đối mặt với những đội bóng có hàng thủ chơi thấp và tạo ra nhiều khối trước khung thành. PSG bước vào trận gặp Real Madrid rạng sáng 16/2 (giờ Hà Nội) với nhiều sự bất ổn. Giữa những vấn đề chưa được giải quyết, đại diện thủ đô Paris lại tìm thấy ánh sáng từ Kylian Mbappe, người nhiều khả năng sẽ rời đi trong hè 2022.

Mbappe thi đấu ngày càng hay. Thứ bóng đá của anh làm gợi nhớ đến Ronaldo xứ Brazil. Ở Parc des Princes, tình huống chân sút người Pháp solo qua 2 cầu thủ Real Madrid, rồi dứt điểm "xâu kim" thủ thành Thibaut Courtois xứng đáng trở thành một trong những pha làm bàn ấn tượng nhất vòng knock-out Champions League.

Champions League là đấu trường cấp CLB danh giá nhất hành tinh. Có lẽ chỉ ở sân chơi này, người ta mới có thể phán xét giá trị một cầu thủ. Khi PSG gặp Real Madrid, Messi mới nhận được sự chú ý nhiều nhất. Anh đã ghi 5 bàn tại vòng bảng.

Nhưng đêm ở Paris thuộc về Mbappe, người liên tục xé lưới Barca, Bayern, Man City từ năm 2021. Real Madrid làm mọi cách có thể để ngăn chặn tiền đạo người Pháp. Sau cùng, họ vẫn nhận bàn thua.

Mbappe trở thành một trong những khác biệt giữa PSG và Real. Tốc độ của chân sút người Pháp làm khổ hàng thủ "Los Blancos", đặc biệt trở thành "cơn ác mộng" với hậu vệ phải Dani Carvajal. Dù khá nhanh nhẹn, ngôi sao người Tây Ban Nha của Real vẫn bất lực trong việc ngăn chặn Mbappe, mũi nhọn có 4 tình huống rê dắt thành công và tung ra 7 pha dứt điểm. Thống kê này chỉ ra Real không thể vô hiệu hóa hoàn toàn Mbappe.

Tỷ số 1-0 chưa phải kết quả đầy mỹ mãn cho PSG. Thầy trò Mauricio Pochettino vẫn còn trận lượt về tại Santiago Bernabeu. Song, chừng nào Mbappe còn khỏe mạnh, đội bóng thủ đô nước Pháp sẽ luôn được đánh giá cao hơn Real Madrid.

Qua cách Mbappe khuấy đảo 2 biên của "Los Blancos", người ta khó tìm thấy những hy vọng trong việc Real sẽ tìm ra cách để phong tỏa chân sút người Pháp. Carvajal hay Lucas Vazquez đều có những khoảnh khắc bị Mbappe đánh bại. Vậy ai đủ sức khiến cựu sao AS Monaco tắt tiếng?

  
Mbappe, với thứ bóng đá tuyệt vời tại Parc des Princes, chứng minh cho tất cả thấy anh xứng đáng kế thừa Messi và Cristiano Ronaldo, để trở thành cầu thủ hay nhất thế giới trong thời gian tới. Mùa này, mũi nhọn 23 tuổi cũng luôn là vị cứu tinh của PSG. Sau 32 trận mùa này, anh ghi 22 bàn và có 18 đường kiến tạo.

Có Mbappe, hàng công PSG thi đấu tốc độ và lợi hại hơn. Không có gì đáng ngạc nhiên khi thất bại của đại diện thủ đô Paris trước Nice ở Coupe de France (Cúp Liên đoàn Pháp) vào tháng 1 đến khi đội hình PSG vắng số 7 (Mbappe - PV).', 
N'Rạng sáng 16/2 (giờ Hà Nội), Kylian Mbappe đã giúp PSG đánh bại Real Madrid khi ghi bàn ở phút 90+4, trong khi đó Lionel Messi đá hỏng phạt đền.' , NULL, 1, 12);

insert into Post_HE150490_SE1724 values(N'Rangnick bực bội, đưa ra chỉ thị cho sao M.U vào giờ nghỉ', '2022-02-14 10:00:00.000', 
N'Dù đã giành thắng lợi 2-0 trước Brighton để tiếp tục thắp lên hy vọng về việc cạnh tranh một tấm vé vào top 4. Tuy nhiên Man Utd vẫn vấp phải nhiều chỉ trích, đặc biệt là ở hiệp một khi họ thi đấu bế tắc, không tạo ra bất kỳ cơ hội nguy hiểm nào về phía khung thành đối thủ.

Theo nguồn tin từ Mirror, HLV tạm quyền Ralf Rangnick tỏ ra khá bực bội trước màn trình diễn của cả đội. Vì vậy, trong khoảng thời gian nghỉ giữa hiệp, ông đã đưa ra một số điều chỉnh để giúp họ cải thiện tình hình. Ngay sau trận, thủ thành David de Gea cũng tiết lộ chỉ thị của Rangnick. "Thông điệp trong hiệp một là chúng tôi đang chơi trên sân nhà và chúng tôi cần phải tạo nên áp lực ở cường độ cao sau giờ nghỉ. Và chúng tôi đã kiểm soát trận đấu hoàn toàn sau khi đối phương nhận tấm thẻ đỏ."

Bên cạnh đó, De Gea cũng cho thấy rõ quyết tâm của Man Utd trong cuộc đua tại Premier League.

"Chúng tôi nên chiến đấu vì nhiều thứ hơn là vị trí top 4, nhưng đó là thực tế. 

Có nhiều đội cạnh tranh cho cùng một vị trí và với chất lượng mà chúng tôi có, chúng tôi sẽ giành được rất nhiều điểm."', 
N'Chiến lược gia người Đức không hài lòng về màn trình diễn của Quỷ đỏ trong hiệp một.' , NULL, 2, 13);

insert into Post_HE150490_SE1724 values(N'Chấm điểm Man United trận Brighton: Hai điểm 8 ấn tượng', '2022-02-13 22:00:00.000', 
N'Thủ thành người Tây Ban Nha sở hữu 2 tình huống cứu thua ấn tượng ở 45 phút thi đấu đầu tiên. Phong độ xuất thần, ổn định nơi De Gea trở thành điểm tựa lớn cho tham vọng lọt Top 4 Premier League của Man United giai đoạn còn lại của mùa giải. 

Diogo Dalot - 6 điểm

Hậu vệ cánh người Bồ Đào Nha có trận đấu tròn vai. Dalot nhỉnh hơn Aaron Wan-Bissaka ở mặt trận tấn công. Trong bối cảnh Man United bước vào giai đoạn thi đấu cam go sắp tới, Dalot hứa hẹn có thêm đất diễn dưới triều đại Ralf Rangnick.

Victor Lindelof - 5 điểm

Ngôi sao người Thụy Điển đá chính ngay từ đầu trong bối cảnh Raphael Varane vắng mặt bởi ốm. Đáng tiếc Lindelof đã không có màn trình diễn đủ tốt. Cựu sao Benfica tỏ ra hời hợt trong các tình huống kèm người, tranh chấp trên không.

Harry Maguire - 5 điểm

Maguire có trận đấu không quá ấn tượng. Tuyển thủ Tam Sư cần nhanh chóng cải thiện phong độ nếu không muốn bị mất một suất đá chính. 

Luke Shaw - 6 điểm

Shaw phòng ngự không chắc chắn. CĐV la ló khi Shaw phạm lỗi thô bạo với Tariq Lamptey. Tương tự như Maguire, hậu vệ 26 tuổi sa sút phong độ kể từ khi trở về từ VCK EURO 2020 mùa hè năm ngoái.

Scott McTominay - 6 điểm

McTominay có cuộc chiến tay đôi giữa sân với Yves Bissouma. Tiền vệ người Scotland là tác giả pha kiến tạo cho bàn thắng mở tỷ số của Cristiano Ronaldo. Tinh thần thi đấu máu lửa là điểm mạnh nơi McTominay.

Fred - 4 điểm

Tiền vệ người Brazil có màn tái xuất nghèo nàn. Fred đá chính ngay từ đầu sau khi bình phục thể lực, đồng thời đẩy Paul Pogba lên băng ghế dự bị. Đáng tiếc, Fred không có màn thể hiện đủ tốt. Phút 73, Pogba vào sân thay Fred.

Bruno Fernandes - 7 điểm Ngôi sao người Bồ Đào Nha thi đấu xông xáo, nhiệt huyết. Fernandes là tác giả bàn thắng ấn định tỷ số 2-0 ở quãng thời gian bù giờ của hiệp 2. 

Anthony Elanga - 6 điểm

Pha khống chế và đi bóng của Elanga khiến Lewis Dunk phạm lỗi. Sau khi tham khảo VAR, trọng tài chính quyết định truất quyền thi đấu của Lewis Dunk. Một trận đấu hay của Elanga.

Jadon Sancho - 7 điểm', 
N'Sau chuỗi trận hòa thất vọng, dàn sao Ralf Rangnick đã hưởng trọn niềm vui chiến thắng trước Brighton. Một màn trình diễn tốt của nhiều cá nhân.' , NULL, 2, 14);

insert into Post_HE150490_SE1724 values(N'Ronaldo lên tiếng sau khi giải cơn khát bàn thắng', '2022-02-13 10:00:00.000', 
N'Sau thời gian tịt ngòi và gánh không ít áp lực từ dư luận, Cristiano Ronaldo đã ghi bàn trong trận gặp Brighton vừa qua. Siêu sao người Bồ Đào Nha có pha đi bóng trước vòng vây của các hậu vệ đối phương trước khi tung cú sút xé lưới thủ thành Robert Sanchez.

Đây là bàn thắng mang nhiều ý nghĩa với cá nhân CR7 khi anh đã trải qua 6 trận không thể ghi bàn - con số dài nhất trong sự nghiệp kể từ 2009. Bên cạnh đó, pha làm bàn cũng mở ra chiến thắng 2-0 quý giá với Manchester United trong thời kỳ họ không có được phong độ tốt. Khi trận đấu kết thúc, Ronaldo đã đăng tải một dòng trạng thái trên Twitter: "Trở lại đường đua! Không ai bỏ cuộc cả và chỉ có một cách để trở lại đúng hướng: làm việc chăm chỉ, phối hợp cùng các đồng đội và thực hiện tất cả thật nghiêm túc. Mọi thứ khác chỉ là tiếng ồn ào. Hãy bắt đầu thôi Man Utd!"

Ronaldo lấy lại cảm giác ghi bàn trong thời điểm mà Man Utd đang căng mình ở 2 cuộc đua là tranh suất vào top 4 và chinh phục Champions League. Vào cuối tuần này, Quỷ Đỏ sẽ có chuyến làm khách đến sân của Leeds United - đội bóng họ từng đánh bại 5-0 ở trận khai màn Ngoại hạng Anh 2021/22.', 
N'Cristiano Ronaldo đã đóng góp 1 bàn trong chiến thắng của Manchester United trước Brighton trong khuôn khổ Ngoại hạng Anh.' , NULL, 2, 15);

insert into Post_HE150490_SE1724 values(N'5 điểm nhấn Man Utd 2-0 Brighton: Đẳng cấp lên tiếng', '2022-02-13 10:00:00.000', 
N'1. Đẳng cấp David de Gea

De Gea một lần nữa khiến người ta phải nhắc đến mình. Thủ môn người Tây Ban Nha lại tỏa sáng góp vào thắng lợi của Quỷ đỏ. Jakub Moder vẫn đang chờ đợi bàn thắng đầu tiên ở Premier League, và có lẽ, cầu thủ này sẽ phải thất vọng khi đối đầu với De Gea. Nếu không có De Gea, tiền vệ người Ba Lan đã có thể có 2 bàn thắng.

Pha cứu thua đầu tiên của tuyển thủ Tây Ban Nha sau năm phút rất ấn tượng, nhưng pha cứu thua thứ hai của anh đơn giản là ở đẳng cấp thế giới. Cú đánh đầu của Moder như đã đưa được bóng vào lưới, nhưng số một của Man Utd bằng cách nào đó lại có thể đẩy bóng đi chệch cột dọc. Khi Moder đã đánh bại de Gea trong hiệp hai, thì pha dứt điểm của anh lại đưa bóng đi vọt xà ngang.

2. Cristiano Ronaldo "giải khát"

Cầu thủ 37 tuổi tỏ ra khó chịu với Jadon Sancho khi tuyển thủ Anh không phối hợp với mình trong những phút đầu tiên. Nhưng người từng 5 lần giành Ballon d’Or đã không để cho "cơn hạn hán" ghi bàn của mình kéo dài tới 7 trận.

Sau khi đón bóng từ Scott McTominay, Ronaldo dứt điểm trái phá tung lưới Robert Sanchez. Thay vì ăn mừng mang tính biểu tượng ‘Siuu’, số bảy của Quỷ đỏ đã thực hiện một cú trượt đầu gối và thở phào nhẹ nhõm khi chuỗi trận "tịt ngòi" dài nhất của anh kể từ năm 2009 đã kết thúc. Tuyển thủ người Bồ Đào Nha đã nâng tổng số bàn thắng của mình trong mùa giải lên tới 15.

3. Man Utd về lại top 4', 
N'Man Utd đã đánh bại Brighton với tỷ số 2-0 để giành ba điểm quan trọng. Dưới đây là năm điều rút ra sau cuộc đụng độ tại Nhà hát của những giấc mơ.' , NULL, 2, 16);

insert into Post_HE150490_SE1724 values(N'Joe Cole hiến kế cho Mbappe về chuyện tương lai ở PSG', '2022-02-12 22:00:00.000', 
N'Paris Saint Germain đón tiếp Real Madrid trong khuôn khổ lượt đi vòng 16 đội Champions League. Với lực lượng tương đối cân bằng nên cả 2 đội bóng thi đấu giằng co. Tuy nhiên chủ nhà PSG cầm bóng nhiều hơn và tung ra đến 21 cú sút về phía khung thành Los Blancos.

Và phải chờ đến phút 90+4, gã nhà giàu nước Pháp mới có được điều mình cần là bàn thắng nhờ công của Kylian Mbappe. Pha làm bàn giúp cho PSG có một lợi thế nho nhỏ trước trận lượt về. Bấy lâu nay, Real Madrid được cho là dành sự quan tâm đặc biệt đến Mbappe. Đội bóng Hoàng gia Tây Ban Nha cần nâng cấp hàng công và chân sút người Pháp là nhân tố khiến họ lưu tâm.

Thế nên sau bàn thắng vừa qua tại Công viên các Hoàng tử, có lẽ Real càng khao khát có cựu sao AS Monaco. Tuy nhiên, dưới góc độ cá nhân, cựu danh thủ Joe Cole cho rằng Mbappe nên ở lại PSG và tiếp tục cự tuyệt lời mời từ đội chủ sân Bernabeu: "Nếu tôi là Mbappe và tôi đang nhìn vào cả 2 đội [PSG và Real] và biết mình muốn ở đâu, nên làm gì. Nếu vậy thì tôi muốn ở PSG với Messi và Neymar."

Trong khi đó, thủ thành Thibaut Courtois cũng có những lời tâng bốc Mbappe: "Cậu ta thật đáng kinh ngạc. Đó là một màn trình diễn tuyệt vời của Kylian, cả trong và ngoài sân cỏ."', 
N'Kylian Mbappe đã sắm vai người hùng của Paris Saint Germain trong trận tiếp đón Real Madrid tại Champions League.' , NULL, 2, 17);

insert into Post_HE150490_SE1724 values(N'Paul Merson chê Pochettino, đề cử 2 HLV ở Premier League cho Man Utd', '2022-02-12 10:00:00.000', 
N'Man Utd vẫn đang tìm kiếm một HLV lâu dài vào cuối mùa giải khi Ralf Rangnick chuyển sang vai trò cố vấn. Mauricio Pochettino là một trong những ứng cử viên hàng đầu của Quỷ đỏ. Tuy nhiên, cựu Pháo thủ Paul Merson lại không đánh giá cao vị HLV của PSG cho lắm. Merson nhận định: "Tôi không hiểu tại sao Man Utd lại chờ đợi Mauricio Pochettino. Tôi không hiểu. Nếu Pochettino không giành chức vô địch Champions League cùng Paris Saint-Germain, tại sao họ lại đến với anh ấy?

  
Bạn phải nhớ rằng anh ấy cũng đã không thể vô địch Ligue 1 năm ngoái. Mọi người cứ nói rằng Man Utd cần phải bổ nhiệm Pochettino, nhưng tôi không hiểu tại sao. Đó là tất cả những gì tôi từng nghe. Anh ấy đã làm gì? Anh ấy đã đưa Tottenham đến trận chung kết Champions League và đội bóng của anh ấy đứng thứ ba 1 lần ở Premier League."

Merson cũng đề cử 2 HLV cho đội chủ sân Old Trafford, đó là Brendan Rodgers của Leicester và Graham Potter của Brighton.

Cựu ngôi sao của Arsenal nói thêm: "Nếu tôi được chọn HLV của Man Utd, tôi sẽ hướng đến Rodgers hoặc Graham Potter ngay bây giờ. Người ta vẫn bị cuốn vào Pochettino của bảy năm trước. Nếu đúng như vậy, tại sao mọi người không tìm đến Claudio Ranieri?

Claudio đã vô địch Premier League năm 2016, Pochettino thì không. Và sau đó bạn sẽ có một người như Rodgers, người đã hoàn thành công việc tốt hơn nhiều so với những gì Pochettino đã làm. Anh ấy chỉ mất chức vô địch tại Liverpool vì một cú trượt chân."', 
N'Paul Merson tin rằng Mauricio Pochettino không phải là người thích hợp để mang những danh hiệu về cho Man Utd.' , NULL, 2, 3);

insert into Post_HE150490_SE1724 values(N'Ferdinand chỉ trích hai ngôi sao vô dụng của Arsenal', '2022-02-10 18:00:00.000', 
N'Dù đã cho thấy những bước tiến quan trọng sau công cuộc cải tổ đội hình vào kỳ chuyển nhượng hè, tuy nhiên trong một số trận đấu, Arsenal vẫn đánh rơi điểm số khá đáng tiếc khi họ chịu thiệt thòi về mặt quân số do thẻ phạt.

Thất bại trước Liverpool tại bán kết EFL Cup và Man City trong khuôn khổ Premier League là ví dụ cụ thể, khi bộ đôi Granit Xhaka và Gabriel Magalhaes nhận thẻ đỏ.

Thống kê chỉ ra rằng, Xhaka đã nhận bốn thẻ đỏ ở Premier League kể từ khi đến sân Emirates, trong khi Gabriel cũng có đến 2 lần phải "đi tắm sớm".  Theo nhận định từ huyền thoại Rio Ferdinand, cả hai cầu thủ này không tuân thủ kỷ luật và nếu không thay đổi, họ sẽ trở thành những kẻ vô dụng trong đội.

"Bộ đôi đó đều vô kỷ luật," cựu trung vệ Man Utd chia sẻ thẳng thắn.

"Đôi khi bạn phải suy nghĩ rằng, trước khi bản thân đưa ra một pha xử lý thì đó có phải là thời điểm thích hợp hay không? Nếu bạn không thể dựa vào họ, họ vô dụng. Đừng nên sử dụng những cái tên này.

Khiến đội nhà đối mặt với quả penalty, bạn nghĩ mình đã làm được gì với hành động đó?"

Ở cuộc đụng độ Wolves vừa qua, Arsenal tiếp tục chịu cảnh chơi thiếu người khi Gabriel Martinelli nhận hai tấm thẻ vàng chỉ trong vòng 5 giây. Trong giai đoạn sắp tới, Arteta có lẽ sẽ cần phải chỉnh đốn lại vấn đề kỷ cương tại CLB để hạn chế những tình huống tương tự.', 
N'Huyền thoại Man Utd cho rằng, sự thiếu kỷ luật của những cầu thủ Arsenal khiến họ không thể khẳng định giá trị thật sự.' , NULL, 2, 4);

insert into Post_HE150490_SE1724 values(N'Messi san bằng kỷ lục không ai muốn của Henry', '', 
N'Anh đã bỏ lỡ 5 trong số 23 lần thực hiện các tình huống phạt đền trong giải đấu này, với lần gần nhất là trong chiến thắng tối thiểu của Paris Saint-Germain trước Real Madrid rạng sáng nay. Thủ môn Thibaut Courtois đã đổ người đúng hướng để từ chối cú đá của Messi sau khi Kylian Mbappe giành được quả đá phạt đền cho PSG.

Trong phần lớn thời gian của trận đấu giữa PSG với Real, cơ hội ghi bàn rõ ràng là rất hiếm khi ngoài quả phạt đền của Messi, Real Madrid chủ yếu chơi phòng ngự tại Parc des Princes. Courtois thừa nhận: "Trong những trận đấu như thế này, bạn biết rằng, với tư cách là một thủ môn, bạn sẽ có khá nhiều việc phải làm." "Tôi đã nghiên cứu rất nhiều về các quả phạt đền của Messi và tôi đã cố gắng áp dụng. Bạn cũng cần đến sự may mắn."

Tuy nhiên, PSG đã vượt lên ở phút bù giờ cuối cùng để giành chiến thắng với tỷ số 1-0 khi Kylian Mbappe sút bóng vào góc dưới bên phải khung thành.

Messi đã có nhiều khoảng thời gian khó khăn trong mùa giải đầu tiên của mình với PSG, mặc dù gần đây anh đã góp phần tạo nên 4 bàn sau 4 trận. Mbappe vẫn là người gánh vác trọng trách chính ở trận đấu này, ghi bàn sau những nỗ lực xuyên suốt trận đấu.',
N'Lionel Messi đã sánh ngang với Thierry Henry về số lần bỏ lỡ phạt đền ở Champions League, đồng thời vượt qua Cristiano Ronaldo về số lần sút penalty.' , NULL, 2, 5);

insert into Post_HE150490_SE1724 values(N'"Mbappe là người ngoài hành tinh!"', '2022-02-10 22:00:00.000', 
N'Tuy nhiên khi trận đấu bước vào phút bù giờ, Kylian Mbappe đã bất ngờ tỏa sáng với pha đi bóng đầy kỹ thuật nơi biên trái, vượt qua sự truy cản của hàng loạt hậu vệ Real, trước khi tung cú dứt điểm lạnh lùng mang về lợi thế cho PSG trước trận lượt về tại Bernabeu.

Tiền đạo sinh năm 1998 một lần nữa chứng minh tầm quan trọng trong màu áo đội bóng nước Pháp. Theo thống kê từ Opta, Kylian Mbappe đã tham gia vào ít nhất 1 bàn thắng trong mỗi 7 trận gần đây nhất của anh ấy tại Champions League (5 bàn, 4 kiến tạo), con số đáng kinh ngạc.

Phát biểu sau trận, thủ thành Gianluigi Donnarumma đã dành những lời tán dương cho người đồng đội.

"Mbappe là người ngoài hành tinh! Anh ấy thật đáng kinh ngạc. Đó là một màn trình diễn với Kylian, cả trong và ngoài sân cỏ.

Mbappe sẽ quyết định xem anh ấy có muốn ở lại Paris Saint-Germain hay không - điều đó tùy thuộc vào anh ấy. Nhưng chúng tôi đang tận hưởng những màn trình diễn từ Mbappe mỗi ngày."', 
N'Ngôi sao người Pháp đã có những phút giây tỏa sáng để giúp PSG giành thắng lợi quan trọng tại UCL.' , NULL, 2, 6);

insert into Post_HE150490_SE1724 values(N'Man City lập cột mốc lịch sử ở Champions League', '2022-02-10 10:00:00.000', 
N'Manchester City vừa qua có chuyến làm khách đến sân của Sporting Lisbon trong khuôn khổ lượt đi vòng 16 đội Champions League. Với đẳng cấp cùng quyết tâm giành chiến thắng cao hơn, The Citizens đã thị uy sức mạnh của mình, ghi đến 5 bàn thắng và chiếm lợi thế rất lớn trước trận lượt về.

Những người ghi bàn cho đoàn quân HLV Pep Guardiola là Riyad Mahrez, Bernardo Silva (2 bàn), Phil Foden và Raheem Sterling. Đây là một chiến thắng áp đảo và cho thấy rằng Man City đang có phong độ rất cao kể cả giải quốc nội lẫn châu Âu. Với việc tạo ra cách biệt 4 bàn trong hiệp 1 trận gặp Sporting, đội chủ sân Etihad cũng đã tạo ra một cột mốc lịch sử ở Champions League. Trang OptaJoe viết: "Man City trở thành đội bóng đầu tiên trong lịch sử giải đấu dẫn trước đội chủ nhà 4 bàn trong hiệp 1 ở một cuộc đối đầu tại vòng knock-out."

Sau trận đấu, chia sẻ trên BT Sport, tiền vệ Silva chia sẻ: "Đó là một màn trình diễn tuyệt vời. Trong hiệp một, chúng tôi rất hưng phấn để giành chiến thắng 4-0. Chúng tôi rất vui với chiến thắng 5-0 trên sân khách là một kết quả thuận lợi.

Tôi là người Bồ Đào Nha và tôi hôm nay thi đấu ở phía bên kia chiến tuyến với một đại diện của đất nước mình. Và một cảm giác đặc biệt khi tôi ghi bàn trên quê hương của mình."', 
N'Manchester City vừa tạo ra một cơn mưa gôn vào khung thành của Sporting Lisbon tại lượt đi vòng 16 đội Champions League.' , NULL, 2, 7);

insert into Post_HE150490_SE1724 values(N'Messi trượt penalty cùng lúc Ronaldo lập siêu phẩm', '2022-02-09 18:00:00.000', 
N' 3h sáng hôm nay theo giờ Việt Nam, Lionel Messi và Cristiano Ronaldo cùng đội bóng của mỗi người là Paris Saint-Germain và Manchester United lần lượt gặp Brighton và Real Madrid. Cả hai siêu sao đều bước vào trận đấu với khao khát ghi bàn, M10 đã trải qua 7 trận tịt ngòi trước Real, trong khi Ronaldo đang trải qua cơn hạn hạn bàn thắng đáng ngại nhất sự nghiệp. .Messi là cầu thủ có cơ hội phá dớp ngon ăn khi PSG được hưởng penalty ở hiệp 2, tuy nhiên cú sút của anh lại bị Thabiut Courtois dễ dàng cản phá.', 
N'2 tiền đạo xuất sắc nhất thế giới trải qua 2 trạng thái khác nhau gần như cùng một lúc.' , NULL, 3, 8);

insert into Post_HE150490_SE1724 values(N'Ralf Rangnick giải thích lý do để Pogba và Rashford dự bị', '2022-02-09 22:00:00.000', 
N'Trước khi đụng độ Brighton, Quỷ đỏ phải trải qua những trận hòa đáng thất vọng ở Premier League với Burnley và Southampton, vì vậy, không có gì ngạc nhiên khi HLV tạm quyền Ralf Rangnick đưa ra những thay đổi cho cuộc gặp với Bầy mòng biển tại Old Trafford. Pogba trở lại chưa lâu sau một vấn đề nghiêm trọng ở háng và đã được nghỉ ngơi, nhường chỗ cho Fred. Trong khi đó, Rashford phải dự bị cho Anthony Elanga.

"Những thay đổi của tôi là để đội bóng có được đôi chân mới mẻ, Anthony Elanga đã chơi tốt cho đến hai trận gần nhất cậu ấy không đá chính," Rangnick nói với BBC.

"Paul Pogba chỉ mới trở lại sau chấn thương dài hạn và Fred đã trở lại tập luyện bình thường nên tôi quyết định để cậu ấy ra sân."

Bên cạnh đó, Rangnick có một sự thay đổi muộn trong đội hình ra sân khi Raphael Varane bị ốm và được thay thế bởi Victor Lindelof, người đá chính cùng với Harry Maguire ở vị trí trung vệ.

Man Utd đã trở lại top 4 Premier League với chiến thắng 2-0 trước Brighton. Tuy nhiên, cuộc đua giành vé dự Champions League mùa tới vẫn còn rất khốc liệt với họ, bởi sự cạnh tranh của Arsenal, Tottenham hay West Ham. Đặc biệt, Arsenal và Tottenham đều đang đá ít hơn Man Utd đến 3 trận.', 
N'Ralf Rangnick đã quyết định để Paul Pogba và Marcus Rashford lên băng ghế dự bị cho cuộc đụng độ của Man Utd với Brighton.' , NULL, 3, 9);

insert into Post_HE150490_SE1724 values(N'HLV Inter nói thẳng về sức mạnh của Liverpool', '2022-02-09 10:00:00.000', 
N'Inter Milan chạm trán Liverpool là một trong những trận cầu tâm điểm vòng 1/16 Champions League giữa tuần này. Nửa xanh thành Milan có lần đầu tiên ra sân ở vòng đấu loại trực tiếp Champions League sau một thập kỷ.

Xét về tương quan lực lượng lẫn phong độ, đại diện nước Ý rõ ràng bị đánh giá thấp hơn Liverpool thời điểm hiện tại. Tuy nhiên HLV Simone Inzaghi tỏ ra lạc quan trước trận đấu then chốt sắp tới.

"Liverpool là một trong những CLB xuất sắc nhất châu Âu. Các cầu thủ Inter Milan xứng đáng có mặt ở những trận đấu như thế này. Một khoảng thời gian dài, Inter Milan không tham dự vòng 16 đội ở Champions League. Chúng tôi biết sẽ rất khó khăn nhưng các cầu thủ sẽ cố gắng vượt qua thử thách," Inzaghi chia sẻ với cánh phóng viên. "Trên lý thuyết, Liverpool là CLB được yêu thích và đánh giá cao hơn. Tôi sẽ yêu cầu các cầu thủ ra sân với tâm lý thoải mái, chơi thứ bóng đá của chúng tôi. Quyết tâm sẽ tạo nên sự khác biệt," Inzaghi cho hay.

Chiến lược gia người Ý đánh giá cao khả năng tấn công của Liverpool, đặc biệt là bộ đôi hậu vệ cánh Trent Alexander-Arnold và Andy Robertson. Inter Milan nhiều khả năng sẽ chơi với hàng công ba người, bao gồm Edin Dzeko, Alexis Sanchez và Lautaro Martinez.

Inter Milan đang đứng thứ 2 tại Serie A, kém 1 điểm so với đội đầu bảng AC Milan và thi đấu ít hơn 1 trận.', 
N'Hai đại diện bóng đá Anh và Ý sẽ có cuộc chạm trán nảy lửa ở vòng 16 đội Champions League mùa này.' , NULL, 3, 10);

insert into Post_HE150490_SE1724 values(N'Messi hỏng pen, PSG thắng Real ở phút bù giờ cuối cùng', '2022-02-08 22:00:00.000', 
N'Paris Saint-Germain tiếp đón Real Madrid vào đêm thứ Ba tuần này ở trận lượt đi vòng 16 đội Champions League. Bên cạnh những câu chuyện xung quanh việc chuyển nhượng của Kylian Mbappe, đây cũng là một cuộc đụng độ có ý nghĩa đặc biệt đối với Lionel Messi, người đang tìm cách chấm dứt phong độ kém cỏi trước Los Blancos. Messi đã không giành chiến thắng trước Real Madrid kể từ tháng 3 năm 2019 và đã trải qua 7 trận liên tiếp không ghi được bàn nào trước kình địch của Barcelona.

Tình huống đáng chú ý đầu tiên thuộc về đội chủ nhà ở phút thứ 5, khi Mbappe xử lý bóng tốt và tạt cho Angel Di Maria, nhưng tiền đạo này sút bóng vọt xà. Những phút sau đó, PSG tiếp tục tỏ ra lấn lướt hơn, chơi pressing nhưng ít tạo được cơ hội. Phút 19, Mbappe đã vượt qua Dani Carvajal, nhưng cú sút của anh bị ngăn lại bởi thủ thành Thibaut Courtois. Phần lớn thời gian của hiệp 1, đội bóng nước Pháp liên tục tạo sức ép, nhưng Real Madrid đã được tổ chức tốt và liên tục xử lý các đợt sóng tấn công của đối phương. Phút 37, Casemiro nhận thẻ vàng, qua đó sẽ vắng mặt ở trận lượt về. Phút cuối hiệp, Kền kền trắng hưởng phạt góc nhưng Casemiro đánh đầu không thành công từ cú đá của Toni Kroos.

Sang hiệp 2, mưa bắt đầu nặng hạt hơn trên sân Công viên các hoàng tử. Chủ nhà tiếp tục tạo nguy hiểm. Phút 51, Achraf Hakimi chuyền bóng ấn tượng cho Mbappe trong vòng cấm, Mbappe dứt điểm nguy hiểm nhưng Courtois một lần nữa cứu thua tốt. Sau Casemiro, Real Madrid sẽ mất cả Ferland Mendy ở trận lượt về sau khi nhận thẻ vàng.

Phút 61, Carvajal khiến Mbappe nằm sân và trọng tài ngay lập tức chỉ tay vào chấm phạt đền. Messi đứng trước cơ hội chấm dứt cơn khô hạn bàn thắng trước Real nhưng cú sút của anh lại bị Courtois bắt bài. Đội bóng của Mauricio Pochettino làm mọi cách để ghi bàn nhưng không thành. Phút 73, họ buộc phải cho Neymar ra sân', 
N'Trận lượt đi vòng 16 đội Champions League vừa diễn ra trên đất Pháp với sự lấn lướt nghiêng về PSG.' , NULL, 3, 11);

insert into Post_HE150490_SE1724 values(N'Ronaldo nã đại bác ghi bàn, Man Utd chấm dứt chuỗi trận tệ hại', '2022-02-08 10:00:00.000', 
N'Sau 2 trận hòa liên tiếp, HLV Ralf Rangnick có sự thay đổi ở đội hình xuất phát. Theo đó, Man Utd chào đón sự trở lại của Fred ở hàng tiền vệ. Trên hàng công, Anthony Elanga được trao cơ hội đá chính ngay từ đầu.

Trong hiệp một, Man Utd nỗ lực dồn ép nhưng không tạo ra cơ hội ghi bàn rõ rệt. Ngược lại, khung thành của Man Utd thật sự chao đảo. Brighton lên bóng nguy hiểm, và thủ thành David de Gea ít nhất phải 2 lần trổ tài cứu thua.  Hiệp một trôi qua mà không có bàn thắng nào được ghi. Man Utd không cho thấy được sự áp đảo so với đối thủ dù được chơi trên sân nhà Old Trafford. Dù vậy, sự khác biệt nhanh chóng xuất hiện sau giờ nghỉ.

Phút 51, Scott McTominay cướp bóng từ chân Yves Bissouma và chuyền cho Ronaldo. Siêu sao người Bồ Đào Nha đi bóng trước rừng cầu thủ Brighton và tung cú dứt điểm trái phá ngoài vòng cấm địa mở tỷ số. Đây là bàn thắng giải tỏa của CR7 sau 6 trận liền tịt ngòi.

3 phút sau đó, tới lượt Elanga dùng tốc độ cướp bóng từ chân Lewis Dunk buộc cầu thủ này phạm lỗi ở sát vòng cấm địa. Sau khi tham khảo VAR, trọng tài xác định Dunk có tình huống truy cản pha ghi bàn và rút thẻ đỏ đuổi hậu vệ Brighton.

Sau pha bóng này, Man Utd hoàn toàn làm chủ thế trận. Ronaldo tiếp tục là niềm cảm hứng trong mỗi pha lên bóng của Man Utd. Anh có tình huống đánh đầu cực căng suýt chút nữa hoàn tất cú đúp trong trận.', 
N'Nhờ sự tỏa sáng của Cristiano Ronaldo và Bruno Fernandes, Manchester United đã có được chiến thắng quan trọng trước Brighton.' , NULL, 3, 12);

insert into Post_HE150490_SE1724 values(N'Jurgen Klopp: "Hy vọng họ sẽ phục hồi nhanh chóng"', '2022-02-07 18:00:00.000', 
N'Liverpool đang bước vào giai đoạn then chốt của mùa giải 2021/2022. Thầy trò HLV Jurgen Klopp kiên trì bám đuổi Man City tại Premier League. Ở sân chơi Champions League, Lữ đoàn đỏ sẽ có cuộc chạm trán với Inter Milan vào rạng sáng mai trong khuôn khổ lượt đi vòng 16 đội Champions League.

Hai nhân tố Mohamed Salah - Sadio Mane hứa hẹn đóng vai trò quan trọng trên hành trình còn lại của Liverpool mùa này. Ở chiến thắng 1-0 trước Burnley cuối tuần qua, Salah - Mane đá chính ngay từ đầu. 

Bình luận về bộ đôi Salah - Mane trước cuộc đụng độ Inter Milan, HLV Jurgen Klopp cho hay: "Họ đã có một tuần lễ phục hồi. Thời điểm hiện tại mọi thứ đều ổn. Cả hai đều không uống rượu và đạt thể lực sung mãn ngay sau trận chung kết. Hy vọng họ sẽ phục hồi nhanh chóng,". Bất chấp phong độ đã đi xuống thời gian gần đây, Mane vẫn là quân át chủ bài trong tay Klopp. Sự ăn ý giữa tiền đạo người Senegal với Salah và Robeto Firmino tạo thành bộ ba tấn công lừng danh của Lữ đoàn đỏ xuyên suốt thời gian dài.

Trong khi đó, Salah là cây săn bàn hàng đầu của Liverpool và Premier League mùa này. CĐV Lữ đoàn đỏ kỳ vọng, chân sút 29 tuổi sẽ tỏa sáng ở trận đại chiến với Inter Milan sắp tới. Bên cạnh đó, Salah sẽ có thêm bài test là trận chung kết Carabao Cup với Chelsea vào cuối tháng 2.', 
N'Liverpool có trận đại chiến với Inter Milan ở vòng 16 đội Champions League. Như thường lệ, các ngôi sao tấn công vẫn là niềm hy vọng lớn của Lữ đoàn đỏ.' , NULL, 3, 13);

insert into Post_HE150490_SE1724 values(N'Memphis Depay - từ số một thành thất sủng tại Barca', '2022-02-07 22:00:00.000', 
N'Từ vị trí cầu thủ chủ chốt và được người hâm mộ yêu thích dưới thời Ronald Koeman, Memphis Depay buộc phải thích nghi lại từ đầu khi Xavi tiếp quản Barca. Thực tế cho thấy, sẽ rất khó để ngôi sao người Hà Lan trở thành gương mặt mặc định xuất hiện trên hàng công nếu dựa vào tình hình hiện tại ở Nou Camp.

Xavi tỏ ra quyết tâm và nghiêm túc cho các cuộc đàm phán trên TTCN. Chỉ sau một mùa đông, Barca đón 3 tân binh trên hàng công là Adama Traore, Ferran Torres và Aubameyang. Ngoại trừ Traore, Torres lẫn Aubameyang có thể thi đấu tốt ở vai trò dạt cánh lẫn tiền đạo, dẫn đến sự cạnh tranh gay gắt ảnh hưởng việc ra sân của Depay. Đó là còn chưa kể Xavi đặc biệt trọng dụng “gà nhà” La Masia. Ansu Fati sẽ là cái tên quan trọng nếu sao trẻ này vượt qua vấn đề chấn thương. Gavi dù là tiền vệ nhưng ở 2 trận đấu gần nhất đều được bố trí dạt cánh trái nơi tuyến đầu. Xavi đang không thiếu nhân sự cho hàng công nên việc vắng mặt Depay chưa phải là vấn đề nhức nhối của Barca vào thời điểm hiện tại.

Việc Depay liên tục gặp vấn đề thể lực còn là chướng ngại khác ngăn anh toả sáng dưới trướng Xavi. Suốt một tháng vừa qua, cựu sao Man Utd phải chật vật bước vào quá trình hồi phục.  Lần ra sân cuối cùng của Memphis ở Barcelona là trong trận thua Supercopa de Espana trước Real Madrid vào ngày 12 tháng 1.

Ngôi sao sinh năm 1994 đã không thể tập luyện cùng toàn đội và anh được cho sẽ hoãn ngày tái xuất một lần nữa thay vì sẵn sàng hướng đến trận đấu gặp Napoli vào tuần này. Barca sẽ đánh giá kỹ lưỡng tình hình của cầu thủ sinh năm 1994 và CLB kỳ vọng Depay có thể ra sân trước Napoli ở trận lượt về. 

Cựu sao Ajax đang đối diện với nhiều khó khăn, khiến tình thế của một ngôi sao từng tạo ra đóng góp lớn nhất trên hàng công bị thất sủng. Cơ hội dành cho anh không phải đã hết bởi Marca từng thống kê 71% NHM Barca muốn số 9 đá chính. Anh cũng thuộc nhóm top cầu thủ đạt doanh số bán áo đấu cao nhất CLB.', 
N'Memphis Depay là cái tên quan trọng dưới thời Ronald Koeman nhưng anh đang gặp khó khăn vào thời điểm hiện tại.' , NULL, 3, 14);

insert into Post_HE150490_SE1724 values(N'Bayern đối xử bất ngờ với người thay thế Neuer', '2022-02-07 10:00:00.000', 
N'Bayern Munich muốn giữ chân Manuel Neuer vì phong độ xuất sắc của người đội trưởng. Neuer được cho gia hạn khoảng 3 năm hợp đồng, qua đó ở lại Allianz Arena đến mùa hè 2026, thời điểm thủ thành này 40 tuổi. Điều này đồng nghĩa Neuer vẫn là người gác đền số một tại Bayern trong ít nhất 4 năm tới đây. Nó dẫn đến khả năng cái tên được xem là hậu duệ đích thực của Neuer, Alexander Nubel gần như phải chia tay Bayern vì anh gần như không có cơ hội thể hiện bản thân.

Dù vậy, phía Die Roten lại có suy nghĩ khác. Mặc cho sự thống trị trong khung gỗ của Neuer thêm khoảng thời gian dài, gã khổng lồ xứ Bavaria vẫn muốn dành một suất ở Allianz Arena cho Nubel. Theo Kicker, nhà ĐKVĐ Bundesliga sẵn sàng gia hạn hợp đồng với thủ thành 25 tuổi. Nubel sẽ đáo hạn hợp đồng với Bayern vào hè 2025 và Bayern sẽ làm mọi cách giữ chân ngôi sao này trước thời hạn kết thúc. Ngoài ra, để giúp Nubel giữ vững được cảm giác thi đấu tốt nhất, khi tiến hành ký giao kèo mới, Bayern cũng tiếp tục cho cựu cầu thủ Schalke ra đi theo dạng cho mượn. Bayern ưu tiên chọn cho Nubel một CLB tham dự Champions League.

Nubel hiện được cho mượn ở AS Monaco đến từ Ligue 1 cho đến năm 2023 nhưng Bayern có thể gọi người về  sớm vào mùa hè này nếu họ muốn.', 
N'BLĐ Bayern Munich dự định thực hiện động thái bất ngờ với một gương mặt trẻ của đội bóng.' , NULL, 3, 15);

insert into Post_HE150490_SE1724 values(N'Chelsea đón cú sốc lớn trước trận chung kết EFL Cup', '2022-02-06 18:00:00.000', 
N'Mason Mount đã góp mặt trong đội hình xuất phát của Chelsea ở cuộc chạm trán Palmeiras tại chung kết FIFA Club World Cup. Tuy nhiên, ngôi sao người Anh chỉ thi đấu vỏn vẹn 30 phút và phải rời sân vì gặp vấn đề nơi mắt cá chân.

Sau cuộc đụng độ trên, HLV Thomas Tuchel xác nhận rằng cậu học trò dính chấn thương nặng và chưa rõ sẽ phải mất bao lâu để hoàn toàn bình phục.  Theo thông tin từ Metro (dẫn nguồn The Times), mức độ nghiêm trọng của Mount không đáng lo ngại như dự đoán. Tuy nhiên, anh sẽ cần phải điều trị khoảng 3 tuần mới đủ khả năng trở lại sân cỏ.

Nếu không có bước chuyển biến bất ngờ, gần như chắc chắn tiền vệ 23 tuổi sẽ vắng mặt ở cuộc đụng độ Crystal Palace diễn ra vào cuối tuần và cả trận đấu lượt đi vòng 1/8 Champions League với Lille.

Ngoài ra, Mount cũng đứng trước nguy cơ bỏ lỡ màn đại chiến với Liverpool tại chung kết EFL Cup. Đây được xem như tổn thất lớn dành cho Chelsea, bởi lẽ cầu thủ sinh năm 1999 đang giữ vai trò cực kỳ quan trọng trong khâu vận hành lối chơi.

Sau 21 lần ra sân tại Premier League mùa này, Mount góp dấu giày vào tổng cộng 13 bàn thắng, bao gồm 7 pha lập công cùng 6 đường kiến tạo. ', 
N'Đội chủ sân Stamford Bridge có thể sẽ thiếu vắng nhân tố chủ chốt ở cuộc chạm trán quan trọng với Liverpool.' , NULL, 4, 16);

insert into Post_HE150490_SE1724 values(N'3 sao Bundesliga đang bùng nổ khiến châu Âu sục sôi', '2022-02-06 22:00:00.000', 
N'1. Patrik Schick:

Patrik Schick trở thành cái tên quen thuộc trong mắt NHM bóng đá nhờ vào màn trình diễn ấn tượng tại EURO 2020. Đó như là chất xúc tác để cựu cầu thủ AS Roma bùng nổ ở mùa giải năm nay.

Schick đang trải qua mùa giải thăng hoa bậc nhất sự nghiệp với 19 bàn và 3 kiến tạo sau 23 vòng tại Bundesliga. Không phải Erling Haaland, ngôi sao người CH Séc mới là đối trọng lớn nhất của Robert Lewandowski ở cuộc đua giành vua phá lưới.  Tiền đạo sinh năm 1996 chứng tỏ bản thân là chân sút sở hữu phẩm chất ghi bàn toàn diện. Anh thuộc nhóm sát thủ đã ghi từ 3 bàn trở lên bằng chân phải, chân trái và bằng đầu ở 5 giải đấu hàng đầu châu Âu mùa này. Song hành cùng Schick ở bảng danh sách này là Diogo Jota, Lewandowski và Ciro Immobile.

Với phong độ cao như hiện tại, Schick sẵn sàng gia nhập một CLB lớn hơn tại châu Âu. Man Utd hay Arsenal hiện chú ý đến tiền đạo này.

2. Florian Wirtz:

Thêm một cái tên khác khoác áo Bayer Leverkusen thi đấu xuất sắc ở mùa này, đó là Florian Wirtz. Wirtz chính là đối tác ăn ý với Schick khi sao trẻ này thường cung cấp kiến tạo giúp người đồng đội nổ súng.

Không chỉ kiến tạo tốt, tiền vệ người Đức còn biết cách ghi bàn. Wirtz đã đóng góp 10 pha lập công và 13 đường chuyền dọn cỗ sau 26 trận trên mọi đấu trường. Chính vì vậy nên sức hút và giá trị của cầu thủ sinh năm 2003 tăng trưởng vượt bậc.

Wirtz đang được định giá 70 triệu euro nhưng những đại gia châu Âu nhiều khả năng chấp nhận trả con số lớn hơn thế để thuyết phục Leverkusen nhả người. Real Madrid và Liverpool bắt đầu gia nhập cuộc đua chiêu mộ tài năng trẻ 18 tuổi. 

3. Christopher Nkunku:

Leipzig đang trải qua mùa giải dưới sức khi đứng ở vị trí thứ 4, sở hữu 34 điểm và cách ngôi đầu bảng của Bayern Munich tận 18 điểm. Mục tiêu thiết thực nhất của họ chính là lọt vào top 4.

Phần lớn cầu thủ Leipzig không giữ được phong độ nhưng Christopher Nkunku biết cách tạo những dấu ấn bùng nổ. Dù là thi đấu dưới trướng Jesse Marsch hay Domenico Tedesco vào thời điểm hiện tại, Nkunku đều trở thành ngôi sao quan trọng nhất.', 
N'Sau mùa giải này, nhiều CLB lớn tại châu Âu sẵn sàng tranh giành các ngôi sao đang lên tại Bundesliga.' , NULL, 4, 17);

insert into Post_HE150490_SE1724 values(N'Sau Ramos, Real có thể lỡ hẹn với một người cũ khác', '2022-02-06 10:00:00.000', 
N'Rạng sáng mai tại nước Pháp, PSG sẽ tiếp đón Real Madrid ở vòng 1/8 Champions League. Cuộc đối đầu ít hấp dẫn đi vì huyền thoại của Real, Sergio Ramos vắng mặt do chấn thương. Trung vệ người TBN phải chờ trận tái đấu ở sân Bernabeu để đương đầu với CLB cũ.

Không chỉ Ramos, Real cũng có thể tránh việc chạm trán một người cũ khác. Cụ thể, L’Equipe đưa tin, HLV Mauricio Pochettino nhiều khả năng không sử dụng Keylor Navas khi ông đặt niềm tin vào Gianluigi Donnarumma.

Đây là thông tin tương đối bất ngờ bởi từ đầu mùa giải đến nay, Navas được trao nhiều cơ hội hơn Donnarumma. Thủ thành người Costa Rica có 19 trận bắt chính trên mọi đấu trường khi nhận 17 bàn thua và trắng lưới 7 lần. Trong khi đó, Donnarumma thi đấu 15 trận từ đầu mùa, anh vào lưới nhặt bóng 10 lần và giúp PSG sạch lưới 7 trận. Dù vậy, truyền thông nước Pháp đồng thời tiết lộ, người nào được thi đấu ở trận lượt đi sẽ phải nhường cơ hội cho người kia ở trận lượt về. Donnarumma có thể bắt chính vào rạng sáng mai nhưng Navas cũng sẽ giành được cơ hội chạm trán đội bóng cũ tại Bernabeu.

Nếu Ramos kịp thời tái xuất, Bernabeu sẽ tái ngộ 2 người cũ từng rất quan trọng trong những mùa giải tại Champions League trước đó.', 
N'Real Madrid nhiều khả năng mất đi cơ hội chạm trán một người quen khác sau Sergio Ramos.' , NULL, 4, 3);

insert into Post_HE150490_SE1724 values(N'Ferdinand lên tiếng, tiết lộ cuộc sống của Van de Beek dưới thời Lampard', '2022-02-05 18:00:00.000', 
N'Sau quãng thời gian bị thất sủng tại Man Utd, cuối cùng Donny Van de Beek cũng đã tìm được lối thoát cho riêng mình khi chuyển đến đầu quân cho Everton theo dạng cho mượn.

Dưới sự dẫn dắt của HLV Frank Lampard, ngôi sao người Hà Lan thi đấu khá nổi bật trong những ngày đầu khoác áo The Toffees. Hồi cuối tuần trước, Van de Beek thể hiện màn trình diễn ấn tượng, góp phần quan trọng giúp Everton hủy diệt Leeds United. Trong một chia sẻ mới nhất từ huyền thoại Rio Ferdinand, Van de Beek đang hòa nhập tốt tại môi trường mới.

"Tôi đã nói chuyện với một vài người ở câu lạc bộ và họ nói rằng anh ấy đã đến đó, nâng cấp bản thân và tập luyện một cách đầy khoa học,” Ferdinand chia sẻ.

“Anh ấy là một chàng trai tuyệt vời, đó là điều đầu tiên và quan trọng nhất, nhưng bạn có thể thấy rất nhiều người sẽ nói, "Chà, anh ấy giỏi thế này, vậy mà  không thể tin được anh ấy lại không được chơi tại Man Utd"."

Van de Beek chỉ góp mặt vào đội hình xuất phát Quỷ đỏ vỏn vẹn 4 trận (tính tại EPL) trong 18 tháng, sau khi chuyển đến Old Trafford với mức giá 35 triệu bảng. Dù Man Utd đã trải qua 2 đời HLV, tuy nhiên ngôi sao người Hà Lan vẫn không thể thay đổi tình hình.', 
N'Huyền thoại Man Utd đã đưa ra những chia sẻ về cách ngôi sao người Hà Lan thích nghi trong màu áo mới.' , NULL, 4, 4);

insert into Post_HE150490_SE1724 values(N'Cựu sao Juventus chỉ rõ điểm giống nhau giữa Vlahovic và Ronaldo', '2022-02-05 22:00:00.000', 
N'Alessio Tacchinardi đã dành gần như toàn bộ sự nghiệp thi đấu của mình tại Juventus và chuyển đến Villarreal trong một vài mùa giải trước khi treo giày. Ông vừa đưa ra lời nhận xét về Dusan Vlahovic, tân binh trị giá 80 triệu euro của Juventus, khi cho rằng cầu thủ này sở hữu phẩm chất tương đồng Cristiano Ronaldo.

Chia sẻ trên La Gazzetta dello Sport, cựu danh thủ Italia bày tỏ: "Vlahovic là một con quái vật. Giống như mọi tiền đạo thông minh khác, cậu ấy luôn ở nơi mà quả bóng sẽ đến. Cậu ấy có thể ghi hai bàn mỗi trận, giống như Cristiano Ronaldo. Chính vì vậy cậu ấy cần được hỗ trợ để làm nhiệm vụ đó." "Vì lý do này, tôi nghĩ rằng Allegri sẽ yêu cầu sự trợ giúp nhiều hơn từ cánh. Suốt giai đoạn vừa qua trong mùa giải, Juventus không thường xuyên tạt bóng vào vòng cấm."

Sau 2 trận ra mắt Juventus, Vlahovic thi đấu ấn tượng. Anh sở hữu 1 bàn thắng và gián tiếp giúp Juventus sở hữu 1 pha lập công khi khiến cầu thủ đối phương phản lưới nhà.

Vào tuần sau, Vlahovic cũng sẽ có cơ hội ra mắt Champions League khi Juventus chạm trán Villarreal ở vòng 1/8. Tacchiardi, cựu cầu thủ của 2 CLB, đã nhận định đây sẽ là màn chạm trán hấp dẫn.', 
N'Dusan Vlahovic vừa được một cựu cầu thủ chỉ rõ điểm tương đồng với Cristiano Ronaldo.' , NULL, 4, 5);

insert into Post_HE150490_SE1724 values(N'Tham vọng top 4 của Arsenal phụ thuộc vào sự trở lại của một chiến thần', '2022-02-05 10:00:00.000', 
N'Vấn đề ở bắp chân đã khiến tuyển thủ Nhật Bản chỉ có hai lần ra sân cho Pháo thủ trong năm mới 2022 khi anh đã bỏ lỡ trận hòa không bàn thắng trên sân Emirates trước Burnley vào cuối tháng Giêng, cũng như chiến thắng gần nhất trước Wolves với tỉ số 1-0.

Hơn nữa, Takehiro Tomiyasu đã không cùng tập thể Arsenal bay đến Dubai để tham gia một trại huấn luyện vào tháng trước, thay vào đó, Tomiyasu ở lại Anh để rèn luyện thể lực. Đã có những tin tức tích cực từ cầu thủ người Nhật. Theo đó, HLV Mikel Arteta xác nhận rằng Tomiyasu đã trở lại tập luyện trước cuộc đụng độ Wolves nhưng chiến lược gia người Tây Ban Nha vẫn thận trọng với sự trở lại của cậu học trò. 

"Anh ấy ở đó," Arteta nói trong cuộc họp báo trước trận đấu. "Anh ấy bị tái phát chấn thương ở cùng một chỗ, vì vậy chúng tôi phải cẩn trọng với anh ấy, nhưng anh ấy đang tập luyện chăm chỉ."

"Để xem liệu anh ấy có thể ra sân vào thứ Năm không," Arteta chia sẻ.

Theo trang Premier Injuries, Tomiyasu sẽ trở lại vào ngày 19 tháng 2 năm 2022. Đó là vào thứ Bảy tuần này, khi Arsenal tiếp đón Brentford tại Emirates trong một trận đấu quan trọng liên quan đến cuộc đua vào top 4.

Ngoài ra, họ khẳng định hậu vệ này có 50% cơ hội được đưa vào đội hình thi đấu. Cơ hội trở lại của Tomiyasu trước The Bees cuối cùng sẽ phụ thuộc vào việc anh ấy có vượt qua những bài test về thể lực ở trên sân tập hay không.', 
N'Sự trở lại của Takehiro Tomiyasu sẽ là bàn đạp để Arsenal bứt phá mạnh mẽ hơn trên BXH Premier League.' , NULL, 4, 6);

insert into Post_HE150490_SE1724 values(N'PSG và cuộc chiến đảo ngược tương lai Mbappe', '2022-02-04 18:00:00.000', 
N'Nhiều cổ động viên Pháp nói rằng dù Mbappe vẫn sống ở Paris, hồn của anh hướng về Madrid từ lâu. Chỉ có ban lãnh đạo Paris Saint-Germain chưa từ bỏ hy vọng giữ chân cầu thủ này. Cựu chân sút AS Monaco quá quan trọng trong chiến lược phát triển của gã khổng lồ Ligue 1. Vào kỳ chuyển nhượng hè năm ngoái, PSG được cho từ chối đề nghị trị giá 220 triệu euro của Real Madrid cho Mbappe. Không nhiều đội bóng trên thế giới dám làm điều đó. Hợp đồng hiện tại của Mbappe với đội bóng nước Pháp sẽ hết hạn vào tháng 6/2022. Nếu cầu thủ này rời đi theo dạng tự do, PSG sẽ không nhận lại thứ gì. Nói cách khác, tại sao các ông chủ người Qatar có thể sẵn sàng vứt bỏ 220 triệu euro vào sọt rác?

Nỗi sợ của Mbappe

Hè 2021, Chủ tịch PSG Nasser Al-Khelaifi tuyên bố: "Mbappe sẽ không đi đâu hết và cầu thủ này cũng không bao giờ có thể rời đi theo dạng tự do". Vài tháng sau, Mbappe thừa nhận anh thật sự sợ hãi khi nghe ban lãnh đạo PSG nói vậy.

"Khi nghe những lời của ông ấy (Khelaifi - PV), tôi cảm thấy mình khó thở", tiền đạo người Pháp thừa nhận vào tháng 10/2021. "Những lời nói ấy khiến tôi có chút sợ hãi".

Mbappe không hiểu tại sao bản thân không thể tự quyết định tương lai của mình. Nếu muốn, anh có thể rời PSG theo dạng tự do.

Tuy nhiên, những lời nói có phần hăm dọa của ông Khelaifi vẫn khiến một cầu thủ còn trẻ như Mbappe lo lắng. Phần lớn người hâm mộ và giới chuyên môn đều tin rằng chân sút người Pháp sẽ chọn Real Madrid làm bến đỗ tiếp theo trong sự nghiệp. HLV Arsene Wenger hay Brendan Rodgers từng nói khi một cầu thủ bước vào năm cuối trong hợp đồng của họ, rất khó ai có thể cản họ rời đi theo dạng tự do.

Từ ông chủ CLB đến HLV, đồng đội hay người hâm mộ, không ai có thể làm khó Mbappe. Gần như chỉ có ban lãnh đạo PSG và các ông chủ người Qatar tin họ có thể đảo ngược quyết định của Mbappe.

Sau những lời nói có phần dọa dẫm là thái độ nuông chiều. Ngày PSG công bố bản hợp đồng Lionel Messi, ông Khelaifi từng than thở rằng không biết họ phải làm thêm điều gì để có thể khiến Mbappe cam kết tương lai với CLB.

Chân sút người Pháp cần những đồng đội xuất sắc? Neymar ký hợp đồng mới với PSG vào tháng 5/2021. 4 tháng sau, Lionel Messi cập bến sân Parc des Princes. Những tên tuổi của bóng đá thế giới như Sergio Ramos hay Gianluigi Donnarumma cũng tề tựu về Paris ở mùa giải năm nay.

Về mặt tài chính, PSG sẵn sàng biến Mbappe thành cầu thủ hưởng lương cao nhất thế giới hiện tại, với mức thu nhập ngang ngửa hay thậm chí có thể hơn Neymar và Messi. HLV Mauricio Pochettino cũng có thể bị sa thải để nhường chỗ cho Zinedine Zidane, thần tượng từ ngày bé của Mbappe.

Để lý giải cho ý định rời đi của Mbappe, người ta phải đánh giá từ nhiều góc độ. "Tôi luôn muốn khám phá những điều mới mẻ", Mbappe nói vào tháng 10/2021. "Tôi đã thi đấu ở Pháp được 6 hay 7 năm. Dù còn trẻ, tôi nghĩ rằng mình đạt những thành tựu tuyệt vời".

Mbappe ám chỉ rằng đến lúc anh phải thi đấu ở môi trường khác để thử thách bản thân. Tiền đạo sinh năm 1998 nổi lên từ sớm, gây ấn tượng và vô địch World Cup ở tuổi 19. Thế nhưng hai năm gần đây, Mbappe có dấu hiệu khựng lại. Chân sút của PSG nhăn mặt khi được thông báo chỉ về đích thứ 9 trong cuộc đua Quả bóng vàng (Ballon d"Or) 2021.

  
Mbappe giàu tham vọng và chưa bao giờ giấu ý định trở thành cầu thủ giỏi nhất. Muốn được tôn vinh ở các giải thưởng cá nhân, mũi nhọn này cần chinh phục những danh hiệu cao nhất và chơi ở các giải đấu thuyết phục giới chuyên môn.

Ligue 1 liệu có là giải đấu chất lượng hơn La Liga hay Ngoại hạng Anh? Rất khó để tin điều đó.

Trong bảng xếp hạng vào cuối tháng 8/2021 của UEFA, Ligue 1 văng khỏi top 5 giải VĐQG hàng đầu châu Âu (tính theo điểm hệ số). Tính trong 5 mùa gần nhất, Ligue 1 có điểm hệ số thấp hơn cả giải Primeira Liga (Bồ Đào Nha).

Mbappe sợ rằng việc tiếp tục thi đấu ở PSG có thể kéo lùi sự nghiệp của anh. Mbappe đã 4 lần vô địch Ligue 1, ghi được 90 bàn ở sân chơi cao nhất nước Pháp. Anh cũng chinh phục cả World Cup hay UEFA Nations League trong màu áo ĐTQG. Chỉ khi PSG giúp Mbappe hiện thực hóa tham vọng vô địch Champions League, mọi thứ có thể sẽ khác.', 
N'PSG gặp Real Madrid không chỉ là trận đấu giành vé vào tứ kết Champions League, cuộc đối đầu này còn tác động trực tiếp đến tương lai Kylian Mbappe.' , NULL, 4, 7);

insert into Post_HE150490_SE1724 values(N'Beckham: "Thật may vì tôi không có mặt trên sân"', '2022-02-04 22:00:00.000', 
N'Câu chuyện chuyển nhượng của Kylian Mbappe nêm thêm gia vị cho cuộc đụng độ giữa Real và PSG, nhiều người đang mong đợi một trận đấu loại trực tiếp đẳng cấp giữa hai trong số những ứng cử viên cho chức vô địch mùa này.

Beckham, người từng chơi cho cả 2 đội, nói: "Nếu chúng ta nhìn vào các cầu thủ và lịch sử của hai đội bóng này, sự cuồng nhiệt của các cổ động viên ở hai thành phố này, cuộc gặp gỡ này là một giấc mơ đối với bất kỳ người hâm mộ nào." "Tôi rất vui vì mình sẽ không có mặt trên sân vận động. Thật tuyệt khi được chứng kiến hai đội bóng mà tôi đã từng thi đấu chơi với nhau. Nhưng thành thật mà nói, tôi thích xem nó ở nhà trước TV hơn. Bằng cách đó, tôi có thể ăn mừng mọi bàn thắng, bất kể ai ghi bàn."

"Đó có thể là một trận đấu rất tấn công. Hai đội bóng tuyệt vời đang đối đầu nhau và họ là hai trong số những đội thú vị nhất ở thời điểm hiện tại. Nếu bạn so sánh họ, cả hai đều đang dẫn đầu các giải đấu của họ và có những huấn luyện viên và cầu thủ tuyệt vời."

Beckham cũng dành những lời khen ngợi đặc biệt cho cả Lionel Messi và Sergio Ramos, cho rằng cầu thủ người Argentina là "một trong những cầu thủ xuất sắc nhất lịch sử bóng đá".', 
N'David Beckham đang mong chờ được xem trận đấu ở vòng 16 đội Champions League của Real Madrid với Paris Saint-Germain.' , NULL, 4, 8);

insert into Post_HE150490_SE1724 values(N'Thay Rudiger, Chelsea đã tìm ra cái tên xứng đáng?', '2022-02-04 10:00:00.000', 
N'Antonio Rudiger, Andreas Christensen và Cesar Azpilicueta đã bước vào 6 tháng cuối cùng trong hợp đồng với Chelsea và họ nhiều khả năng sẽ không tiếp tục gia hạn với đội chủ sân Stamford Bridge. Trong đó, trường hợp của Rudiger đang gây ra khá nhiều nhức nhối cho Ban lãnh đạo The Blues khi anh đang có phong độ tốt và được xem là một nhân tố đẳng cấp thế giới nơi hàng thủ đội nhà. 

Được biết, ban đầu Chelsea muốn tăng lương của Rudiger lên thành 140 ngàn bảng/tuần, so với mức thù lao hiện tại là 100 ngàn bảng/tuần. Dĩ nhiên, Rudiger và người đại diện của mình không chấp nhận. Anh nói rõ quan điểm, đây là bản hợp đồng ở thời điểm "quan trọng nhất trong sự nghiệp", nên cầu thủ 28 tuổi sẽ không vội vàng ra quyết định. Trung vệ người Đức cũng cho rằng, mình xứng đáng nhận lương tốt bậc nhất CLB sau những cống hiến trong thời gian qua và Ban lãnh đạo Chelsea sẽ phải đưa ra lời đề nghị với mức lương trên 200 ngàn bảng/tuần nếu muốn có được cái gật đầu từ cựu sao AS Roma. 

Rõ ràng, yêu cầu trên được xem là khá xa xỉ với The Blues và trong trường hợp không tìm được tiếng nói chung với Rudiger, họ sẽ phải nhanh chóng lên phương án để thay thế anh. 

Đã có những cái tên được nhắc đến trong danh sách mua sắm của Chelsea, tiêu biểu có thể kể đến như Jules Kounde (Sevilla), Matthijs de Ligt (Juventus) hay Marquinhos (Paris Saint-Germain) tuy nhiên những chữ ký này sẽ tiêu tốn của đại diện Tây London một số tiền không hề rẻ. 

Thật đáng tiếc cho The Blues khi họ đã để lỡ cơ hội chiêu mộ trụ cột của Bayern Munich, Niklas Sule theo dạng miễn phí khi anh quyết định rời Hùm xám xứ Bavaria vào cuối mùa để gia nhập Dortmund. ', 
N'Chelsea đang đối mặt với một cuộc cải tổ lớn nơi hàng phòng ngự sau khi kết thúc mùa bóng này.' , NULL, 5, 9);

insert into Post_HE150490_SE1724 values(N'Sao Man United muốn gặp mặt BLĐ, nói thẳng chuyện tương lai', '2022-02-03 18:00:00.000', 
N'Hàng tiền vệ của Man United đang thể hiện một phong độ không ổn định mùa này. Cụ thể, Scott McTominay và Fred vẫn chưa thể đảm bảo được sự chắc chắn trong khâu pressing để giảm tải sức ép cho hàng phòng ngự, Bruno Fernandes đã sa sút đáng kể, Paul Pogba sắp hết hạn hợp đồng với CLB, Donny Van de Beek đã rời đi theo dạng cho mượn trong khi Jesse Lingard không có nhiều thời gian thi đấu. 

Việc các nhân tố nơi tuyến giữa không mang đến sự yên tâm khiến Man United gặp khó trong việc áp đặt thế trận ở mùa bóng năm nay. Mới đây, theo nguồn tin từ The Mirror, 1 tiền vệ của Quỷ đỏ đã có động thái muốn gặp mặt Ban lãnh đạo CLB để giải quyết chuyện tương lai.  Cái tên được nhắc đến là Nemanja Matic, lão tướng đang không có nhiều thời gian chơi bóng mùa này. Từng được xem là một trong những tiền vệ phòng ngự hàng đầu tại Premier League, tuy nhiên tuổi tác đã gây tác động đáng kể đến phong độ và những màn thể hiện của cầu thủ người Serbia trên sân. 

Hiện tại, Man United cũng đang có ý định cải tổ hàng tiền vệ, khi tập trung để chiêu mộ những tên tuổi như Declan Rice (West Ham), Yves Bissouma (Brighton) hay Aurelien Tchouameni (Monaco), do đó nhiều khả năng họ sẽ chấp nhận để Matic ra đi vào mùa hè tới.', 
N'Một cầu thủ của Manchester United nhiều khả năng sẽ đưa ra quyết định chia tay đội bóng vào mùa hè tới đây.' , NULL, 5, 10);

insert into Post_HE150490_SE1724 values(N'Gary Neville lên tiếng về tiền đạo 25 triệu: "Cậu ấy không cần ghi bàn"', '2022-02-03 22:00:00.000', 
N'Newcastle United đang có cuộc trốn chạy ngoạn mục khỏi nhóm xuống hạng mùa này. Họ hiện đang có chuỗi 3 chiến thắng liên tiếp với kết quả mới nhất là màn hạ gục Aston Villa 1-0 tại Saint James" Park, nơi tân binh Kieran Trippier đã lên tiếng với pha lập công duy nhất cho "Chích chòe". 

Ngoài ra, 1 chữ ký mùa đông khác của Newcastle là tiền đạo Chris Wood cũng có 1 trận đấu năng nổ dù anh không ghi bàn trận này.  Bàn về màn thể hiện của cựu chân sút Burnley, cựu danh thủ Gary Neville cho biết trên The Mirror: "Tôi thích tác động mà Wood tạo lên Newcastle. Trận đấu vừa qua, cậu ấy đã chơi tốt, đặc biệt trong khoản khống chế bóng ở cột cờ cuối sân khi thời gian trôi về cuối. 

Wood có thể ngay lập tức mang đến hiệu ích tích cực cho đội bóng và rõ ràng là Newcastle không cần chờ đợi những mẫu tân binh có thể giúp ích cho họ trong vài năm tới, đặc biệt khi họ đã tìm được người tạo sự thay đổi cho họ ngay ở thời điểm này. 

Dĩ nhiên, sẽ có những ý kiến chê trách Wood rằng cậu ấy không phải là mẫu tiền đạo ghi nhiều bàn thắng nhưng thành thật mà nói, tôi không quan tâm tới điều đó. Tôi nghĩ Wood là 1 chữ ký tốt, cậu ấy không cần ghi bàn. Đó là điều thực tế và Wood chính xác là những gì mà Newcastle cần vào lúc này".', 
N'Gary Neville cho rằng chữ ký có giá trị 25 triệu bảng ở kỳ chuyển nhượng mùa đông vừa qua không cần phải đáp ứng nhiệm vụ ghi bàn dù là một tiền đạo.' , NULL, 5, 11);

insert into Post_HE150490_SE1724 values(N'Nhà Kroenke nói một lời khiến NHM Arsenal đau lòng', '2022-02-03 10:10:00.000', 
N'Gia đình Kroenke nắm giữ 9,9% cổ phần của Arsenal vào năm 2007 và từ từ tăng tỷ lệ sở hữu lên con số 62,89% vào tháng 4 năm 2011. Stan Kroenke đã nắm toàn quyền kiểm soát CLB vào năm 2018 sau khi Alisher Usmanov chấp nhận bán toàn bộ số cổ phần của mình với giá 550 triệu bảng. Hiện tại, Josh, con trai của Stan đang tiếp quản CLB và mới đây Josh thừa nhận rằng thật khó để thấu hiểu được NHM Pháo thủ.

  
Josh chia sẻ với Road Trippin: "Tôi nghĩ rằng dù họ có hiểu đầy đủ khái niệm về những gì chúng tôi đang cố gắng làm hay không, điều đó không quan trọng."

"Tôi nghĩ một phần của việc trở thành một nhà lãnh đạo tốt là thay mặt nhóm đưa ra những quyết định bất thường và một phần của việc trở thành một nhà lãnh đạo tốt là lắng nghe nhóm và hiểu khi nào nên lùi lại," Josh nói về những khó khăn trong các quyết định gần đây.

"Tôi thấy được khuyến khích bởi toàn bộ kế hoạch vì nó đã đưa tôi và toàn bộ nhân viên của chúng tôi đến gần những NHM của chúng tôi hơn bao giờ hết," Giám đốc của Arsenal chia sẻ về mong muốn được thấu hiểu các CĐV nhiều hơn.

"Tôi thực sự thích ngồi xuống và nói chuyện với NHM của chúng tôi về thể thao bởi vì chúng tôi nhìn nó qua cùng một lăng kính, chúng tôi đều muốn một điều giống nhau và đó là chiến thắng," Josh kết lại.', 
N'Ông chủ Arsenal, Josh Kroenke, thừa nhận rằng ông cảm thấy "thực sự khó có thể liên hệ" với NHM ở CLB.' , NULL, 5, 12);

insert into Post_HE150490_SE1724 values(N'Hành quân chiến PSG, Ancelotti đồng ý với Pochettino', '2022-02-02 18:10:00.000', 
N'Tâm điểm làng túc cầu rạng sáng mai không gì khác ngoài màn thư hùng giữa Paris Saint-Germain và Real Madrid tại Parc des Princes. Trận cầu thuộc khuôn khổ vòng 1/8 Champions League mang ý nghĩa đặc biệt với cá nhân HLV Carlo Ancelotti - nhà cầm quân từng có thời gian dẫn dắt chính PSG.

Trước thềm màn đấu trí chiến lược gia người Ý, thuyền trưởng PSG đương nhiệm - Mauricio Pochettino khẳng định chất lượng của cặp đấu ngày mai: "Cặp đấu này có thể là 1 trận chung kết Champions League, dựa trên các tên tuổi, cầu thủ và chất lượng." "Chúng tôi tôn trọng Real, họ là 1 trong những CLB lớn nhất thế giới. 13 danh hiệu Champions League không chỉ kể cho bạn về các cầu thủ hay HLV, mà là sức mạnh và cấu trúc nội tại của 1 CLB. PSG đã chờ đợi đoạt cúp bạc trong hơn 50 năm. Chúng tôi là những kẻ thách thức, cố gắng xây dựng đội hình để tiến gần hơn đến giấc mơ ấy."

Trả lời phỏng vấn được ESPN dẫn lại, Ancelotti tán đồng với quan điểm của đồng nghiệp bên kia chiến tuyến: "Real tràn đầy tự tin. PSG là 1 đối thủ khó, những người cũng muốn vô địch đấu trường này như chúng tôi. Đây có thể là 1 trận chung kết và chẳng ai sẽ ngạc nhiên cả."

"Chúng tôi phấn khích với viễn cảnh loại 1 địch thủ có thể cạnh tranh chức vô địch Champions League."', 
N'2 chiến lược gia danh tiếng trong giới huấn luyện chia sẻ cùng 1 quan điểm về trận đại chiến.' , NULL, 5, 13);

insert into Post_HE150490_SE1724 values(N'Rafa Benitez dự đoán cặp trận Liverpool - Inter', '2022-02-02 22:20:00.000', 
N'Rafael Benitez, người đã dẫn dắt Liverpool đến với vinh quang Champions League vào năm 2005, đã đưa ra dự đoán của mình về cuộc đụng độ ở vòng 16 đội của Lữ đoàn đỏ với Inter Milan

Liverpool đang hướng tới chức vô địch châu Âu lần thứ bảy, họ là bên được đánh giá cao hơn để giành vé vào tứ kết, nhưng Benitez khẳng định cặp đấu này sẽ diễn ra chặt chẽ: "Inter đã không lọt vào vòng knock-out một cách tình cờ: họ là một đội luôn biết phải làm gì trên sân và rất giỏi tận dụng điểm yếu của những người khác." "Sơ đồ 3-5-2 của Simone Inzaghi có thể tạo ra khó khăn cho những đội không quen đối đầu với anh ấy. Tuy nhiên, ngược lại, có một Liverpool với sơ đồ 4-3-3 tấn công, điều này làm cho sự hăng hái và cường độ cao trở thành vũ khí tốt nhất của nó."

"Tôi không mong đợi một cuộc đối đầu tay đôi với một kết quả có thể đoán trước được, đây sẽ là 2 trận đấu thú vị trong đó ai kiểm soát bóng sẽ chiếm ưu thế."

Benitez dành nhiều lời khen cho bộ ba của Liverpool là Mohamed Salah, Sadio Mane và Roberto Firmino, nhưng cũng nhấn mạnh mối đe dọa từ Diogo Jota. Tiền đạo người Bồ Đào Nha chỉ đứng sau Salah trong bảng xếp hạng ghi bàn ở Premier League mùa này với 12 bàn sau 23 lần ra sân.', 
N'Rafa Benitez dự đoán trận đấu giữa Liverpool và Inter Milan sẽ ngang tài ngang sức hơn nhiều người hâm mộ kỳ vọng.' , NULL, 5, 14);

insert into Post_HE150490_SE1724 values(N'Ronaldo tịt ngòi 6 trận, HLV đối thủ bàn luận đẳng cấp', '2022-02-02 10:59:00.000', 
N'Rạng sáng mai, Brighton & Hove Albion sẽ hành quân đến Old Trafford chạm trán Manchester United. Cristiano Ronaldo của đội chủ nhà là cái tên thu hút chú ý. CR7 đang bị bủa vây bởi áp lực khi chưa ghi được bàn thắng nào trong năm 2022.

Nhận định qua Metro, HLV Graham Potter - Brighton so sánh Ronaldo với Neal Maupay - cậu học trò vừa giải cơn khát bàn thắng: "Các bạn có lẽ đã bỏ qua những thành công tột đỉnh mà Ronaldo đạt được trong sự nghiệp cũng như năng lực của cậu ấy. Ý tôi đó là 1 sự nghiệp hoàn toàn đáng kinh ngạc. Ronaldo có đẳng cấp thế giới, thậm chí là đẳng cấp vượt ngoài hành tinh." "Nhiều khi chúng ta quá tập trung vào các cá nhân mà quên đi bóng đá là trò chơi tập thể. Đôi khi đội bóng không ghi bàn và cầu thủ ở trên sân trở thành tâm điểm. Lấy ví dụ là trường hợp Neal của chúng tôi. Như tôi luôn nói và cũng từng nói ở trường hợp của Neal, chuyện không chỉ xoay quanh cá nhân, mà là cả tập thể.

Từ những gì tôi chứng kiến, bạn vẫn có thể thấy chất lượng mà Ronaldo sở hữu và phẩm chất mà cậu ấy mang đến cho tập thể. Tôi chưa từng đối đầu Ronaldo nên tôi trông chờ được bước vào trận cầu và tranh đấu với 1 trong những cầu thủ hay nhất mọi thời đại."', 
N'Thuyền trưởng các vị khách nhận định về trụ cột đội chủ nhà đang nếm trải cơn khô hạn bàn thắng.' , NULL, 5, 15);

insert into Post_HE150490_SE1724 values(N'Luke Shaw nói thẳng về đẳng cấp của Sancho', '2022-02-01 18:12:02.000', 
N'Theo quan điểm đến từ Luke Shaw, sau quãng thời gian khởi đầu khó khăn, Jadon Sancho đã bắt đầu thể hiện phẩm chất của một cầu thủ thực sự tài năng. Trao đổi với United Review, ngôi sao người Anh chia sẻ (dẫn lời bởi Metro):

"Đối với tôi, điều điên rồ nhất đối với Jadon là cậu ấy thực sự trẻ như thế nào. Tôi đã không nhận ra, ngay cả khi tập trung cùng cậu ấy trên đội tuyển Anh - rằng Sancho còn trẻ đến vậy." “Sancho là một cầu thủ tuyệt vời. Khi bạn đến đây, không hề dễ dàng để khởi đầu - cá nhân tôi cũng biết điều đó. Giờ thì Sancho bắt đầu bình tĩnh hơn một chút và điều đó đang thực sự thể hiện trong cách cậu ấy thi đấu, đặc biệt là trong một vài trận gần đây."

"Sancho bắt đầu trở nên xuất sắc, cầm bóng nhiều hơn và rê bóng tốt, thực hiện được những gì cậu ấy từng làm ở Dortmund. Cậu ấy sẽ ngày càng trở nên giỏi hơn.

"Vào lúc này, tôi thích chơi cùng Sancho, và tôi thực sự cảm thấy mừng cho Sancho vì cậu ấy đã có một thời gian khó khăn khi bắt đầu tại đây."

"Sancho sẽ trở thành một cầu thủ đẳng cấp thế giới, cậu ấy có rất nhiều tài năng. Sancho chỉ cần tiếp tục nỗ lực chăm chỉ, tiếp tục phát huy khả năng của mình và trở thành tài sản thực sự của câu lạc bộ này."', 
N'Luke Shaw nhận định, bom tấn của Manchester United đang dần cho thấy tài năng của một cầu thủ đẳng cấp.' , NULL, 5, 16);

insert into Post_HE150490_SE1724 values(N'Nửa năm trôi qua, Varane nói thẳng khác biệt lớn giữa Premier League với La Liga', '2022-02-01 20:20:00.000', 
N'Trả lời phỏng vấn Inside United được Euro Sport dẫn lại, Raphael Varane tự hào khi tiếp nối con đường khoác áo Manchester United của các đàn anh đồng hương như Eric Cantona, Fabien Barthez và Patrice Evra: "Thật tuyệt khi được đề cập bên cạnh những cầu thủ vĩ đại như vậy. Tôi sẽ cố gắng dốc hết sức và chỉ muốn tận hưởng thời gian tại đây. Tôi vui mừng khi có mối quan hệ với CLB lẫn các fan. Tôi đến đây để chơi hay nhất có thể, giúp sức cho CLB giành các danh hiệu và tận hưởng cảm xúc cùng các fan."

Trung vệ người Pháp phân tích khác biệt giữa Premier League và La Liga: "Cường độ rất khác biệt. Tốc độ trận đấu ở Anh thật sự ở cấp độ cao. Đây là 1 trải nghiệm tuyệt vời. Tôi thích bầu không khí xung quanh SVĐ và tinh thần bóng đá ở đây: rất căng thẳng nhưng luôn giàu khí thế và vô cùng tích cực." "Các trận đấu đều rất khó khăn. Bạn không thể lơi lỏng. Bạn có thể ở thế chiến thắng và khi chỉ còn 10 phút, bất kỳ điều gì cũng có thể xảy ra.

Tôi nghĩ Premier League là giải VĐQG số 1 thế giới và cường độ nơi đây hoàn toàn đáng kinh ngạc. Mọi đội bóng đều sở hữu các cầu thủ chất lượng cao. Cấp độ chiến thuật cũng rất cao với rất nhiều cầu thủ cùng HLV đến từ khắp mọi nơi, nên có sự pha trộn giữa các nền văn hóa khác biệt cùng phong cách và bản lĩnh khác nhau. Tôi nghĩ Premier League là đỉnh cao bởi lẽ giải đấu này tụ hội tinh túy từ khắp nơi."', 
N'Trụ cột hàng phòng ngự nửa đỏ Manchester chia sẻ góc nhìn trong mùa giải đầu tiên chơi bóng tại Anh.' , NULL, 6, 17);

insert into Post_HE150490_SE1724 values(N'5 lý do PSG sẽ giành chiến thắng trước Real Madrid', '2022-02-01 10:25:00.000', 
N'5. Lợi thế sân nhà

Trận lượt đi sẽ diễn ra trên SVĐ Công viên các Hoàng tử. PSG sẽ tận dụng tối đa sự ủng hộ từ CĐV nhà để tìm kiếm một kết quả có lợi trước khi bước vào trận lượt về. PSG đã biến Parc des Princes thành một pháo đài chắc chắn. Họ đã chơi 15 trận trên sân nhà mùa này mà không để thua lần nào.

4. Phong độ tệ hại của Real Madrid Sự xuất hiện của Carlo Ancelotti đã làm cho Los Blancos khởi sắc rõ rệt ở mùa giải năm nay. Tuy nhiên, phong độ của Kền kền trắng hiện rất đáng quan ngại, khi họ chỉ thắng 1 trong 4 lần ra sân gần nhất. Tệ hơn là Real chỉ ghi được 1 bàn trong 3 trận gần đây. Dấu hiệu này thực sự đáng lo, khi họ phải làm khách trên sân của PSG.

Các học trò của Ancelotti vẫn làm tốt ở khâu chuyền và kiểm soát bóng, nhưng họ lại thiếu ý tưởng mỗi khi áp sát khung thành của đối phương. Vinicius Jr đang thăng hoa cũng bất ngờ tuột dốc khi không ghi được bàn nào trong 5 trận gần nhất.

3. Chấn thương của Karim Benzema

Tiền đạo người Pháp được điền tên vào danh sách đăng ký của trận đấu này, nhưng truyền thông Tây Ban Nha cho biết Benzema vẫn chưa hoàn toàn bình phục chấn thương. Dù có thể ra sân, tuy nhiên chưa chắc chân sút 34 tuổi thăng hoa như trước đó anh từng thể hiện.

2. Kylian Mbappe đã có phong độ tuyệt vời

Mbappe đứng trước tin đồn sẽ gia nhập Real vào Hè này. Nhưng điều đó không có nghĩa chân sút 23 tuổi sẽ “nhượng bộ” Los Blancos trong trận cầu rạng sáng mai. Tại vòng bảng Champions League, Mbappe có 4 bàn cùng 4 kiến tạo sau 6 trận. Ngôi sao người Pháp vẫn đang duy trì phong độ tuyệt vời, khi đã ghi được 7 bàn cùng 3 kiến tạo trong 9 trận ra sân gần nhất trên mọi đấu trường. Mbappe vì vậy đã sẵn sàng để đốt lưới Real Madrid.

1. “Hung thần” Lionel Messi

Có thể nói Real Madrid là “con mồi” ưa thích của cựu tiền đạo Barcelona. Trong 45 lần đối đầu Kền kền trắng trong sự nghiệp, Messi có 26 lần sút tung lưới đối thủ, bên cạnh 14 pha kiến tạo. Dòng máu Cule chảy trong người, El Pulga chắc chắn sẽ đặt quyết tâm hạ gục Los Blancos. Truyền thông đồn đoán Messi đã tỏ ra phấn khích khi lá thăm đưa PSG đụng độ Real tại vòng 16 đội.', 
N'Rạng sáng mai, người hâm mộ sẽ hướng đến Paris để chứng kiến màn so tài giữa PSG vs Real Madrid thuộc khuôn khổ vòng 16 đội Champions League.' , NULL, 6, 3);

insert into Post_HE150490_SE1724 values(N'Ferdinand chỉ ra nhân tố M.U còn thiếu so với Liverpool, Man City', '2022-01-31 18:00:02.000', 
N'Man Utd hiện đang gặp rất nhiều khó khăn dưới triều đại Ralf Rangnick. Nửa đỏ thành Manchester trải qua chuỗi 3 trận không biết mùi chiến thắng, bị loại khỏi đấu trường FA Cup và mất vị trí thứ 4 trên BXH vào tay của West Ham.

Rio Ferdinand cảm thấy đội hình hiện tại của Man Utd đang thiếu đi một thủ lĩnh mà đối thủ của họ là Liverpool và Man City có thừa: “Tôi không thấy bất kỳ ai trong đội hình Man Utd có được sự tự tin, hoặc có tố chất đó để dẫn dắt các cầu thủ. Những CLB hàng đầu có các cầu thủ đó. Bạn nhìn vào Liverpool hiện nay… Jordan Henderson, James Milner. Ngay cả khi anh ấy ngồi trên băng ghế dự bị, vào giờ nghỉ giữa hiệp, anh ấy sẽ nói vào tai mọi người. Andy Robertson, Virgil van Dijk. Họ có 4 người và tôi chắc chắn rằng sẽ có nhiều cầu thủ khác để làm điều đó.

Bạn nhìn vào Man City, Ruben Dias hoạt bát và hòa nhập với mọi người, Raheem Sterling sẽ nói chuyện với toàn đội, Kevin De Bruyne cũng sẽ nói chuyện với các cầu thủ.

Bạn cần những người đàn ông ở đó để dẫn dắt mọi người và gạt bỏ cái tôi của bạn, gạt sự kiêu hãnh của bạn sang một bên.”

Rạng sáng mai, M.U sẽ có cuộc tiếp đón Brighton thuộc khuôn khổ đá bù vòng 18 Premier League.', 
N'Cựu trung vệ của Quỷ đỏ đã chỉ ra một nhân tố quan trọng mà hiện tại đội chủ sân Old Trafford không có.' , NULL, 6, 4);

insert into Post_HE150490_SE1724 values(N'Callum Hudson-Odoi cân nhắc đổi màu áo', '2022-01-31 22:00:09.000', 
N'Ngôi sao của Chelsea đã 3 lần khoác áo tuyển Anh và có trận ra mắt Tam sư khi còn là một thiếu niên vào năm 2019. Nhưng do các quy tắc hiện tại của FIFA, Hudson-Odoi vẫn sẽ được phép chuyển đội, chưa vượt qua giới hạn 4 lần khoác áo đội tuyển trước 21 tuổi.

Sau khi giúp Chelsea vô địch Club World Cup sau trận thắng Palmeiras 2-1, Hudson-Odoi được hỏi liệu anh có sẵn sàng cam kết tương lai của mình với Tam sư và từ chối Ghana trước World Cup cuối năm nay hay không. Anh nói: "Tôi không biết. Chúng ta sẽ biết khi thời điểm đó đến." Các ngôi sao Premier League sinh ra ở Anh như Michail Antonio và Matty Cash, đã chọn chơi cho Jamaica và Ba Lan. 

Tương lai của Hudson-Odoi ở cấp câu lạc bộ đã là chủ đề được quan tâm trong vài mùa giải qua, anh đang phải vật lộn để có được suất ra sân thường xuyên trong đội hình của Chelsea dưới thời Frank Lampard và huấn luyện viên hiện tại Thomas Tuchel.

Tuy nhiên anh vẫn muốn ở lại: "Những danh hiệu lớn như thế này là lý do mà bạn muốn chơi cho một câu lạc bộ như thế này. Những trận đấu lớn, những danh hiệu lớn, bạn muốn giành chiến thắng nhiều nhất có thể với một câu lạc bộ như thế này. Mục tiêu của chúng tôi là luôn giành chiến thắng trong các trận đấu và giành được càng nhiều càng tốt.', 
N'Callum Hudson-Odoi đã có 3 lần khoác áo đội tuyển Anh nhưng ngôi sao của Chelsea đang xem xét chuyển màu áo.' , NULL, 6, 5);

insert into Post_HE150490_SE1724 values(N'Dembele là nạn nhân cho sự đột biến của Traore', '2022-01-31 10:09:00.000', 
N'Barcelona đã chơi hai trận kể từ khi hoàn tất việc ký hợp đồng với Adama Traore từ Wolves. Cầu thủ người TBN nhanh chóng hoà nhập với CLB xứ Catalan với 2 trận đấu gần nhất khi anh chơi tổng cộng 151 phút. Trong trận đấu với Atletico Madrid và Espanyol, Traore thể hiện sự nổi bật và cống hiến một điều gì đó khác biệt trên hàng công.

Tốc độ, khả năng rê dắt, thể chất và phẩm chất tạt bóng của anh ấy đã giúp Blaugrana kiếm được 4 điểm. Anh kiến tạo cho Gavi đánh đầu tung lưới Atletico và rồi làm điều tương tự giúp Luuk de Jong trở thành người hùng.  Điều đó đến vào cuối màn trình diễn rất mạnh mẽ của Traore tại RCDE Stadium. Ngôi sao sinh năm 1996 có thể đã ghi một bàn thắng cho riêng mình nếu Diego Lopez không xuất sắc cản phá ở trận cầu trước Espanyol.

Traore sở hữu hàng loạt thông số ấn tượng khi là cầu thủ giành chiến thắng tranh chấp nhiều nhất bên phía Barca với 11 lần. Anh thực hiện nhiều nỗ lực đi bóng thành công nhất bên phía Barca với 5 tình huống và cũng là người tạt bóng nhiều nhất khi có 10 lần tìm thấy đồng đội.

Anh còn tạo ra 4 pha dứt điểm, chuyền thành công 49/58 lần, đạt tỉ lệ 84%. Ngoài ra, Traore đồng thời thể hiện sự năng nổ trong phòng ngự nhờ vào 5 nỗ lực thu hồi bóng thành công.

Traore hoàn thành tất cả và anh ấy đang làm điều đó một cách tràn đầy năng lượng, qua đó tạo nên luồng sinh khí mới trên hàng công Barca. Những màn trình diễn như thế này sẽ khiến Ousmane Dembele tiếp tục bị thất sủng và Barca càng mạnh dạn nghĩ đến việc chia tay cầu thủ người Pháp. ', 
N'Sau 2 trận đấu, Adama Traore đang cho thấy anh là chữ ký giá trị nhất của Barcelona ở kỳ chuyển nhượng mùa đông.' , NULL, 6, 6);

insert into Post_HE150490_SE1724 values(N'Paul Ince: "Ronaldo đang trở thành tấm gương xấu ở MU"', '2022-01-30 18:16:09.000', 
N'"Đây không phải là Ronaldo của 19 năm trước, thời điểm cậu ấy lần đầu đặt chân đến Old Trafford. Đây là Ronaldo năm 37 tuổi. Và nhiều người tin sự trở lại của cậu ấy sẽ tốt cho MU lẫn những cầu thủ trẻ", Goal dẫn lời Ince.

Cầu thủ khoác áo MU trong giai đoạn 1989-1995 chỉ trích thái độ của CR7. Ông cho rằng những hành động của Ronaldo như bỏ vào đường hầm sớm, phản ứng, sẽ mang lại sự tiêu cực.

"Với tôi, Ronaldo đang là tấm gương xấu. Việc cậu ấy không ra sân từ đầu ở trận gặp Burnely, đội cuối bảng xếp hạng, có thể là sai lầm. Đáng ra, vấn đề này (không giành kết quả tốt) thuộc về toàn đội nhưng giờ thì Ronaldo là tâm điểm", ông nói thêm. Ronaldo đang trải qua khoảng thời gian khó khăn trong sự nghiệp. Anh có "cơn hạn" bàn thắng dài nhất trong vòng 10 năm qua. Trong 6 trận gần nhất, siêu sao người Bồ Đào Nha không có pha lập công nào.

Bên cạnh đó, Ronaldo bị chỉ trích về thái độ. Anh công khai thể hiện sự thất vọng khi bị HLV Ralf Rangnick thay ra. Khi MU nhận kết quả bất lợi, anh cũng bỏ vào đường hầm sớm trong khi các đồng đội vẫn ở lại sân để cảm ơn cổ động viên đến ủng hộ CLB.

Gary Neville, cựu cầu thủ MU và là đồng đội cũ của CR7, chỉ trích hành động này. Trong khi đó, tờ AS (Tây Ban Nha) cho rằng Ronaldo dẫn đầu nhóm cầu thủ bất mãn với HLV Rangnick vì cho rằng nhà cầm quân người Đức không đủ trình độ để dẫn dắt MU.

Ronaldo đang không hạnh phúc, nhưng chưa có ý định rời Old Trafford. Siêu sao người Bồ Đào Nha cùng gia đình đã ổn định cuộc sống ở Anh. Con trai cả Ronaldo Junior cũng vừa ký hợp đồng với đội U11 "Quỷ đỏ". Cầu thủ này sẽ kiên nhẫn chờ sự xuất hiện của chiến lược gia mới ở mùa 2022/23.',
N'Cựu cầu thủ MU cho rằng Cristiano Ronaldo không mang lại sự tích cực cho "Quỷ đỏ" như nhiều người nghĩ ở thời điểm siêu sao Bồ Đào Nha trở lại Old Trafford.' , NULL, 6, 7);

insert into Post_HE150490_SE1724 values(N'Giải U23 Đông Nam Á 2022 bất ngờ có biến lớn', '2022-01-30 23:23:56.000', 
N'Theo thông tin mới nhất, Liên đoàn bóng đá Myanmar (MFF) đã gửi thông báo đến Liên đoàn bóng đá Đông Nam Á (AFF) về việc xin rút lui khỏi Giải vô địch U23 Đông Nam Á 2022 ngay trước thềm trận đấu với U23 Malaysia. Lý do mà MFF đưa ra là bởi U23 Myanmar có nhiều cầu thủ đã có kết quả xét nghiệm dương tính với Covid-19 nên đội bóng này không đủ quân số để tham dự U23 Đông Nam Á 2022. 

Cũng chính vì vậy mà trận đấu mở màn của U23 Myanmar với U23 Malaysia diễn ra vào lúc 16h00 hôm nay (15/2) cũng sẽ bị hủy.

  
Trước đó, U23 Indonesia cũng đã xin rút lui khỏi giải vô địch U23 Đông Nam Á 2022 vì lý do tương tự. 

Với việc U23 Myanmar và U23 Indonesia xin rút lui thì bảng B chỉ còn hai đội là U23 Malaysia và U23 Lào. 

Điều này sẽ ảnh hưởng lớn tới giải đấu đang được tổ chức tại Campuchia do số đội ở các bảng gặp sự chênh lệch quá lớn. Không loại trừ khả năng giải đấu phải hủy bỏ. 

Hiện tại, bảng A có 4 đội gồm chủ nhà U23 Campuchia, U23 Timor Leste, U23 Brunei và U23 Philippines đã thi đấu xong lượt trận đầu tiên. Bảng C gồm 3 đội là U23 Thái Lan, U23 Singapore và U23 Việt Nam.', 
N'Ít giờ trước trận đấu ra quân ở bảng B Giải vô địch U23 Đông Nam Á 2022, U23 Myanmar đã quyết định xin rút lui vì dịch Covid-19.' , NULL, 6, 8);

insert into Post_HE150490_SE1724 values(N'Palmeiras thua Chelsea không tâm phục khẩu phục', '2022-01-30 10:08:08.000', 
N'Quả phạt đền ở phút 117 của Kai Havertz đã giúp đội bóng của Thomas Tuchel có chiến thắng kịch tính để giành chức vô địch thế giới đầu tiên.

Nhưng HLV Ferreira không thực sự phục chiến thắng của đội bóng châu Âu. Ông nói trong cuộc họp báo sau trận đấu: "Bạn có biết tại sao đôi khi tôi buồn không? Bạn có biết có bao nhiêu người Anh đã đá chính trong đội hình của họ không? Biết có bao nhiêu người Brazil chơi trong đội của tôi không?" "Đôi khi mọi người không hiểu rằng chúng tôi đang không ở trên một sân chơi bình đẳng. Chúng tôi đã làm được rất nhiều và chúng tôi có rất nhiều điều để tự hào. Tôi không đổ lỗi cho bất kỳ ai, trách nhiệm thuộc về tôi nhưng vấn đề năng lực rất quan trọng."

"Đó là lý do tại sao tôi nói rằng bạn hãy xem đối thủ của chúng tôi có bao nhiêu cầu thủ người Anh đá chính. Ý tôi là, đây là một câu lạc bộ Anh đúng không? Có bao nhiêu người trong số họ đã đá chính cho Chelsea?"

Câu trả lời là có 2 cầu thủ người Anh trong đội hình xuất phát của Chelsea - Callum Hudson-Odoi và Mason Mount. Điều này trái ngược với 9 cầu thủ Brazil trong đội hình xuất phát của Palmeiras, với Joaquin Piquerez (Uruguay) và Gustavo Gomez (Paraguay) là 2 cầu thủ nước ngoài duy nhất đá chính cho đội bóng của Ferreira.', 
N'Huấn luyện viên trưởng của Palmeiras, Abel Ferreira, đã nói về việc có ít cầu thủ người Anh trong đội hình Chelsea sau trận chung kết Club World Cup.' , NULL, 6, 9);

insert into Post_HE150490_SE1724 values(N'Neil Warnock: "Đến Chelsea đúng lúc, cậu ấy quá may mắn"', '2022-01-29 18:29:30.000', 
N'Vào đêm thứ Bảy mới đây, The Blues đã đăng quang chức vô địch FIFA Club World Cup lần đầu tiên trong lịch sử sau khi đánh bại Palmeiras trong hiệp phụ nhờ quả phạt đền của Kai Havertz. Qua đó, đội trưởng Azpilicueta đã trở thành cầu thủ đầu tiên của Chelsea giành được mọi danh hiệu, trước đó đã có Premier League, Champions League, Europa League, Siêu cúp châu Âu, FA Cup và League Cup.

Cựu huấn luyện viên của Premier League, Warnock tin rằng cầu thủ 32 tuổi đã may mắn giành được rất nhiều cúp bạc: "Tôi nghĩ cậu ấy là một chàng trai rất may mắn khi được ở một câu lạc bộ như Chelsea." "Tôi không nghĩ cậu ấy là một hậu vệ giỏi. Đôi khi trong bóng đá, bạn cần một chút may mắn và tôi nghĩ cậu ấy đã có một chút may mắn khi đến đúng lúc và đúng nơi. Đó là những gì bạn cần trong bóng đá. Bạn cần một chút may mắn để thành công."

Azpilicueta đóng vai trò quan trọng trong chiến thắng trước đội bóng Brazil và cho thấy chính xác lý do tại sao anh được đeo băng đội trưởng qua cách anh giúp Havertz ghi bàn thắng quyết định.

Azpilicueta giải thích: "Tôi đã nói với Kai rằng cậu ấy sẽ sút. Tôi chỉ cố gắng giải tỏa áp lực từ cậu ấy, bình tĩnh hơn. Còn 3 phút nữa, đó là một thời điểm quan trọng. Nó đã thành công!"', 
N'Neil Warnock cho rằng Cesar Azpilicueta đã rất may mắn khi giành được tất cả các danh hiệu trong thời gian thi đấu cho Chelsea.' , NULL, 7, 10);

insert into Post_HE150490_SE1724 values(N'Chỉ 4 cầu thủ vô địch PL, Champions League, Club World Cup và World Cup', '2022-01-29 23:09:09.000', 
N'1. Thierry Henry

Henry là một phần của đội tuyển Pháp vô địch World Cup 1998 trên sân nhà và kết thúc giải đấu với tư cách là vua phá lưới với ba bàn thắng. Nhưng anh chỉ ngồi dự bị trong suốt chiến thắng 3-0 của họ trước Brazil trong trận chung kết. Tiền đạo này chuyển đến Arsenal một năm sau đó và giành được hai chức vô địch Premier League tại Highbury nhưng không thể nâng cao danh hiệu Champions League, để thua Barcelona trong trận chung kết năm 2006.

Henry đã rời Arsenal để đến Barcelona vào mùa hè năm 2007. Anh ấy cuối cùng đã chạm tay vào chiếc cúp Champions League sau khi đánh bại Man Utd trong trận chung kết năm 2009 và cũng giành chức vô địch FIFA Club World Cup vài tháng sau đó.

2. Gerard Pique

Tốt nghiệp học viện La Masia, Pique rời Barcelona đến Man Utd vào năm 2004 để tìm kiếm suất đá chính thường xuyên ở đội một. Anh là một phần của Quỷ đỏ đã vô địch Premier League và Champions League 2007-08, với 12 lần ra sân.

Nhưng trung vệ này sau đó trở lại câu lạc bộ thời thơ ấu Barcelona và bỏ lỡ chức vô địch FIFA Club World Cup của Man Utd vào tháng 12 năm 2008. Pique không phải đợi lâu để chạm tay vào chiếc cúp này, khi Barcelona đánh bại Man Utd trong trận chung kết Champions League 2009 trước khi vượt qua Estudiantes tại Club World Cup.

Tuyển thủ Tây Ban Nha cũng đá chính cả 7 trận tại World Cup 2010 và giữ sạch lưới 5 trận, bao gồm chiến thắng 1-0 trước Hà Lan trong trận chung kết. Anh cũng đã giành được hai danh hiệu Champions League khác và hai Club World Cup nữa. 3. Pedro Cầu thủ thứ ba của Barcelona góp mặt trong danh sách này, Pedro được đôn lên đội một trước mùa giải 2008-09 và là một phần của đội giành được cú ăn ba. Anh chỉ vào sân ở phút bù giờ khi gặp Man Utd vào năm 2009 nhưng đã ghi bàn trong cả trận bán kết và chung kết Club World Cup.

Cầu thủ chạy cánh này cũng có tên trong đội tuyển Tây Ban Nha tham dự World Cup 2010 và kiến tạo cho David Villa trong trận tứ kết trước khi đá chính ở trận bán kết và chung kết. Pedro đã giành được một Club World Cup khác và hai Champions League nữa với Barcelona trước khi ký hợp đồng với Chelsea vào năm 2015.

Anh là cầu thủ quan trọng của Antonio Conte khi Chelsea vô địch Premier League mùa giải 2016-17, ghi được 9 bàn thắng và 10 đường kiến tạo trong 35 lần ra sân.

4. N’Golo Kante

Kante là một cầu thủ 24 tuổi tương đối vô danh khi anh chuyển đến Leicester City từ đội bóng của Ligue 1 Caen, trong một hợp đồng trị giá 5,6 triệu bảng vào năm 2015. Nhưng màn trình diễn chói sáng của anh đã giúp Leicester từ vị trí thứ 17 lên ngôi vị vô địch trong vòng 12 tháng.

Sau đó, tiền vệ này gia nhập Chelsea và đóng một vai trò quan trọng khi họ giành chức vô địch Premier League, trở thành cầu thủ đầu tiên trong lịch sử có được danh hiệu này trong các mùa giải liên tiếp với các câu lạc bộ khác nhau.

Kante đã thể hiện phong độ đó trên đấu trường quốc tế và chơi 575 trong tổng số 630 phút có thể trong chiến tích vô địch World Cup 2018 của Pháp. Anh cũng đã nâng cao chức vô địch Champions League năm 2021 sau khi giành giải thưởng Cầu thủ xuất sắc nhất trận trong các trận bán kết lượt đi, bán kết lượt về và chung kết.', 
N'Sau khi giúp Chelsea đánh bại Palmeiras, N’Golo Kante trở thành cầu thủ thứ tư giành được cả 4 danh hiệu Premier League, Champions League, FIFA Club World Cup và World Cup.' , NULL, 7, 11);

insert into Post_HE150490_SE1724 values(N'Sergio Ramos chính thức bỏ lỡ cuộc tái ngộ Real Madrid', '2022-01-29 10:12:12.000', 
N'Có thể khẳng định Sergio Ramos là “huyền thoại sống” của Los Blancos. Ngôi sao người Tây Ban Nha có 16 năm gắn bó với đội chủ sân Bernabeu, đem về hàng loạt danh hiệu lớn nhỏ, đáng chú ý là 4 chức vô địch Champions League và 5 La Liga. Ramos còn ghi 101 bàn sau 671 trận, trong đó có không ít những pha lập công quan trọng.

Tuy nhiên vào mùa Hè 2021, Ramos và Real không đạt được thỏa thuận về 1 bản hợp đồng mới, do đó ngôi sao 35 tuổi đã chia tay đội bóng Hoàng gia Tây Ban Nha rồi gia nhập PSG theo dạng chuyển nhượng tự do. Số phận trêu đùa khi Gã nhà giàu nước Pháp đụng độ Los Blancos ở vòng 16 đội Champions League. Tuy nhiên Ramos đã bỏ lỡ cuộc tái ngộ đội bóng cũ, khi PSG xác nhận trên trang chủ: “Sergio Ramos sẽ tiếp tục tập riêng vì chấn thương bắp chân. Một đánh giá mới sẽ được thực hiện trong tuần này.”

Chấn thương khiến trung vệ người Tây Ban Nha không thể hiện được nhiều kể từ khi gia nhập đội chủ sân Công viên các Hoàng tử. Vấn đề ở bắp chân làm Ramos không ra sân trong 14 trận đầu tiên cả PSG ở muà giải năm nay. Cựu sao Real cũng chỉ mới chơi 4 trận tại Ligue 1, một con số vô cùng ít ỏi.', 
N'Trung vệ người Tây Ban Nha sẽ bỏ lỡ màn tái ngộ với đội bóng cũ Real Madrid vào rạng sáng mai.' , NULL, 7, 12);

insert into Post_HE150490_SE1724 values(N'Với Messi, PSG có thể tự tin đánh bại Real Madrid', '2022-01-28 18:28:28.000',
N'Lionel Messi sắp sửa có lần đầu tiên trong sự nghiệp đối đầu với Real Madrid nhưng không phải trong màu áo Barcelona. Rạng sáng mai, PSG sẽ tiếp đón đội bóng Hoàng gia Tây Ban Nha thuộc khuôn khổ lượt đi vòng 16 đội Champions League 2021/22.

Chủ nhân của 7 danh hiệu Quả bóng Vàng vẫn chưa đạt đến đẳng cấp cao nhất tại PSG, tuy nhiên Messi hẳn sẽ rất phấn khích trước cuộc đụng độ với đối thủ đã mang lại cho anh nhiều khoảnh khắc đáng nhớ nhất trong sự nghiệp. Dù đang gặp khó khăn tại Ligue 1, El Pulga vẫn “bén duyên” với đấu trường châu Âu khi đã có 5 pha lập công sau 5 trận. Kể từ khi ra mắt với tư cách là cầu thủ chuyên nghiệp, Messi đã có tổng cộng 45 lần đối đầu với Real Madrid trên mọi đấu trường. Tuyển thủ Argentina đóng góp trực tiếp vào 40 bàn thắng – với 26 bàn và 14 pha kiến tạo. Ngôi sao 34 tuổi cũng có 2 lần lập hat-trick vào lưới Kền kền trắng.

26 bàn thắng của Messi vẫn đang là một kỷ lục của El Clasico, cột mốc mà có lẽ không bao giờ bị xô đổ. Real Madrid cùng với Sevilla, Atletico Madrid, Valencia và Athletic Bilbao là “con mồi” ưa thích của Messi trong màu áo Barcelona.

Trong 45 lần chạm trán, El Pulga đã giành 19 chiến thắng – đạt tỷ lệ 42%, còn lại hòa 11 và thua 15. Rõ ràng PSG hoàn toàn có thể tự tin về một kết quả có lợi trước Real Madrid, khi họ đang sở hữu Messi trong đội hình.', 
N'Có thể khẳng định siêu sao người Argentina là “hung thần” đáng sợ nhất đối với Real Madrid.' , NULL, 7, 13);

insert into Post_HE150490_SE1724 values(N'Vì lý do này, Salah sẽ rời Liverpool?', '2022-01-28 22:25:00.000', 
N'Kể từ khi gia nhập Lữ đoàn đỏ vào năm 2017, Mohamed Salah đã trở thành nhân tố chủ chốt không thể thay thế trên hàng công. Phong độ xuất sắc của cựu sao AS Roma góp công lớn giúp Liverpool tìm lại được vị thế vốn có. Họ lần lượt vô địch Champions League 2019 và Premier League 2020.

Ở mùa giải năm nay, chân sút 29 tuổi vẫn duy trì màn trình diễn bùng nổ khi đã có 16 pha lập công và 9 đường chuyền dọn cỗ tại Premier League. Tuy nhiên Salah cũng khiến BLĐ Liverpool đau đầu khi hợp đồng của tiền đạo này sẽ hết hạn vào năm 2023, nhưng vẫn chưa chịu ký kết giao kèo mới. Mới đây, Paul Ince đưa ra dự đoán: “Nếu có cầu thủ rời Liverpool, tôi nghĩ đó sẽ là Salah.

Mane và Salah đã ở đây lâu rồi và những gì họ đạt được thật là đáng kinh ngạc.

Đôi khi các cầu thủ muốn thử sức ở những sân cỏ mới, ra nước ngoài và khoác áo các câu lạc bộ khác nhau. Người hâm mộ rõ ràng sẽ không muốn họ đi, nhưng nếu hợp đồng không phù hợp, họ sẽ chia tay CLB.”

Mohamed Salah được cho là muốn trở thành cầu thủ hưởng thu nhập cao nhất Premier League trong bản hợp đồng mới, lên đến 500.000 bảng/tuần. Trong quá khứ, tiền đạo người Ai Cập không phủ nhận khao khát được chơi cho Barcelona hoặc Real Madrid.', 
N'Hợp đồng của tiền đạo người Ai Cập với đội chủ sân Anfield sẽ đáo hạn vào Hè năm 2023.' , NULL, 7, 14);

insert into Post_HE150490_SE1724 values(N'Rangnick đã biết kế hoạch dài hạn của Man Utd', '2022-01-28 10:20:30.000', 
N'Man Utd đã không thể thành công như những gì người hâm mộ kỳ vọng vào đầu mùa. Sau khi Ralf Rangnick lên thay Ole Gunnar Solskjaer, những tồn tại ở đội chủ sân Old Trafford vẫn còn đó.  Hiện tại, Man Utd đã bị loại khỏi FA Cup. Ở Premier League, cơ hội vào top 4 của họ rất mong manh. Trong khi đó, ở Champions League, quá khó để thầy trò HLV Rangnick có thể hướng đến danh hiệu.

Rangnick khăng khăng rằng Man Utd không thể nhìn xa hơn và bây giờ, họ phải tập trung cho mùa bóng hiện tại: "Tôi biết điều gì cần thiết cho mùa giải tới nhưng bây giờ không phải lúc để thảo luận điều này với mọi người. Toàn bộ sự tập trung của tôi là vào ngày mai, đạt được kết quả tốt nhất trong mùa giải này và sau đó là lúc để nói về các bước tiếp theo trong vài năm tới."

Nhà cầm quân 63 tuổi đã nói về vai trò của nhà tâm lý học thể thao Sascha Lense để giúp họ vượt qua hoàn cảnh khó khăn hiện tại.

"Nếu bạn dẫn trước 1-0 trong vài trận gần nhất, rồi đều bị gỡ hòa, thì điều này cũng ảnh hưởng đến tinh thần của các cầu thủ", Rangnick nói thêm. "Họ là con người, không phải máy móc.

Tôi đã nói chuyện với Sascha về điều đó và chúng tôi nói chuyện với từng cầu thủ về lý do tại sao chúng tôi để thủng lưới và những gì chúng tôi nên làm để ghi bàn thứ hai hoặc thứ ba."', 
N'HLV tạm quyền của Man Utd, Ralf Rangnick thừa nhận ông đã biết điều gì cần thiết cho Quỷ đỏ trong mùa bóng mới.' , NULL, 7, 15);

insert into Post_HE150490_SE1724 values(N'Hậu vệ phải hay nhất nước Anh tuần qua lần đầu lên tiếng sau chấn thương', '2022-01-27 18:17:16.000', 
N'Cầu thủ 31 tuổi này đã ghi bàn thắng duy nhất của trận đấu khi Newcastle đánh bại Aston Villa vào Chủ nhật nhưng anh phải rời sân trong hiệp hai do chấn thương.

Kieran Trippier đã lên Instagram để mô tả chấn thương của mình là "thực sự khó chịu" nhưng thề sẽ làm việc chăm chỉ để trở lại sân cỏ trong thời gian sớm nhất.  "Thực sự bực bội khi dính chấn thương trong trận thắng ngày hôm qua," anh viết trạng thái kèm theo hình ảnh đang ngồi bệt trên sân St James Park.

  
"Chúng tôi đã xây dựng được một số động lực và điều đó có thể tiếp tục kéo dài. Chấn thương là một phần của bóng đá và tôi sẽ vẫn tích cực, làm việc chăm chỉ nhất trong quá trình phục hồi để có thể trở lại nhanh nhất, hòng chơi bóng trước các bạn hâm mộ.

"Trong những tuần tới, tôi sẽ đưa ra bất kỳ sự giúp đỡ để hỗ trợ câu lạc bộ tuyệt vời của chúng tôi theo mọi cách có thể."

"Cảm ơn tất cả vì những tin nhắn tốt bụng từ NHM!," hậu vệ phải người Anh kết lại.

Trippier chỉ mới gia nhập Newcastle từ hồi tháng Giêng, nhưng ngay lập tức tạo ra sức ảnh hưởng lớn. Với sự góp mặt của Trippier, Newcastle đã có chuỗi 3 trận thắng liên tiếp và vươn mình ra khỏi khu vực xuống hạng. Bản thân Trippier đã bỏ túi 2 bàn trong một tuần qua.

Họ hiện đang hơn đội xếp thứ 18 là Norwich 4 điểm và chơi nhiều hơn một trận. Chích chòe sẽ đối mặt với West Ham, Brentford và Brighton trong ba trận tiếp theo.', 
N'BLĐ Newcastle hẳn phải lo sốt vó sau chấn thương mà Kieran Trippier gặp phải sau cuộc đụng độ với Aston Villa.' , NULL, 7, 16);

insert into Post_HE150490_SE1724 values(N'Rangnick nói rõ vị trí phù hợp nhất với Sancho', '2022-01-27 22:09:08.000', 
N'Mùa Hè vừa qua, Man Utd đã chiêu mộ Jadon Sancho với giá kỷ lục 73 triệu bảng từ Dortmund. Tiền vệ người Anh đã chơi khá tệ ở giai đoạn đầu mùa. Khi đó, đài Sky Germany đã chế giễu phong độ của Sancho bằng tấm ảnh nhại theo James Bond trong phim "Điệp viên 007", ám chỉ Sancho không ghi được bàn thắng hay kiến tạo nào sau 7 trận.  Tuy nhiên, từ khi Ralf Rangnick được bổ nhiệm ngồi vào ghế nóng ở sân Old Trafford, mọi chuyện có vẻ xuôi chèo mát mái cho cầu thủ sinh năm 2000. Trong 3 trận gần nhất, Sancho đã ghi được 2 bàn cho Quỷ đỏ, đáng tiếc, đó là những trận đấu mà Man Utd không thể có được chiến thắng chung cuộc. 

Nói về sự trở lại của Sancho, Rangnick cho biết: "Việc này cần thời gian, đối với tôi đó là điều bình thường."

"Tôi nghĩ phong cách bóng đá mà chúng tôi muốn chơi hoàn toàn phù hợp với khả năng của anh ấy, điểm mạnh của anh ấy, đến từ cánh trái," chiến lược gia người Đức chia sẻ về vị trí mà ông tin Sancho sẽ chơi bóng tốt nhất."

"Tôi cũng cố gắng ủng hộ anh ấy và nói với anh ấy rằng anh ấy nên tiếp tục cố gắng, ngay cả ở giải đấu có tính thể chất và cạnh tranh cao hơn này [so với Bundesliga]," bổ sung thêm.', 
N'Tiền vệ Jadon Sancho đã gặp rất nhiều khó khăn trong giai đoạn đầu mùa, nhưng có vẻ anh đã dần làm quen với hệ thống thi đấu của Man Utd.' , NULL, 7, 17);

insert into Post_HE150490_SE1724 values(N'Perez cùng Real hành quân đến Paris, chốt luôn thương vụ Mbappe?', '2022-01-27 10:09:06.000', 
N'Real Madrid đã có buổi tập luyện làm quen SVĐ Công viên các Hoàng tử, chuẩn bị cho trận đối đầu với PSG vào rạng sáng mai. Chủ tịch Florentino Perez đã hành quân cùng toàn đội đến thủ đô nước Pháp. Perez còn góp mặt trong buổi tập làm quen sân của Los Blancos. Sự xuất hiện của "bố già" vào thời điểm này là hết sức nhạy cảm, bởi truyền thông đồn đoán Kền kền trắng muốn ký hợp đồng với Kylian Mbappe.  Mới đây, Goal dẫn nguồn từ El Chiringuito TV cho biết, việc Real Madrid sở hữu chữ ký của Mbappe chỉ còn là vấn đề thời gian. Tiền đạo người Pháp sẽ đáo hạn hợp đồng vào mùa Hè tới, do đó Los Blancos đứng trước cơ hội sở hữu Mbappe mà không tốn một đồng phí nào.', 
N'Chủ tịch Florentino Perez đã cùng toàn đội hành quân đến Paris, chuẩn bị cho trận lượt đi vòng 16 đội Champions League.' , NULL, 8, 3);

insert into Post_HE150490_SE1724 values(N'6 ngôi sao có khả năng gia nhập Premier League mùa tới: Haaland dẫn đầu', '2022-01-26 18:00:00.000', 
N'Haaland đang tiến gần đến ngày chia tay Borussia Dortmund. Chân sút người Na Uy có phong độ cao tại Bundesliga mùa này với hiệu suất 1 bàn mỗi 72 phút. Khả năng nổ súng ấn tượng giúp Haaland thu hút sự chú ý của nhiều CLB lớn châu Âu.

Real Madrid, Barcelona, Man City, Man United, Chelsea... đều sẵn sàng trải thảm đỏ chiêu mộ Haaland. Mức phí phá vỡ hợp đồng của chân sút 21 tuổi vào khoảng 68 triệu bảng Anh. 

2. Rafael Leao Ngôi sao AC Milan đang thu hút sự chú ý của nhiều ông lớn Premier League. Leao thi đấu nổi bật ở vai trò tiền đạo cánh trái tại sân San Siro. Arsenal và Newcastle đều sẵn sàng chiêu mộ Leao. 

Arsenal của Mikel Arteta cần bổ sung thêm những nhân tố mới chất lượng nhằm gia tăng chiều sâu đội hình. Trong khi đó, Chích chòe cần một đội hình đủ mạnh để hóa rồng vào mùa giải năm sau.

3. Ronald Araujo', 
N'Premier League hứa hẹn thực hiện nhiều thương vụ bom tấn trên TTCN hè 2022 nếu các thương vụ tiềm năng hoàn thành.' , NULL, 8, 4);

insert into Post_HE150490_SE1724 values(N'Pogba làm ngơ trước PSG, lời khuyên của Rangnick phát huy tác dụng', '2022-01-26 22:09:08.000', 
N'Paul Pogba đang ở trong 6 tháng cuối trong hợp đồng với Man Utd. Điều này đồng nghĩa, các CLB khác có thể tiếp cận tiền vệ sinh năm 1993 bất cứ lúc nào, mà không sợ sự ràng buộc về mặt pháp lý.  PSG là một trong những đội bóng theo đuổi Pogba nhiệt tình nhất trong một năm trở lại đây. Họ sẵn sàng để Pogba hưởng một mức lương kỷ lục trong mùa Hè tới. Tuy nhiên, tiền vệ người Pháp vẫn đang trì hoãn. Theo tờ Sportsmail tiết lộ, không loại trừ việc Pogba sẽ gia hạn để tiếp tục gắn bó với sân Old Trafford.

Dễ dàng nhận ra, mọi thứ vẫn chưa ngã ngũ. Tuy nhiên, việc Pogba không vội vàng "gật đầu" trước bất cứ lời mời nào chứng tỏ lời khuyên của Ralf Rangnick đã phát huy tác dụng. 

Theo đó, chiến lược gia người Đức cho rằng Pogba nên tập trung hết sức cho màn trình diễn trên sân cỏ: "Hợp đồng của anh ấy sẽ hết hạn vào mùa hè và nếu cuối cùng, anh ấy muốn ở lại hoặc đi một nơi khác thì anh ấy phải cho thấy (quyết định)."

  
"Trọng tâm của tôi bây giờ là bày ra một mùa giải tốt nhất, thành công nhất có thể và đối với Paul, việc thi đấu ở đẳng cấp cao để có một màn trình diễn tốt vào ngày mai là vì lợi ích của bản thân," Manchester Evening News dẫn lời Rangnick hôm 3/2.', 
N'Paul Pogba có vẻ không mặn mà trước lời đề nghị béo bở từ PSG. Đây là lúc người ta khẳng định, lời khuyên của Ralf Rangnick đã phát huy tác dụng.' , NULL, 8, 5);

insert into Post_HE150490_SE1724 values(N'Thương vụ Danilo - Cancelo đem lại sự toàn thắng cho Juventus - Man City', '2022-01-26 10:22:23.000', 
N'Danilo đang chơi mùa thứ ba ở Turin và đá chính thường xuyên dưới thời Andrea Pirlo trong mùa giải trước sau khi gặp khó khăn trong năm đầu tiên dưới thời Maurizio Sarri. Massimiliano Allegri cũng đặt niềm tin hoàn toàn vào cầu thủ 30 tuổi, người đã chơi 17 trận trên mọi đấu trường mùa này.

Cựu hậu vệ của Manchester City đã phải nghỉ thi đấu trong gần ba tháng vì chấn thương nhưng anh đã trở lại sân cỏ vào tháng Giêng. Tính thêm trận đấu vào cuối tuần rồi tại Serie A, Danilo đã thi đấu 95 trận cho Bà đầm già kể từ khi chuyển đến đây và anh ghi được bốn bàn thắng. Ngôi sao người Brazil gia nhập Juventus nhờ vào con số 37 triệu euro vào năm 2019, trong khi Joao Cancelo đi theo con đường ngược lại với 65 triệu euro, tạo ra cú hích tài chính 28,6 triệu euro cho Bianconeri. Và có thể nói, đây là thương vụ trao đổi mang lại sự hiệu quả cho Juventus lẫn Man City.

Cancelo hiện được coi là một trong những hậu vệ phải xuất sắc nhất thế giới và phát triển vượt bậc dưới thời Pep Guardiola. Không phải ngẫu nhiên mà cầu thủ 27 tuổi mới đây đã ký gia hạn hợp đồng với các đại gia Premier League đến tháng 6/2027.

  
Anh trở thành quân bài tẩy của Pep nhờ vào việc trở thành một hậu vệ biên chơi bóng bó vào trung lộ. Không chỉ đá tốt cánh phải, ngôi sao người BĐN còn đảm nhận tốt vai trò hậu vệ trái. Những tình huống leo biên, tạt bóng, kiến tạo hay dứt điểm bằng cả 2 chân của Cancelo đặc biệt mang lại sự nguy hiểm.

Trong khi đó, dù Danilo không được đánh giá cao như Cancelo nhưng hậu vệ này là một lựa chọn đáng tin cậy hơn cho Juventus. Anh đã cải thiện đáng kể khả năng phòng ngự trong thời gian ở Turin và hứa hẹn được trao nhiều cơ hội hơn dưới thời Allegri. ', 
N'Sau gần 3 năm, Juventus và Man City bắt đầu cảm nhận được hiệu quả trong vụ trao đổi Danilo - Cancelo.' , NULL, 8, 6);

insert into Post_HE150490_SE1724 values(N'Pochettino sợ Real Madrid', '2022-01-25 18:15:15.000', 
N'Tương lai của Mauricio Pochettino tại Paris Saint-Germain có thể phụ thuộc vào kết quả trận đấu thuộc vòng 16 đội Champions League với Real Madrid. Pochettino có trong tay đội hình mạnh trước cuộc đối đầu quan trọng này nhưng lịch sử là yếu tố phản bội nhà cầm quân người Argentina. Cứ mỗi dịp gặp Real, cựu HLV Tottenham thường có thành tích không tốt.

Cụ thể, sau 9 lần chạm trán, Pochettino nhận 7 thất bại, 1 trận hòa và chỉ thắng 1 trận. Hai lần ông tránh được thất bại trước Real là ở Champions League. Khi đó, ông dẫn dắt Tottenham và thắng Los Blancos ở Anh, sau đó hòa tại Estadio Santiago Bernabeu tại vòng bảng 2017/18.

 Trên cương vị huấn luyện viên Espanyol, Pochettino chưa bao giờ kiếm được 1 điểm trước Real. Sau 7 trận, Espanyol của ông nhận 21 bàn thua và không ghi nổi một bàn thắng nào vào lưới Real Madrid.

Trận đầu tiên gặp Real diễn ra vào ngày 28 tháng 2 năm 2009, khi Espanyol của Pochettino thua 0-2. Kể từ thời điểm đó, đội bóng xứ Catalan dưới trướng Pochettino đã thua Real Madrid của Manuel Pellegrini hai lần và bốn lần trước Los Blancos do Jose Mourinho cầm quân.

Pochettino bị Real át vía vì chất lượng đội hình của 2 CLB trước đó do nhà cầm quân này dẫn dắt không được đánh giá tốt như đối thủ. Đây là một thống kê đặc biệt đáng chú ý bởi nó cho thấy cái dớp của Pochettino khi gặp đội chủ sân Bernabeu.', 
N'Thống kê chỉ ra Mauricio Pochettino thường bị Real Madrid át vía trong những lần chạm trán.' , NULL, 8, 7);

insert into Post_HE150490_SE1724 values(N'Gặp Real, vấn đề của PSG là gì?', '2022-01-25 23:12:07.000', 
N'Người Paris tự tin hướng đến trận đấu gặp Real Madrid tại vòng 1/8 Champions League. Vào tuần trước, truyền thông từng tiết lộ về bầu không khí náo nhiệt và hào hứng của dàn sao PSG khi họ biết tin chạm trán CLB Hoàng gia. Sergio Ramos được cho là cảm thấy sốc về sự hưng phấn ấy của các đồng đội mới. Nó cho thấy PSG không hề sợ Real và sẵn sàng loại Los Blancos khỏi đấu trường số một châu Âu.

Tự tin là điều cần thiết ở một trận cầu quan trọng nhưng nói như thế không đồng nghĩa với việc PSG không bộc lộ những vấn đề. Những vấn đề đó có thể trở thành điều hạn chế khả năng giành kết quả thuận lợi của gã nhà giàu nước Pháp. Neymar dường như kịp thời tái xuất trước Real khi anh đã trở lại tập luyện cùng các đồng đội suốt mấy ngày gần đây. Bộ ba Neymar - Messi - Mbappe trở thành niềm hi vọng lớn nhất cho NHM PSG. Dù vậy, cách sắp xếp này sẽ trở thành "con dao 2 lưỡi" bởi nó khiến hệ thống của PSG mất cân bằng.

Điều này được nhận thấy rõ ở các trận đấu Ligue 1 và đặc biệt nhất là trong 2 lần PSG chạm trán Man City tại vòng bảng Champions League. Với việc tam tấu của PSG không chịu hỗ trợ phòng ngự và chỉ đứng yên ở trên chờ bóng, các cầu thủ tại khu trung tuyến bất lực trong việc tìm kiếm sự liên kết cùng tuyến đầu. Hậu quả là PSG bế tắc trong việc triển khai bóng, từ đó thiếu phương án hãm thành nên chẳng thể tạo ra những cơ hội giá trị.

Khi PSG gặp Real, tức họ phải chạm trán những cá nhân kiệt xuất khác ở hàng tiền vệ, Les Parisiens càng khó sở hữu bóng để triển khai tấn công. Vấn đề của PSG xuất phát từ đây. Khi có bóng, PSG thiếu ý tưởng hãm thành và đặt trường hợp họ không thể làm chủ cuộc chơi, gã nhà giàu nước Pháp sẽ càng khó tiếp cận khung thành của Courtois.',
N'Tiếp đón Real Madrid trên sân nhà không phải là yếu tố thuận lợi của PSG bởi đội bóng còn bộc lộ nhiều vấn đề.' , NULL, 8, 8);

insert into Post_HE150490_SE1724 values(N'"Thomas Tuchel rất cần Lukaku"', '2022-01-25 10:56:56.000', 
N'Sau giai đoạn sa sút, Romelu Lukaku đã dần lấy lại phong độ. Tiền đạo người Bỉ góp công lớn trên hành trình Chelsea vô địch FIFA Club World Cup vừa qua. Lukaku chính là tác giả bàn thắng mở tỷ số ở trận chung kết trước Palmeiras.

Theo quan điểm của cựu danh thủ Garth Crooks, HLV Thomas Tuchel rất cần Lukaku. "Tôi từng nói rằng Thomas Tuchel rất cần Lukaku. Điều đó đang được chứng minh. Tuchel đã đi quá mức trong việc xử phạt Lukaku sau bài phỏng vấn gây tranh cãi," Garth Crooks chia sẻ.

"Lukaku đã nhường bước và tìm cách lấy lại phong độ. Cậu ấy chiếm một suất ra sân thường xuyên. Đó là tất cả những gì bản hợp đồng trị giá 97.5 triệu bảng mong muốn ngay từ đầu khi gia nhập Chelsea.". "Lukaku đã có màn trình diễn xuất sắc trước Palmeiras. Cậu ấy góp công lớn trên hành trình Chelsea giành chức vô địch FIFA Club World Cup lần đầu tiên trong lịch sử," Garth Crooks cho hay.

Lukaku từng có quãng thời gian đầu mùa giải chói sáng trước khi sa sút bởi chấn thương và dương tính Covid-19. Mặc dù vậy, niềm tin nơi Lukaku vẫn rất lớn trong bối cảnh Chelsea còn nguyên cơ hội vô địch ở 2 sân chơi Champions League và Carabao Cup. 

Phong độ, màn trình diễn của Lukaku sẽ quyết định lớn đến sức mạnh hàng công Chelsea ở giai đoạn còn lại của mùa giải năm nay. ', 
N'Sau giai đoạn mất phong độ, chân sút người Bỉ đang từng bước trở lại khi anh tỏa sáng tại FIFA Club World Cup.' , NULL, 8, 9);

insert into Post_HE150490_SE1724 values(N'Neil Warnock chỉ tên HLV duy nhất phù hợp với M.U lúc này', '2022-01-24 18:59:59.000', 
N'Huấn luyện viên tạm quyền Ralf Rangnick sẽ bỏ trống ghế huấn luyện của M.U để chuyển sang một vai trò khác vào cuối mùa hè này, nhiều người tin rằng Pochettino sẽ là người kế nhiệm.

Cựu huấn luyện viên của Tottenham liên tục được cho là sẽ trở lại Premier League. Tuy nhiên, ông đã được cảnh báo không nên đảm nhiệm chức vụ này. Huấn luyện viên kỳ cựu Neil Warnock tin rằng Pochettino sẽ phải đảm nhận một nhiệm vụ quá lớn khi phải xây dựng lại Man United. "Tôi nghĩ đó là một công việc lớn. Nếu tôi là Pochettino, tôi sẽ không nghĩ đến việc đến Man United. Người duy nhất tôi có thể nghĩ đến bây giờ là Brendan Rodgers. Tôi nghĩ anh ấy có thể sẽ là một động thái tốt."

"Tôi nghĩ Brendan đang nhận ra mọi việc khó khăn như thế nào ở Leicester và tôi nghĩ đây có thể là thời điểm hợp lý để thay đổi. Tôi nghĩ Brendan có cách đối phó với những ngôi sao này."

"Tôi không nghĩ Pochettino muốn trở lại Anh bởi vì có rất nhiều việc phải làm. Mọi người nói về United và Spurs, cả hai đội đều cần 3 hoặc 4 cầu thủ. Tôi không nghĩ Daniel Levy sẽ cho anh ấy tiền để đưa về những cầu thủ mà anh ấy cần. Họ cần những cầu thủ đẳng cấp thế giới và họ sẽ không thể mua những người này với giá 30-40 triệu."', 
N'Huấn luyện viên Mauricio Pochettino từ lâu đã được liên hệ với việc chuyển đến làm việc tại Manchester United.' , NULL, 8, 10);

insert into Post_HE150490_SE1724 values(N'Sếp lớn Milan nói về việc giữ chân Theo Hernandez', '2022-01-24 22:00:01.000', 
N'Cách đây ít ngày, AC Milan đã hoàn tất việc gia hạn hợp đồng đến hè 2026 với Theo Hernandez. Đây là một chiến thắng trên bàn đàm phán của đội chủ sân San Siro trong bối cảnh Hernandez đang chơi xuất sắc vào thời điểm hiện tại.

Nói về việc trụ cột quan trọng của CLB cam kết tương lai, GĐĐH Ivan Gazidis bày tỏ: "Theo là một ví dụ tuyệt vời về một người mà chúng tôi coi là tài năng đẳng cấp thế giới. Cậu ấy là người đội bóng đã đặt niềm tin và muốn phát triển cùng chúng tôi. Tôi vẫn sẽ nói rằng chúng tôi đang làm việc để hướng đến việc đáp ứng tất cả kỳ vọng. Nhưng mọi thứ đang diễn ra đúng hướng." "Nền tảng của điều đó là những cầu thủ trẻ sẽ phát triển cùng Milan trở thành những tài năng đẳng cấp thế giới, sau đó nâng tầm đội bóng, từ đó tăng doanh thu của chúng tôi và cho phép chúng tôi đầu tư nhiều hơn để có thể giữ chân họ."

Trong thời gian tới, Milan cũng có ý định giữ chân Zlatan Ibrahimovic bất chấp ngôi sao người Thụy Điển sẽ bước qua tuổi 41 trong năm nay. Mọi thứ vẫn chỉ nằm trong dự định khi đội chủ sân San Siro chưa thực hiện bất cứ động thái gia hạn nào với cựu sao Man Utd.', 
N'Sếp lớn AC Milan nhận định việc gia hạn hợp đồng với Theo Hernandez là điều quan trọng tại CLB.' , NULL, 9, 11);

insert into Post_HE150490_SE1724 values(N'Arsenal tìm cách chiêu mộ người khá tương đồng N"Golo Kante', '2022-01-24 10:09:05.000', 
N'Arsenal có thể chuẩn bị sẵn sàng để có được N"Golo Kante và Fabinho của riêng họ bằng cách chiêu mộ Tyler Adams của RB Leipzig.

Đây là cầu thủ đa năng, có thể chơi tốt ở vị trí hậu vệ phải lẫn tiền vệ. Trong mùa Hè năm ngoái, Pháo thủ đã để mắt đến Adams nhưng cuối cùng đã quyết định ký hợp đồng với Takehiro Tomiyasu từ Bologna. Tuy nhiên, anh ấy vẫn nằm trong tầm ngắm của Arsenal và HLV Mikel Arteta được cho muốn để Adams chơi ở hàng tiền vệ. Tờ Athletic gần đây đã tuyên bố rằng Adams đã gây chú ý một lần nữa sau khi thể hiện một số phẩm chất ấn tượng, thứ có thể phù hợp để chơi giữa sân thay vì bị đẩy xuống cánh.

Chiến lược gia người Tây Ban Nha đang trông chờ sự thành công trong thương vụ này. Về bản thân Adams, anh dường như rất muốn thi đấu ở vị trí tiền vệ trong tương lai gần, bởi cầu thủ 23 tuổi gần đây nhấn mạnh muốn trở thành người như Kante.

Adams nói với tờ The Athletic: “Khi N’Golo Kante ra sân, anh ấy là cầu thủ đã thay đổi khuôn mẫu về cách chơi trò chơi của số 6". Tuy nhiên, anh ấy vẫn nằm trong tầm ngắm của Arsenal và HLV Mikel Arteta được cho muốn để Adams chơi ở hàng tiền vệ. Tờ Athletic gần đây đã tuyên bố rằng Adams đã gây chú ý một lần nữa sau khi thể hiện một số phẩm chất ấn tượng, thứ có thể phù hợp để chơi giữa sân thay vì bị đẩy xuống cánh.

Chiến lược gia người Tây Ban Nha đang trông chờ sự thành công trong thương vụ này. Về bản thân Adams, anh dường như rất muốn thi đấu ở vị trí tiền vệ trong tương lai gần, bởi cầu thủ 23 tuổi gần đây nhấn mạnh muốn trở thành người như Kante.

Adams nói với tờ The Athletic: “Khi N’Golo Kante ra sân, anh ấy là cầu thủ đã thay đổi khuôn mẫu về cách chơi trò chơi của số 6".', 
N'Arsenal đang nỗ lực để gia cố đội hình trong mùa Hè tới. Theo đó, mục tiêu tiếp theo của Mikel Arteta là cải tổ hàng tiền vệ.' , NULL, 9, 12);

insert into Post_HE150490_SE1724 values(N'Sao Man United trở lại tập luyện sau quãng thời gian "mất tích"', '2022-01-23 18:15:14.000', 
N'Những hình ảnh ở buổi tập gần nhất của Man United cho thấy trung vệ Eric Bailly đã trở lại cùng các đồng đội. Ngôi sao người Bờ Biển Ngà chưa ra sân bất kỳ trận nào cho Man United trong năm 2022 khi bận tham dự CAN Cup 2021 và dính chấn thương mắt cá chân.

Sự trở lại của Bailly mang đến cho HLV Ralf Rangnick thêm những lựa chọn chất lượng ở hàng thủ. Hệ thống phòng ngự Quỷ đỏ bị đặt dấu hỏi lớn khi liên tục để lọt lưới thời gian qua. Phong độ sa sút của đội trưởng Harry Maguire trở thành đề tài châm biếm trên các diễn đàn mạng xã hội. Rangnick xác nhận Bailly sẽ không ra sân ở trận đấu với Brighton giữa tuần này khi vừa mới trở lại tập luyện. Mùa giải năm nay, Bailly có vỏn vẹn 4 lần ra sân cho Man United. Chấn thương trở thành rào cản lớn khiến quá trình phát triển của Bailly bị chững lại trong màu áo Quỷ đỏ.

Theo tờ báo nước Pháp Foot Mercato, AC Milan đã lên kế hoạch chiêu mộ trung vệ Eric Bailly vào mùa hè tới. Đội bóng nước Ý đã có những cuộc liên hệ đầu tiên đến người đại diện của Bailly, thế nhưng Man United từ chối bán người ở TTCN mùa Đông vừa qua.

Tương lai của Bailly sẽ sớm được định đoạt khi phiên chợ hè 2022 mở cửa. Tìm kiếm bến đỗ mới là bước đi hợp lý với Bailly vào lúc này.', 
N'Trung vệ người Bờ Biển Ngà trở lại tập luyện cùng các đồng đội dù anh không ra sân trước Brighton.' , NULL, 9, 13);

insert into Post_HE150490_SE1724 values(N'Rio Ferdinand chỉ rõ cầu thủ mà Man Utd còn thiếu', '2022-01-23 22:23:24.000', 
N'Theo quan điểm đến từ Rio Ferdinand, Manchester United hiện vẫn còn thiếu một thủ lĩnh thực sự, người sẽ "dạy dỗ" đồng đội ngay trên sân nếu mắc sai lầm. Đồng thời, Ferdinand còn nhận định, đội chủ sân Old Trafford hiện đang mắc phải quá nhiều sai lầm cá nhân. 

Trao đổi thông qua chương trình podcast Vibe with Five, cựu trung vệ người Anh chia sẻ (dẫn lời bởi Metro):

"Những gì tôi nghĩ là Pogba và Bruno Fernandes cần... Họ cần một Trung sĩ Thiếu tá trong đội, khi họ chuyền hỏng, hoặc có một chút lỏng lẻo với bóng hay di chuyển sai vị trí, lẽ ra, họ cần ai đó xung quanh để quát tháo, kỷ luật họ." "Họ không có mẫu cầu thủ đó."

"Trong mỗi trận đấu, có một quãng thời gian kéo dài 5 phút, đại loại thế, khi đối phương nắm giữ thế trận và bạn sẽ nhận lại một chút áp lực, dù bạn có muốn hay không."

"Vấn đề là việc can đảm để vượt qua giai đoạn đó. Bí quyết và tôi nghĩ, một phần quan trọng của điều đó là tính kỷ luật - tôi cho rằng, đó là yếu tố mà chúng tôi còn thiếu so với các đội bóng hàng đầu."

"Những sai lầm cá nhân hoặc việc những cá nhân đưa ra quyết định tồi tệ là những gì đang giết chết cả đội vào lúc này, cho dù đó là việc bỏ lỡ cơ hội, những đường chuyền cuối cùng, một tình huống phòng ngự... các cá nhân đang mắc sai lầm ở những vị trí của họ."', 
N'Cựu trung vệ Rio Ferdinand có những chia sẻ đáng chú ý xoay quanh tình hình của đội chủ sân Old Trafford.' , NULL, 9, 14);

insert into Post_HE150490_SE1724 values(N'Benzema bỏ ngỏ khả năng ra sân trước PSG', '2022-01-23 09:03:09.000', 
N'Sẽ có nhiều ánh mắt đổ dồn về thủ đô nước Pháp khi Real Madrid gặp Paris Saint-Germain ở vòng 16 đội Champions League. Vấn đề liên quan đến Karim Benzema được quan tâm đặc biệt vì chưa rõ khả năng ra sân của ngôi sao người Pháp.

Benzema gặp vấn đề về gân kheo trước Elche và đã bỏ lỡ 3 trận gần nhất của Real Madrid. Anh có thể ra sân trước PSG nhưng điều này có thể ảnh hưởng đến thể lực của chân sút sinh năm 1987.

Chia sẻ với báo chí về tình hình của mình, Benzema bày tỏ: "Tôi đã tập luyện trong nhiều giờ và đang cảm thấy tốt hơn. ây giờ chúng tôi có một buổi tập để xem liệu tôi có thể thi đấu hay không, nhưng tôi cần phải đạt cảm giác bóng tốt hơn nữa để xuất hiện trên sân." "Tôi luôn chiến đấu vì đội bóng của mình, nếu không, tôi đã ở lại Madrid, nhưng tôi không muốn bị chấn thương nữa. Điều quan trọng nhất là phải ở trạng thái 100% thể lực. Chúng tôi sẽ nhận thấy điều đó trên sân tập để rồi đưa ra quyết định." 

"Thật là phức tạp khi bạn ngồi ngoài. Tôi đang tập luyện ở Valdebebas và ở nhà để lấy lại thể lực.  Trong đầu, tôi đã sẵn sàng nhưng bây giờ tôi phải xem lại thể chất. Đó là một trận đấu lớn và nếu tôi phải chơi vào ngày mai, tôi sẽ cống hiến mọi thứ."', 
N'Karim Benzema đã có những chia sẻ liên quan đến khả năng ra sân của mình trước PSG tại Champions League.' , NULL, 9, 15);

insert into Post_HE150490_SE1724 values(N'Bale bị đặt dấu chấm hết, Conte mừng thầm', '2022-01-22 17:17:17.000', 
N'Trở về Real Madrid sau quãng thời gian cho mượn tại Tottenham Hotspur, tiền đạo Gareth Bale mở ra hy vọng hồi sinh sự nghiệp khi Zinedine Zidane rời khỏi ghế nóng tại Bernabeu để nhường chỗ cho Carlo Ancelotti - vị chiến lược gia từng giúp anh vươn tầm đẳng cấp.

Tuy nhiên, những chấn thương triền miên đã khiến ngôi sao người xứ Wales dần đánh niềm tin từ ông thầy cũ. Mùa giải năm nay, anh chỉ mới ra sân vỏn vẹn 4 lần tại La Liga.  Chứng kiến sự sa sút phong độ của Bale, HLV Ancelotti cũng không còn mặn mà với việc tiếp tục giữ anh ở lại. Trong một phát biểu mới đây, thuyền trưởng Real Madrid khẳng định Bale sẽ rời Real vào cuối mùa giải:

"Bale đã dính chấn thương, sau đó hợp đồng của anh ấy sẽ kết thúc. Có lẽ anh ấy đã không có động lực đủ tốt nhưng anh ấy muốn kết thúc ở đây theo cách mà anh ấy xứng đáng.

Điều quan trọng là Bale phải kết thúc sự nghiệp của mình thật tốt tại đây."

Thời gian vừa qua, cũng đã xuất hiện nhiều đồn đoán cho rằng, tiền đạo người xứ Wales đã ký nháy thỏa thuận với Tottenham Hotspur để trở về khoác áo đội bóng Bắc London thêm một lần nữa. 

Như vậy, không loại trừ khả năng Bale sẽ về dưới trướng Antonio Conte vào tháng 6, theo dạng cầu thủ tự do.', 
N'HLV Carlo Ancelotti đã lên tiếng chốt hạ tương lai của ngôi sao người xứ Wales tại Real Madrid.' , NULL, 9, 16);

insert into Post_HE150490_SE1724 values(N'Đấu Real, Pochettino làm rõ vai trò của Messi', '2022-01-22 20:20:20.000', 
N'Rạng sáng mai, mọi sự chú ý sẽ đổ dồn về Parc des Princes, nơi Paris Saint-Germain tiếp đón Real Madrid trong khuôn khổ vòng 1/8 Champions League. Trước thềm trận đại chiến, HLV Mauricio Pochettino của đội chủ nhà dành những lời có cánh cho Los Blancos qua ESPN: "Cặp đấu này có thể là 1 trận chung kết Champions League, dự trên các tên tuổi, cầu thủ và chất lượng."

"Chúng tôi tôn trọng Real, họ là 1 trong những CLB lớn nhất thế giới. 13 danh hiệu Champions League không chỉ kể cho bạn về các cầu thủ hay HLV, mà là sức mạnh và cấu trúc nội tại của 1 CLB. PSG đã chờ đợi đoạt cúp bạc trong hơn 50 năm. Chúng tôi là những kẻ thách thức, cố gắng xây dựng đội hình để tiến gần hơn đến giấc mơ ấy." "Real là 1 đội bóng siêu đẳng. Họ luôn gia tăng cấp độ trong những thời điểm mấu chốt của mùa giải. Nhiều lần họ không thi đấu quá hay ở La Liga, nhưng cuối cùng vẫn vô địch Champions League. Real sở hữu sự đoàn kết lẫn năng lực tranh đấu."

Nhà cầm quân Argentina đặt hy vọng vào cậu học trò đồng hương Lionel Messi: "Trong các trận cầu quan trọng và vào những buổi tối trọng đại, tài năng cùng kinh nghiệm của Messi sẽ giữ vai trò chính yếu, cả ở khía cạnh cá nhân lẫn tập thể."', 
N'Chiến lược gia Argentina dành những lời có cánh cho đối thủ và đề cập đến học trò đồng hương.' , NULL, 9, 17);

insert into Post_HE150490_SE1724 values(N'Peter Crouch dự đoán cơ hội của 4 CLB Ngoại hạng Anh tại Champions League', '2022-01-22 07:07:07.000', 
N'Liverpool, Man City, Chelsea và Manchester United đều đã điền tên vào vòng 16 đội. Đoàn quân ủa Jurgen Klopp đối đầu với Inter Milan, Man City đối đầu với Sporting Lisbon, Chelsea đấu với Lille và Man United gặp Atletico Madrid.

Mới đây, Peter Crouch nhận định: “Chúng ta đang sống ở một thời kỳ thú vị của bóng đá Anh, và hiện đang ở trong giai đoạn thống trị của Premier League. 2 trận chung kết toàn Anh trong 3 năm nói lên tất cả.

Liverpool và Man City là những ứng cử viên yêu thích của tôi, và tôi đang đấu tranh để phân chia (cấp độ) của họ tại đấu trường châu Âu.  Chelsea – nhà vô địch thế giới đã đăng quang cuối tuần qua, cũng có cơ hội để bảo vệ chiếc cúp. Joe Cole vẫn giữ liên lạc với các cầu thủ ở Lille và họ muốn có cơ hội trong trận đấu vòng 16 đội, nhưng Chelsea quá mạnh.

Man Utd là đội duy nhất mà tôi đang dao động. Họ có thể có những khoảnh khắc của mình, mặc dù cơ hội của họ với Atletico Madrid là 50-50.”

Theo nhà cái Bet365, Man Utd là đội bị đánh giá thấp nhất trong số 4 ông lớn Premier League, với tỷ lệ đặt cược là 18/1 (đặt 1 ăn 18). Chelsea là 6/1 (đặt 1 ăn 6), Liverpool – 5/1 (đặt 1 ăn 5), và Man City dẫn đầu với tỷ lệ 11/4 (đặt 4 ăn 11).', 
N'Cựu tiền đạo của Liverpool đã chỉ ra 2 ông lớn Premier League sẽ là ứng viên nặng ký cho chức vô địch Champions League.' , NULL, 9, 3);

insert into Post_HE150490_SE1724 values(N'Bị cáo buộc hành hung bạn gái, sao M.U phản ứng gay gắt', '2022-01-21 18:01:00.000', 
N'Vụ việc hành hung bạn gái của Mason Greenwood vừa qua không chỉ ảnh hưởng đến cá nhân ngôi sao trẻ người Anh mà còn gây ảnh hưởng đến một vài cá nhân khác tại Man Utd, điển hình như Dean Henderson.

Ít ngày sau khi Greenwood bị bắt vì cáo buộc bạo lực, một số nguồn tin ám chỉ rằng, trong quá khứ Henderson cũng từng làm điều tương tự và thậm chí phải dùng tiền để bưng bít mọi chuyện. Điều này khiến thủ thành sinh năm 1997 cũng như gia đình anh chịu nhiều công kích từ phía cộng đồng mạng. Mới đây, Henderson phải lên mạng xã hội để làm rõ sự trong sạch của bản thân. Trên Instagram, anh viết:

"Không thể tin rằng tôi phải làm điều này nhưng tôi chỉ muốn giải quyết những tin đồn đã được đăng tải trong vài ngày gần đây.

Có một số kẻ tồi tệ đã gắn tên tôi vào những câu chuyện không phù hợp, gây tổn thương và hoàn toàn sai sự thật. Tôi có một gia đình và thậm chí họ đã bị ảnh hưởng bởi những điều này. Vì vậy, hãy dập tắt những tin đồn vô căn cứ và hướng đến điều tích cực."

Trong khi sự nghiệp đang vô cùng bấp bênh, khi không thể cạnh tranh suất bắt chính với De Gea, ngôi sao 24 tuổi lại tiếp tục gặp vận đen khi vướng vào những cáo buộc về việc bạo hành bạn gái.', 
N'Thêm một ngôi sao thuộc biên chế Quỷ đỏ đứng trước nghi vấn bạo lực trong quá khứ.' , NULL, 10, 4);

insert into Post_HE150490_SE1724 values(N'Đội hình Man Utd đấu Brighton: Tam tấu R.E.S xuất kích?', '2022-01-21 22:20:19.000', 
N'Thủ môn David De Gea. Anh vẫn đang là thủ thành số 1 trong khung gỗ của Manchester United. Phong độ của De Gea ổn định, anh thường xuyên có những pha cứu thua xuất thần.

Trung vệ Harry Maguire - Raphael Varane. Mặc dù nhận khá nhiều sự hoài nghi và chỉ trích nhưng bộ đôi Maguire - Varane là sự lựa chọn tối ưu với Quỷ Đỏ ở thời điểm này. Họ là những trung vệ đẳng cấp tuy nhiên tâm lý thi đấu đã phần nào bị ảnh hưởng. Ngoài ra, theo phân tích của cựu danh thủ Paul Ince, việc các tiền vệ thiếu hỗ trợ khiến cho Maguire gặp khó trong nhiều tình huống tranh chấp. Hậu vệ trái Alex Telles. Điểm cộng của cầu thủ người Brazil chính là khả năng dâng cao hỗ trợ tấn công. Trước đối thủ có lối chơi phòng ngự số đông như Brighton thì Telles là sự lựa chọn đáng cân nhắc.

Hậu vệ phải Diogo Dalot. Anh nhận được lòng tin nơi HLV Ralf Rangnick trong thời gian vừa qua. Lý do cơ bản vì hậu vệ người Bồ Đào Nha có kỹ năng tham gia tấn công tốt hơn so với người đàn anh Aaron Wan-Bissaka. Dalot mạnh dạn trong những tình huống tạt bóng và rất tích cực sút xa.

Tiền vệ phòng ngự Scott McTominay. Số 39 đang là tiền vệ có khả năng đánh chặn và phòng ngự tự xa nổi bật nhất. Anh di chuyển liên tục và có mặt ở những điểm nóng trên sân.

Tiền vệ Paul Pogba. Kể từ khi trở lại sau chấn thương, Pogba được HLV Rangnick trao cơ hội ra sân đều đặn. Dù mới tái xuất nhưng tiền vệ người Pháp đã cho thấy những tín hiệu lạc quan trong trận hòa Southampton.', 
N'Hãy cùng điểm qua 11 cầu thủ Manchester United nhiều khả năng được đá chính trong trận gặp Brighton theo nhận định của WhoScored.' , NULL, 10, 5);

insert into Post_HE150490_SE1724 values(N'Nụ cười của Ronaldo và những điều ghi nhận từ buổi tập Man United', '2022-01-21 10:05:00.000', 
N'Fred tái xuất

Sau quãng thời gian phải cách ly vì dương tính với COVID-19, Fred đã có thể trở lại tập luyện cùng đồng đội. Trước khi xui xẻo vắng mặt, tiền vệ Brazil gây ấn tượng với 2 đường kiến tạo qua 3 trận Premier League gần nhất ra sân. Không có Fred, tuyến giữa Manchester United để lộ không ít khoảng trống bị đối thủ khai thác trong 2 trận hòa thất vọng vừa qua. Fred tái xuất sẽ bổ sung sự cơ động cho hàng tiền vệ Quỷ đỏ và nhiều khả năng HLV Ralf Rangnick sẽ loại 1 cái tên trong bộ 3 Paul Pogba - Scott McTominay - Bruno Fernandes để lấy chỗ cho cậu học trò Brazil trong đội hình xuất phát tiếp đón Brighton & Hove Albion. Trong bối cảnh khát chiến thắng, chiến lược gia người Đức có lẽ sẽ ưu tiên cho khía cạnh tấn công và xếp McTominay dự bị.

Nụ cười của Cristiano Ronaldo

Năm 2022 đang khởi đầu vô cùng đáng quên với Ronaldo. Đã 6 trận trôi qua trên mọi đấu trường, CR7 chưa thể điền tên lên bảng điện tử dù chỉ 1 lần. Kể từ năm 2009, đây là chuỗi khô hạn bàn thắng dài nhất mà siêu sao Bồ Đào Nha phải trải qua.

Không đạt phong độ tốt, Ronaldo còn bị bủa vây bởi các chỉ trích vì những hành động vùng vằng mỗi khi Man United gặp khó khăn. Dù thế trong buổi tập trước thềm cuộc đụng độ Brighton, nụ cười vẫn xuất hiện trên gương mặt số 7. Bất chấp mạch trận tịt ngòi, tiền đạo 37 tuổi vẫn đang là máy săn bàn chủ lực của Quỷ đỏ với 14 pha lập công qua 26 trận từ đầu mùa.', 
N'Mirror cung cấp các hình ảnh chi tiết trong buổi tập gần nhất của đội bóng nửa đỏ thành Manchester.' , NULL, 10, 6);

insert into Post_HE150490_SE1724 values(N'Varane nói rõ khác biệt với Pogba', '2022-01-20 18:15:15.000', 
N'Mới đây, Raphael Varane đã có 1 cuộc phỏng vấn thú vị với tạp chí Inside United. Euro Sport dẫn lại lời chia sẻ của trung vệ người Pháp về mối quan hệ với các đồng đội Manchester United: "Cảm giác rất tuyệt khi quen biết các đồng đội mới."

"Tôi nghĩ mình đã thấu hiểu Man United và cảm giác như ở trong 1 gia đình. Mối quan hệ giữa tôi với các đồng đội vô cùng tốt và như đã nói, tôi thích tinh thần tại đây." Rời Tây Ban Nha chuyển sang Anh thi đấu, không phải ai trong phòng thay đồ Quỷ đỏ cũng xa lạ với cựu trụ cột Real Madrid ở thời điểm ban đầu. Tại bến đỗ mới, Varane khoác chung màu áo CLB với đồng đội ở cấp độ ĐTQG - Paul Pogba. Cả 2 đã có nhiều năm sát cánh cùng nhau và là những nhân tố chủ chốt trong thành phần Les Bleus vô địch World Cup 2018 tại Nga.

Khi được hỏi về tính cách khá trầm lắng tương phản với số 6, Varane trả lời: "Tôi nghĩ có khác biệt về tố chất lãnh đạo. Paul sôi nổi và giàu năng lượng hơn, còn tôi bình tĩnh và nghiền ngẫm nhiều hơn. Tôi nghĩ có các tố chất lãnh đạo khác nhau trong 1 đội bóng là điều quan trọng."

Pogba vừa trở lại sân cỏ chưa lâu. Ở trận hòa Southampton, tiền vệ người Pháp có 1 lần đưa được bóng vào lưới nhưng không được công nhận bàn thắng.', 
N'Trụ cột hàng phòng ngự Quỷ đỏ chia sẻ về mối quan hệ trong phòng thay đồ và đồng hương.' , NULL, 10, 7);

insert into Post_HE150490_SE1724 values(N'FIFA cấm thi đấu 4 tuyển thủ Argentina ở vòng loại World Cup', '2022-01-20 21:21:21.000', 
N'Theo BBC, thủ môn Emiliano Martinez, tiền vệ Emiliano Buendia (Aston Villa), hậu vệ Cristian Romero (Tottenham) và Giovani Lo Celso (Villarreal) sẽ bị cấm thi đấu trong 2 lượt trận còn lại của tuyển Argentina ở vòng loại World Cup 2022 khu vực Nam Mỹ trước Venezuela và Ecuador.

Ngoài ra, FIFA cũng lệnh cho tuyển Brazil và Argentina đá lại trận đấu bị hủy cách đây 7 tháng: "Sau khi điều tra kỹ lưỡng về các yếu tố và dựa trên quy định hiện hành, Ủy ban Kỷ luật FIFA quyết định trận đấu này sẽ được tổ chức lại vào một ngày và địa điểm phù hợp do FIFA chọn". Ngoài việc tuyển quốc gia mất 4 cầu thủ chủ chốt, Liên đoàn Bóng đá Argentina còn phải nộp phạt 191.000 euro vì "không tuân thủ các nghĩa vụ liên quan đến trật tự an ninh, việc chuẩn bị và tham gia trận đấu".

Liên đoàn bóng đá Brazil cũng không thoát khỏi liên đới. Họ sẽ phải nộp phạt 477.000 euro cho các vi phạm liên quan đến trật tự và an ninh do FIFA quy định.

Các án phạt của FIFA không ảnh hưởng đến Brazil và Argentina khi cả 2 đội tuyển này đã có vé dự World Cup diễn ra vào cuối năm tại Qatar.

Rạng sáng 6/9/2021, trận Brazil đại chiến Argentina bị hoãn vì sự cố hy hữu. Bốn tuyển thủ Argentina là Emiliano Martinez, Giovani Lo Celso, Emiliano Buendia và Cristian Romero khai báo gian dối ở thời điểm nhập cảnh vào Brazil.

Nhóm người bao gồm cảnh sát và lực lượng y tế địa phương xông vào sân để đưa Martinez, Lo Celso và Romero, 3 cầu thủ đá chính, rời sân. Buendia không được đăng ký thi đấu, nhưng cũng ngồi ngoài sân.

Trận đấu gián đoạn gần một tiếng, sau đó bị hủy. Còn 4 cầu thủ bị trục xuất khỏi Brazil vì quy phạm nguyên tắc phòng chống dịch Covid-19 tại nước này.

Cơ quan Quản lý Y tế Brazil (ANVISA) quy định những người nhập cảnh từ Anh, phải cách ly 14 ngày. Bốn tuyển thủ Argentina không khai báo rõ lịch trình di chuyển. Trước khi trận đấu diễn ra, ANVISA phát hiện vụ việc và yêu cầu các cầu thủ không được di chuyển khỏi khách sạn.', 
N'Liên đoàn Bóng đá Thế giới (FIFA) ra phán quyết về vụ lùm xùm khiến trận đấu giữa Brazil và Argentina bị hủy vào tháng 9/2021.' , NULL, 10, 8);

insert into Post_HE150490_SE1724 values(N'Đội hình trong mơ Arsenal mùa tới: Isak thay Lacazette', '2022-01-20 10:03:02.000', 
N'Thủ môn: Aaron Ramsdale Ramsdale là một trong những tân binh ấn tượng nhất của Arsenal mùa giải năm nay. Ngôi sao 23 tuổi đem đến sự chắc chắn, vững vàng cho khung gỗ Pháo thủ thành London. Ramsdale là một trong những ứng cử viên nặng ký cho danh hiệu thủ môn xuất sắc nhất Premier League 2021/2022.

Hậu vệ trái: Kieran Tierney

Tuyển thủ quốc gia Scotland đem đến khả năng công thủ toàn diện cho hành lang cánh trái Arsenal. Tinh thần chiến đấu máu lửa là điểm mạnh khác nơi Tierney.

Trung vệ: Ben White Tương tự như Ramsdale, Ben White là một trong những tân binh ấn tượng của Arsenal mùa này. Tuyển thủ Tam Sư có màn trình diễn ấn tượng sau giai đoạn khởi đầu chậm chạp. Ben White hứa hẹn sẽ tiếp tục là trụ cột hàng thủ đội nhà mùa tới.

Trung vệ: Gabriel Magalhaes

Ngôi sao người Brazil là đối tác số 1 bên cạnh Ben White vào lúc này. Gabriel sở hữu kỹ năng không chiến ấn tượng, phán đoán tình huống chuẩn xác cùng một phong độ ổn định.

Hậu vệ phải: Tomiyasu Takehiro

Tomiyasu là một trong những cầu thủ châu Á thi đấu nổi bật nhất tại châu Âu hiện tại. Mạnh mẽ, tốc độ, tinh thần chiến đấu hết mình, công thủ toàn diện là điểm mạnh của Tomiyasu.

Tiền vệ trung tâm: Thomas Partey Ngôi sao người Ghana là trụ cột nơi hàng tiền vệ Arsenal. Sau quãng thời gian đầu có phần trồi sụt thất thường, Partey đang dần dần chiếm được niềm tin nơi các CĐV đội nhà.

Tiền vệ trung tâm: Granit Xhaka

Bản tính nóng nảy là điểm yếu chí tử của Xhaka. Mặc dù vậy, tiền vệ người Thụy Sĩ vẫn rất hữu ích trong sơ đồ chiến thuật của Mikel Arteta. Xhaka có lối chơi xông xáo, giàu nhiệt huyết, pressing mạnh mẽ.

Hộ công: Martin Odegaard', 
N'Pháo thủ sẽ cần thêm những bản hợp đồng mới để cải thiện, gia tăng chiều sâu lực lượng lẫn sức mạnh đội hình.' , NULL, 10, 9);

insert into Post_HE150490_SE1724 values(N'Real Madrid sẽ dành cái bẫy nào cho PSG?', '2022-01-19 18:19:19.000', 
N'So về lực lượng và danh tiếng của các ngôi sao trong đội hình, Real Madrid lúc này không thể bằng PSG. Khả năng ra sân còn bỏ ngỏ của Karim Benzema đặt HLV Ancelotti trước bài toán khó, khi hàng công Real Madrid chơi tệ thời gian qua.

Ba trận gần nhất, đội chủ sân Bernabeu chỉ ghi được một bàn thắng sau 44 cú sút. Ở trận đấu lượt đi vòng 16 đội Champions League mùa này, đội bóng của HLV Ancelotti nhiều khả năng chấp nhận lùi đội hình để chơi phản công. Real của Ancelotti giỏi chơi phản công

Ởmùa giải 2013/14, Real Madrid lên đỉnh châu Âu bằng lối chơi phản công tốc độ. Trong lần thứ 2 dẫn dắt đội chủ sân Bernabeu, HLV Ancelotti tiếp tục sử dụng công thức giúp ông từng vô địch Champions League 8 năm trước.

Chiến lược gia người Italy có lý do để tiếp tục duy trì lối chơi đó. Chất lượng nhân sự của hàng công Real Madrid hiện tại còn kém hơn 8 năm trước. Họ không thể đôi công với các đối thủ như PSG.

Neymar nhiều khả năng ra sân trong trận đấu với Real Madrid, sau khi chân sút người Brazil kịp bình phục chấn thương. Bộ ba Lionel Messi - Neymar - Kylian Mbappe đủ sức xuyên thủng mọi hàng thủ trên thế giới.

Huyền thoại người Pháp, Lilian Thuram, nói khi cả 3 cầu thủ kể trên của PSG đạt phong độ cao nhất, rất khó để cản PSG. "PSG hiển nhiên được đánh giá cao hơn Real Madrid", nhà vô địch World Cup 1998 nhận định.

Chủ động lùi đội hình và chơi phản công cũng là vũ khí sở trường của Real Madrid và HLV Ancelotti. Real Madrid chơi hay trong các trận cầu lớn mùa này. Họ đánh bại cả Barcelona và Atletico Madrid tại La Liga, hạ Inter Milan trong cả 2 lượt đấu ở vòng bảng Champions League.

Trong 4 trận đấu lớn với Barcelona, Atletico và Inter Milan ở La Liga lẫn Champions League, Real Madrid chỉ một lần để thủng lưới. Trong cuốn sách chiến thuật "My Christmas Tree", HLV Ancelotti từng khẳng định phản công chính là một trong những thành tố cơ bản làm nên triết lý bóng đá của ông.

"Các đội bóng của tôi thường được xây dựng để chơi phản công", người từng 3 lần vô địch Champions League trên vai trò HLV chia sẻ. "Cách tổ chức lối chơi đó giúp chúng tôi chuyển trạng thái nhanh nhất có thể sau khi cướp được bóng. Điều đó giúp đội bóng của tôi tạo ra lợi thế".

Lần gần nhất Real Madrid của HLV Ancelotti trình diễn thứ bóng đá phản công sắc sảo trong các trận cầu lớn, là ở bán kết Siêu cúp Tây Ban Nha một tháng trước, với nạn nhân mang tên Barcelona.', 
N'Bóng dài và phản công chớp nhoáng là 2 phương án nhiều khả năng được huấn luyện viên Carlo Ancelotti sử dụng trong trận đấu với PSG vào rạng sáng 16/2 (giờ Hà Nội).' , NULL, 10, 10);

insert into Post_HE150490_SE1724 values(N'Rafael Leao - mục tiêu mới nhất của Arsenal - là ai?', '2022-01-19 21:01:03.000', 
N'Ghi bàn 10 lần sau 27 lần ra sân trên mọi đấu trường, ngôi sao người Bồ Đào Nha đã thu hút sự quan tâm từ một số câu lạc bộ hàng đầu châu Âu, bao gồm cả Arsenal, đội bóng đang tìm cách tăng cường hàng tiền đạo của họ trong những tháng tới.

 Với việc Alexandre Lacazette và Eddie Nketiah dường như sẽ theo chân Pierre-Emerick Aubameyang rời khỏi Emirates vào mùa hè tới, Mikel Arteta cần ít nhất hai tiền đạo mới để củng cố hàng công Pháo thủ. Theo đó, một số cầu thủ đã được liên kết với việc chuyển đến Arsenal, và Leao là người mới nhất trong số đó, với các báo cáo cho thấy Pháo thủ muốn chiêu mộ Henry mới này vào mùa hè.

Vẫn chưa có bất cứ điều gì cụ thể cho thấy thương vụ này sẽ xảy ra, nhưng chính xác thì ngôi sao của AC Milan có thể mang gì đến Bắc London?

Sinh ra tại Almada vào ngày 10 tháng 6 năm 1999, gốc Angola, Leao là sản phẩm của học viện Sporting CP. Anh đã trở thành cầu thủ ghi bàn trẻ nhất từ trước đến nay của câu lạc bộ vào năm 2018, nhưng sau một sự cố khi các cầu thủ và nhân viên đội bóng bị tấn công trong buổi tập, anh đã rời khỏi Bồ Đào Nha.

Cầu thủ 22 tuổi ký hợp đồng với Lille theo bản hợp đồng có thời hạn 5 năm vào mùa hè năm đó, và sau một mùa giải đột phá - nơi đội bóng của anh đứng thứ hai tại Ligue 1 sau Paris Saint-Germain - Leao đã chuyển đến Serie A để thi đấu cho nửa đỏ thành Milan trong thương vụ 28 triệu euro.

', 
N'Arsenal được cho là quan tâm đến việc ký hợp đồng với Rafael Leao của AC Milan vào mùa hè này.' , NULL, 10, 11);

insert into Post_HE150490_SE1724 values(N'Paul Ince lý giải nguyên nhân khiến Maguire chơi không tốt', '2022-01-19 00:00:00.000', 
N'Harry Maguire đang là một trong những chủ đề khiến NHM Manchester United bàn tán rất nhiều trong thời gian qua. Trung vệ người Anh không đạt được phong độ tốt và thi đấu thiếu ổn định nơi hàng thủ Quỷ Đỏ. Mới đây, màn trình diễn của cựu sao Hull City trong trận hòa Southampton cũng không mấy ấn tượng.

Chia sẻ trên Daily Mail, cựu danh thủ Paul Ince đã có những phân tích về Maguire: "Điều bạn phải nhìn nhận là Harry Maguire không phải là người có thể xoay sở nhanh nhẹn. Cậu ấy không phải là một cầu thủ kém cỏi. Harry Maguire đang trải qua một thời kỳ mà mọi sai lầm đều bị phóng đại lên. Đối với tôi, đó không chỉ là cậu ấy mà hàng tiền vệ của Man Utd cũng có vấn đề. Maguire không được hỗ trợ tối đa. Nếu đá cùng với một những tiền vệ theo kiểu Roy Keane, Maguire sẽ không phải bị NHM Man Utd chỉ trích.

Ví dụ như với một tiền đạo như [Armando] Broja (của Southampton) - người mạnh mẽ và nhanh. Bạn phải đảm bảo rằng những cầu thủ ở tuyến giữa phải di chuyển để cùng Maguire khóa chặt mũi tấn công này."

Trước đó, nói về Maguire, HLV Ralf Rangnick có chia sẻ: "Tôi nghĩ sau khi Harry Maguire trở lại sau chấn thương, cậu ấy đã làm rất tốt, với màn trình diễn rất tốt trước West Ham. Nhưng trong hai trận đấu gần đây, cậu ấy đã chơi kém hơn, cả trước Southampton và khi chúng tôi nhận bàn thua trước Burnley."', 
N'Cựu danh thủ Paul Ince đã đưa ra những phân tích về những yếu tố khiến Harry Maguire thi đấu dưới sức.' , NULL, 11, 12);

insert into Post_HE150490_SE1724 values(N'Rangnick đã chọn đúng tiền đạo lý tưởng cho Man Utd', '2022-01-18 18:18:15.000', 
N'Cùng với những cái tên quen thuộc như Erling Haaland, Lautaro Martinez hay Alexander Isak, tờ BBC cho biết Schick là một cầu thủ mà Ralf Rangnick ngưỡng mộ. Rangnick có thể không dẫn dắt Quỷ đỏ vào mùa giải tới, nhưng ông sẽ có tác động lớn đến tân HLV của đội chủ sân Old Trafford, thông qua vai trò tư vấn của mình.  Tài năng của Schick

Schick, 26 tuổi, ký hợp đồng với Leverkusen vào năm 2020, sau khi trải qua một năm cho mượn tại RB Leipzig, trong một thỏa thuận do Rangnick giám sát.

Sau một chiến dịch tuyệt vời 2021/22, cái tên Schick rõ ràng xứng đáng có mặt trong danh sách này. Cho đến thời điểm này của mùa bóng, anh đã ghi được 19 bàn thắng đầy ấn tượng tại Bundesliga cho Bayer Leverkusen, chỉ đứng sau Robert Lewandowski (26 bàn).

Schick xếp trước Erling Haaland (16 bàn), mặc dù cần lưu ý rằng Haaland vắng mặt vài tuần do chấn thương. Điều này không thể phủ nhận khả năng săn bàn tuyệt vời của Schick. Anh ghi bàn cứ sau mỗi 80 phút ở Bundesliga mùa này, và 19 bàn thắng của anh đến sau 19 trận.

  
Mùa trước, Schick cũng chỉ ghi được 13 bàn cho Leverkusen. Năm nay, sau kỳ EURO 2020 ấn tượng cùng Cộng hòa Séc, nơi anh đã ghi bốn bàn, tiền đạo này đã đạt đến một tầm cao mới khi có được sự tự tin cao độ.', 
N'Man Utd đang tìm kiếm một tiền đạo vào mùa hè này và theo báo cáo của BBC Sport, Patrik Schick có thể góp mặt trong danh sách rút gọn của câu lạc bộ.' , NULL, 11, 13);

insert into Post_HE150490_SE1724 values(N'Bằng chứng làm sáng tỏ vụ việc Bruno đấm sao Southampton', '2022-01-18 22:21:20.000', 
N'Trong cuộc chạm trán Southampton hồi tuần trước, Man Utd tiếp tục thể hiện màn trình diễn kém thuyết phục. Họ vươn lên dẫn trước ngay trong hiệp một nhờ pha lập công của Jadon Sancho, nhưng cũng như kịch bản ở trận đấu với Burnley, Quỷ đỏ thi đấu thiếu tập trung ở khoảng thời gian còn lại và bị đối thủ gỡ hòa.

Đáng chú ý sau khi cuộc đụng độ này khép lại, mạng xã hội còn lan truyền đoạn video cho thấy Bruno Fernandes dường như đã đấm đội trưởng The Saints - James Ward-Prowse. Cả hai tranh chấp quyết liệt, thậm chí họ đã lao vào nhau và cánh tay của Bruno đã vụt qua đầu Ward-Prowse với tốc độ cao. Theo ESPN, sự việc đã được xem xét lại nhưng góc quay từ video trên mạng xã hội không thể kết luận Bruno phạm lỗi.

Sau khi tham khảo những góc quay khác của BT Sport, ban tổ chức cho rằng Bruno đang vung tay một cách tự nhiên chứ không phải tung cú đấm về phía Ward-Prowse. Vì vậy, ngôi sao người Bồ Đào Nha sẽ không chịu bất cứ hình phạt nào.

Dù không còn thi đấu bùng nổ như những mùa giải trước, nhưng ở giai đoạn hiện tại, Bruno Fernandes vẫn giữ vai trò quan trọng trong việc triển khai lối chơi bên phía Man Utd nhờ vào nhãn quan chiến thuật tuyệt vời.', 
N'Các cổ động viên The Saints đã vô cùng bức xúc trước đoạn video được đăng tải sau trận hòa vừa qua với Man Utd.' , NULL, 11, 14);

insert into Post_HE150490_SE1724 values(N'Eriksen tái xuất sân cỏ, có màn debut ấn tượng ở Brentford','2022-01-18 08:08:08.000', 
N'Sau biến cố tại VCK EURO 2020, Christian Eriksen đã nỗ lực hồi phục sức khỏe và tập luyện hướng đến việc tái xuất sân cỏ. Cuối tháng Giêng vừa qua, tiền vệ người Đan Mạch đã ký kết hợp đồng 6 tháng với CLB đang thi đấu tại Ngoại hạng Anh là Brentford.

Và mới đây, cựu sao Inter Milan đã có màn debut trong màu áo của Bầy Ong. Theo Goal đưa tin, anh được thi đấu trong khoảng 60 phút ở trận giao hữu với Southend FC vào thứ Hai (theo giờ địa phương). Ở đó, Eriksen tạo ấn tượng đậm nét khi đóng góp một pha kiến tạo cho Josh Dasilva ghi bàn. Chung cuộc Brentford giành chiến thắng 3-2. Đây rõ ràng là tín hiệu đáng mừng cho cá nhân tiền vệ sinh năm 1992 sau thời gian không thi đấu khá lâu. Ngoài ra, NHM Brentford cũng có quyền hy vọng vào một làn gió mới, tiếp thêm sức mạnh cho đội nhà trong cuộc chiến trụ hạng cam go sắp tới.

Trên lý thuyết, Eriksen có thể ra mắt Brentford ở một trận đấu chính thức vào cuối tuần này. Bầy Ong sẽ có chuyến làm khách đến sân của Arsenal. Tuy nhiên, rất nhiều khả năng anh sẽ được tung vào sân từ băng ghế dự bị. Và có lẽ trận gặp Newcastle vào ngày 26/02 sẽ là cơ hội để cựu cầu thủ Tottenham Hotspur có một trận đấu trọn vẹn.', 
N'Christian Eriksen đã trở lại sân cỏ và có trận đầu tiên thi đấu trong thành phần của Brentford trong trận giao hữu với Southend.' , NULL, 11, 15);

insert into Post_HE150490_SE1724 values(N'Ralf Rangnick nói thẳng về vai trò thủ quân của Harry Maguire', '2022-01-17 18:17:17.000', 
N'Hậu vệ người Anh đã mắc lỗi trong một số bàn thua của Man Utd trong chuỗi ba trận không thắng, khiến họ mất vị trí trong cuộc đua vào tốp 4 và bị loại khỏi FA Cup. Huấn luyện viên tạm quyền Ralf Rangnick tuyên bố Maguire - người đã trở thành hậu vệ đắt giá nhất thế giới khi gia nhập Man Utd từ Leicester trong một hợp đồng trị giá 80 triệu bảng vào năm 2019 - đang gặp khó khăn để thích nghi với việc chơi ở hàng thủ 4 người.

Rangnick nói trước lần đụng độ với Brighton: "Tôi nghĩ sau khi Harry Maguire trở lại sau chấn thương, cậu ấy đã làm rất tốt, với màn trình diễn rất tốt trước West Ham. Nhưng trong hai trận đấu gần đây, cậu ấy đã chơi kém hơn, cả trước Southampton và khi chúng tôi nhận bàn thua trước Burnley.

Harry là đội trưởng của chúng tôi và tôi không thấy có lý do gì để thay đổi điều đó, nhưng cậu ấy là một cầu thủ phải phát triển và trở nên tốt hơn, giống như tất cả các cầu thủ khác.

Cách chơi của chúng tôi rất mới mẻ. Ở đội tuyển quốc gia Anh, Harry đã quen với việc chơi sơ đồ 3 hậu vệ. Còn ở đây, cậu ấy chơi sơ đồ 4 hậu vệ, và sẽ không được chủ động như vậy. Sẽ mất một thời gian để cậu ấy quen với điều đó."', 
N'Một số người hâm mộ Quỷ đỏ đã kêu gọi Man Utd tước đi băng thủ quân của Harry Maguire sau màn trình diễn dưới mức trung bình trong những tuần gần đây.' , NULL, 11, 16);

insert into Post_HE150490_SE1724 values(N'Rooney hé lộ đối tác yêu thích khi còn thi đấu ở Man Utd', '2022-01-17 22:17:17.000', 
N'Wayne Rooney là một công thần của Manchester United trong giai đoạn 2004 đến 2017. Trải qua nhiều thăng trầm, cựu tuyển thủ ĐT Anh cùng Quỷ Đỏ chinh phục nhiều danh hiệu và anh trở thành một cái tên được NHM đội bóng quý trọng cho đến tận bây giờ.

Mới đây, trong buổi trả lời phỏng vấn với  SPORTbible, "Gã Shrek" đã trải lòng về đối tác yêu thích trên hàng công trong suốt thời gian thi đấu cho đội chủ sân Old Trafford: "Tevez. Tôi chỉ trân trọng sự kết nối với anh ấy. Hai chúng tôi ở phía trước, chúng tôi khen ngợi nhau để tạo động lực chiến đấu. Thông thường nếu tôi chơi với Louis Saha, Ruud van Nistelrooy hoặc Robin van Persie - những tiền đạo này luôn là số 9 và tôi sẽ chơi như số 10.

Với Tevez, chúng tôi có thể xoay vòng, tôi có thể đá số 9 hoặc số 10. Khi chúng tôi mất bóng, chúng tôi sẽ giống như hai gọng kìm cố gắng giành lại nó. Với tư cách là một đối tác tấn công, anh ấy là người mà tôi thích chơi cùng nhất tại Man Utd."

Dù chỉ thi đấu trong hàng ngũ Quỷ Đỏ trong 2 mùa giải (2007-2009) nhưng dấu ấn của chân sút người Argentina là rất đậm nét. Anh ghi tổng cộng 34 bàn thắng sau 99 lần ra sân ở mọi đấu trường.', 
N'Cựu tiền đạo Wayne Rooney đã có những trải lòng về đối tác yêu thích của anh trên hàng công khi còn thi đấu cho Manchester United.' , NULL, 11, 17);

insert into Post_HE150490_SE1724 values(N'Fred không phải là đáp án, Paul Ince chỉ ra mục tiêu 40 triệu bảng cho Man Utd', '2022-01-17 02:02:03.000', 
N'Paul Ince tin rằng Man Utd nên nhắm tới việc chiêu mộ Yves Bissouma của Brighton để thay thế Fred ở trung tâm hàng tiền vệ của họ. Hàng tiền vệ của Man Utd đã hứng chịu những lời chỉ trích trong những mùa giải gần đây. Scott McTominay và Fred bị người hâm mộ và các chuyên gia coi là những lỗ hổng trong đội hình Quỷ đỏ.

  
Đội chủ sân Old Trafford dự kiến sẽ vung tiền vào mùa hè với Declan Rice của West Ham được cho là đứng đầu danh sách của họ. Tuy nhiên, cựu cầu thủ Quỷ đỏ, Paul Ince cho rằng Bissouma, người có thể rời bờ biển phía nam vào cuối mùa giải, có thể là phương án hoàn hảo hơn.

"Bạn phải nhìn vào việc tuyển dụng của Man Utd," Paul Ince lên tiếng. "Họ không biết về Bissouma, giờ cậu ấy đang ở Brighton và có thể có giá 40 triệu bảng. Họ không biết về [N’Golo] Kante, giờ cậu ấy đang ở Chelsea.

Tất cả những cầu thủ này đều nổi bật, nhưng tại sao Man Utd không phát hiện ra họ?

Họ cần có được một người như Bissouma vì tuyến giữa cần phải thay đổi. Fred không phải là đáp án, McTominay là một trong những cầu thủ giỏi nhưng sẽ tốt hơn nếu có người như Bissouma bên cạnh."

Ở hàng tiền vệ, Man Utd còn nỗi lo khác xung quanh tương lai của Paul Pogba khi cầu thủ người Pháp hết hợp đồng và chưa đồng ý gia hạn.', 
N'Cựu danh thủ Paul Ince không đặt nhiều niềm tin vào Fred và cho rằng Man Utd cần phải chiêu mộ một cầu thủ chất lượng hơn.' , NULL, 11, 3);

insert into Post_HE150490_SE1724 values(N'"Một kế hoạch dài hạn đang diễn ra với Liverpool"', '2022-01-16 16:18:16.000', 
N'Chia sẻ với báo chí, cựu cầu thủ Liverpool Danny Murphy tin rằng Jurgen Klopp đã có kế hoạch thay thế bộ ba tấn công Mohamed Salah - Roberto Firmino - Sadio Mane. Tam tấu lừng danh trở thành trụ cột không thể thay thế của The Kop xuyên suốt 5 năm qua. 

Mặc dù vậy, hai gương mặt Firmino và Mane đã sa sút khá nhiều thời gian gần đây. Trong khi đó, tương lai của Salah vẫn chưa chắc chắn khi quá trình đàm phán giữa anh và The Kop tiếp tục rơi vào bế tắc.

Liverpool sẽ cần tính đến kịch bản thay thế họ. Những dấu hiệu đầu tiên đã manh nha xuất hiện. Theo Danny Murphy, hai ngôi sao Diogo Jota và Luis Diaz sẽ nằm trong kế hoạch cải tổ lực lượng của đội chủ sân Anfield. Bình luận với talkSport, Danny Murphy cho hay: "Khi bạn nhìn cái cách Klopp sử dụng các cầu thủ trẻ, bạn sẽ đoán ra ông ấy muốn thay đổi một chút. Luis Diaz có màn trình diễn tuyệt vời trước Leicester City. Harvey Elliott đang trên đường lấy lại phong độ. Curtis Jones cũng vậy. Ibrahima Konate là trung vệ trẻ. Trong khi Jota là cây săn bàn đích thực.".

"Một kế hoạch dài hạn đang diễn ra với Liverpool vào lúc này. Jota có khả năng chơi đa dạng ở mọi vị trí. Cậu ấy rất bình tĩnh trong vòng cấm địa," Danny Murphy chia sẻ.

Kế hoạch cải tổ của Klopp hoàn toàn có cơ sở khi chúng ta nhìn vào hàng loạt màn trình diễn của Firmino - Mane thời gian gần đây.  Sự sa sút của bộ đôi này vô hình trung đặt gánh nặng ghi bàn lên vai Salah. Liverpool cần những làn gió mới mẻ.', 
N'Jurgen Klopp sẽ cần đến những nhân tố mới, những làn gió trẻ trung nhằm "restart" lại Liverpool trong bối cảnh các trụ cột sắp bước qua tuổi 30.' , NULL, 11, 4);

insert into Post_HE150490_SE1724 values(N'Ancelotti đối diện bài toán chọn Benzema hay Bale trước PSG', '2022-01-16 22:22:16.000', 
N'Khi Real Madrid chuẩn bị đối đầu với PSG tại Parc des Princes trong khuôn khổ vòng 1/8 Champions League, điều bí mật lớn đối với Carlo Ancelotti là liệu Karim Benzema có đủ sức khỏe để ra sân ngay từ đầu hay anh chỉ xuất phát trên ghế dự bị. Đối với chiến lược gia người Italia, đó là một bài toán hóc búa với phong độ xuất sắc của cầu thủ người Pháp ở mùa giải này. Benzema đã không thi đấu gần một tháng sau khi gặp vấn đề về cơ trong trận gặp Elche và chỉ có thể tập nhẹ trước chuyến làm khách đến Paris

Sự phụ thuộc vào Benzema của Real Madrid là tuyệt đối. Anh ấy không chỉ gánh vác trách nhiệm dẫn dắt hàng công và cung cấp các bàn thắng nhờ vào thành tích 24 bàn trong 28 lần ra sân mùa này. Ngôi sao người Pháp còn mang đến những gì tốt nhất của Vinicius, người đang thi đấu thiếu thuyết phục ở các trận gần đây vì thiếu số 9.  Trong bảy trận đấu mà Benzema đã bỏ lỡ ở mùa này, cầu thủ người Brazil chỉ ghi bàn duy nhất một lần. Sát cánh cùng Benzema, Vinicius nổ súng tận 14 lần. Sự khác biệt là rõ rệt.

Trong ba trận gần nhất không Benzema, Real ghi được một bàn thắng từ 48 cú sút. Gặp Villarreal tại La Liga cuối tuần rồi, Gareth Bale xuất phát ở vị trí cao nhất hàng công. Bale có cơ hội nhưng không thể chuyển hóa chúng thành bàn thắng. Luka Jovic, người một lần nữa không được tin tưởng và chỉ ra sân từ ghế dự bị, cũng rơi vào tình cảnh như Bale. Anh có cơ hội đối mặt thủ môn nhưng lại bấm bóng vào trúng xà ngang. 

Ở các trận trước đó gặp Athletic ở Copa del Rey hay Granada, Marco Asensio lẫn Isco lần lượt được lĩnh xướng hàng công. Kết quả vẫn là sự thất bại trong việc phá lưới đối thủ. Suy cho cùng, Benzema vẫn là phương án tốt nhất cho vị trí trung phong và Ancelotti sẽ chờ đợi trò cưng của mình.', 
N'Việc chọn ai đá chính ở vị trí tiền đạo sẽ là bài toán khó khăn dành cho Carlo Ancelotti trước trận PSG.' , NULL, 12, 5);

insert into Post_HE150490_SE1724 values(N'Man Utd có sẵn 5 cầu thủ phù hợp với HLV tiềm năng tiếp theo', '2022-01-16 09:10:10.000', 
N'Cùng với Mauricio Pochettino, Erik ten Hag là ứng cử viên sáng giá cho chiếc ghế nóng tại sân Old Trafford. Nếu được bổ nhiệm trở thành HLV trưởng Man Utd, ông có thể trao cơ hội cho 5 cầu thủ dưới đây.

Jadon Sancho Thực tế, Sancho chưa thể đáp ứng được kỳ vọng với bản hợp đồng lên tới 85 triệu bảng. Ten Hag có thể thay đổi điều này. Những cầu thủ đậm chất kỹ thuật và có khả năng rê bóng như Sancho hoàn toàn có đất diễn dưới sự chỉ đạo của vị HLV người Hà Lan. Nên nhớ rằng, Ralf Rangnick vẫn chưa khai thác hết tiềm năng của Sancho.

Amad Diallo United ký hợp đồng với Diallo vào kỳ chuyển nhượng mùa hè năm 2020. Cầu thủ này hầu như không được trao cơ hội ở Old Trafford, khi Ole Gunnar Solskjaer không mạo hiểm sử dụng. Tình hình cũng không cải thiện dưới thời Rangnick.

Tuy nhiên, Amad, giống Sancho, là dạng cầu thủ tiềm năng và có đầy đủ tố chất để trở thành một ngôi sao hạng A trong những năm tới. Ten Hag nổi tiếng mát tay với những cầu thủ trẻ và Diallo có thể hưởng lợi.', 
N'Trong trường hợp lên nắm quyền dẫn dắt Manchester United, Erik ten Hag sẽ có sẵn những quân bài phù hợp với yêu cầu của ông tại Old Trafford.' , NULL, 12, 6);

insert into Post_HE150490_SE1724 values(N'Điểm nhấn đáng chú ý tại EPL: Kịch bản tương tự cho M.U; Liverpool nhen nhóm hy vọng', '2022-01-15 18:15:00.000', 
N'1. Kịch bản tương tự cho Man Utd

Trong cả hai cuộc đụng độ diễn ra vào tuần trước, Quỷ đỏ đều chiếm lợi thế với bàn thắng mở tỷ số ngay trong hiệp một. Tuy nhiên sau giờ nghỉ, họ lại trình diễn một lối chơi thiếu thuyết phục và để đối thủ gỡ hòa. Khi hàng thủ tiếp tục bộc lộ những sai lầm, ở tuyến đầu, chân sút chủ lực Cristiano Ronaldo cũng đang cho thấy vấn đề về phong độ. Chân sút người Bồ Đào Nha đã trải qua trận đấu thứ 6 liên tiếp mà không ghi bất kỳ pha lập công nào.

2. Ralph Hasenhuttl

Dù phải hành quân đến Old Trafford ở cuộc chạm trán vừa qua, và thậm chí còn bị đối thủ dẫn trước. Tuy nhiên, với bản lĩnh cùng đấu pháp hợp lý của Hasenhuttl, Southampton vẫn có thể tìm cách bỏ túi 1 điểm.

Trận hòa vừa rồi đánh dấu chuỗi trận tuyệt vời dành cho thầy trò Hasenhuttl, bởi họ đã bất bại trước các đối thủ BIG SIX trong 3 tuần qua. Ngoài Man Utd, những Man City hay Tottenham đều gặp khó trước The Saints.

3. Liverpool tiếp tục hy vọng

Dù gặp vô vàn khó khăn trong chuyến làm khách đến sân Burnley, nhưng thầy trò Jurgen Klopp vẫn giành trọn vẹn 3 điểm, qua đó nối dài mạch thắng tại Premier League lên con số 4. ', 
N'Hãy cùng điểm qua những diễn biến hấp dẫn nhất tại Premier League trong tuần đấu vừa qua.' , NULL, 12, 7);

insert into Post_HE150490_SE1724 values(N'Barca thoát thua, Koeman đã đúng về Luuk de Jong', '2022-01-15 00:00:00.000', 
N'Khi bị NHM Barca đặt dấu hỏi về việc chiêu mộ Luuk de Jong từ Sevilla, Ronald Koeman từng thẳng thắn lý giải: "Trước đây tôi luôn nghĩ tại sao Barca thiếu mẫu tiền đạo như De Jong. Khi một quả bóng được tạt vào vòng cấm, De Jong nguy hiểm hơn Neymar. Cậu ấy là một kiểu tiền đạo khác với những gì chúng tôi có, và tôi nghĩ tất cả các đội nên có một người như cậu ấy."

Phát ngôn của Koeman khi ấy cũng không khiến NHM Barca hoàn toàn hài lòng. Bởi điều đó đồng nghĩa Barca sẽ cần chơi bóng bổng, áp dụng chiến thuật tạt cánh thay vì thực hiện lối đá ban bật ngắn quen thuộc. Dù vậy, chính phong cách đá đơn giản ấy vừa giúp Barca của Xavi Hernandez thoát thua trước Espanyol. Trong thời điểm không còn gì để mất, Xavi thậm chí sử dụng tất cả cầu thủ trên hàng công. Ferran Torres và Adama Traore đều có mặt trong đội hình xuất phát. Pierre-Emerick Aubameyang và Ousmane Dembele vào sân từ ghế dự bị, Đương nhiên là tính cả sự xuất hiện của De Jong. Xavi muốn làm mọi thứ có thể để xoay chuyển cục diện.

Thật trớ trêu, dù Barca đã đón về 3 tân binh trong mùa giải này, dù những cái tên còn lại đều được đánh giá tốt hơn De Jong, nhưng chân sút người Hà Lan là cái tên được chọn để giúp CLB thoát hiểm. Cần lưu ý rằng, ở hai trận đấu gần nhất, De Jong cũng chính là tiền đạo duy nhất lập công cho Barca. Những cái tên nổ súng còn lại đều là tiền vệ lẫn hậu vệ như Jordi Alba, Dani Alves, Ronald Araujo, Gavi và Pedri

Barca trước Espanyol tạt cánh rất nhiều, mọi đường bóng xuất phát từ cánh phải nhờ vào khả năng của Traore. Xavi yêu cầu Barca chơi đơn giản, trực diện và bơm bóng vào vòng cấm càng nhanh càng tốt. Không thể phủ nhận sự tiến bộ trong cách chơi của Barca dưới thời Xavi nhưng khi cần, Blaugrana vẫn rũ bỏ hình ảnh quen thuộc để hướng đến tính hiệu quả.', 
N'Phải đến sau trận hòa Espanyol, NHM Barcelona mới thấm thía phát biểu của Ronald Koeman trong quá khứ.' , NULL, 12, 8);

insert into Post_HE150490_SE1724 values(N'Arteta ra bài tập táo bạo cho số 14 tương lai của Arsenal', '2022-01-15 10:22:19.000', 
N'Việc không chiêu mộ thêm bất kỳ chân sút nào ở kỳ chuyển nhượng tháng Giêng cộng thêm việc Pierre-Emerick Aubameyang chuyển đến đầu quân cho Barcelona đã khiến cơn đau đầu nơi hàng tiền đạo Arsenal ngày càng gia tăng.

Hiện tại, HLV Mikel Arteta chỉ còn hai sự lựa chọn nơi vị trí này, đó là bộ đôi Alexandre Lacazette và Eddie Nketiah, nhưng cả hai cái tên nói trên cũng đã xác định rời Emirates khi hợp đồng hết hạn vào cuối mùa giải. Và với tình hình này, Arsenal sẽ rơi vào cơn khủng hoảng trên mặt trận tấn công. Để giải quyết vấn đề, bên cạnh việc lên kế hoạch bổ sung một trung phong chất lượng vào phiên chợ hè, nguồn tin từ Mirror cho biết, Arteta đang lên phương án biến Gabriel Martinelli trở thành một số 9 thực thụ.

Cầu thủ người Brazil có sở trường thi đấu dạt cánh, tận dụng những pha dốc bóng tốc độ và tạo đột biến nhờ kỹ thuật ấn tượng. Tuy nhiên, thuyền trưởng Arsenal đang cố gắng đưa ra sự thay đổi, bằng việc đẩy Martinelli vào chơi trung lộ trong những buổi tập gần đây tại London Colney.

Trên thực tế, Martinelli là mẫu tiền đạo cũng khá nhạy bén ở khâu dứt điểm. Ngôi sao 20 tuổi góp dấu giày vào 7 bàn thắng sau 21 lần ra sân trên mọi đấu trường mùa này. Anh cũng mơ ước có thể khoác lên mình chiếc áo số 14 huyền thoại, khi Aubameyang đã rời đi.', 
N'Chiến lược gia người Tây Ban Nha đang ấp ủ những dự định mới cho hàng công Pháo thủ.' , NULL, 12, 9);

insert into Post_HE150490_SE1724 values(N'Sancho từ chối Rangnick', '2022-01-14 18:59:00.000', 
N'Sau nhiều nỗ lực, vào kỳ chuyển nhượng hè năm ngoái, Man Utd đã chiêu mộ thành công Jadon Sancho từ Borussia Dortmund trong một thương vụ trị giá 73 triệu bảng. 

Dù chỉ mới cập bến Old Trafford một khoảng thời gian ngắn, nhưng với những biến động mà Quỷ đỏ gặp phải, ngôi sao người Anh đã trải qua hai triều đại HLV, Ole Gunnar Solskjaer và Ralf Rangnick. Cả hai vị thuyền trưởng kể trên đều đánh giá cao tài năng của Sancho. Nhưng riêng Rangnick, ông thậm chí từng tiếp cận cầu thủ sinh năm 2000 khi anh chỉ mới 17 tuổi, nhưng Sancho lại quyết định chuyển đến đầu quân cho Dortmund thay vì RB Leipzig - đội bóng Rangnick dẫn dắt khi đó.

  
Chia sẻ ở một buổi phỏng vấn mới đây, thuyền trưởng người Đức thừa nhận mối quan tâm dành cho Sancho trong quá khứ. Ông cho biết:

"Jadon, tôi đã biết cậu ấy khi cậu ấy mới 17 tuổi và vẫn còn chơi ở Anh (trong màu áo Man City).

Tôi đã liên hệ với cậu ấy và người đại diện để cố gắng thuyết phục cậu ấy gia nhập Leipzig với chúng tôi, nhưng cậu ấy đã quyết định đến Dortmund và có một khoảng thời gian tuyệt vời ở đó.

Cậu ấy trở thành một trong những cầu thủ chạy cánh xuất sắc nhất giải đấu và ở châu Âu.

Bước tới Manchester United là một bước tiến lớn, và cần phải có thời gian để thích nghi. Phong cách ở đây hoàn toàn phù hợp với tố chất của cậu ấy, với việc cậu ấy có sở trường thi đấu nơi hành lang trái, tôi đang cố gắng phát huy khả năng của cậu ấy."', 
N'Ngôi sao trẻ người Anh đã khước từ chiến lược gia 63 tuổi trong quá khứ để chuyển đến đầu quân cho Dortmund.' , NULL, 12, 10);

insert into Post_HE150490_SE1724 values(N'Lên án học trò, Mourinho bị Capello chỉ trích', '2022-01-14 00:00:00.000', 
N'Jose Mourinho đang ngồi trên đống lửa vì chuỗi trận thất vọng của AS Roma. Như mới đây, Roma chỉ giành được một điểm trước Sassuolo nhờ bàn thắng muộn của Bryan Cristante. Đội bóng thủ đô đang xếp thứ 7 trên bảng xếp hạng với 40 điểm sau 25 trận và kém vị trí dự Champions League sáu điểm.

Mourinho đã công khai chỉ trích các cầu thủ của mình trước truyền thông trong vài tuần qua và Fabio Capello nhấn mạnh hành vi của huấn luyện viên này đang gây tổn hại đến Giallorossi trong, ngoài sân cỏ như thế nào. Chia sẻ trên Sky Italia, Capello bày tỏ:

  
"Mourinho đang thực hiện động thái cuối cùng bằng cách chỉ trích các cầu thủ. Tôi chưa bao giờ làm điều đó. Tôi đã chỉ trích nhưng cố gắng tôn trọng. Tôi luôn yêu cầu và tôn trọng. Đó là quy tắc đầu tiên tôi yêu cầu: sự tôn trọng từ mọi người, các cầu thủ và nhân viên." "Nếu bạn xúc phạm các cầu thủ như Mourinho đã làm, bạn sẽ tạo ra thiệt hại kinh tế cho câu lạc bộ và đó là điều cần phải được tính đến."

Tuần trước, tờ Il Corriere dello Sport đưa tin Mourinho cáo buộc các cầu thủ Roma không có cá tính sau trận thua Inter Milan tại Coppa Italia. Paolo Di Canio cũng đã chỉ trích Mourinho khi nhấn mạnh việc ông sử dụng cách tiếp cận tương tự trong thời gian ở Tottenham, điều  đã không mang lại hiệu quả.', 
N'Fabio Capello vừa có những chỉ trích hướng về Jose Mourinho sau hàng loạt phát ngôn tiêu cực dành cho học trò.' , NULL, 12, 11);

insert into Post_HE150490_SE1724 values(N'Cầu thủ AS Roma sợ Mourinho', '2022-01-14 10:01:02.000', 
N'Chia sẻ với Sky Sport Italy, cựu tiền đạo Paolo Di Canio chia sẻ: "Mourinho giáng những đòn vào phòng thay đồ khi chỉ trích cầu thủ như cách CĐV vẫn làm, chỉ khác là ông ấy kiếm cả triệu euro.

Mourinho muốn điều này. Ông ấy làm tương tự tại Tottenham khi chỉ trích cầu thủ, nhưng CĐV ở đó thì không tin. Tottenham của ông ấy từng kém Liverpool đúng 1 điểm nhưng sau trận thua trước chính Liverpool thì bỗng sụp đổ trong 8 trận kế tiếp. Một lần nữa, Mourinho lại chỉ trích cầu thủ và trọng tài. Dù không quá căng thẳng, nhưng CĐV thì đã chán ngấy và muốn ông ấy ra đi". Di Canio tiếp tục lý giải: "Phần lớn CĐV Roma vẫn đang bảo vệ Mourinho. Nhưng cầu thủ thì sợ ông ấy và không dám đối thoại với HLV. Cầu thủ của Roma và Lazio luôn cảm thấy bản thân là Brad Pitt khi mọi chuyện đi đúng hướng. Tuy nhiên khi thất bại, họ sợ hãi trong mọi việc và không dám làm điều gì".

Roma vừa hòa Sassuolo 2-2 tại Serie A và giậm chân ở vị trí thứ 7 với 40 điểm, kém đội đầu bảng AC Milan 15 điểm. Trước đó, báo chí Italy tiết lộ trong phòng thay đồ sau trận thua 0-2 trước Inter Milan tại Coppa Italy, Mourinho đã mắng xối xả học trò là những "gã kém cỏi", "nhát gan" và "chỉ xứng đáng chơi tại Serie C".

Trong buổi họp báo trước trận gặp Sassuolo, Mourinho phủ nhận khi nhấn mạnh: "Những gì xuất hiện trên báo là lời nói dối trắng trợn. Thực tế, không ai bị xúc phạm cả. Chuyện trong phòng thay đồ mãi mãi nằm trong phòng thay đồ. Đây là cách tôi huấn luyện Roma, các cầu thủ vẫn hạnh phúc".

Sau trận hòa trước Sassuolo, Mourinho bày tỏ sự thất vọng rõ rệt khi nhấn mạnh: "Đây không phải kết quả chúng tôi mong muốn".', 
N'HLV Jose Mourinho được cho là đang để nỗi sợ hãi xâm lấn tâm trí nhiều cầu của AS Roma khi mùa giải đang bước vào giai đoạn căng thẳng.' , NULL, 12, 12);

insert into Post_HE150490_SE1724 values(N'Juventus hòa thất vọng trên sân nhà', '2022-01-13 18:00:01.000', 'Photo', 
N'Paulo Dybala và đồng đội hòa 1-1 trước Torino ở trận đấu sớm vòng 26 Serie A rạng sáng 19/2', NULL, 1, 13);

insert into Post_HE150490_SE1724 values(N'Leicester thắng 4-1 ở Conference League', '2022-01-13 22:00:09.000', 'Photo', 
N'Rạng sáng 18/2 (giờ Hà Nội), "Bầy cáo" thắng đậm Randers trên sân nhà ở play-off lượt đi tranh vé dự vòng 16 đội Europa Conference League.' , NULL, 2, 14);

insert into Post_HE150490_SE1724 values(N'Dortmund thất thủ sửng sốt, Haaland tiu nghỉu', '2022-01-13 10:05:02.000', 'Photo', 
N'Ông lớn Bundesliga bất ngờ hứng chịu thất bại ngay tại thánh địa trong ngày không thể có sự phục vụ của số 9.' , NULL, 3, 15);

insert into Post_HE150490_SE1724 values(N'Adama Traore kiếm phạt đền giúp Barca hòa Napoli', '2022-01-12 18:17:16.000', 'Photo', 
N'Rạng sáng 18/2 (giờ Hà Nội), thầy trò HLV Xavi chỉ có trận hòa 1-1 trước đối thủ đến từ Serie A ở lượt đi play-off tranh vé vào vòng 16 đội Europa League.' , NULL, 4, 16);

insert into Post_HE150490_SE1724 values(N'Coman giải cứu "Hùm xám" trên đất Áo', '2022-01-12 22:23:20.000', 'Photo', 
N'Coman tỏa sáng với bàn thắng ở phút 90 giúp Bayern Munich tránh khỏi thất bại muối mặt trên sân của Salzburg ở lượt đi vòng 1/8 UEFA Champions League.' , NULL, 5, 17);

insert into Post_HE150490_SE1724 values(N'Man City thắng 5-0 tại Champions League', '2022-01-12 10:00:03.000', 'Photo', 
N'Thầy trò Pep Guardiola đặt một chân vào tứ kết Champions League sau chiến thắng 5-0 trên sân của Sporting CP rạng sáng 16/2 (giờ Hà Nội).' , NULL, 6, 3);

insert into Post_HE150490_SE1724 values(N'Đội hình Arsenal đấu Brentford: Hai cánh tốc độ', '2022-01-11 18:19:15.000', 'Photo', 
N'Pháo thủ thành London đặt tham vọng giành trọn vẹn 3 điểm cuối tuần này, qua đó tiếp tục nuôi hy vọng cho cuộc đua Top 4.' , NULL, 7, 4);

insert into Post_HE150490_SE1724 values(N'Chấm điểm Barcelona: Sao mai tạo ấn tượng', '2022-01-11 22:22:22.000', 'Photo', 
N'Cùng điểm qua màn trình diễn của 11 cầu thủ Barcelona đá chính trận gặp Napoli tại vòng loại trực tiếp Europa League theo thang điểm của WhoScored.' , NULL, 8, 5);

insert into Post_HE150490_SE1724 values(N'Arsenal tập dưới mưa, chuẩn bị nghênh chiến Brentford', '2022-01-11 10:10:00.000', 'Photo', 
N'Arsenal đang tập trung chuẩn bị cho trận đấu với Brentford diễn ra vào cuối tuần này trong khuôn khổ Ngoại hạng Anh.' , NULL, 9, 6);

insert into Post_HE150490_SE1724 values(N'David De Gea suýt hóa tội đồ', '2022-01-10 18:10:01.000', 'Photo', 
N'Thủ thành người Tây Ban Nha vẫn có một vài pha xử lý khiến cổ động viên Manchester United phải thoát tim.' , NULL, 10, 7);

insert into Post_HE150490_SE1724 values(N'Tuchel: Vị trí đó thường không tồn tại', '2022-01-10 22:02:03.000', 'video', 
N'Thomas Tuchel ca ngợi Hakim Ziyech sau màn trình diễn trước Tottenham Hotspur nhưng cũng tiết lộ vấn đề về hệ thống 3-4-3 khiến ông không thể đặt Ziyech vào vị trí sở trường dạt biên cánh phải.', NULL, 11, 8);

insert into Post_HE150490_SE1724 values(N'Henderson ra mắt, Maguire và Sancho lập công, tuyển Anh thắng dễ Ireland', '2022-01-10 10:01:10.000', 'video', 
N'Đội tuyển Anh đã có thắng lợi 3-0 dễ dàng trước Ireland trong trận giao hữu tại Wembley.' , NULL, 12, 9);

insert into Post_HE150490_SE1724 values(N'Highlights: Barcelona 3-1 Gimnastic', '2022-01-09 18:09:08.000', 'video', 
N'Lionel Messi đá chính trong chiến thắng 3-1 của Barca trước đội bóng hạng 3 Gimnastic Tarragona.', NULL, 1, 10);

insert into Post_HE150490_SE1724 values(N'Cựu sao Liverpool sai lầm, Leicester cận ngày tái xuất Champions League', '2022-01-09 22:23:24.000', 'video', 
N'Tiền đạo Jamie Vardy đã tìm được mành lưới đối thủ sau 644 phút bất lực, và đưa Leicester City đến rất gần tấm vé dự Champions League mùa tới.' , NULL, 2, 11);

insert into Post_HE150490_SE1724 values(N'Thống kê: Borussia Dortmund vs PSG', '2022-01-09 10:09:07.000', 'video', 
N'PSG tới Đức để làm khách trên sân của Borussia Dortmund ở vòng 16 đội Champions League 2019/20. Đội bóng Pháp bước vào trận đấu này với phong độ rất cao.' , NULL, 3, 12);

insert into Post_HE150490_SE1724 values(N'Thống kê: Atletico Madrid vs Liverpool', '2022-01-08 00:00:00.000', 'video', 
N'Liverpool bước vào vòng 16 đội Champions League với mục tiêu bảo vệ chiếc cúp danh giá. ĐKVĐ giải đấu sẽ chạm trán Atletico Madrid, dưới sự dẫn dắt của HLV Diego Simeone.' , NULL, 4, 13);

insert into Post_HE150490_SE1724 values(N'Thống kê: Atletico Madrid vs Liverpool', '2022-01-08 22:20:18.000', 'video', 
N'Liverpool bước vào vòng 16 đội Champions League với mục tiêu bảo vệ chiếc cúp danh giá. ĐKVĐ giải đấu sẽ chạm trán Atletico Madrid, dưới sự dẫn dắt của HLV Diego Simeone.' , NULL, 5, 14);

insert into Post_HE150490_SE1724 values(N'Atletico Madrid và "cơn ác mộng" mang tên Ronaldo', '2022-01-08 08:08:00.000', 'video', 
N'Cùng nhìn lại những bàn thắng đẹp nhất của Cristiano Ronaldo ở những cuộc đối đầu với Atletico Madrid, đối thủ sắp tới của Quỷ đỏ tại vòng 16 đội Champions League.' , NULL, 6, 15);

insert into Post_HE150490_SE1724 values(N'"Sự cố của UEFA là nỗi ô nhục"', '2022-01-07 18:08:07.000', 'video', 
N'Emilio Butragueno, đại diện của Real Madrid ở lễ bốc thăm vòng 16 đội Champions League vừa qua tỏ ra bức xức trước cách làm của UEFA.' , NULL, 7, 16);

insert into Post_HE150490_SE1724 values(N'Ralf Rangnick: "Không nên so sánh Greenwood với Haaland"', '2022-01-07 00:00:00.000', 'video', 
N'Ralf Rangnick, thuyền trưởng của Manchester United bày tỏ suy nghĩ trước câu hỏi so sánh giữa Mason Greenwood và Erling Haaland.' , NULL, 8, 17);

insert into Post_HE150490_SE1724 values(N'Hậu trường: Liverpool 4-0 Arsenal', '2022-01-07 00:00:00.000', 'video', 
N'Cùng nhìn lại những khoảnh khắc chưa được tiết lộ trong trận thắng hủy diệt của Liverpool trước Arsenal hồi tháng 11 vừa qua.' , NULL, 9, 3);

insert into Post_HE150490_SE1724 values(N'“Giáo sư bóng đá” Rangnick: Niềm hy vọng của Man United', '2022-01-06 18:06:06.000', 'video', 
N'Cùng nhìn lại sự nghiệp của Ralf Rangnick, người được CĐV Manchester United kỳ vọng sẽ vực dậy đội bóng trong tương lai gần.' , NULL, 10, 4);

insert into Post_HE150490_SE1724 values(N'Với Dusan Vlahovic, Arsenal sẽ có một mảnh ghép hoàn hảo trên hàng công', '2022-01-06 23:59:59.000', 'video', 
N'Không sớm thì muộn Arsenal cũng phải bổ sung thêm một tiền đạo chất lượng trong thời gian tới khi Lacazette đáo hạn hợp đồng. Và có lẽ Dusan Vlahovic là một trong những lựa chọn hợp lí nhất trên TTCN hiện nay cho Pháo thủ.' , NULL, 11, 5);

insert into Post_HE150490_SE1724 values(N'CĐV Tam Sư quẩy tưng bừng mừng chiến tích sau 55 năm chờ đợi', '2022-01-06 08:06:07.000', 'video', 
N'Các CĐV Tam Sư ăn mừng cuồng nhiệt sau khi đội nhà chính thức giành quyền góp mặt ở trận chung kết EURO 2020.' , NULL, 12, 6);

insert into Post_HE150490_SE1724 values(N'Dàn sao Pháp chuẩn bị cho màn đối đầu Thụy Sĩ', '2022-01-05 18:15:00.000', 'video', 
N'Đội tuyển Pháp tỏ ra thoải mái trong buổi tập luyện chuẩn bị cho màn đối đầu Thụy Sĩ tại vòng 1/8 EURO 2020.' , NULL, 1, 7);

--Insert table Images

insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x410/files/son.le/2022/02/27/0_gettyimages-1315649179-2144.jpg',1);
insert into Images_HE150490_SE1724 values('https://vff.org.vn/uploads/images/fifa-women-2015.jpg',2);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x424/files/nam.tan/2022/02/28/fmohrdqxeaex4pk-0933.jpeg',3);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x433/files/nam.tan/2022/02/28/4-0933.jpg',1002);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x409/files/nam.tan/2022/02/28/1-0933.jpg',1003);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x422/files/nam.tan/2022/02/28/3-0933.jpg',1004);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x421/files/nam.tan/2022/02/28/7-0933.jpg',1005);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x424/files/nam.tan/2022/02/28/fmn-uypwuagkwpu-0933.jpeg',1006);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x421/files/nam.tan/2022/02/28/6-0933.jpg',1007);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x437/files/nam.tan/2022/02/28/5-0933.jpg',1008);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x424/files/nam.tan/2022/02/28/2-0933.jpg',1009);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x434/files/hai.phan/2022/02/27/son-heungmin-len-tieng-ve-tuong-lai-o-tottenham-1611.jpg',1010);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x384/files/hai.phan/2022/02/27/crystal-palace-v-southampton-fc-premier-league-5b90ef59344cd8de48000010-1611.jpg',1011);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x408/files/hai.phan/2022/02/27/sterling-jpeg-1634266879-16342-5458-4929-1634267034-1611.jpg',1012);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x453/files/hai.phan/2022/02/27/2021-09-11t142611z_1795170162_up1eh9b143mbo_rtrmadp_3_soccer-england-wat-wlv-report-1611.jpg',1013);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x429/files/hai.phan/2022/02/27/69629-1604468849381-1611.jpg',1014);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x443/files/hai.phan/2022/02/27/jarrod-bowen-1611.jpg',1015);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x357/files/hai.phan/2022/02/27/harry-kane-bo-tap-1611.jpg',1016);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x409/files/hai.phan/2022/02/27/photo1644415728267-1644415728601103574488-1611.jpg',1017);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x453/files/hai.phan/2022/02/27/ronaldo-mu-1611.jpg',1018);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x370/files/hai.phan/2022/02/27/1645052268423-3389-1611.jpg',1019);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x453/files/hai.phan/2022/02/27/fmihel8amaa02jt-1109.jpg',1020);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x430/files/hai.phan/2022/02/27/screenshot-2022-02-27-at-105232-1109.png',1021);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x381/files/hai.phan/2022/02/27/fmitsu0wuao4kqr-1109.jpg',1022);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x458/files/hai.phan/2022/02/27/fmitw2gaiaesdid-1109.jpg',1023);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x427/files/hai.phan/2022/02/27/spanews_2d3954bd-1742-4d67-b053-0ab4b8e80e43_embedded265548262-1109.jpg',1024);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x415/files/hai.phan/2022/02/27/z-1109.jpg',1025);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x417/files/bao.nguyen/2022/02/28/screen-shot-2022-02-28-at-134131-1344.png',1026);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x450/files/duong.nguyen/2022/02/28/1-1337.jpg',1027);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x400/files/duong.nguyen/2022/02/28/2-1337.jpg',1028);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x423/files/son.le/2022/02/28/dasdasd-0701.jpg',1029);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x405/files/duong.nguyen/2022/02/28/1-1249.jpg',1030);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x450/files/duong.nguyen/2022/02/28/2-1249.jpg',1031);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x400/files/duong.nguyen/2022/02/28/3-1249.jpg',1032);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x422/files/duong.nguyen/2022/02/28/4-1249.jpg',1033);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x338/files/duong.nguyen/2022/02/28/5-1249.jpg',1034);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x400/files/duong.nguyen/2022/02/28/6-1249.jpg',1035);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x338/files/duong.nguyen/2022/02/28/7-1249.jpg',1036);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x405/files/duong.nguyen/2022/02/28/8-1249.jpg',1037);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x460/files/duong.nguyen/2022/02/28/9-1250.jpg',1038);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x449/files/duong.nguyen/2022/02/28/10-1250.jpg',1039);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x805/files/thu.phan/2022/02/28/fmonay3x0agzmmo-1308.jpg',1040);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/615x345/files/duong.nguyen/2022/02/28/1-1232.jpg',1041);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x420/files/thach.pham/2022/02/28/gettyimages-1238787987-1050.jpg',1042);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x444/files/thach.pham/2022/02/28/1-1050.png',1043);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x416/files/hai.phan/2022/02/23/vlahovic-v-subs-16455801294202080864195-2255.jpg',1044);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x413/files/phi.do/2022/02/28/4-1113.jpg',1045);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x787/files/phi.do/2022/02/28/7-1113.jpg',1046);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x1112/files/phi.do/2022/02/28/5-1113.jpg',1047);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x1112/files/phi.do/2022/02/28/6-1113.jpg',1048);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x472/files/phi.do/2022/02/28/1-1113.jpg',1049);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x630/files/phi.do/2022/02/28/10-1113.jpg',1050);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x316/files/phi.do/2022/02/28/10-1113.png',1051);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x430/files/phi.do/2022/02/28/havertz-2-1047.jpg',1052);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x421/files/phi.do/2022/02/28/1-1047.jpg',1053);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x374/files/phong.lu/2022/02/28/6-1115.jpg',1054);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x420/files/phong.lu/2022/02/28/7-1116.jpg',1055);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x419/files/anh.nguyen/2022/02/28/gettyimages-1238812363-1109.jpg',1056);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x742/files/phong.lu/2022/02/28/4-1029.jpg',1057);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x507/files/phi.do/2022/02/28/4-1011.png',1058);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x433/files/phong.lu/2022/02/28/1-1009.jpg',1059);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x382/files/phong.lu/2022/02/28/13-0958.jpg',1060);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x419/files/phong.lu/2022/02/28/2-1017.jpg',1061);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/615x410/files/phi.do/2022/02/28/1-0944.jpg',1062);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x404/files/duong.nguyen/2022/02/28/1-0948.jpg',1063);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x451/files/nam.tan/2022/02/28/chelsea-liverpool-3-02323179jpeg-0916.png',1064);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x397/files/anh.nguyen/2022/02/28/screenshot-2022-02-28-092109-0921.png',1065);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x467/files/bao.nguyen/2022/02/28/screen-shot-2022-02-28-at-084217-0845.png',1066);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x352/files/bao.nguyen/2022/02/28/screen-shot-2022-02-28-at-084208-0845.png',1067);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x430/files/nam.tan/2022/02/28/virgil-van-dijk-lifts-a-corner-flag-to-celebrate-winning-the-efl-cup-with-liverpool-0854.jpg',1068);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x381/files/bao.nguyen/2022/02/28/zzzvbb-0819.jpg',1069);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/576x384/files/bao.nguyen/2022/02/28/screen-shot-2022-02-28-at-080940-0811.png',1071);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/576x377/files/bao.nguyen/2022/02/28/screen-shot-2022-02-28-at-075158-0755.png',1072);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x354/files/thach.pham/2022/02/27/ajax-v-sparta--dutch-eredivisie-05974fc13ae9bbe14fe4a53780534e96-2154.jpg',1073);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x420/files/anh.nguyen/2022/02/28/sao-bo-an-ui-1645922181284401241411-1034-0751.jpg',1074);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x378/files/anh.nguyen/2022/02/28/3241-0548-0753.jpg',1075);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x428/files/anh.nguyen/2022/02/28/cavani-0753.jpg',1076);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x429/files/anh.nguyen/2022/02/28/medy-0728.png',1077);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x400/files/anh.nguyen/2022/02/28/silva-0728.png',1078);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x406/files/anh.nguyen/2022/02/28/azpilicueta-0728.jpg',1079);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x393/files/anh.nguyen/2022/02/28/mount-0728.png',1080);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x407/files/huy.phandang/2022/02/28/1-0647.jpg',1081);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x403/files/huy.phandang/2022/02/28/2-0647.jpg',1082);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x403/files/huy.phandang/2022/02/28/3-0647.jpg',1083);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x388/files/huy.phandang/2022/02/28/4-0647.jpg',1084);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x418/files/nam.tan/2022/02/28/1-0644.jpg',1085);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x476/files/thach.pham/2022/02/28/1-0659.jpg',1086);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x373/files/thach.pham/2022/02/28/2-0716.png',1087);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x453/files/thach.pham/2022/02/28/1-0622.png',1088);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x576/files/son.le/2022/02/28/hand-0609.jpeg',1089);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x429/files/son.le/2022/02/28/gettyimages-1238813362-c199-0547.jpg',1090);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x482/files/thach.pham/2022/02/28/sei_90350971-0544.jpg',1091);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x385/files/anh.nguyen/2022/02/28/cech-0609.png',1092);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x411/files/thach.pham/2022/02/28/skysports-chelsea-abramovich_4324893-2109-1244-0604.jpg',1093);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x370/files/anh.nguyen/2022/02/28/caomin-0534.png',1094);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x435/files/huy.phandang/2022/02/28/1-0455.jpg',1095);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x379/files/huy.phandang/2022/02/28/1-0518.jpg',1096);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x378/files/anh.nguyen/2022/02/28/var-0504.png',1097);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x411/files/huy.phandang/2022/02/28/1-0428.jpg',1098);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x419/files/son.le/2022/02/27/13363545700-1326-2317.jpg',1099);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x392/files/phong.lu/2022/02/27/3-2258.jpg',1099);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x354/files/phong.lu/2022/02/27/4-2309.jpg',1099);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x354/files/phong.lu/2022/02/27/5-2310.jpg',1099);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x410/files/son.le/2022/02/27/0_gettyimages-1315649179-2144.jpg',1099);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x383/files/phong.lu/2022/02/27/2-2207.jpg',1099);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x365/files/phong.lu/2022/02/27/1-2151.jpg',1100);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x452/files/hai.phan/2022/02/27/gettyimages-1238779350-scaled-2045.jpg',1100);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x453/files/hai.phan/2022/02/27/z-2045.jpg',1100);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x300/files/huy.phandang/2022/02/27/skysports-rodri-man-city-handball_5687785-1457.jpg',1100);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x480/files/anh.nguyen/2021/12/23/caomin-0754.png',1100);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x354/files/bach.vu/2019/08/11/caoimhin-kelleher-liverpool-2018-19_vucjhe9w4g01kpwq8rt1mpq3-0952.jpg',1100);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/615x412/files/huy.phandang/2022/02/27/0_leeds-united-v-tottenham-hotspur-premier-league-1436.jpg',1101);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x419/files/quan.le/2022/02/27/abramovich-02-1814.jpg',1101);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x419/files/quan.le/2022/02/27/abramovich-01-1814.jpg',1101);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x338/files/duong.nguyen/2022/02/27/1-1802.jpg',1101);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x362/files/duong.nguyen/2022/02/27/2-1802.jpg',1101);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x599/files/duong.nguyen/2022/02/27/fmmtjedwqae6xrl-1828.jpg',1101);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x567/files/duong.nguyen/2022/02/27/1-1828.jpg',1102);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x425/files/huy.phandang/2022/02/27/gettyimages-1369641108-612x612-1947-1413.jpg',1102);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x353/files/phi.do/2022/01/03/varane-2141.jpg',1102);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x420/files/thach.pham/2022/02/27/1-1645.jpg',1102);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x422/files/huy.phandang/2022/02/27/1-1638.jpg',1102);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x404/files/huy.phandang/2022/02/27/2-1638.jpg',1102);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x407/files/huy.phandang/2022/02/27/4-1638.jpg',1103);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x415/files/huy.phandang/2022/02/27/5-1638.jpg',1103);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x420/files/thach.pham/2022/02/27/1_gettyimages-1372218041-1625.jpg',1103);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x422/files/thach.pham/2022/02/27/gettyimages-1372965938-0530-1603.jpg',1103);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x390/files/huy.phandang/2020/04/28/3053-0621.jpg',1103);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x440/files/thach.pham/2021/07/16/ruud-van-nistelrooy-wayne-rooney-1485411782342-1103.jpg',1103);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x330/files/phi.do/2022/02/26/kane-1250.jpeg',1104);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x1146/files/duong.nguyen/2022/02/27/1-1335.jpg',1104);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/615x368/files/thu.phan/2022/02/27/0_ddp_chp__14161jude-1335.jpg',1104);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x399/files/thach.pham/2022/02/27/1-0953.jpg',1104);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x419/files/thach.pham/2022/02/27/0_hannibal-mejbri-converts-from-the-spot-for-manchester-uniteds-under-23s-vs-derby-0954.jpg',1104);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x375/files/duong.nguyen/2022/02/27/2-1250.jpg',1104);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x400/files/duong.nguyen/2022/02/27/3-1250.jpg',1105);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x400/files/duong.nguyen/2022/02/27/4-1250.jpg',1105);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/612x408/files/duong.nguyen/2022/02/27/2-1206.jpg',1105);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/612x427/files/duong.nguyen/2022/02/27/1-1206.jpg',1105);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/612x408/files/duong.nguyen/2022/02/27/9-1206.jpg',1105);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/612x408/files/duong.nguyen/2022/02/27/8-1206.jpg',1105);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/612x479/files/duong.nguyen/2022/02/27/6-1206.jpg',1106);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/612x407/files/duong.nguyen/2022/02/27/10-1207.jpg',1106);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x428/files/hai.phan/2022/02/26/gettyimages-1238712259-1-2342.jpg',1106);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x539/files/son.le/2022/02/27/0_united-article-template-73-1234.png',1106);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x366/files/phong.lu/2022/02/27/5-1112.jpg',1106);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x424/files/huy.phandang/2022/02/22/1-0836.jpg',1106);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x444/files/thach.pham/2021/12/08/nemanja-matic-0554.jpg',1107);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/612x421/files/phong.huynh/2022/02/24/gettyimages-1238713662-612x612-1516.jpg',1107);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x428/files/son.le/2022/02/27/54693973-10555365-image-a-68_1645905379024-1157.jpg',1107);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x419/files/anh.nguyen/2022/02/27/salah--silva-1202.jpg',1107);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x420/files/anh.nguyen/2022/02/27/havertz-1202.jpg',1107);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x576/files/hai.phan/2022/02/28/ss-0138.jpg',1107);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x418/files/phong.lu/2022/02/27/3-1044.jpg',1108);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x380/files/anh.nguyen/2022/02/27/screenshot-2022-02-27-110012-1100.png',1108);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x393/files/phong.lu/2022/02/27/2-1032.jpg',1108);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x608/files/hai.phan/2022/02/27/01fwvjh4wqz845ktvfew-1004.jpg',1108);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x354/files/phong.lu/2022/02/27/1-1023.jpg',1108);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x439/files/anh.nguyen/2022/02/27/salah-1009.png',1108);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/612x421/files/phong.huynh/2022/02/27/gettyimages-1372999289-612x612-0956.jpg',1109);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x374/files/thach.pham/2022/02/27/1-1231-0917.jpg',1110);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x362/files/hai.phan/2022/02/27/comp-1645920044-0940.png',1111);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x401/files/duong.nguyen/2022/02/27/1-0903.jpg',1112);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x400/files/huy.phandang/2022/02/27/1-0745.jpg',1113);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/600x387/files/huy.phandang/2022/02/27/3-0745.jpg',1114);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x360/files/thach.pham/2022/02/27/manchester-united-v-watford-premier-league-2-770x492-0559.jpg',1115);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x420/files/anh.nguyen/2022/02/27/kepa-0749.jpg',1116);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x483/files/anh.nguyen/2022/02/27/10-0749.png',1117);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x543/files/anh.nguyen/2022/02/27/3-0749.png',1118);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x354/files/anh.nguyen/2022/02/27/skysports-mateo-kovacic-chelsea_5563887-0750.jpg',1119);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x447/files/anh.nguyen/2022/02/27/salah-0751.jpg',1120);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x425/files/trong.le/2022/02/27/2022_02_26t182549z_1044022069_up1ei2q1f6zt6_rtrmadp_3_soccer_italy_emp_juv_report-0655.jpg',1121);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x402/files/huy.phandang/2022/02/27/0-0655.jpg',1122);
insert into Images_HE150490_SE1724 values('https://media.bongda.com.vn/resize/630x431/files/thach.pham/2022/02/27/1-0634.png',1123);



TRUNCATE TABLE Images_HE150490_SE1724


insert into Videos_HE150490_SE1724 values('video1',1109);
insert into Videos_HE150490_SE1724 values('video2',1110);
insert into Videos_HE150490_SE1724 values('video3',1111);
insert into Videos_HE150490_SE1724 values('video4',1112);
insert into Videos_HE150490_SE1724 values('video5',1113);
insert into Videos_HE150490_SE1724 values('video6',1114);
insert into Videos_HE150490_SE1724 values('video7',1115);
insert into Videos_HE150490_SE1724 values('video8',1116);
insert into Videos_HE150490_SE1724 values('video9',1117);
insert into Videos_HE150490_SE1724 values('video10',1118);
insert into Videos_HE150490_SE1724 values('video11',1119);
insert into Videos_HE150490_SE1724 values('video12',1120);
insert into Videos_HE150490_SE1724 values('video13',1121);
insert into Videos_HE150490_SE1724 values('video14',1122);
insert into Videos_HE150490_SE1724 values('video15',1123);
