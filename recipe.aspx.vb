
Partial Class recipe
    Inherits System.Web.UI.Page

    Protected Sub dtlvw_recipes_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles dtlvw_recipes.ItemDeleted
        Dim itemdeleted As String = e.Values("name").ToString()

        lbl_deletedrecipe.Text = itemdeleted & " has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=default.aspx")

    End Sub



    Protected Sub dtlvw_recipes_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles dtlvw_recipes.ItemUpdated

        Response.AddHeader("REFRESH", "3;URL=default.aspx")

    End Sub
End Class
