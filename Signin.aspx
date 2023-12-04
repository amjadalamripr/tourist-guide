<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="TouristGuide.Signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         
    <section id="contact" class="contact">
      <div class="container">
          
            <div class="row  alert-success">

                    <div class="col-lg-12 ">
                    <asp:Label ID="MBError" runat="server" Text="" Style="font-weight: 700;  color: black"    ></asp:Label>  
                </div>
            </div>
          <br />
        <div class="section-title">
          <h2>تسجيل الدخول للموقع</h2>
         </div>
        <div class="row mt-5">
   <div class="col-lg-4">
       </div>
  <div class="col-lg-4">
       
              <div class="form-group mt-3">
                  
                  <asp:TextBox ID="Username" runat="server" class="form-control" placeholder="إسم المستخدم" required=""></asp:TextBox>
               </div>
              <div class="form-group mt-3">
               <asp:TextBox ID="Password" runat="server" class="form-control" placeholder="كلمة المرور" required="" TextMode="Password"></asp:TextBox>
                  <br />
                  
               </div>
              <div class="my-3">
                 <%-- <a href="#">Forgot password?</a>--%>
                </div>
     
              <div class="text-center">    

                   <asp:Button ID="btnlogin" runat="server" Text="تسجيل الدخول" OnClick="btnlogin_Click" />&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;	
                  <a  href="restorpassword.aspx">نسيت كلمة المرور ؟</a>
              </div>
     </div>
       <div class="col-lg-12">
  
       </div>
        </div>

      </div>
    </section> 
</asp:Content>
