<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="End.aspx.cs" Inherits="QuestionDemo_II.End" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>提交结果</title>
    <style>
.beigo{
    width: 100%;
    height:200px;
    text-align: center;
    color:#000;
    margin-top: 20%;
    font-family:'STKait';
}
    </style>
</head>
<body>
    <div class="beigo">
        <asp:Image ID="Image1" runat="server" />
        
        <h1>
            <asp:Label ID="endLable" runat="server" Text=""></asp:Label>

        </h1>
    </div>

    <script>
    
    </script>
</body>
</html>
