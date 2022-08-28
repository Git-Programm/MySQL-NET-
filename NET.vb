Imports System.Data.OleDb
Imports System.Data

Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim conn As OleDbConnection = New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\ASHISH\Desktop\ASP\WebApplication1\test1.accdb")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        fetch()

    End Sub

    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnInsert.Click
        Try
            If conn.State = ConnectionState.Closed Then
                conn.Open()
            End If
            Dim cmd As OleDbCommand = New OleDbCommand("insert into test1 values(" & tbID.Text & " , '" & tbName.Text & "'," & tbPhone.Text & ")", conn)
            cmd.ExecuteNonQuery()

            lblMessage.Text = "Data Inserted"
            fetch()

        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnUpdate.Click
        Try
            If conn.State = ConnectionState.Closed Then
                conn.Open()
            End If
            Dim cmd As OleDbCommand = New OleDbCommand("update test1 set SName = '" & tbName.Text & "',SPhone = " & tbPhone.Text & " where SID = " & tbID.Text & "", conn)
            cmd.ExecuteNonQuery()

            lblMessage.Text = "Data Updated"
            fetch()

        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try

    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnDelete.Click
        Try
            If conn.State = ConnectionState.Closed Then
                conn.Open()
            End If
            Dim cmd As OleDbCommand = New OleDbCommand("delete from test1 where SID = " & tbID.Text & "", conn)
            cmd.ExecuteNonQuery()

            lblMessage.Text = "Data Deleted"
            fetch()

        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try

    End Sub

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSearch.Click
        Try
            If conn.State = ConnectionState.Closed Then
                conn.Open()
            End If
            'search for grid view
            Dim cmd As OleDbCommand = New OleDbCommand("select * from test1 where SID = " & tbSearch.Text & "", conn)
            cmd.ExecuteScalar()

            Dim da As OleDbDataAdapter = New OleDbDataAdapter(cmd)
            Dim ds As DataSet = New DataSet

            da.Fill(ds)

            GridView1.DataSource = ds.Tables(0)
            GridView1.DataBind()

            'search for textbox
            Dim dr As OleDbDataReader
            Dim cmd1 As OleDbCommand = New OleDbCommand("select * from test1 where SID = " & tbSearch.Text & "", conn)
            dr = cmd1.ExecuteReader()

            dr.Read()

            tbID.Text = dr.Item(0)
            tbName.Text = dr.Item(1)
            tbPhone.Text = dr.Item(2)

        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
    End Sub

    Private Sub fetch()
        Try
            If conn.State = ConnectionState.Closed Then
                conn.Open()
            End If
            Dim cmd As OleDbCommand = New OleDbCommand("select * from test1", conn)
            cmd.ExecuteScalar()

            Dim da As OleDbDataAdapter = New OleDbDataAdapter(cmd)
            Dim ds As DataSet = New DataSet

            da.Fill(ds)

            GridView1.DataSource = ds.Tables(0)
            GridView1.DataBind()

        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
    End Sub
End Class
