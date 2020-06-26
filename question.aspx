<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="question.aspx.cs" Inherits="exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="heardcontentplaceholder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontentplaceholder" runat="Server">
    <h2 class="m-4">Answer all the questions</h2>
    
<table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td>
            Source Language
        </td>
        <td>
            <asp:DropDownList ID="ddlSource" runat="server">
                <asp:ListItem Value="AF" Text="Afrikanns" />
                <asp:ListItem Value="SQ" Text="Albanian" />
                <asp:ListItem Value="AR" Text="Arabic" />
                <asp:ListItem Value="HY" Text="Armenian" />
                <asp:ListItem Value="EU" Text="Basque" />
                <asp:ListItem Value="BN" Text="Bengali" />
                <asp:ListItem Value="BG" Text="Bulgarian" />
                <asp:ListItem Value="CA" Text="Catalan" />
                <asp:ListItem Value="KM" Text="Cambodian" />
                <asp:ListItem Value="ZH" Text="Chinese (Mandarin)" />
                <asp:ListItem Value="HR" Text="Croation" />
                <asp:ListItem Value="CS" Text="Czech" />
                <asp:ListItem Value="DA" Text="Danish" />
                <asp:ListItem Value="NL" Text="Dutch" />
                <asp:ListItem Value="EN" Text="English" Selected="True" />
                <asp:ListItem Value="ET" Text="Estonian" />
                <asp:ListItem Value="FJ" Text="Fiji" />
                <asp:ListItem Value="FI" Text="Finnish" />
                <asp:ListItem Value="FR" Text="French" />
                <asp:ListItem Value="KA" Text="Georgian" />
                <asp:ListItem Value="DE" Text="German" />
                <asp:ListItem Value="EL" Text="Greek" />
                <asp:ListItem Value="GU" Text="Gujarati" />
                <asp:ListItem Value="HE" Text="Hebrew" />
                <asp:ListItem Value="HI" Text="Hindi" />
                <asp:ListItem Value="HU" Text="Hungarian" />
                <asp:ListItem Value="IS" Text="Icelandic" />
            </asp:DropDownList>
        </td>
        <td>
        </td>
        <td>
            Target Language
        </td>
        <td>
            <asp:DropDownList ID="ddlTarget" runat="server">
                <asp:ListItem Value="AF" Text="Afrikanns" />
                <asp:ListItem Value="SQ" Text="Albanian" />
                <asp:ListItem Value="AR" Text="Arabic" />
                <asp:ListItem Value="HY" Text="Armenian" />
                <asp:ListItem Value="EU" Text="Basque" />
                <asp:ListItem Value="BN" Text="Bengali" />
                <asp:ListItem Value="BG" Text="Bulgarian" />
                <asp:ListItem Value="CA" Text="Catalan" />
                <asp:ListItem Value="KM" Text="Cambodian" />
                <asp:ListItem Value="ZH" Text="Chinese (Mandarin)" />
                <asp:ListItem Value="HR" Text="Croation" />
                <asp:ListItem Value="CS" Text="Czech" />
                <asp:ListItem Value="DA" Text="Danish" />
                <asp:ListItem Value="NL" Text="Dutch" />
                <asp:ListItem Value="EN" Text="English" />
                <asp:ListItem Value="ET" Text="Estonian" />
                <asp:ListItem Value="FJ" Text="Fiji" />
                <asp:ListItem Value="FI" Text="Finnish" />
                <asp:ListItem Value="FR" Text="French" Selected="True" />
                <asp:ListItem Value="KA" Text="Georgian" />
                <asp:ListItem Value="DE" Text="German" />
                <asp:ListItem Value="EL" Text="Greek" />
                <asp:ListItem Value="GU" Text="Gujarati" />
                <asp:ListItem Value="HE" Text="Hebrew" />
                <asp:ListItem Value="HI" Text="Hindi" />
                <asp:ListItem Value="HU" Text="Hungarian" />
                <asp:ListItem Value="IS" Text="Icelandic" />
            </asp:DropDownList>
        </td>
        <td>
            <asp:Button ID="Button1" Text="Translate" runat="server" OnClick="Translate" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:TextBox ID="txtSource" runat="server" TextMode="MultiLine" />
        </td>
        <td>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtTarget" runat="server" TextMode="MultiLine" />
        </td>
        <td>
        </td>
    </tr>
</table>

    <hr />
    <asp:TextBox ID="getstringuser" runat="server" Visible="false"></asp:TextBox>
    <asp:GridView ID="gridview_examquestion" runat="server" AutoGenerateColumns="False" GridLines="None">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("question_id") %>' Visible="false"></asp:Label>
                    <asp:Label ID="lbl_question" runat="server" Text='<%# Eval("question_name") %>'></asp:Label>
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("option_one") %>' ID="option_one" runat="server" />
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("option_two") %>' ID="option_two" runat="server" />
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("option_three") %>' ID="option_three" runat="server" />
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("option_four") %>' ID="option_four" runat="server" />
                    <hr />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btn_submit_Click" />
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <asp:Panel ID="panel_questshow_warning" runat="server" Visible="false">
                    <br />
                    <div class="alert alert-danger text-center">
                        <asp:Label ID="lbl_questshowwarning" runat="server" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>

