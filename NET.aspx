<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="user.aspx.vb" Inherits="user.user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width:100%;
            height: 100%;
            text-align: center;
        }
        .style2
        {
            width: 20%;
            height: 30px;
            text-align: left;
            padding-left:50px;
        }
        .style5
        {
            width: 70%;
            height:30px;
            
        }
        .style6
        {
            height: 30px;
        }
        .style7
        {
            width: 70%;
            height: 30px;
            text-align: center;
        }
        .style9
        {
            height: 30px;
            padding-left: 50px;
        }
        .style10
        {
            width: 70%;
            height: 30px;
            text-align: justify;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="text-align:center;">
    <div class="style1">   
        <table style="width:80%;margin:auto;" border>
            <tr>
                <td class="style2">
                    <asp:Label ID="id" runat="server" Text="ID"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="idInput" runat="server" Width="90%" Height="28px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="name" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="nameInput" runat="server" Width="90%" Height="28px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="emailInput" runat="server" Width="90%" Height="28px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="mobile" runat="server" Text="Mobile No."></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="mobileInput" runat="server" Width="90%" Height="28px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="subject" runat="server" Text="Subject"></asp:Label>
                </td>
                <td class="style5">
                    <asp:DropDownList ID="subjectInput" runat="server" Width="90%" Height="28px">
                        <asp:ListItem>ASP.NET</asp:ListItem>
                        <asp:ListItem>WEB DEV</asp:ListItem>
                        <asp:ListItem>UNIX</asp:ListItem>
                        <asp:ListItem>PHP</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="gender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="style10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="male" runat="server" GroupName="gender" Text="Male" Width="10%"/>
                    <asp:RadioButton ID="female" runat="server" GroupName="gender" Text="Female" Width="10%"/>
                    <asp:RadioButton ID="other" runat="server" GroupName="gender" Text="Other" Width="10%"/>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="passwordInput" runat="server" Width="90%" Height="28px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9" colspan="2">
                    <asp:Button ID="insert" runat="server" Text="Insert" Height="30px" />
                    <asp:Button ID="update" runat="server" Text="Update" Height="30px" />
                    <asp:Button ID="delete" runat="server" Text="Delete" Height="30px" 
                        style="width: 55px" />
                    <asp:Button ID="clear" runat="server" Text="Clear" Height="30px"/>
                </td>
            </tr>
            <tr>
                <td class="style6" colspan="2">
                    <asp:TextBox ID="searchInput" runat="server" Width="50%" Height="28px"></asp:TextBox>
                    <asp:Button ID="search" runat="server" Text="Search"  Height="30px"/>
                </td>
            </tr>
            <tr>
                <td class="style6" colspan="2">
                    <asp:GridView ID="GridView1" Width="100%" runat="server" 
                        AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="AccessDataSource1">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                SortExpression="ID" />
                            <asp:BoundField DataField="fname" HeaderText="Name" SortExpression="fname" />
                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                            <asp:BoundField DataField="mobile" HeaderText="Mobile" 
                                SortExpression="mobile" />
                            <asp:BoundField DataField="subject" HeaderText="Subject" 
                                SortExpression="subject" />
                            <asp:BoundField DataField="gender" HeaderText="Gender" 
                                SortExpression="gender" />
                            <asp:BoundField DataField="password" HeaderText="Password" 
                                SortExpression="password" />
                        </Columns>
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="D:\College\Sem5\asp\projects\crudoperation\user\App_Data\crudoperation.accdb" 
                        DeleteCommand="DELETE FROM [crud] WHERE [ID] = ?" 
                        InsertCommand="INSERT INTO [crud] ([ID], [fname], [email], [mobile], [subject], [gender], [password]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
                        SelectCommand="SELECT * FROM [crud] ORDER BY [ID]" 
                        UpdateCommand="UPDATE [crud] SET [fname] = ?, [email] = ?, [mobile] = ?, [subject] = ?, [gender] = ?, [password] = ? WHERE [ID] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="mobile" Type="String" />
                            <asp:Parameter Name="subject" Type="String" />
                            <asp:Parameter Name="gender" Type="String" />
                            <asp:Parameter Name="password" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="mobile" Type="String" />
                            <asp:Parameter Name="subject" Type="String" />
                            <asp:Parameter Name="gender" Type="String" />
                            <asp:Parameter Name="password" Type="String" />
                            <asp:Parameter Name="ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
