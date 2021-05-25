-- Bài 1
-- Hiển thị tất cả thông tin khách hàng (câu a)
select *
from KHACHHANG;

select *
from sanpham;

-- Hiển thị 3 khách hàng đầu tiên( câu b )
select maKhachHang,HovaTen,email,dienThoai
from khachhang limit 3;

-- Hiển thị tất cả thông tin sản phẩm (câu c)
select maSanPham,tenSP, CONCAT(soLuong*donGia) as 'Tổng tiền tồn kho'
from sanpham;

-- Yêu cầu câu d
select CONCAT(HovaTen, ' ',Ten) as 'Ho va Ten ',maKhachHang,diaChi
from khachhang
where Ten like 'H%';

-- Yêu cầu câu e
select *
from khachhang
where diaChi like 'Đà Nẵng%';

-- Yêu cầu f
select * from sanpham
where soLuong between 100 and 500 ;

-- Yêu cầu g
select *
from hoadon
where ngayMuaHang like '2016%';

-- Yê cầu h
select * from hoadon
where maKhachHang like '321%';

-- Bài 2
-- Câu a
select *from khachhang;

-- Câu b
select * 
 from sanpham;

select Max(donGia) as 'Đơn giá cao nhất'
 from sanpham;
 
 -- Câu c
 select min(soLuong) as 'Số lượng sản phẩm thấp nhất'
 from sanpham;
 
 -- Câu d
select sum(soLuong) as 'Tổng số sản phẩm'
 from sanpham;
 
  -- Câu e
  select 
  *from hoadon
  where ngayMuaHang like '2016-12%' and trangThai like 'chuaThanhToan%' ;
  
  -- Câu f
  select maHoaDon,soLuong as'Sản phẩm được mua'
  from hoadonchitiet;

-- Câu g
 select maHoaDon,soLuong  as'Sản phẩm được mua'
  from hoadonchitiet
  where soLuong >=5;

 
 -- Câu h
 select *from hoadon;
 
 select maHoaDon,ngayMuaHang,maKhachHang
 from hoadon
 ORDER BY ngayMuaHang DESC;
 
 
