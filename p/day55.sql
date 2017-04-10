create or replace package MY_EMP_PACK
is
 function GET_AVG_SAL(mname in emp.ename%type)			
return number;
function GET_AVG_SAL(mid in emp.empno%type )
return number;
end MY_EMP_PACK;
/


create or replace package body  MY_EMP_PACK
is 
 function GET_AVG_SAL(mname in emp.ename%type)	
return number
is 
mdno emp.deptno%type;
msal number;
begin
select deptno into mdo from emp where ename like mname;
select avg(sal) into msal  from emp where deptno = mdo;
return msal;
end GET_AVG_SAL;

 function GET_AVG_SAL(mid in  emp.empno%type)	
return number
is 
mdno emp.deptno%type;
msal number;
begin
select deptno into mdo from emp where empno=mid;
select avg(sal) into msal  from emp where deptno = mdo;
return msal;
end GET_AVG_SAL;
end MY_EMP_PACK;
/ 




 
