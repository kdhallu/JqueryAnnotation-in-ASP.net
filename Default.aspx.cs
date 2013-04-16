using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{

    //Variable declarations
    static string cnnString = "Server=localhost;Port=3306;Database=ots;Uid=admin;Pwd=admin";
    MySqlConnection cnx = new MySqlConnection(cnnString);
    MySqlDataAdapter adapter = new MySqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

        cnx.Open();


        MySqlDataReader dm;

        //Query to select all the items 
        String query = "SELECT * from POC";

        MySqlCommand cmd = new MySqlCommand(query, cnx);

        //Time to execute the reader
        dm = cmd.ExecuteReader();
        String notes = null; ;
        while (dm.Read())
        {

         //Store all the variables in a string
         String height = dm["height"].ToString();
         String text =   dm["text"].ToString();
         String width = dm["width"].ToString();
         String top = dm["top"].ToString();
         String left = dm["left"].ToString();
         String id = dm["id"].ToString();
        
        //make the values in correct order
         notes += "{"+"\"top\":"+top +",\"left\":"  + left + ",\"width\":" +width+ ",\"height\":" +height+ ",\"text\":\""  +text+   " \",\"id\":"+id+",\"editable\":false},";


        }

        string script;
        
        //the final script generation
        script = " $(window).load(function () { $(\"#toAnnotate\").annotateImage({ editable: true,useAjax: false,notes: ["+notes+" ]}); });";

        Literal1.Text = script;



        cnx.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //get all the values
        String top = TextBox1.Text;

        String left = TextBox2.Text;

        String width = TextBox3.Text;

        String height = TextBox4.Text;

        String text = TextBox5.Text;

        //open the connections
        cnx.Open();

        // Create a SQL command object
        string cmdText = "insert into poc(top, `left`, width, height, `text`)  values('" + top + "','" + left + "','" + width + "','" + height + "' ,'" + text + "')";


        MySqlCommand cmd = new MySqlCommand(cmdText, cnx);

        //time to execute
        int i =cmd.ExecuteNonQuery();
        cnx.Close();

      

    }
}
