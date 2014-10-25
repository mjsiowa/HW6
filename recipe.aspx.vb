
Partial Class recipe
    Inherits System.Web.UI.Page


    
    Protected Sub fmvw_receipe_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles fmvw_receipe.ItemDeleted
        Dim itemdeleted As String = e.Values("name").ToString()

        lbl_deletedrecipe.Text = itemdeleted & " has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=default.aspx")
    End Sub


    Protected Sub fmvw_receipe_ItemUpdated1(sender As Object, e As FormViewUpdatedEventArgs) Handles fmvw_receipe.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=default.aspx")
    End Sub
End Class
