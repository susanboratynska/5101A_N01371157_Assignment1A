<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="N01351157_BusTourBooking.aspx.cs" Inherits="HTTP5101_SusanBoratynska.N01351157_BusTourBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bus Tour Booking: Survey</title>
</head>
<body>
    <form id="form1" runat="server" method="POST" action="http://sandbox.bittsdevelopment.com/humber/httpdebug/acceptdata.php">
         <section>
            <h1> Bus Tour Booking: Survey</h1>
            <p> Thank you for suing our online booking tool. <br/>
                Please tell us about your bus tour experience. Your feedback is appreciated and helps us improve our services. 
            </p>
        </section>
         <section>
            <label for="html_confirmation_number">Please enter your booking confirmation number.</label>
            <div><asp:TextBox runat="server" ID="html_confirmation_number"></asp:TextBox></div>
        </section>
        <section>
            <label for="aspx_country_reside">Which country do you currently reside in?</label>
            <div>
                 <asp:RadioButtonList runat="server" ID="aspx_country_reside">
                     <asp:ListItem Text="Canada" Value="canada"></asp:ListItem>
                     <asp:ListItem Text="United States" Value="usa"></asp:ListItem>
                     <asp:ListItem Text="Mexico" Value="mexico"></asp:ListItem>
                 </asp:RadioButtonList>
            </div>
        </section>
        <section>
            <label>Which of the following cities did you visit on your most recent bus tour? Please select all that apply.</label>
            <div>
                 <asp:CheckBoxList runat="server" ID="aspx_visiting_city">
                     <asp:ListItem Text="Toronto" Value="toronto"></asp:ListItem>
                     <asp:ListItem Text="New York" Value="newyork"></asp:ListItem>
                     <asp:ListItem Text="Mexico City" Value="mexicocity"></asp:ListItem>
                 </asp:CheckBoxList>
            </div>
        </section>
        <section>
            <label>Would you be interested if we offered bus tour to any of the following cities? Please select all that apply.</label>
            <div>
                 <asp:CheckBoxList runat="server" ID="aspx_future_cities">
                     <asp:ListItem Text="Chicago" Value="chicago"></asp:ListItem>
                     <asp:ListItem Text="Boston" Value="boston"></asp:ListItem>
                     <asp:ListItem Text="Vancouver" Value="vancouver"></asp:ListItem>
                 </asp:CheckBoxList>
            </div>
        </section>
        <section>
            <label>Was our online booking services easy to use?</label>
            <div>
                 <asp:RadioButtonList runat="server" ID="aspx_user_friendly">
                      <asp:ListItem Text="Yes, it was easy to use." Value="yes"></asp:ListItem>
                      <asp:ListItem Text="Somewhat easy to use." Value="somewhat"></asp:ListItem>
                      <asp:ListItem Text="No, it was difficult to use." Value="no"></asp:ListItem>
                 </asp:RadioButtonList>
            </div>
        </section>
        <section>
            <label>Would you recommend our online booking services to family or friends?</label>
            <div>
                <asp:DropDownList runat="server" ID="aspx_booking_recommendation">
                     <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                     <asp:ListItem Text="No" Value="no"></asp:ListItem>
                     <asp:ListItem Text="Maybe" Value="maybe"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </section>
        <section>
            <asp:Button runat="server" Text="Submit" />
        </section>
    </form>
</body>
</html>
