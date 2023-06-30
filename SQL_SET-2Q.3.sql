 ## /*Question3*/   
       
       ## a 
       Delimiter // 
       create procedure sp_payment_status (in customerno int)
 begin
 select (case when amount<25000 then 'Silver' when amount<=50000 then 'Gold' when amount>50000 then 'Platinum' end) as purchase_status from payments where customernumber=customerno;
 end//
 
 ## b 
 
 select p.customernumber,customername,(case when amount<25000 then 'Silver' when amount<=50000 then 'Gold' when amount>50000 then 'Platinum' end) as purchase_status from payments as p inner join customers as c on c.customernumber=p.customernumber;
