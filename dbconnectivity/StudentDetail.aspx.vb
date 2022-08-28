Imports System.Data
Imports System.Data.OleDb
Partial Class StudentDetail
    Inherits System.Web.UI.Page
    Dim con As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\College\Sem5\asp\projects\dbconnectivity\App_Data\dbStudent.accdb;Persist Security Info=True")
    Dim cmd As New OleDbCommand()
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim gender As String
        Dim strquery As String
        If (rbFemale.Checked = True) Then
            gender = "Female"
        Else
            gender = "Male"
        End If
        strquery = "insert into StudentDetail(SName, SGender,SMobile) values ('" + txtSName.Text + "','" + gender.ToString() + "','" + txtMobile.Text + "')"
        cmd = New OleDbCommand(strquery, con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        lblMsg.Text = "Record inserted successfully.."
        Reset()
        ShowStudentData()
    End Sub
    Sub Reset()
        txtMobile.Text = ""
        txtSName.Text = ""
        rbFemale.Checked = True
        rbMale.Checked = False
        btnUpdate.Visible = False
        btnSubmit.Visible = True

    End Sub

    Protected Sub btnReset_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnReset.Click
        Reset()
    End Sub
    Sub ShowStudentData()
        Dim strselect As String = "SELECT (SELECT COUNT(*) FROM StudentDetail WHERE A.ID>=ID) AS SrNo, A.* FROM StudentDetail  AS A ORDER BY A.ID;"
        Dim rdr As IDataReader
        Dim dt As New DataTable()
        cmd = New OleDbCommand(strselect, con)
        con.Open()
        rdr = cmd.ExecuteReader()
        dt.Load(rdr)
        con.Close()
        rdr.Dispose()
        rdr.Close()
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ShowStudentData()
    End Sub
    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim strId As String
        strId = GridView1.DataKeys(e.RowIndex)("ID").ToString()
        Dim strDelete As String = "Delete from StudentDetail Where ID=" + strId
        cmd = New OleDbCommand(strDelete, con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        lblMsg.Text = "Record deleted successfully.."
        Reset()
        ShowStudentData()
    End Sub

    Protected Sub GridView1_SelectedIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewSelectEventArgs) Handles GridView1.SelectedIndexChanging
        txtSName.Text = GridView1.Rows(e.NewSelectedIndex).Cells(4).Text.ToString()
        txtMobile.Text = GridView1.Rows(e.NewSelectedIndex).Cells(6).Text.ToString()
        ViewState("SID") = GridView1.Rows(e.NewSelectedIndex).Cells(3).Text.ToString()
        Dim gender As String = ""
        gender = GridView1.Rows(e.NewSelectedIndex).Cells(5).Text.ToString()
        If (gender = "Male") Then
            rbMale.Checked = True
            rbFemale.Checked = False
        Else
            rbMale.Checked = False
            rbFemale.Checked = True
        End If
        btnUpdate.Visible = True
        btnSubmit.Visible = False
    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        Dim strquery As String = ""
        Dim gender As String
        If (rbFemale.Checked = True) Then
            gender = "Female"
        Else
            gender = "Male"
        End If
        strquery = "Update StudentDetail set SName='" + txtSName.Text + "', SGender='" + gender.ToString() + "',SMobile='" + txtMobile.Text + "' Where ID=" + ViewState("SID").ToString()
        cmd = New OleDbCommand(strquery, con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        lblMsg.Text = "Record updated successfully.."
        Reset()
        ShowStudentData()
    End Sub

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        Dim strselect As String = "SELECT (SELECT COUNT(*) FROM StudentDetail WHERE A.ID>=ID) AS SrNo, A.* FROM StudentDetail  AS A  Where A.SNAME like '%" + txtSearch.Text + "%' OR A.SMobile like '%" + txtSearch.Text + "%'   ORDER BY A.ID;"
        Dim rdr As IDataReader
        Dim dt As New DataTable()
        cmd = New OleDbCommand(strselect, con)
        con.Open()
        rdr = cmd.ExecuteReader()
        dt.Load(rdr)
        con.Close()
        rdr.Dispose()
        rdr.Close()
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub
End Class







