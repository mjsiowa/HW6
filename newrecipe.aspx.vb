﻿
Partial Class NewRecipe
    Inherits System.Web.UI.Page



    
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Fmvw_newrecipe.Focus()

    End Sub

    Protected Sub Fmvw_newrecipe_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles Fmvw_newrecipe.ItemInserted
        Response.Redirect("./Default.aspx")
    End Sub
End Class
