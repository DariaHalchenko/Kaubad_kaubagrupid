<%@ Page Title="Kaubad" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Kaubad_kaubagrupid.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>tabelite kaubad ja kaubagrupid sisu<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." GridLines="Horizontal" Width="370px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                <asp:BoundField DataField="hind" HeaderText="hind" SortExpression="hind" />
                <asp:BoundField DataField="grupinimi" HeaderText="grupinimi" SortExpression="grupinimi" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kaubadConnectionString2 %>" DeleteCommand="DELETE FROM [kaubad] WHERE [id] = @id" InsertCommand="INSERT INTO [kaubad] ([nimetus], [kaubagrupi_id], [hind]) VALUES (@nimetus, @kaubagrupi_id, @hind)" SelectCommand="SELECT kaubad.nimetus, kaubad.hind, kaubagrupid.grupinimi FROM kaubad INNER JOIN kaubagrupid ON kaubad.kaubagrupi_id = kaubagrupid.id" UpdateCommand="UPDATE [kaubad] SET [nimetus] = @nimetus, [kaubagrupi_id] = @kaubagrupi_id, [hind] = @hind WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nimetus" Type="String" />
                    <asp:Parameter Name="kaubagrupi_id" Type="Int32" />
                    <asp:Parameter Name="hind" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nimetus" Type="String" />
                    <asp:Parameter Name="kaubagrupi_id" Type="Int32" />
                    <asp:Parameter Name="hind" Type="Decimal" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</h3>
    </main>
</asp:Content>
