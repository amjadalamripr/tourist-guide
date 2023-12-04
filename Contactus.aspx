<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="TouristGuide.Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="contact" class="contact">
        <div class="container">
            <div class="row  alert-success">

                <div class="col-lg-12 ">
                    <asp:Label ID="MBError" runat="server" Text="" Style="font-weight: 700; color: black"></asp:Label>
                </div>
            </div>
            <br />
            <div class="section-title">
                <h2>تواصل معنا</h2>
            </div>

            <div class="row mt-5">
                <div class="col-lg-12 mt-5 mt-lg-0">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <asp:TextBox ID="name" runat="server" placeholder="الإسم" required="" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6 form-group mt-3 mt-md-0">
                            <asp:TextBox ID="email" runat="server" placeholder="البريد الأليكتروني" required="" class="form-control" TextMode="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group mt-3">
                        <asp:TextBox ID="subject" runat="server" placeholder="الموضوع" required="" class="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group mt-3">
                        <asp:TextBox ID="message" runat="server" placeholder="الرسالة" required="" class="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="my-3">
                    </div>
                    <div class="text-center">
                        <asp:Button ID="btndend" runat="server" Text="أرسال بريد إليكتروني" OnClick="btndend_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
