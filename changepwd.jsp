<%@ include file="dbcon.jsp" %>
<%

  String s1,s2,s3,user;
   s1=request.getParameter("t1");
   s2=request.getParameter("t2");
   s3=request.getParameter("t3");
   user=session.getAttribute("uname").toString();

  if(s2.equals(s3))
   {
       ResultSet rs=stmt.executeQuery("select * from login where username='"+user+"' and Password='"+s1+"' ");
       if(rs.next())
       {
         int k=stmt.executeUpdate("update login set Password='"+s2+"' where username='"+user+"' ");
       }
	
       else
		{
		   out.println("check username or password");
		}

   }
   else
   {
     out.println("check new and confirm password");
  }

%>  
	   <jsp:forward page="login.html" />

