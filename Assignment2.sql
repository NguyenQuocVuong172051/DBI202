
create table [Nhân Sự](
	[Họ Tên] nvarchar(50),
	[Mã NS] char(4) primary key, 
	[Giới Tính] nvarchar(10),
	[Ngày Sinh] date,
	[Dân Tộc] nvarchar(20),
	[Quê Quán] nvarchar(50),
	[Số Điện Thoại] char(11)
)

create table [Lương](
	[Bậc Lương] float primary key,
	[Lương CB] float,
	[HS Lương] float,
	[HS phụ cấp] float
)
create table [Trình Độ Học Vấn](
 MaTDHV char(6) primary key,
 [Tên TDHV] nvarchar(50),
 [Chuyên Ngành] nvarchar(50)
)
create table [Phòng Ban](
	MaPB char(3) primary key, 
	[Tên PB] nvarchar(50),
	[SĐT PB] char(11)
)
create table [Chức Vụ](
	MaCV char(4) primary key,
	[Tên CV] nvarchar(50)
)

create table [Hợp Đồng Lao Động](
	MaHD char(4) primary key,
	LoaiHD nvarchar(15),
	TuNgay Date,
	DenNgay Date,
	MaCV char(4) references [Chức Vụ](MaCV),
	MaPB char(3) references [Phòng Ban](MaPB),
	BacLuong float references [Lương]([Bậc Lương])
)
create table [Có](
MaNS char(4) references [Nhân Sự]([Mã NS]),
MaHD char(4) references [Hợp Đồng Lao Động](MaHD),
primary key (MaNS,MaHD)
)
create table [Đạt](
[Mã NS] char(4) references [Nhân Sự]([Mã NS]),
MaTDHV char(6) references [Trình Độ Học Vấn](MaTDHV),
primary key([Mã NS],MaTDHV)
)

INSERT INTO [Trình Độ Học Vấn]
VALUES
    ('TDHV01', N'Cử nhân', N'Kinh tế'),
    ('TDHV02', N'Thạc sĩ', N'Quản trị kinh doanh'),
    ('TDHV03', N'Tiến sĩ', N'Khoa học máy tính'),
    ('TDHV04', N'Cử nhân', N'Luật'),
    ('TDHV05', N'Cử nhân', N'Quản trị kinh doanh'),
    ('TDHV06', N'Thạc sĩ', N'Ký thuật phần mềm'),
    ('TDHV07', N'Cử nhân', N'Ngôn ngữ Anh'),
    ('TDHV08', N'Tiến sĩ', N'Tài chính'),
    ('TDHV09', N'Cử nhân', N'Ngôn ngữ Nhật'),
    ('TDHV10', N'Thạc sĩ', N'Kinh tế đối ngoại'),
    ('TDHV11', N'Tiến sĩ', N'An toàn thông tin'),
    ('TDHV12', N'Cử nhân', N'Khoa học xã hội'),
    ('TDHV13', N'Cử nhân', N'Marketing'),
    ('TDHV14', N'Thạc sĩ', N'Kế toán'),
    ('TDHV15', N'Tiến sĩ', N'Luật'),
    ('TDHV16', N'Cử nhân', N'Ký thuật phần mềm'),
    ('TDHV17', N'Cử nhân', N'Truyền thông đa phương tiện'),
    ('TDHV18', N'Thạc sĩ', N'Truyền thông đa phương tiện'),
    ('TDHV19', N'Cử nhân', N'Khoa học máy tính');
