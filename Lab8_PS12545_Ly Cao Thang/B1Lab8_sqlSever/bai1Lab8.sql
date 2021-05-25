-- Bài 1 Lab 8
select *from KHACHHANG;
-- So DT
create index KH_index_SoDT on KHACHHANG(SoDT);

drop index KH_index_SoDT on KHACHHANG;

-- Dia Chi
create index KH_index_DiaChi on KHACHHANG(DiaChi);

drop index KH_index_DiaChi on KHACHHANG;




