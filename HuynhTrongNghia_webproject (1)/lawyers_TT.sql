create database lawyer_TT;
use lawyer_TT;

create table Accounts(
 Username nvarchar(50) not null,
 Password nvarchar(50) not null,
constraint PK_User primary key(Username));

create table lawyers(
  Id int not null,
  FullName nvarchar(50) not null,
  Image nvarchar(50) not null,
  Infomation text not null,
  CateId int not null,
  LinkChat nvarchar(255) not null,
  Email nvarchar(100) not null,
  constraint PK_law primary key(Id));

create table cates(
   Id int not null auto_increment,
   Name nvarchar(50) not null,
   constraint PK_Cate primary key(Id)
);

create table roles(
 Id nchar(10) not null,
 Name nvarchar(50) not null,
 constraint PK_Roles primary key(Id));
 
 create table authorities(
 Id int not null AUTO_INCREMENT,
 Username nvarchar(50) not null,
 RoleId nchar(10) not null,
 constraint PK_Authority primary key(Id));
 
 create table concepts(
 Id int not null,
 content text not null,
 Cateid int not null,
 Image nvarchar(50) not null,
 constraint PK_Concepts primary key(Id));

insert Accounts(Username,Password) values ('htu@gmail.com','hoangtu20');
insert Accounts(Username,Password) values ('julien@gmail.com','123');
insert Accounts(Username,Password) values ('maxime@gmail.com','123');
insert Accounts(Username,Password) values ('seguin@gmail.com','123');
insert Accounts(Username,Password) values ('philbeck@gmail.com','123');
insert Accounts(Username,Password) values ('darren@gmail.com','123');
insert Accounts(Username,Password) values ('boies@gmail.com','123');
insert Accounts(Username,Password) values ('lubin@gmail.com','123');
insert Accounts(Username,Password) values ('yale-gohr@gmail.com','123');
insert Accounts(Username,Password) values ('aries@gmail.com','123');

insert roles(Id,Name) values ('USER',N'Người Dùng');
insert roles(Id,Name) values ('LAW',N'Luật Sư');
insert roles(Id,Name) values ('ADMIN',N'Quản lý');
select * from authorities;
insert authorities(Id,Username,RoleId) values ('100','htu@gmail.com','USER');
insert authorities(Id,Username,RoleId) values ('1000','htu@gmail.com','ADMIN');
insert authorities(Id,Username,RoleId) values ('101','julien@gmail.com','LAW');
insert authorities(Id,Username,RoleId) values ('102','maxime@gmail.com','LAW');
insert authorities(Id,Username,RoleId) values ('103','seguin@gmail.com','LAW');
insert authorities(Id,Username,RoleId) values ('104','philbeck@gmail.com','LAW');
insert authorities(Id,Username,RoleId) values ('105','darren@gmail.com','LAW');
insert authorities(Id,Username,RoleId) values ('106','boies@gmail.com','LAW');
insert authorities(Id,Username,RoleId) values ('107','lubin@gmail.com','LAW');
insert authorities(Id,Username,RoleId) values ('108','yale-gohr@gmail.com','LAW');
insert authorities(Id,Username,RoleId) values ('109','aries@gmail.com','LAW');

