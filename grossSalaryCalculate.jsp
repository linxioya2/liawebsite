<%-- 
    Document   : grossSalaryCalculate
    Created on : May 29, 2022, 10:33:15 PM
    Author     : LENOVO
--%>
<%
      
    if (request.getParameter("SubmitGrossSalary") != null){
        String Name = request.getParameter("Name");
        session.setAttribute("Name", Name); 
        String Gender = request.getParameter("Gender");
        session.setAttribute("Gender", Gender);
        String HourWork = request.getParameter("Work");
        session.setAttribute("Work", HourWork);
        String HourWage = request.getParameter("Wage");
        session.setAttribute("Wage", HourWage);
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Weekly Gross Salary</title>
    </head>
    <body>
        <h1>Weekly Gross Salary</h1>
        
        
        <% int flag = 0; %>
        
            <tr>
                <td>
                    Employee Name :
                    <%
                    if(session.getAttribute("Name").equals("")){
                        out.print("");
                        flag = 1;
                    }
                    else
                        out.print(session.getAttribute("Name"));
                    %><br>
                    
                    Gender :
                    <%
                    if(session.getAttribute("Gender").equals("")){
                        out.print("");
                        flag = 1;
                    }
                    else
                        out.print(session.getAttribute("Gender"));
                    %><br>
                    
                </td>
            </tr><br>
            
            <div>Detail is Your Gross Salary for this week</div><br>
            
            <%
         //declare int variable
            int HoursWork=Integer.parseInt(request.getParameter("Work"));
            int HoursWage=Integer.parseInt(request.getParameter("Wage"));
            int multiplyresult;
            int timeAndHalf;
            int overHours;
            int weeklyTimeHalf;
            int add;
            
            
                    if (HoursWork<=40)
            {
                multiplyresult=HoursWork*HoursWage;
            out.println("Hourly Worked :"+"RM"+HoursWork+"<br>");
            out.println("Hourly Wage :"+"RM"+HoursWage+"<br>");
            out.println("Gross Salary :"+"RM"+multiplyresult+"<br>");
            
            
            }
                    else if (HoursWork>40)
            {
                 timeAndHalf=HoursWork-40;
                 overHours=HoursWage/2;
                 weeklyTimeHalf= timeAndHalf*overHours;
                 add= (40*HoursWage) + weeklyTimeHalf;
                 
            out.println("Hourly Worked :"+"RM"+HoursWork+"<br>");
            out.println("Hourly Wage :"+"RM"+HoursWage+"<br>");
            out.println("Gross Salary :" +add );
                 
            
            }
                    
            
        %>
    </body>
</html>
