
Partial Class sender
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("receiver.aspx?id=" + TextBox1.Text + "")
    End Sub
End Class
