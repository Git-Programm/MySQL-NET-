Imports System.Data
Imports System.Data.OleDb
Partial Class Login
    Inherits System.Web.UI.Page
    Dim con As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\College\Sem5\asp\projects\dbconnectivity\App_Data\dbStudent.accdb;Persist Security Info=True")
    Dim cmd As New OleDbCommand()
    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        Dim strselect As String = "SELECT * FROM StudentDetail Where ID=" + txtUserId.Text + " AND Spassword='" + txtPassword.Text + "'"
        Dim rdr As IDataReader
        Dim dt As New DataTable()
        cmd = New OleDbCommand(strselect, con)
        con.Open()
        rdr = cmd.ExecuteReader()
        dt.Load(rdr)
        con.Close()
        rdr.Dispose()
        rdr.Close()
        If dt.Rows.Count > 0 Then
            Session.Timeout = 40
            Session("id") = dt.Rows(0)("SName").ToString()
            Session("gender") = dt.Rows(0)("SGender").ToString()
            Response.Redirect("Welcome.aspx")
        Else
            Label1.ForeColor = Drawing.Color.Red
            Label1.Text = "UserID/Password not valid"
        End If

    End Sub
End Class
