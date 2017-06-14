import javax.servlet.*;  
import java.sql.*;  
public class CtxListener implements ServletContextListener
{  
	Connection con;
	public void contextInitialized(ServletContextEvent event) 
	{  
		try
		{  
            Class.forName("com.mysql.jdbc.Driver");
            //con=DriverManager.getConnection("jdbc:mysql://node20622-node1.njs.jelastic.vps-host.net/joblisting","root","BLVvst31746");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/joblisting","root","");
			ServletContext ctx=event.getServletContext();
			Statement st=con.createStatement();
			PreparedStatement employerReg=con.prepareStatement("insert into employer_details values(?,?,?,?,?,?)");
			PreparedStatement employeeReg=con.prepareStatement("insert into employee_details values(?,?,?,?,?,?,?,?)");
			PreparedStatement employerLog=con.prepareStatement("select * from employer_details where email=? and password=?");
			PreparedStatement employeeLog=con.prepareStatement("select * from employee_details where email=? and password=?");
			PreparedStatement insertResult=con.prepareStatement("insert into result values(?,?)");
			PreparedStatement uploadJob=con.prepareStatement("insert into job_details (job_title,skills,salary,location,last_date,email) values(?,?,?,?,?,?)");
			PreparedStatement deleteJob=con.prepareStatement("delete from job_details where id=?");
			PreparedStatement allJobs=con.prepareStatement("select * from job_details");
			PreparedStatement getEmployeePassword=con.prepareStatement("select password from employee_details where email=?");
			PreparedStatement getEmployerPassword=con.prepareStatement("select password from employer_details where email=?");
			ctx.setAttribute("getEmployeePassword",getEmployeePassword);
			ctx.setAttribute("getEmployerPassword",getEmployerPassword);
			ctx.setAttribute("allJobs",allJobs);
			ctx.setAttribute("deleteJob",deleteJob);
			ctx.setAttribute("uploadJob",uploadJob);
			ctx.setAttribute("insertResult",insertResult);
			ctx.setAttribute("employerReg",employerReg);
			ctx.setAttribute("employeeReg",employeeReg);
			ctx.setAttribute("employerLog",employerLog);
			ctx.setAttribute("employeeLog",employeeLog);
			ctx.setAttribute("con", con);  
			ctx.setAttribute("st", st); 			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}  
	}   
	public void contextDestroyed(ServletContextEvent e) {
		try
		{  
			con.close();          
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}  
	}  
}  