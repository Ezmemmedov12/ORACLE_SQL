
// iki tarix arasindaki gunlerin sayini cap etmek//
select to_date('12-09-2008','dd-mm-yyyy')-to_date('13-07-2001','dd-mm-yyyy') from dual;

//iki tarix arasinda butun gunleri cap etmek//
select to_date('12-02-2003','dd-mm-yyyy')+level from dual connect by level<(select to_date('06-10-2022','dd-mm-yyyy')-to_date('12-02-2003','dd-mm-yyyy') from dual);

//ilin aylarinin son gunlerini cap etmek//
select add_months( last_day(to_date('15-10-2022','dd-mm-yyyy')),+level) from dual connect by level<12 ;

//ilin aylarinin ilk gunlerinin cap edilmesi//
select add_months( last_day(to_date('15-10-2022','dd-mm-yyyy')),+level)+1 from dual connect by level<12 ;

//ayin 1-ci gunlerinin cap edilmesi//
select distinct trunc(to_date('17-10-2022','dd-mm-yyyy')+level,'day') from dual connect by level<1000;