insert into [Nhân Sự]
values 
(N'Nguyễn Thị Anh','NS01',N'Nữ','1990-05-10',N'Kinh',N'Hà Nội','09123456789'),
(N'Trần Văn Bình','NS02',N'Nam','1995-07-15',N'Kinh',N'Hà Nội','09234567891'),
(N'Lê Văn Cẩm','NS03',N'Nam','1990-05-10',N'Kinh',N'Đà Nẵng','09345678912'),
(N'Hoàng Văn Đạt','NS04',N'Nam','1998-09-08',N'Kinh',N'Cần Thơ','09456789123'),
(N'Nguyễn Quốc Vượng','NS05',N'Nam','2000-05-26',N'Kinh',N'Hà Nội','0356563653'),
(N'Vũ Văn Lai','NS06',N'Nam','1994-12-25',N'Kinh',N'Hải Phòng','09678912345'),
(N'Nguyễn Thị Giai','NS07',N'Nữ','1987-06-14',N'Kinh',N'Thanh Hóa','09789123456'),
(N'Trần Văn Hải','NS08',N'Nam','1993-04-18',N'Kinh',N'Hà Tĩnh','09891234567'),
(N'Lê Thị Hoa','NS09',N'Nữ','1997-10-20',N'Kinh',N'Bình Định','09912345678'),
(N'Vũ Anh Khôi','NS10',N'Nam','1996-02-10',N'Kinh',N'Thái Bình','09012345678'),
(N'Nguyễn Như Hải','NS11',N'Nữ','1998-10-31',N'Kinh',N'Quảng Ninh','09023456789'),
(N'Phạm Hoàng Long','NS12',N'Nam','1999-06-1',N'Kinh',N'Hải Dương','09034567891'),
(N'Trần Thị Cảnh','NS13',N'Nữ','1993-01-02',N'Kinh',N'Hưng Yên','09045678912'),
(N'Cao Văn Học','NS14',N'Nam','1991-12-11',N'Kinh',N'Hà Nam','09056789123'),
(N'Lê Thu Quỳnh','NS15',N'Nữ','1991-12-12',N'Kinh',N'Cần Thơ','09067891234'),
(N'Lại Thái Vũ','NS16',N'Nam','1997-07-29',N'Kinh',N'Hưng Yên','09078912345'),
(N'Trương Quốc Bảo','NS17',N'Nam','1992-03-19',N'Kinh',N'Hà Nam','09089123456'),
(N'Nguyễn Thị Tươi','NS18',N'Nữ','1999-04-11',N'Kinh',N'Nghệ An','09091234567'),
(N'Phùng Long Vũ','NS19',N'Nam','1994-03-05',N'Kinh',N'Hà Nội','09009876543'),
(N'Vũ Linh Nhi','NS20',N'Nữ','1998-08-18',N'Kinh',N'Hải Phòng','09008765432'),
(N'Phạm Văn Tùng','NS21',N'Nam','1997-09-05',N'Kinh',N'Quảng Ninh','09007654321'),
(N'Trần Thu Nga','NS22',N'Nữ','1994-02-22',N'Kinh',N'Hồ Chí Minh','09059876543'),
(N'Nguyễn Văn Linh','NS23',N'Nam','1998-04-16',N'Kinh',N'Bình Định','09058765432'),
(N'Lê Thu Phương','NS24',N'Nữ','1995-06-27',N'Kinh',N'Nghệ An','09069875432'),
(N'Cao Văn Bá','NS25',N'Nam','1993-09-20',N'Kinh',N'Thanh Hóa','09071234789'),
(N'Phạm Anh Thư','NS26',N'Nữ','1993-03-13',N'Kinh',N'Thái Bình','09048763729'),
(N'Nguyễn Hải Long','NS27',N'Nam','1995-05-15',N'Kinh',N'Hà Nội','09027483628'),
(N'Lại Thu Duyên','NS28',N'Nữ','1997-07-17',N'Kinh',N'Hải Dương','09473681283'),
(N'Khúc Văn Vinh','NS29',N'Nam','1996-09-06',N'Kinh',N'Hà Nội','09214332874'),
(N'Nguyễn Trà My','NS30',N'Nữ','1998-06-09',N'Kinh',N'Thái Bình','09438564732')

insert into [Lương]
values (7,9000000,6.5,1.00),
(6,8000000,6.2,0.8),
(5,8500000,5.5,0.7),
(4,7000000,5.0,0.6),
(3,6000000,4.6,0.5),
(2,5000000,4.0,0.4),
(1,4000000,3.9,0.3)

