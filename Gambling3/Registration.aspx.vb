'Project : Castle Hotels online Reservation Form
'Author:City Hussen
'Date:07/31/2022
'Purpose:The following web application will request reservation 
'for Castle Hotels. This web site will compute
'The cost of the number of nights and city(s) selected

Option Strict On
Partial Class WebForm1
    
Inherits System.Web.UI.Page
Protected Sub btnSubmit_Click(sender As object,e As EventArgs)Handles btnSubmit.Click
        'The btnSubmit click event will calculate the cost of the hostel
        'Based on the city selected and the number of nights spent

        'Declare and initialize variables
        Dim decEdinburghCost As Decimal = 17D
        Dim decFlorenceCost As Decimal = 23D
        Dim decBarcelonaCost As Decimal = 28D
        Dim strName As String
        Dim strEmail As String
        Dim decCityCost As Decimal = 0D
        Dim intNumberOfNights As Integer
        Dim strMessage As String

        'Trim additional spaces that are entered by the user
        strName = txtName.Text.Trim
        strEmail = txtEmail.Text.Trim
        lblReservations.Text = " "
        If Not (ChkEdinburgh.Checked Or ChkFlorence.Checked Or ChkBarcelona.Checked) Then
            lblCityError.Visible = True
            If cldArrival.SelectedDate < cldArrival.TodaysDate Then
                lblCalendarError.Visible = True
            Else
                lblCalendarError.Visible = False
            End If
        Else
            lblCityError.Visible = False
            If cldArrival.SelectedDate >= cldArrival.TodaysDate Then
                lblCalendarError.Visible = False

                'Calculate the cost of the tent(s)selected by
                If ChkEdinburgh.Checked Then
                    decCityCost += decEdinburghCost
                End If
                If ChkBarcelona.Checked Then
                    decCityCost += decFlorenceCost
                End If
                If ChkBarcelona.Checked Then
                    decCityCost += decBarcelonaCost
                End If
                intNumberOfNights = Convert.ToInt32(ddlNights.SelectedItem.Text)
                decCityCost = intNumberOfNights * decCityCost

                strMessage = ”A reservation has been made for:” & "<BR>" _
    & strName & "<BR>” & "Email:" & strEmail & "<BR>"
                strMessage &= "The Hostel(s) cost is:" _
    & decCityCost.ToString("c") & "<BR>"
                strMessage &= "Arrival Date:" _
    & cldArrival.SelectedDate.ToShortDateString() _
    & "<BR>" & "for " & intNumberOfNights & " Night(s)"
                lblReservations.Text = strMessage
        Else
        lblCalendarError.Visible = True
        End If
        End If

    End Sub
End Class
