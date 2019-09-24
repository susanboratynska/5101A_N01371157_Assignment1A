<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="N01371157_BusTourBooking.aspx.cs" Inherits="HTTP5101_SusanBoratynska.N01351157_BusTourBooking" %>

<!DOCTYPE html>

<!--Hi Christine: I've revised some of my questions from my previous submission (1a) so I could complete assignment 2a correctly. 
    I made a mistake with my initial submission and made it more of a "review" than a "booking" form -->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bus Tour Booking: Survey</title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- removed this section to check code behind: <method="POST" action="http://sandbox.bittsdevelopment.com/humber/httpdebug/acceptdata.php"-->
         <section>
            <h1> Bus Tour Booking: Survey</h1>
            <p> Thank you for using our online booking tool. <br/>
                Please tell us about your bus tour experience. Your feedback is appreciated and helps us improve our services. 
            </p>
         </section>
         <section>
            <h2>Please enter your booking confirmation number.</h2>
                <div>
                     <asp:TextBox runat="server" ID="confirmation_number"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your confirmation number." ControlToValidate="confirmation_number" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:CompareValidator runat="server" ControlToValidate="confirmation_number" ValueToCompare="12345" Operator="Equal" ErrorMessage="Please enter a valid confirmation number." ForeColor="Red" ></asp:CompareValidator>
                     <%--//SOURCE 1: Bittle, C. HTTP5101 - Class Lesson 3 Purpose: used to reference how to create a validation expression.--%> 
                 </div>
            </section>
        <section>
            <h2>How satisfied were you with the cleanliness of your bus?</h2>
                 <div>
                      <asp:RadioButtonList runat="server" ID="review_bus_cleanliness"> 
                          <asp:ListItem Text="1: Not satisified at all" Value="1"></asp:ListItem>
                          <asp:ListItem Text="2" Value="2"></asp:ListItem>
                          <asp:ListItem Text="3" Value="3"></asp:ListItem>
                          <asp:ListItem Text="4" Value="4"></asp:ListItem>
                          <asp:ListItem Text="5: Extremely satisfied" Value="5"></asp:ListItem>
                      </asp:RadioButtonList>
                      <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select one of the following options." ControlToValidate="review_bus_cleanliness" ForeColor="Red"></asp:RequiredFieldValidator>
                   <%--//SOURCE 1: Bittle, C. HTTP5101 - Class Lesson 3 Purpose: used to reference how to create a validation expression.--%> 
                 </div>
        </section>
        <section>
            <h2>Which of the following cities did you visit on your most recent bus tour? Please select all that apply.</h2>
                 <div>
                     <asp:CheckBoxList runat="server" ID="review_visiting_city">
                         <asp:ListItem Text="Toronto" Value="toronto"></asp:ListItem>
                         <asp:ListItem Text="New York" Value="newyork"></asp:ListItem>
                         <asp:ListItem Text="Mexico City" Value="mexicocity"></asp:ListItem>
                     </asp:CheckBoxList>
                     <asp:CustomValidator runat="server" ClientValidationFunction="ValidateCheckBoxList" EnableClientScript="true" ErrorMessage="Please select at least one of the following options." ForeColor="Red"></asp:CustomValidator>
                         <script type="text/javascript">
                             function ValidateCheckBoxList(sender, args) {
                                 var checkBoxList = document.getElementById('<%=review_visiting_city.ClientID %>');
                                 var checkboxes = checkBoxList.getElementsByTagName("input");
                                 var isValid = false;
                                 for (var i = 0; i < checkboxes.length; i++) {
                                     if (checkboxes[i].checked) {
                                         isValid = true;
                                         break;
                                     }
                                 } args.IsValid = isValid;
                                 //SOURCE: Kahn M. (2013). ASP SNIPPITS. Date accessed: September 20, 2019. https://www.aspsnippets.com/Articles/Validate-ASPNet-CheckBoxList-at-least-one-CheckBox-checked-using-Custom-Validator.aspx?fbclid=IwAR10-3u0IfaiqB-NDo0Xx6ImiyVnUwSUXX87HWbW2JCSAQc3vXLzzUOEi3A  
                                 //PURPOSE: to create a custom validator using javascript
                             }              
                         </script> 
                </div>
        </section>
        <section>
            <h2>Would you be interested if we offered bus tour to any of the following cities? Please select all that apply.</h2>
                <div>
                     <asp:CheckBoxList runat="server" ID="review_future_cities">
                         <asp:ListItem Text="Chicago" Value="chicago"></asp:ListItem>
                         <asp:ListItem Text="Boston" Value="boston"></asp:ListItem>
                         <asp:ListItem Text="Vancouver" Value="vancouver"></asp:ListItem>
                     </asp:CheckBoxList>
                     <asp:CustomValidator runat="server" ClientValidationFunction="ValidateCheckBoxList" EnableClientScript="true"  ErrorMessage="Please select at least one of the following options." ForeColor="Red"></asp:CustomValidator>
                        <script type="text/javascript">
                            function ValidateCheckBoxList(sender, args) {
                                var checkBoxList = document.getElementById('<%=review_future_cities.ClientID%>');
                                var checkboxes = checkBoxList.getElementsByTagName("input");
                                var isValid = false;
                                for (var i = 0; i < checkboxes.length; i++) {
                                    if (checkboxes[i].checked) {
                                        isValid = true;
                                        break;
                                    }
                                } args.IsValid = isValid;
                            }//SOURCE: Kahn M. (2013). ASP SNIPPITS. Date accessed: September 20, 2019. https://www.aspsnippets.com/Articles/Validate-ASPNet-CheckBoxList-at-least-one-CheckBox-checked-using-Custom-Validator.aspx?fbclid=IwAR10-3u0IfaiqB-NDo0Xx6ImiyVnUwSUXX87HWbW2JCSAQc3vXLzzUOEi3A
                             //PURPOSE: to create a custom validator using javascript
                        </script>                  
                </div>
        </section>
        <section>
            <h2>How would you rate your most recent bus tour?</h2>
            <div>
                 <asp:RadioButtonList runat="server" ID="review_trip_satisfaction"> 
                      <asp:ListItem Text="1: Not satisified at all" Value="1"></asp:ListItem>
                      <asp:ListItem Text="2" Value="2"></asp:ListItem>
                      <asp:ListItem Text="3" Value="3"></asp:ListItem>
                      <asp:ListItem Text="4" Value="4"></asp:ListItem>
                      <asp:ListItem Text="5: Extremely satisfied" Value="5"></asp:ListItem>
                 </asp:RadioButtonList>
                 <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select one of the following options." ControlToValidate="review_trip_satisfaction" ForeColor="Red"></asp:RequiredFieldValidator>
                 <%--//SOURCE 1: Bittle, C. HTTP5101 - Class Lesson 3 Purpose: used to reference how to create a validation expression.--%> 
            </div>
        </section>
        <section>
            <h2>Would you recommend our online booking services to family or friends?</h2>
            <div>
                <asp:DropDownList runat="server" ID="review_booking_recommendation">
                     <asp:ListItem Text="--Choose One--." Value=""></asp:ListItem>
                     <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                     <asp:ListItem Text="No" Value="no"></asp:ListItem>
                     <asp:ListItem Text="Maybe" Value="maybe"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select from the drop-down list." ControlToValidate="review_booking_recommendation" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </section>
         <section>
            <h2>Please provide your phone number:</h2>
            <div>
                <asp:TextBox runat="server" ID="user_phone_number"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" EnableClientScript="true" Display="Dynamic" ValidationExpression="[(]{0,1}[0-9]{3}[)]{0,1}(\s*|\-+)[0-9]{3}(\s*|\-+)[0-9]{4}" ErrorMessage="Please provide a valid phone number." ControlToValidate="user_phone_number" ForeColor="Red"></asp:RegularExpressionValidator> 
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" Display="Dynamic" ErrorMessage="Please enter a 9-digit phone number." ControlToValidate="user_phone_number" ForeColor="Red"></asp:RequiredFieldValidator>
                <%--//SOURCE 1: Bittle, C. HTTP5101 - Class Lesson 3 Purpose:reference how to create a validation expression.
                      SOURCE 2: Answered by Sebastian Job Bjornager Jensen (September 1, 2014) PURPROSE: How to us both a regular expression and required field validator using dynamic display.
                    https://stackoverflow.com/questions/13117041/asp-net-regular-expression-validator-with-required-field-validator--%>
            </div> 
        </section>
        <section>
            <asp:ValidationSummary runat="server" ShowSummary="true" />
        </section>
        <section id="confirmation" runat="server">
        </section>
        <section>
            <asp:Button runat="server" Text="Submit" />
        </section>
    </form>
</body>
</html>