insert into [Phòng ban]
values
('P01', N'Phòng Quan Hệ Quốc Tế', '0939149156'),
('P02', N'Phòng kỹ thuật', '0369915916'),
('P03', N'Phòng hành chính', '0984568973'),
('P04', N'Phòng nhân sự', '0356267536'),
('P05', N'Phòng Marketing', '0987112113'),
('P06', N'Phòng kế toán', '0354263264'),
('P07', N'Phòng chăm sóc khác hàng', '0122912813'),
('P08', N'Phòng kinh doanh', '0367896634'),
('P09', N'Phòng nghiên cứu và phát triển sản phẩm', '0355533335')

insert into [Chức Vụ]
values 
('CV01', N'Tổng Giám Đốc'),
('CV02', N'Trưởng Phòng Quan Hệ Quốc Tế'),
('CV03', N'Trưởng Phòng Kỹ Thuật'),
('CV04', N'Trưởng Phòng Hành Chính'),
('CV05', N'Trưởng Phòng Nhân Sự'),
('CV06', N'Trưởng Phòng Marketing'),
('CV07', N'Kế Toán Trưởng'),
('CV08', N'Trưởng Phòng CSKH'),
('CV09', N'Trưởng Phòng Kinh Doanh'),
('CV10', N'Trưởng Phòng Nghiên Cứu và Phát Triển Sản Phẩm'),
('CV11', N'Trợ Lý Trưởng Phòng Quan Hệ Quốc Tế'),
('CV12', N'Nhân Viên Quan Hệ Quốc Tế'),
('CV13', N'Trợ Lý Trưởng Phòng Kỹ Thuật'),
('CV14', N'Nhân Viên Kỹ Thuật'),
('CV15', N'Trợ Lý Hành Chính'),
('CV16', N'Nhân Viên Hành Chính'),
('CV17', N'Trợ Lý Nhân Sự'),
('CV18', N'Trợ Lý Marketing'),
('CV19', N'Nhân Viên Kinh doanh'),
('CV20', N'Nghiên Cứu Viên'),
('CV21', N'Nhân Viên CSKH')

insert into [Hợp Đồng Lao Động]
values
('HD01',N'Có thời hạn','2010-5-5','2015-5-27','CV03','P02',5),
('HD02',N'Có thời hạn','2010-5-26','2016-3-17','CV05','P04',5),
('HD03',N'Không thời hạn','2010-12-12',null,'CV03','P02',6),
('HD04',N'Có thời hạn','2010-11-11','2019-3-13','CV18','P05',4),
('HD05',N'Có thời hạn','2011-2-15','2019-2-14','CV17','P04',4),
('HD06',N'Có thời hạn','2012-6-12','2021-6-11','CV14','P02',4),
('HD07',N'Có thời hạn','2011-3-16','2015-6-23','CV15','P03',3),
('HD08',N'Có thời hạn','2013-8-27','2018-5-12','CV06','P05',5),
('HD09',N'Không thời hạn','2011-6-23',null,'CV07','P06',7),
('HD10',N'Có thời hạn','2015-2-19','2019-7-11','CV19','P08',5),
('HD11',N'Có thời hạn','2016-6-24','2020-7-8','CV20','P09',5),
('HD12',N'Có thời hạn','2017-9-15','2021-6-5','CV11','P01',5),
('HD13',N'Có thời hạn','2015-1-1','2019-12-9','CV13','P02',5),
('HD14',N'Không thời hạn','2016-8-19','2020-4-11','CV03','P02',6),
('HD15',N'Có thời hạn','2017-6-10','2021-9-15','CV17','P04',4),
('HD16',N'Có thời hạn','2017-7-14','2021-5-19','CV18','P05',4),
('HD17',N'Có thời hạn','2019-5-25','2023-6-10','CV21','P07',3),
('HD18',N'Có thời hạn','2019-7-11','2023-10-6','CV16','P03',4),
('HD19',N'Có thời hạn','2018-8-29','2022-10-18','CV19','P08',3),
('HD20',N'Có thời hạn','2013-9-18','2017-12-24','CV14','P02',4),
('HD21',N'Có thời hạn','2015-12-23','2019-5-12','CV17','P04',5),
('HD22',N'Có thời hạn','2012-4-27','2016-6-16','CV16','P06',5),
('HD23',N'Có thời hạn','2014-3-13','2019-6-18','CV14','P02',4),
('HD24',N'Có thời hạn','2015-8-20','2020-4-19','CV12','P01',5),
('HD25',N'Không thời hạn','2017-5-20',null,'CV10','P09',2),
('HD26',N'Có thời hạn','2018-9-26','2022-9-20','CV18','P05',5),
('HD27',N'Không thời hạn','2018-3-28',null,'CV05','P04',6),
('HD28',N'Có thời hạn','2019-12-31','2023-5-19','CV19','P08',4),
('HD29',N'Có thời hạn','2019-3-9','2023-7-13','CV15','P03',5),
('HD30',N'Không thời hạn','2018-12-6',null,'CV03','P02',6)

