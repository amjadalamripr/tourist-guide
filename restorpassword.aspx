<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.Master" AutoEventWireup="true" CodeBehind="restorpassword.aspx.cs" Inherits="TouristGuide.restorpassword" %>
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
          <h2>إستعادة كلمة المرور</h2>
         </div>

    

        <div class="row mt-5">
   <div class="col-lg-4">
       </div>
  <div class="col-lg-4">
       
              <div class="form-group mt-3">
                  <asp:TextBox ID="Email" runat="server" class="form-control" placeholder="أدخل بريدك الإلكتروني" required="" TextMode="Email"></asp:TextBox>
               </div>
              
              <div class="my-3">
                 <%-- <a href="#">Forgot password?</a>--%>
                </div>
     
              <div class="text-center">    

                   <asp:Button ID="Button1" runat="server" Text="إستعادة كلمة المرور" OnClick="Button1_Click" />
                
              </div>
 
     </div>
       <div class="col-lg-4">
       </div>
        </div>

      </div>
    </section> 
</asp:Content>
