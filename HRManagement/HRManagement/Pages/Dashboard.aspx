<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="HRManagement.Pages.WebForm2" %>
<%@ OutputCache Duration="30" VaryByParam="*" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        div {
            float: none;
            z-index: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 class="text-center"> Human Resource Management System</h2>
        <div>
                Server Time : <asp:Label ID="lbl01" runat="server"></asp:Label>
        <br />
        Client Time : 
        <script type="text/javascript"> 
            type = "text/javascript" >
                document.write(Date());
        </script>
    </div>
    <div class="center-block">
         &nbsp;</div>

    <div >
        <p> Human resource management (HRM or HR) is the strategic approach to the effective management of people in an organization so that they help the business to gain a competitive advantage. It is designed to maximize employee performance in service of an employer's strategic objectives.[1][need quotation to verify] HR is primarily concerned with the management of people within organizations, focusing on policies and on systems.[2] HR departments are responsible for overseeing employee-benefits design, employee recruitment, training and development, performance appraisal, and Reward management (e.g., managing pay and benefit systems).[3] HR also concerns itself with organizational change and industrial relations, that is, the balancing of organizational practices with requirements arising from collective bargaining and from governmental laws.[4][need quotation to verify]
Human resources' overall purpose is to ensure that the organization is able to achieve success through people.[5] HR professionals manage the human capital of an organization and focus on implementing policies and processes. They can specialize in recruiting, training, employee-relations or benefits, recruiting specialists, find, and hire top talent. Training and development professionals ensure that employees are trained and have continuous development. This is done through training programs, performance evaluations, and reward programs. Employee relations deals with concerns of employees when policies are broken, such as in cases involving harassment or discrimination. Employee benefits' role includes developing compensation structures, family-leave programs, discounts and other benefits that employees can get. On the other side of the field are human resources generalists or business partners. These human-resources professionals could work in all areas or be labor-relations representatives working with unionized employees.
HR is a product of the human relations movement of the early 20th century when researchers began documenting ways of creating business value through the strategic management of the workforce.[citation needed] It was initially dominated by transactional work, such as payroll and benefits administration, but due to globalization, company consolidation, technological advances, and further research, HR as of 2015 focuses on strategic initiatives like mergers and acquisitions, talent management, succession planning, industrial and labor relations, and diversity and inclusion. In the current global work environment, most companies focus on lowering employee turnover and on retaining the talent and knowledge held by their workforce.[citation needed] New hiring not only entails a high cost but also increases the risk of a newcomer not being able to replace the person who worked in a position before. HR departments strive to offer benefits that will appeal to workers, thus reducing the risk of losing employee commitment and psychological ownership.

</p>
    </div>
   
</asp:Content>
