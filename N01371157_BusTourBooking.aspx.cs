using System;
using System.Web.UI;

namespace HTTP5101_SusanBoratynska
{
    public partial class N01351157_BusTourBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    // get and set variables
                    string Confirmation_Number = confirmation_number.Text.ToString();
                    int Review_Bus_Cleanliness = Convert.ToInt32(review_bus_cleanliness.SelectedValue);
                    // The 2 line items commented out below are Checkboxes; the assignment indicated we do not need to include these for this assignment.
                    // string Review_Visiting_City = review_visiting_city.SelectedValue.ToString(); 
                    // string Review_Future_Cities = review_future_cities.SelectedValue.ToString();
                    int Review_Trip_Satisfaction = Convert.ToInt32(review_trip_satisfaction.SelectedValue);
                    string Review_Booking_Recommendation = review_booking_recommendation.SelectedValue.ToString();
                    string User_Phone_Number = user_phone_number.Text.ToString();
                    string Booking_Reco_Text = "";

                    // Calculate avg review:
                    int Average_Review = (Review_Bus_Cleanliness + Review_Trip_Satisfaction) / 2;

                    // Create Summary:
                    if (Review_Booking_Recommendation == "yes")
                    {
                        Booking_Reco_Text = "You would recommend our services to a friend.";
                    }
                    if (Review_Booking_Recommendation == "no")
                    {
                        Booking_Reco_Text = "You would not recommend our services to a friend.";
                    }
                    if (Review_Booking_Recommendation == "maybe")
                    {
                        Booking_Reco_Text = "You might recommend our services to a friend.";
                    }

                    //SOURCE 1: Bittle, C. HTTP5101 - Class Lesson 3 Purpose: reference if statements for summary.

                    confirmation.InnerHtml = "Thank you for taking our survey.<br/>";
                    confirmation.InnerHtml += "Your overall trip rating was " + Average_Review + "<br/>";
                    confirmation.InnerHtml += "Here is a summary of your feedback: " +
                    "<ul>" +
                            "<li>Your booking confirmation is " + Confirmation_Number + "</li>" +
                            "<li>" + Booking_Reco_Text + "</li>" +
                            "<li>Your phone number is " + User_Phone_Number + "</li>" +
                    "</ul>";



                }
            }
        }
    }
}