Imports System.Data.OleDb
Imports System.Data
Public Class user
    Inherits System.Web.UI.Page
    Dim conn As OleDbConnection = New OleDbConnection("----------------------------------------------------------------------------------------------------")
    Dim sgender As String
    Dim ssubject As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        fetch()
    End Sub
    Private Sub fetch()
        Try
            If conn.State = ConnectionState.Closed Then
                conn.Open()
            End If
            Dim cmd As OleDbCommand = New OleDbCommand("Select * from crud",conn)
            cmd.ExecuteScalar()
            Dim da As OleDbDataAdapter = New OleDbDataAdapter(cmd)
            Dim ds As DataSet = New DataSet
            da.Fill(ds)
            GridView1.DataBind()

        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
    End Sub

    Private Sub clearAll()
        Try
            idInput.Text = ""
            nameInput.Text = ""
            emailInput.Text = ""
            mobileInput.Text = ""
            subjectInput.SelectedIndex = 0
            male.Checked = False
            female.Checked = False
            other.Checked = False
            passwordInput.Text = ""
            searchInput.Text = ""
        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
    End Sub

    Protected Sub insert_Click(sender As Object, e As EventArgs) Handles insert.Click
        Try
            If conn.State = ConnectionState.Closed Then
                conn.Open()
            End If
            If male.Checked Then
                sgender = "Male"
            End If
            If female.Checked Then
                sgender = "Female"
            End If
            If other.Checked Then
                sgender = "Other"
            End If
            ssubject = subjectInput.SelectedValue.ToString()
            Dim cmd As OleDbCommand = New OleDbCommand("insert into crud values(" & idInput.Text & ",'" & nameInput.Text & "','" & emailInput.Text & "','" & mobileInput.Text & "','" & ssubject & "','" & sgender & "','" & passwordInput.Text & "')", conn)
            cmd.ExecuteNonQuery()
            fetch()
            clearAll()
        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
    End Sub

    Protected Sub clear_Click(sender As Object, e As EventArgs) Handles clear.Click
        clearAll()
    End Sub

    Protected Sub delete_Click(sender As Object, e As EventArgs) Handles delete.Click
        Try
            If conn.State = ConnectionState.Closed Then
                conn.Open()
            End If
            Dim cmd As OleDbCommand = New OleDbCommand("delete from crud where ID = " & idInput.Text & "", conn)
            cmd.ExecuteNonQuery()
            fetch()
            clearAll()
        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
    End Sub

    Protected Sub search_Click(sender As Object, e As EventArgs) Handles search.Click
        Try
            If conn.State = ConnectionState.Closed Then
                conn.Open()
            End If
            Dim cmd As OleDbCommand = New OleDbCommand("Select * from crud where ID = " & searchInput.Text & "", conn)
            cmd.ExecuteScalar()
            Dim dr As OleDbDataReader = cmd.ExecuteReader()
            dr.Read()

            idInput.Text = dr.Item(0)
            nameInput.Text = dr.Item(1)
            emailInput.Text = dr.Item(2)
            mobileInput.Text = dr.Item(3)
            subjectInput.SelectedValue = dr.Item(4)
            If dr.Item(5).Equals("Male") Then
                male.Checked = True
            End If
            If dr.Item(5).Equals("Female") Then
                female.Checked = True
            End If
            If dr.Item(5).Equals("Other") Then
                other.Checked = True
            End If
            passwordInput.Text = dr.Item(6)
        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
    End Sub

    Protected Sub update_Click(sender As Object, e As EventArgs) Handles update.Click
        Try
            If conn.State = ConnectionState.Closed Then
                conn.Open()
            End If
            If male.Checked Then
                sgender = "Male"
            End If
            If female.Checked Then
                sgender = "Female"
            End If
            If other.Checked Then
                sgender = "Other"
            End If
            ssubject = subjectInput.SelectedValue.ToString()
            Dim cmd As OleDbCommand = New OleDbCommand("update crud set ID = " & idInput.Text & ",fname = '" & nameInput.Text & "',email = '" & emailInput.Text & "',mobile = '" & mobileInput.Text & "',subject = '" & ssubject & "',gender = '" & sgender & "' where ID = " & searchInput.Text & "", conn)
            cmd.ExecuteNonQuery()
            fetch()
            clearAll()
        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
    End Sub
End Class
