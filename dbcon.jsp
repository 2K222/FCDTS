<%@page import="java.sql.*"%>

<% Connection con=null;
   Statement stmt=null;
   
 
 %>

<%

try
{
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fcds","root","");
   stmt=con.createStatement();
   
}


catch(Exception e)
{

   out.println(e);

}

%>