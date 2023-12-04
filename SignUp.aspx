<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="TouristGuide.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="contact" class="contact">
        <div class="container">

            <div class="row alert alert-success">

                    <div class="col-lg-12 ">
                    <asp:Label ID="MBError" runat="server" Text="" Style="font-weight: 700;  color: black"    ></asp:Label>  
                </div>
            </div>
            <br />
            <h2>التسجيل</h2>

            <div class="row mt-5">
                <div class="col-lg-12">
                </div>
                <div class="col-lg-4">

                    <div class="form-group mt-3">
                        <asp:TextBox ID="FullName" runat="server" class="form-control" placeholder="الإسم كامل" MaxLength="40" required="" onKeyPress="return onlychar(this);"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">

                    <div class="form-group mt-3">
                        <asp:TextBox ID="Username" runat="server" class="form-control" placeholder="إسم المستخدم" required="" MaxLength="40" ></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-4">

                    <div class="form-group mt-3">
                        <asp:TextBox ID="Password" runat="server" class="form-control" placeholder="كلمة المرور" required="" MaxLength="40" TextMode="Password"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-4">

                    <div class="form-group mt-3">
                        <asp:DropDownList ID="DGender" runat="server" class="form-control" required="">
                            <asp:ListItem>ذكر</asp:ListItem>
                            <asp:ListItem>أنثى</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-lg-4">

                    <div class="form-group mt-3">
                        <asp:TextBox ID="Age" runat="server" class="form-control" placeholder="العمر" required="" onKeyPress="return onlyNumbers(this);" MaxLength="2" ></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-4">

                    <div class="form-group mt-3">
                        <asp:TextBox ID="TelephoneNumber" MaxLength="10"  runat="server" class="form-control" placeholder="رقم الهاتف" required="" onKeyPress="return onlyNumbers(this);"></asp:TextBox>
                    </div>
                </div>              
                <div class="col-lg-4">

                    <div class="form-group mt-3">
                        <asp:TextBox ID="Address" runat="server" class="form-control" placeholder="العنوان" required="" MaxLength="40" ></asp:TextBox>
                    </div>
                </div>        
                
                <div class="col-lg-4">

                    <div class="form-group mt-3">
                        <asp:TextBox ID="Email" runat="server" class="form-control" placeholder="البريد الإلكتروني" required="" TextMode="Email" MaxLength="40" > </asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12">
                    <hr />
                </div>
                <div class="col-lg-12">


                    <asp:Button ID="btnadd" runat="server" Text="تسجيل سائح جديد" OnClick="btnadd_Click" />

      


                </div>
            
            </div>
        </div>

    </section>
</asp:Content>