insert into [Đạt]
values
('NS01','TDHV03'),
('NS01','TDHV07'),
('NS01','TDHV09'),
('NS02','TDHV13'),
('NS02','TDHV17'),
('NS03','TDHV04'),
('NS04','TDHV02'),
('NS04','TDHV05'),
('NS04','TDHV07'),
('NS05','TDHV09'),
('NS05','TDHV11'),
('NS06','TDHV01'),
('NS06','TDHV04'),
('NS06','TDHV07'),
('NS06','TDHV10'),
('NS07','TDHV16'),
('NS08','TDHV19'),
('NS08','TDHV07'),
('NS09','TDHV09'),
('NS09','TDHV16'),
('NS10','TDHV18'),
('NS11','TDHV04'),
('NS11','TDHV10'),
('NS12','TDHV11'),
('NS13','TDHV17'),
('NS14','TDHV14'),
('NS15','TDHV03'),
('NS16','TDHV18'),
('NS17','TDHV06'),
('NS18','TDHV01'),
('NS18','TDHV05'),
('NS18','TDHV09'),
('NS19','TDHV14'),
('NS19','TDHV15'),
('NS20','TDHV07'),
('NS20','TDHV16'),
('NS21','TDHV10'),
('NS21','TDHV18'),
('NS22','TDHV03'),
('NS22','TDHV06'),
('NS22','TDHV09'),
('NS23','TDHV05'),
('NS24','TDHV19'),
('NS25','TDHV06'),
('NS25','TDHV11'),
('NS26','TDHV13'),
('NS27','TDHV18'),
('NS28','TDHV15'),
('NS29','TDHV01'),
('NS29','TDHV08'),
('NS30','TDHV12'),
('NS30','TDHV04')

INSERT INTO [Có]
VALUES
    ('NS01','HD01'),
    ('NS03','HD03'),
    ('NS05','HD02'),
    ('NS08','HD27'),
    ('NS09','HD13'),
    ('NS01','HD10'),
    ('NS20','HD02'),
    ('NS11','HD07'),
    ('NS24','HD02'),
    ('NS27','HD27'),
    ('NS30','HD08'),
    ('NS11','HD10'),
    ('NS12','HD29'),
    ('NS02','HD29'),
    ('NS05','HD14'),
    ('NS04','HD28'),
    ('NS06','HD28'),
    ('NS10','HD11'),
    ('NS13','HD25'),
    ('NS15','HD17'),
    ('NS14','HD21'),
    ('NS17','HD22'),
	('NS18','HD04'),
    ('NS19','HD15'),
    ('NS21','HD14'),
    ('NS20','HD11'),
    ('NS22','HD23'),
    ('NS29','HD16'),
    ('NS01','HD17'),
    ('NS23','HD05'),
    ('NS11','HD28'),
    ('NS24','HD25'),
    ('NS25','HD26'),
    ('NS18','HD18'),
    ('NS28','HD16'),
    ('NS30','HD12');
