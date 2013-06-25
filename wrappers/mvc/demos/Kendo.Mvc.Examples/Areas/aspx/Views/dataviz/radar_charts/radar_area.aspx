﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/DataViz.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
<div class="chart-wrapper">
    <%= Html.Kendo().Chart()
        .Name("chart")
        .Title("Employment candidate review")
        .Legend(legend => legend
            .Position(ChartLegendPosition.Bottom)
        )
        .Series(series =>
        {
            series.RadarArea(new double[] { 10, 3, 3, 10, 2, 10 })
                .Name("Andrew Dodsworth");

            series.RadarArea(new double[] { 9, 7, 7, 9, 6, 7 })
                .Name("Margaret Peacock");

            series.RadarArea(new double[] { 4, 10, 10, 5, 5, 4 })
                .Name("Nancy Callahan");
        })
        .CategoryAxis(axis => axis
            .Categories("Experience", "Communication", "Friendliness",
                        "Subject knowledge", "Presentation", "Education")
            .MajorGridLines(lines => lines.Visible(false))
        )
        .ValueAxis(axis => axis
            .Numeric()
            .Labels(labels => labels.Format("{0}%"))
            .Line(line => line.Visible(false))
        )
    %>
</div>
</asp:Content>
