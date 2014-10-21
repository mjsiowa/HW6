
Partial Class NewRecipe
    Inherits System.Web.UI.Page



    Protected Sub dtlvw_newrecipes_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles dtlvw_newrecipes.ItemInserted
        Response.Redirect("./Default.aspx")

    End Sub

    
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        dtlvw_newrecipes.Focus()

    End Sub
End Class