insert concepts(Id,Content,Cateid,Image) values ('3000','Luật Hình sự là một ngành luật trong hệ thống pháp
								luật quy định tội phạm, xác định hình phạt với các
								tội phạm nhằm đấu tranh chống tội phạm, loại trừ mọi
								hành vi nguy hiểm cho xã hội. Luật Hình sự bao gồm hệ thống những quy phạm pháp luật do
								cơ quan Nhà nước có thẩm quyền ban hành, xác định những hành vi nguy hiểm cho xã hội nào
								là tội phạm, đồng thời quy định hình phạt đối với những tội phạm ấy.','1001','hs.jpg');
                                
insert concepts(Id,Content,Cateid,Image) values ('3001','Tội phạm là hành vi nguy hiểm cho xã hội được quy định trong Bộ luật Hình sự, do người có
								năng lực trách nhiệm hình sự hoặc pháp nhân thương mại thực hiện một cách cố ý hoặc vô
								ý, xâm phạm độc lập, chủ quyền, thống nhất, toàn vẹn lãnh thổ Tổ quốc, xâm phạm chế độ
								chính trị, chế độ kinh tế, nền văn hóa, quốc phòng, an ninh, trật tự, an toàn xã hội,
								quyền, lợi ích hợp pháp của tổ chức, xâm phạm quyền con người, quyền, lợi ích hợp pháp
								của công dân, xâm phạm những lĩnh vực khác của trật tự pháp luật xã hội chủ nghĩa mà
								theo quy định của Bộ luật này phải bị xử lý hình sự.','1001','hs.jpg');
                                
insert concepts(Id,Content,Cateid,Image) values ('3002','Những hành vi tuy có dấu hiệu của tội phạm nhưng tính chất nguy hiểm cho xã hội không
								đáng kể thì không phải là tội phạm và được xử lý bằng các biện pháp khác.','1001','hs.jpg');
                                
insert concepts(Id,Content,Cateid,Image) values ('3003','Điều luật được áp dụng đối với một hành vi phạm tội là điều luật đang có hiệu lực thi
								hành tại thời điểm mà hành vi phạm tội được thực hiện.','1001','hs.jpg');
                                
insert concepts(Id,Content,Cateid,Image) values ('3004','Điều luật quy định một tội phạm mới, một hình phạt nặng hơn, một tình tiết tăng nặng mới
								hoặc hạn chế phạm vi áp dụng án treo, miễn trách nhiệm hình sự, loại trừ trách nhiệm
								hình sự, miễn hình phạt, giảm hình phạt, xóa án tích và quy định khác không có lợi cho
								người phạm tội, thì không được áp dụng đối với hành vi phạm tội đã thực hiện trước khi
								điều luật đó có hiệu lực thi hành.','1001','hs.jpg');
                                
insert concepts(Id,Content,Cateid,Image) values ('3005','Điều luật xóa bỏ một tội phạm, một hình phạt, một tình tiết tăng nặng, quy định một hình
								phạt nhẹ hơn, một tình tiết giảm nhẹ mới hoặc mở rộng phạm vi áp dụng án treo, miễn
								trách nhiệm hình sự, loại trừ trách nhiệm hình sự, miễn hình phạt, giảm hình phạt, tha
								tù trước thời hạn có điều kiện, xóa án tích và quy định khác có lợi cho người phạm tội,
								thì được áp dụng đối với hành vi phạm tội đã thực hiện trước khi điều luật đó có hiệu
								lực thi hành.','1001','hs.jpg');
                                
insert concepts(Id,Content,Cateid,Image) values ('3006','Tìm hiểu khái niệm Luật Hôn nhân và gia đình năm 2014 với 3 ý nghĩa:<br>
								- Với ý nghĩa là một môn học: Luật Hôn nhân và gia đình Việt Nam là hệ thống khái niệm,
								quan điểm, nhận thức, đánh giá mang tính lý luận về pháp luật hôn nhân và gia đình Và
								thực tiễn áp dụng, thi hành pháp luật hôn nhân và gia đình.','1004','gd.jpg');
                                
insert concepts(Id,Content,Cateid,Image) values ('3007','Tìm hiểu khái niệm Luật Hôn nhân và gia đình năm 2014 với 3 ý nghĩa:<br>
								- Với ý nghĩa là một môn học: Luật Hôn nhân và gia đình Việt Nam là hệ thống khái niệm,
								quan điểm, nhận thức, đánh giá mang tính lý luận về pháp luật hôn nhân và gia đình Và
								thực tiễn áp dụng, thi hành pháp luật hôn nhân và gia đình.','1004','gd.jpg'); 

insert concepts(Id,Content,Cateid,Image) values ('3008','Với ý nghĩa là một ngành luật: Luật Hôn nhân và gia đình Việt Nam là tổng hợp các quy
								phạm pháp luật do Nhà nước ban hành nhằm điều chỉnh các quan hệ hôn nhân và gia đình,
								bao gồm các quan hệ về nhân thân và quan hệ về tài sản giữa vợ và chồng, giữa cha mẹ và
								con, giữa những thành viên trong gia đình.','1004','gd.jpg');
                                
insert concepts(Id,Content,Cateid,Image) values ('3009','Điều 1. Phạm vi điều chỉnh<br>
								Luật này quy định chế độ hôn nhân và gia đình; chuẩn mực pháp lý cho cách ứng xử giữa
								các thành viên gia đình; trách nhiệm của cá nhân, tổ chức, Nhà nước và xã hội trong việc
								xây dựng, củng cố chế độ hôn nhân và gia đình.','1004','gd.jpg'); 
                                
insert concepts(Id,Content,Cateid,Image) values ('3010','Điều 2. Những nguyên tắc cơ bản của chế độ hôn nhân và gia đình<br>

								1. Hôn nhân tự nguyện, tiến bộ, một vợ một chồng, vợ chồng bình đẳng.

								2. Hôn nhân giữa công dân Việt Nam thuộc các dân tộc, tôn giáo, giữa người theo tôn giáo
								với người không theo tôn giáo, giữa người có tín ngưỡng với người không có tín ngưỡng,
								giữa công dân Việt Nam với người nước ngoài được tôn trọng và được pháp luật bảo vệ.','1004','gd.jpg'); 

insert concepts(Id,Content,Cateid,Image) values ('3030','Điều 3. Giải thích từ ngữ<br>
								Trong Luật này, các từ ngữ dưới đây được hiểu như sau:

								1. Hôn nhân là quan hệ giữa vợ và chồng sau khi kết hôn.<br>

								2. Gia đình là tập hợp những người gắn bó với nhau do hôn nhân, quan hệ huyết thống hoặc
								quan hệ nuôi dưỡng, làm phát sinh các quyền và nghĩa vụ giữa họ với nhau theo quy định
								của Luật này.','1004','gd.jpg');
                                
insert concepts(Id,Content,Cateid,Image) values ('3011','Luật dân sự là ngành luật trong hệ thống pháp luật, là tổng hợp những quy phạm điều chỉnh
								các quan hệ tài sản và một số quan hệ nhân thân trong giao lưu dân sự trên cơ sở bình
								đẳng, tự định đoạt và tự chịu trách nhiệm của các chủ thể tham gia các quan hệ dân sự','1002','hs.jpg');

insert concepts(Id,Content,Cateid,Image) values ('3012','Bộ luật này quy định địa vị pháp lý, chuẩn mực pháp lý về cách ứng xử của cá nhân, pháp
								nhân; quyền, nghĩa vụ về nhân thân và tài sản của cá nhân, pháp nhân trong các quan hệ
								được hình thành trên cơ sở bình đẳng, tự do ý chí, độc lập về tài sản và tự chịu trách
								nhiệm (sau đây gọi chung là quan hệ dân sự).','1002','hs.jpg');
                                
insert concepts(Id,Content,Cateid,Image) values ('3013','Ở nước Cộng hòa xã hội chủ nghĩa Việt Nam, các quyền dân sự được công nhận, tôn trọng,
								bảo vệ và bảo đảm theo Hiến pháp và pháp luật.','1002','hs.jpg');

insert concepts(Id,Content,Cateid,Image) values ('3014','Quyền dân sự chỉ có thể bị hạn chế theo quy định của luật trong trường hợp cần thiết vì
								lý do quốc phòng, an ninh quốc gia, trật tự, an toàn xã hội, đạo đức xã hội, sức khỏe
								của cộng đồng.','1002','hs.jpg');
                                
insert concepts(Id,Content,Cateid,Image) values ('3015','Bộ luật này là luật chung điều chỉnh các quan hệ dân sự.','1002','hs.jpg');

insert concepts(Id,Content,Cateid,Image) values ('3016','Luật khác có liên quan điều chỉnh quan hệ dân sự trong các lĩnh vực cụ thể không được
								trái với các nguyên tắc cơ bản của pháp luật dân sự quy định tại Điều 3 của Bộ luật này.','1002','hs.jpg');
 
insert concepts(Id,Content,Cateid,Image) values ('3017','Luật hành chính là ngành luật điều chỉnh các quan hệ xã hội phát sinh trong hoạt động
								quản lí hành chính nhà nước. Cách định nghĩa này phù hợp với quan niệm cho rằng việc
								phân biệt các ngành luật trước hết cần căn cứ vào những quan hệ xã hội được pháp luật
								điều chỉnh.','1005','hc.jpg');
insert concepts(Id,Content,Cateid,Image) values ('3018','Hoạt động quản lí hành chính nhà nước không thể tách rời những quan hệ xã hội mà nó hướng
								tới nhằm ổn định hay thay đổi cho nên đối tượng điều chỉnh của luật hành chính không
								phải là bản thân quản lí hành chính nhà nước mà là những quan hệ xã hội hình thành trong
								quá trình hoạt động quản lí hành chính nhà nước. Việc phần lớn các quy phạm pháp luật
								hành chính liên quan đến các hình thức tổ chức, đến hoạt động quản lí hành chính nhà
								nước không thay đổi một thực tế là chứng bắt nguồn từ những quan hệ xã hội.','1005','hc.jpg');
insert concepts(Id,Content,Cateid,Image) values ('3019','Luật hành chính giữ vai trò quan trọng trong việc hoàn thiện hoạt động chấp hành - điều
								hành của Nhà nước. Các quy phạm luật hành chính quy định địa vị pháp lí của các cơ quan
								hành chính nhà nước, xác định những nguyên tắc cơ bản của','1005','hc.jpg');
insert concepts(Id,Content,Cateid,Image) values ('3020','Định nghĩa trên thích hợp với tất cả mọi trường hợp từ sự vận động của một cơ thể sống,
								một vật thể cơ giới, một thiết bị tự động hóa đến hoạt động của một tổ chức xã hội, một
								đơn vị kinh tế hay cơ quan nhà nước.','1005','hc.jpg');
insert concepts(Id,Content,Cateid,Image) values ('3021','Trong chương trình luật hành chính, vấn đề cần nghiên cứu là quản lí xã hội, quản lí nhà
								nước.','1005','hc.jpg');
                                
insert cates(Id,Name) values ('1001',N'Luật hình sự');
insert cates(Id,Name) values ('1002',N'Luật dân sự');
insert cates(Id,Name) values ('1004',N'Luật doanh nghiep hon nhan va gia dinh');
insert cates(Id,Name) values ('1005',N'Luật hành chính');

insert lawyers(Id,Fullname,Image,Infomation,CateId,LinkChat,Email) values ('10',N'JULIEN TÉTRAULT','ls1.jpg',N'Số hiệu luật sư (Quebec Bar Number): 204182-1
1996-1999: Tốt nghiệp ngành Luật di trú Đại học luật Montreal
2003: Tốt nghiệp Luật kinh doanh Đại học luật Montreal.
2011 – Hiện tại: Giám đốc hiệp hội luật sư Quebec – AHQ Director.
2011: Sáng lập ra bộ phận đầu tư định cư, Hiệp hội luật sư Quebec (AHQ).
Ông sống và làm việc tại Hong Kong từ năm 2002 đến 2005 và trở về Montreal (Quebec) vào năm 2006. Luật sư Julien Tétrault đã thụ lý hơn 1,000 hồ sơ định cư Canada từ hơn 60 quốc gia có được thẻ thường trú nhân theo chương trình định cư Quebec, Canada. Ông được công nhận và đánh giá cao từ các đồng nghiệp và khách hàng trong việc đưa ra cách thức xử lý hồ sơ tối ưu cho mỗi một hồ sơ định cư.
Với cương vị giám đốc AHQ (Hiệp hội luật sư Quebec) từ năm 2011, Luật sư Tétrault đã sáng lập bộ phận đầu tư định cư, ông là đại diện các thành viên của Hiệp hội trong các cuộc họp với các quan chức chính phủ về phúc lợi và tương lai của chương trình đầu tư nhập cư Canada.
Hiện tại, Luật sư Julien Tétrault là Trưởng văn phòng luật JTH Law tại Montreal.','1004','https://business.facebook.com/latest/inbox/settings/messaging?asset_id=102503922203364','pkduy0003@gmail.com');

insert lawyers(Id,Fullname,Image,Infomation,CateId,LinkChat,Email) values('11',N'MAXIME LAPOINTE','ls2.jpg',N'Luật sư Maxim tốt nghiệp trường đại học Laval vào năm 2006, sau đó ông nhận chứng chỉ hành nghề luật sư Quebec vào năm 2008.
Ông có rất nhiều kinh nghiệm trong lĩnh vực luật di trú Canada.
Luật sư Maxime đã tham dự hơn 500 buổi phỏng vấn hồ sơ định cư Canada tại Hong Kong và Montreal.
Ông đã có rất nhiều bài viết được đăng trên các tạp chí danh tiếng về những vấn đề liên quan đến luật di trú trong các năm vừa qua.
Ông được sự tín nhiệm và đánh giá cao từ các Nhà Đầu Tư trong việc định hướng hồ sơ, tìm ra những phương án tối ưu cho hồ sơ khách hàng.','1004','https://business.facebook.com/latest/inbox/settings/messaging?asset_id=102503922203364','pkduy0003@gmail.com');

insert lawyers(Id,Fullname,Image,Infomation,CateId,LinkChat,Email) values('12',N'MARC-ANDRE SEGUIN','ls3.jpg',N'Ông Séguin tham gia Ban pháp lý Renaissance Capital vào năm 2011, sau khi cùng làm việc cho một tổ chức đầu tư lớn ở Bắc Mỹ và một công ty luật tại Bắc Kinh. Ông có bằng Thạc sĩ Luật chuyên ngành nghiên cứu pháp lý châu Á của Đại học Quốc gia Singapore, cũng như bằng cử nhân Luật nói chung và Luật dân sự từ Đại học McGill ở Montreal. Ông đã tham gia vào một số nghiên cứu về hệ thống pháp luật Trung Quốc, và đã sống nhiều năm ở Trung Quốc và Singapore, do đó đã có được những kinh nghiệm quan trọng trong khu vực, cụ thể là trong các lĩnh vực luật so sánh, đầu tư nước ngoài, Luật doanh nghiệp và kinh doanh xuất nhập cảnh.
Hiện nay có trụ sở tại Montreal, ông là một thành viên của Barreau du Québec/Québec Bar và của Hiệp hội luật sư Canada, hai tổ chức mà ông thường xuyên và tích cực tham gia. Ngoài ra, ông Seguin cũng được cấp phép như một Luật sư chính phủ ở New York.
Trước khi hành nghề luật sư, ông Séguin đã tích lũy được nhiều kinh nghiệm khi làm một nhà báo chuyên nghiệp, với các bài báo được công bố trên các ấn phẩm được nhiều người đọc trên khắp Canada. Ông cũng đã từng giữ chức vụ Ban giám đốc của một tổ chức phi chính phủ tham gia vào một số dự án phát triển tại Nicaragua, Trung Mỹ. Ông nói thông thạo tiếng Pháp, tiếng Anh và tiếng Tây Ban Nha.','1001','https://business.facebook.com/latest/inbox/settings/messaging?asset_id=102503922203364','pkduy0003@gmail.com');

insert lawyers(Id,Fullname,Image,Infomation,CateId,LinkChat,Email) values('13',N'Phil Beck','ls4.jpg',N'Hãng luật: Bartlit Beck
Vinh danh
Luật sư của năm 2003, Giải thưởng “Top Defense Verdict” 1994 và 1997; giải “Winning Lawyer” 1997 và 2003.
Chiến thắng gầy dựng tên tuổi:
Kiến trúc sư trưởng của chiến thắng giữa hai đội ngũ pháp lý  G.W.Bush và Al Gore ghi nhận trong án Bush v. Gore 2000, theo đó thành công yêu cầu Tối Cao Pháp Viện Hoa Kỳ tuyên ngừng kiểm lại phiếu bầu tại Florida, dẫn đến chiến thắng toàn diện và chung cuộc của G.W.Bush tại kỳ bầu cử Tổng Thống Hoa Kỳ 2000.
Năm 2003, ông đảm nhận nhiệm vụ bảo vệ hãng dược Bayer trong các cáo buộc liên quan đến loại dược phẩm Baycol. Trong đó, nhiều người cho rằng chiến thắng của Bayer là không tưởng đến nỗi trị giá cổ phiếu của hãng nào tăng 40% chỉ trong nửa giờ đồng hồ.
Ông cũng bảo vệ thành công một trong bộ tứ kiểm toán – Ernst & Young khỏi yêu cầu bồi thường trị giá 300 triệu USD vào năm 2009.
Xưng tụng:
“Phil Beck…không phải là người luật sư kêu mưa, gọi gió với sức mạnh của Chúa Trời. Nhưng ông ta biết cách cắt bỏ dần những chướng ngại vật cản đường, và cuối cùng kết liễu đối phương bằng hàng ngàn những vết “cắt giấy” tưởng chừng vô hại” – Arthur Miller – chuyên gia tranh tụng thuộc Trường Luật Đại Học Harvard.
Lời khuyên:
Hãy tập suy nghĩ như bồi thẩm đoàn, khiến những vấn đề phức tạp trở nên dễ hiểu, dự báo trước mọi tình huống xấu nhất và sẵn sàng những kế hoạch dự phòng cho chúng.','1001','https://business.facebook.com/latest/inbox/settings/messaging?asset_id=102503922203364','pkduy0003@gmail.com');

insert lawyers(Id,Fullname,Image,Infomation,CateId,LinkChat,Email) values('14',N'DARREN SILVER','ls5.jpg',N'Luật sư Darren Silver với hơn 15 năm kinh nghiệm trong lĩnh vực Định cư Mỹ, ông đã thực hiện hàng ngàn bộ hồ sơ từ tất cả các nước trên thế giới. Ngoài ra, ông cũng đã thực hiện thành công nhiều hồ sơ đến từ Châu Á như Hàn Quốc, Trung Quốc, Việt Nam,…
Luật sư Darren Silver tốt nghiệp ngành Quản Trị Kinh Doanh và ngành Luật vào năm 1992 và năm 1995. Ông đã từng công tác tại Sở Di Trú Mỹ USCIS một thời gian dài tại Phòng Dịch vụ Định cư trước khi ông thành lập Văn phòng Luật Darren Silver và Cộng sự.
Tại Sở Di Trú Mỹ USCIS, ông có nhiệm vụ soạn thảo các hướng dẫn, quy trình liên quan đến công tác định cư và hiện các hồ sơ này vẫn đang được duy trì sử dụng tại Sở Di Trú. Trong suốt quá trình công tác của mình, ông đã giúp được hơn 10,000 hồ sơ định cư thành công.
Văn phòng Luật Darren Silver tự hào khi được cống hiến cho chương trình EB5, văn phòng luật sư nhận được giải thưởng Văn phòng Luật xuất sắc vào năm 2011, đồng thời Luật sư Darren Silver được vinh dự nằm trong danh sách 25 Luật sư hàng đầu của Mỹ hiện nay: http://www.eb5investors.com/magazine/article/top-25-eb5-attorneys-2013
Luật sư Darren Silver hiện là thành viên của Hiệp Hội Đầu Tư Mỹ (IIUSA), Hiện Hội các trung tâm vùng EB5, Hiệp Hội Luật Sư Định Cư Hoa Kỳ, Hiệp Hội Luật sư tại California, Los Angeles và Beverly Hills.
Vui lòng tham khảo tại website của Văn phòng Luật Darren Silver và Cộng sự tại  http://www.darrensilver.com/ để có thêm thông tin chi tiết.','1002','https://business.facebook.com/latest/inbox/settings/messaging?asset_id=102503922203364','pkduy0003@gmail.com');

insert lawyers(Id,Fullname,Image,Infomation,CateId,LinkChat,Email) values('15',N'David Boies','ls6.jpg',N'Luật sư David Boies
David Boies là chủ tịch Hãng luật Boies và Schiller & Flexner. Ông đã tham gia đại diện trong nhiều vụ việc cao cấp của Mỹ.
David Boies từng được vinh dại tại Tạp chí Time năm 2000 - Luật sư của năm và nhiều giải thưởng khác. Khi mới có được sự nghiệp, ông chuyên đại diện cho các doanh nghiệp lớn, ví dụ điển hình là IBM. Tại Cravath, Boies đã hỗ trợ luật sư hàng đầu Thomas D. Barr bảo vệ IBM trong vụ kiện chống độc quyền trong vòng 13 năm với Bộ tư pháp và các đối thủ cạnh tranh khác. David đã tham gia làm luật sư đại diện cho Chính phủ Mỹ trong vụ chống độc quyền nổi tiếng với Microsoft vào năm 1998. Vụ kiện này đã buộc Microsoft phải chia sẻ API cho các công ty khác.
Boies cũng là Tham mưu trưởng và Giám đốc quản lý của Tiểu ban Chống độc quyền thượng viện Hoa Kỳ năm 1978, từng là Cố vấn trưởng, Giám đốc của Ủy ban Tư pháp Thượng viện Hoa Kỳ năm 1979.','1005','https://business.facebook.com/latest/inbox/settings/messaging?asset_id=102503922203364','pkduy0003@gmail.com');

insert lawyers(Id,Fullname,Image,Infomation,CateId,LinkChat,Email) values('16',N'ROBERT LUBIN','ls7.jpg',N'Robert Lubin sinh ngày 14 tháng 2 năm 1957 tại Montreal, Canada. Ông lớn lên ở Montreal, nói được tiếng Anh và tiếng Pháp, và giành được bằng cử nhân Thương Mại (Tài chính)
 tại Đại học McGill vào năm 1979. Ông theo học trường luật với tư cách là một du học sinh có visa F1 tại Đại học Miami ở Florida, nơi ông giành được bằng luật sư -JD của mình (1982) và Thạc sỹ, Thạc sĩ Luật về Thuế (1983). Lĩnh vực hoạt động đầu tiên của ông bao gồm 
 nhập cư theo diện kinh doanh và tay nghề. Ông cũng đã làm việc chuyên sâu như một luật sư sư về thuế, bất động sản, kinh doanh, quốc tế và các vấn đề nhập cư ở Phoenix, Arizona 1983-1987. Sau khi tốt nghiệp trường luật, ông Robert Lubin có ba mươi năm kinh nghiệm làm 
 việc về Visa H-1B và nhận được “thẻ xanh” vào năm 1986. Ông trở thành một công dân Hoa Kỳ vào năm 1994. Công ty Luật Robert Lubin & Associates (trước đây gọi là Văn phòng Luật của Robert Lubin) được thành lập vào năm 1988 và công ty chỉ tập trung vào vấn đề nhập cư 
 (với một số dịch vụ pháp lý thương mại cung cấp cho khách hàng nhập cư). Ông là một trong các luật sư đầu tiên được phép áp dụng (và nhận được chấp thuận) trong EB-1, EB-2 với nhiều trường hợp được chấp thuận vào đầu tháng 1 năm 1992. Ông dẫn đầu việc đơn giản hóa thanh
 toán dựa trên kết quả thành công thay vì tính giờ làm việc. Ông Robert Lubin là một thành viên của Hiệp hội Luật sư di trú Mỹ (AILA), đã làm việc trong ủy ban liên kết của Hội công tác xuất nhập cảnh, và được phép hành nghề luật ở Arizona (1983), District of Columbia (1988), 
 và Virginia (1994). Ông đã xuất hiện như một diễn giả khách mời tại các hội thảo pháp lý tại Hoa Kỳ và trên toàn thế giới.','1004','https://business.facebook.com/latest/inbox/settings/messaging?asset_id=102503922203364','pkduy0003@gmail.com');
 
 insert lawyers(Id,Fullname,Image,Infomation,CateId,LinkChat,Email) values('17',N'STEVE YALE-LOEHR','ls8.jpg',N'Steve Yale-Loehr là một luật sư của Nhóm luật sư trong Văn phòng luật nhập cư của Miller Mayer. Với 30 năm kinh nghiệm về luật nhập cư, ông ấy đã đưa ra những tư vấn cho khách hàng doanh nghiệp và khách hàng cá nhân về một loạt các vấn đề nhập cư theo gia đình và theo yêu cầu công việc.
Ngoài công việc của mình tại Văn phòng Miller Mayer, ông Yale-Loehr còn là một thành viên tích cực và nổi tiếng quốc tế trong cộng đồng luật nhập cư. Ông giảng dạy về luật nhập cư và luật tị nạn tại Trường Luật Cornell với vai trò là một giáo sư trợ giảng.Ông cũng thành lập và là giám đốc điều hành đầu tiên của Invest tại Mỹ (IIUSA), một hiệp hội thương mại của trung tâm khu vực  nhà đầu tư nhập cư EB-5. Ông được ghi danh trong tạp chí Who’s Who ở Mỹ và hàng năm được ghi danh trong Thương Mại Toàn Cầu, Thương mại Mỹ, và tạp chí Who’s Who trên toàn cầu cho Những luật sư trong lĩnh vực Luật nhập cư như là một luật sư giỏi nhất thế giới.
Ông thường xuyên được nhắc đến trong bài báo về vấn đề nhập cư và thường được làm chứng trước Quốc hội. Ông là người nhận giải thưởng năm 2001 của Giải thưởng Elmer Fried AILA cho sự xuất sắc trong giảng dạy và nhận giải thưởng năm 2004 của Giải thưởng Edith Lowenstein AILA cho sự xuất sắc trong việc thúc đẩy việc thực thi Luật nhập cư. Ông cũng là thành viên của Tổ chức luật sư Mỹ.
Ông Yale-Loehr là đồng tác giả hoặc đồng biên tập nhiều cuốn sách, trong đó có Luật và Thủ tục nhập cư, 20 tập dẫn luận về pháp luật Nhập cư Hoa Kỳ; Câu chuyện thẻ xanh; Thách thức của Mỹ: An ninh trong nước, Quyền tự do công dân và Đoàn kết dân tộc sau 11 tháng 9; Cân bằng lợi ích: Xem xét lựa chọn những người nhập cư tiêu biểu; Hướng dẫn thực hiện nhập cư trong kinh doanh toàn cầu; Hướng dẫn về thị thực; Hiểu về Luật Nhập cư 1990; và Hiểu về Luật Nhập cư 1986, và rất nhiều các bài báo tổng quan về pháp luật.
Ông Yale-Loehr là một thành viên của Nhóm luật sư tiểu bang New York và Quận Columbia, Tòa Phúc thẩm Mỹ cho Nhóm DC, và Tòa án tối cao Mỹ. Ông đã nhận được JD của Trường Luật Cornell và BA từ Đại học Cornell.','1005','https://business.facebook.com/latest/inbox/settings/messaging?asset_id=102503922203364','pkduy0003@gmail.com');

insert lawyers(Id,Fullname,Image,Infomation,CateId,LinkChat,Email) values('18',N'Nick Aries','ls9.jpg',N'Nick Aries là Partner, Bird & Bird. Ông cũng là đồng trưởng văn phòng đại diện của công ty tại San Francisco, cố vấn và điều phối các vấn đề về luật SHTT của Châu Âu và Vương quốc Anh theo
 múi giờ của Hoa Kỳ. Làm việc với công ty gần 15 năm, Nick là cố vấn đáng tin cậy trong việc kết nối Bird & Khách hàng của Bird tại Hoa Kỳ với các chuyên gia của công ty ở Châu Âu, Trung Đông và Châu Á - Thái Bình Dương, bao gồm tất cả các lĩnh vực mà công ty chúng tôi chuyên sâu.
 Thông thường, công việc của anh ấy liên quan đến việc phối hợp với các đồng nghiệp từ một số quốc gia và chuyển đổi sự hợp tác đó thành kết quả cho khách hàng.','1002','https://business.facebook.com/latest/inbox/settings/messaging?asset_id=102503922203364','pkduy0003@gmail.com');


alter table lawyers add constraint FK_lawyers_cates foreign key(CateId)
references cates (Id);

ALTER TABLE Authorities  ADD  CONSTRAINT FK_UserRoles FOREIGN KEY(Username)
REFERENCES Accounts (Username)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE Authorities  ADD  CONSTRAINT FK_Roles FOREIGN KEY(RoleId)
REFERENCES Roles(Id)
ON UPDATE CASCADE
ON DELETE CASCADE;

alter table concepts add constraint FK_concepts_cates foreign key(Cateid)
references cates (Id);

