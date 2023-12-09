<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AzimAndSons._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="padding:15px; font-family: Arial; font-weight: bold; text-transform: none; z-index: auto;">

       

        <br />
        <asp:Label ID="Label1" runat="server" Text="User Registration" Font-Names="Arial" Font-Size="X-Large" Font-Bold="True" ForeColor="#0033CC"></asp:Label>


       

        <br />


       

        <br />
        <table class="nav-justified" style="height: 261px; width: 97%">
            <tr>
                <td style="width: 286px; height: 34px">
                    <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="User ID :"></asp:Label>
                </td>
                <td style="height: 34px">
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="200px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" BackColor="#66FFFF" Font-Bold="True" Height="40px" OnClick="Button4_Click" Text="Get" Width="100px" />
                </td>
            </tr>
            <tr>
                <td style="width: 286px; height: 34px">
                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="First Name :"></asp:Label>
                </td>
                <td style="height: 34px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 286px; height: 36px;" class="modal-sm">
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Last Name :"></asp:Label>
                </td>
                <td style="height: 36px">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 286px; height: 35px;">
                    <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Email :"></asp:Label>
                </td>
                <td style="height: 35px">
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 286px; height: 35px;" class="modal-sm">
                    <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Password :"></asp:Label>
                </td>
                <td style="height: 35px">
                    <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 286px; height: 37px;">
                    <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Confirm Password :"></asp:Label>
                </td>
                <td style="height: 37px">
                    <asp:TextBox ID="TextBox6" runat="server" Height="30px" style="margin-left: 0" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 286px" class="modal-sm">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 286px; height: 40px;" class="modal-sm"></td>
                <td style="height: 40px">
                    <asp:Button ID="Button1" runat="server" BackColor="#66FFFF" Font-Bold="True" Height="40px" OnClick="Button1_Click" Text="Insert" Width="100px" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#66FFFF" Font-Bold="True" Height="40px" OnClick="Button2_Click" Text="Update" Width="100px" />
                &nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#66FFFF" Font-Bold="True" Height="40px" OnClick="Button3_Click" Text="Delete" Width="100px" OnClientClick="return confirm('Are you sure to delete');" />
                &nbsp;
                    <asp:Button ID="Button5" runat="server" BackColor="#66FFFF" Font-Bold="True" Height="40px" OnClick="Button5_Click" Text="Load" Width="100px" />
                </td>
            </tr>
            <tr>
                <td style="width: 286px" class="modal-sm">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" Width="1142px">
                        <HeaderStyle BackColor="#6666FF" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
        </table>


       

    </div>

</asp:Content>
