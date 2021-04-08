<%-- 
    Document   : records
    Created on : 28 Mar, 2021, 5:53:56 PM
    Author     : Mayuri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="pack.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html lang="en" class="has-aside-left has-aside-mobile-transition has-navbar-fixed-top has-aside-expanded">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tables - Admin</title>

  <!-- Bulma is included -->
  <link rel="stylesheet" href="css/main.min.css">

  <!-- Fonts -->
  <link rel="dns-prefetch" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">
</head>
<body>
<div id="app">
<!--  <nav id="navbar-main" class="navbar is-fixed-top">
    <div class="navbar-brand">
      <a class="navbar-item is-hidden-desktop jb-aside-mobile-toggle">
        <span class="icon"><i class="mdi mdi-forwardburger mdi-24px"></i></span>
      </a>
      <div class="navbar-item has-control">
        <div class="control"><input placeholder="Search everywhere..." class="input"></div>
      </div>
    </div>
    <div class="navbar-brand is-right">
      <a class="navbar-item is-hidden-desktop jb-navbar-menu-toggle" data-target="navbar-menu">
        <span class="icon"><i class="mdi mdi-dots-vertical"></i></span>
      </a>
    </div>
    <div class="navbar-menu fadeIn animated faster" id="navbar-menu">
      <div class="navbar-end">
        <div class="navbar-item has-dropdown has-dropdown-with-icons has-divider is-hoverable">
          <a class="navbar-link is-arrowless">
            <span class="icon">
              <i class="mdi mdi-menu"></i>
            </span>
            <span>Sample Menu</span>
            <span class="icon">
              <i class="mdi mdi-chevron-down"></i>
            </span>
          </a>
          <div class="navbar-dropdown">
            <a href="profile.html" class="navbar-item">
              <span class="icon"><i class="mdi mdi-account"></i></span>
              <span>My Profile</span>
            </a>
            <a class="navbar-item">
              <span class="icon"><i class="mdi mdi-settings"></i></span>
              <span>Settings</span>
            </a>
            <a class="navbar-item">
              <span class="icon"><i class="mdi mdi-email"></i></span>
              <span>Messages</span>
            </a>
            <hr class="navbar-divider">
            <a class="navbar-item">
              <span class="icon"><i class="mdi mdi-logout"></i></span>
              <span>Log Out</span>
            </a>
          </div>
        </div>
        <div class="navbar-item has-dropdown has-dropdown-with-icons has-divider has-user-avatar is-hoverable">
          <a class="navbar-link is-arrowless">
            <div class="is-user-avatar">
              <span class="icon"><i class="mdi mdi-account"></i></span>
            </div>
            <div class="is-user-name"><span>John Doe</span></div>
            <span class="icon"><i class="mdi mdi-chevron-down"></i></span>
          </a>
          <div class="navbar-dropdown">
            <a href="profile.html" class="navbar-item">
              <span class="icon"><i class="mdi mdi-account"></i></span>
              <span>My Profile</span>
            </a>
            <a class="navbar-item">
              <span class="icon"><i class="mdi mdi-settings"></i></span>
              <span>Settings</span>
            </a>
            <a class="navbar-item">
              <span class="icon"><i class="mdi mdi-email"></i></span>
              <span>Messages</span>
            </a>
            <hr class="navbar-divider">
            <a class="navbar-item">
              <span class="icon"><i class="mdi mdi-logout"></i></span>
              <span>Log Out</span>
            </a>
          </div>
        </div>
        <a href="https://justboil.me/bulma-admin-template/one-html" title="About" class="navbar-item has-divider is-desktop-icon-only">
          <span class="icon"><i class="mdi mdi-help-circle-outline"></i></span>
          <span>About</span>
        </a>
        <a title="Log out" class="navbar-item is-desktop-icon-only">
          <span class="icon"><i class="mdi mdi-logout"></i></span>
          <span>Log out</span>
        </a>
      </div>
    </div>
  </nav>-->
<!--  <aside class="aside is-placed-left is-expanded">
    <div class="aside-tools">
      <div class="aside-tools-label">
        <span><b>Admin</b> One HTML</span>
      </div>
    </div>
    <div class="menu is-menu-main">
      <p class="menu-label">General</p>
      <ul class="menu-list">
        <li>
          <a href="index.html" class="has-icon">
            <span class="icon"><i class="mdi mdi-desktop-mac"></i></span>
            <span class="menu-item-label">Dashboard</span>
          </a>
        </li>
      </ul>
      <p class="menu-label">Examples</p>
      <ul class="menu-list">
        <li>
          <a href="tables.html" class="is-active has-icon">
            <span class="icon has-update-mark"><i class="mdi mdi-table"></i></span>
            <span class="menu-item-label">Tables</span>
          </a>
        </li>
        <li>
          <a href="forms.html" class="has-icon">
            <span class="icon"><i class="mdi mdi-square-edit-outline"></i></span>
            <span class="menu-item-label">Forms</span>
          </a>
        </li>
        <li>
          <a href="profile.html" class="has-icon">
            <span class="icon"><i class="mdi mdi-account-circle"></i></span>
            <span class="menu-item-label">Profile</span>
          </a>
        </li>
        <li>
          <a class="has-icon has-dropdown-icon">
            <span class="icon"><i class="mdi mdi-view-list"></i></span>
            <span class="menu-item-label">Submenus</span>
            <div class="dropdown-icon">
              <span class="icon"><i class="mdi mdi-plus"></i></span>
            </div>
          </a>
          <ul>
            <li>
              <a href="#void">
                <span>Sub-item One</span>
              </a>
            </li>
            <li>
              <a href="#void">
                <span>Sub-item Two</span>
              </a>
            </li>
          </ul>
        </li>
      </ul>
      <p class="menu-label">About</p>
      <ul class="menu-list">
        <li>
          <a href="https://admin-one-html.justboil.me/" target="_blank" class="has-icon">
            <span class="icon"><i class="mdi mdi-credit-card-outline"></i></span>
            <span class="menu-item-label">Premium Demo</span>
          </a>
        </li>
        <li>
          <a href="https://justboil.me/bulma-admin-template/one-html" class="has-icon">
            <span class="icon"><i class="mdi mdi-help-circle"></i></span>
            <span class="menu-item-label">About</span>
          </a>
        </li>
      </ul>
    </div>
  </aside>-->
  <section class="section is-title-bar">
    <div class="level">
      <div class="level-left">
        <div class="level-item">
          <ul>
            <li>Admin</li>
            <li>Tables</li>
          </ul>
        </div>
      </div>
      
      </div>
    </div>
  </section>
  <section class="hero is-hero-bar">
    <div class="hero-body">
      <div class="level">
        <div class="level-left">
          <div class="level-item"><h1 class="title">
            Records
          </h1></div>
        </div>
<!--        <div class="level-right" style="display: none;">
          <div class="level-item"></div>
        </div>-->
      </div>
    </div>
  </section>
  <section class="section is-main-section">

    <div class="card has-table">
      <header class="card-header">
        <p class="card-header-title">
          <span class="icon"><i class="mdi mdi-account-multiple"></i></span>
          Subjects Records
        </p>
        <a href="#" class="card-header-icon">
          <span class="icon"><i class="mdi mdi-reload"></i></span>
        </a>
      </header>
      <div class="card-content">
        <div class="b-table has-pagination">
          <div class="table-wrapper has-mobile-cards">
            <table class="table is-fullwidth is-striped is-hoverable is-fullwidth">
               <thead>
              <tr>
                <th></th>
                <th>Subject Name</th>
                <th>Department</th>
                <th>Year</th>
                <th>Faculty</th>
                <th>Lectures(till date)</th>
                <th></th>
              </tr>
              </thead>
              <tbody>
              <%
                                        DBConnection con = new DBConnection();
                                        DBConnection con2 = new DBConnection();
                                        ResultSet rs = con.select("SELECT * FROM tab_subject");
                                        int i = 1;
                                        while (rs.next()) {
                                            String tid=rs.getString("teach_id");
                                            ResultSet rs1 = con2.select("SELECT * FROM tab_teacher WHERE teach_id='"+tid+"'");

                                    %>
                                    <tr>
                                        <td> <%=i%> </td>
                                         
                                        <td><%=rs.getString("sub_name")%> </td>
                                        <td><%=rs.getString("sub_dept")%> </td>
                                        <td><%=rs.getString("sub_year")%> </td>
                                       <% if(rs1.next()){ %><td><%=rs1.getString("teach_name")%> </td> <% }%>
                                        <td><%=rs.getString("sub_lect")%> </td>
                                         
                                        
                                        
                                   </tr>
                                    <%
                                            i++;
                                        }
                                        con.close();
                                        con2.close();
                                    %>
              </tbody>
            </table>
          </div>
          <div class="notification">
            <div class="level">
              <div class="level-left">
                <div class="level-item">
                  <div class="buttons has-addons">
                    <button type="button" class="button is-active">1</button>
                    <button type="button" class="button">2</button>
                    <button type="button" class="button">3</button>
                  </div>
                </div>
              </div>
              <div class="level-right">
                <div class="level-item">
                  <small>Page 1 of 3</small>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

<!--    <div class="notification is-info">
      <div class="level">
        <div class="level-left">
          <div class="level-item">
            <div>
              <span class="icon"><i class="mdi mdi-buffer default"></i></span>
              <b>Tightly wrapped.</b> Table header becomes card header
            </div>
          </div>
        </div>
        <div class="level-right">
          <button type="button" class="button is-small is-white jb-notification-dismiss">Dismiss</button>
        </div>
      </div>
    </div>-->

    <div class="card has-table has-table-container-upper-radius">
      <div class="card-content">
          <header class="card-header">
        <p class="card-header-title">
          <span class="icon"><i class="mdi mdi-account-multiple"></i></span>
          Lectures Records
        </p>
        <a href="#" class="card-header-icon">
          <span class="icon"><i class="mdi mdi-reload"></i></span>
        </a>
      </header>
        <div class="b-table has-pagination">
          <div class="table-wrapper has-mobile-cards">
            <table class="table is-fullwidth is-striped is-hoverable is-fullwidth">
              <thead>
              <tr>
                
                  <th></th>
                <th>Subject Name</th>
                 <th>Year</th>
               <th>Department</th>
                <th>Otp</th>
                <th>Time of OTP generated </th>
              </tr>
              </thead>
              <tbody>
              <%
                                        DBConnection con3 = new DBConnection();
                                        DBConnection con4 = new DBConnection();
                                        ResultSet rs2 = con3.select("SELECT * FROM tab_otp");
                                        int j = 1;
                                        while (rs2.next()) {
                                            String tid=rs2.getString("sub_id");
                                            ResultSet rs3 = con4.select("SELECT * FROM tab_subject WHERE sub_id="+tid+"");

                                    %>
                                    <tr>
                                        <td> <%=j%> </td>
                                         
                                        <% if(rs3.next()){ %>  <td><%=rs3.getString("sub_name")%> </td>
                                        <td><%=rs3.getString("sub_year")%> </td> 
                                        <td><%=rs3.getString("sub_dept")%> </td> 
                                        
                                        <% } %>
                                        <td><%=rs2.getString("otp")%> </td>
                                        
                                        <td><%=rs2.getString("otp_status")%> </td>
                                        <td><%=rs2.getString("sub_lect")%> </td>
                                        
                                        
                                        
                                    </tr>
                                    <%
                                            j++;
                                        }
                                        con3.close();
                                        con4.close();
                                    %>
              </tbody>
            </table>
          </div>
          <div class="notification">
            <div class="level">
              <div class="level-left">
                <div class="level-item">
                  <div class="buttons has-addons">
                    <button type="button" class="button is-active">1</button>
                    <button type="button" class="button">2</button>
                    <button type="button" class="button">3</button>
                  </div>
                </div>
              </div>
              <div class="level-right">
                <div class="level-item">
                  <small>Page 1 of 3</small>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="notification is-info">
      <div class="level">
        <div class="level-left">
          <div class="level-item">
            <div>
              <span class="icon"><i class="mdi mdi-buffer default"></i></span>
              <b>Empty table.</b>
            </div>
          </div>
        </div>
        <div class="level-right">
          <button type="button" class="button is-small is-white jb-notification-dismiss">Dismiss</button>
        </div>
      </div>
    </div>


    <div class="card has-table">
      <div class="card-content">
        <section class="section">
          <div class="content has-text-grey has-text-centered">
            <p>
              <span class="icon is-large"><i class="mdi mdi-emoticon-sad mdi-48px"></i></span>
            </p>
            <p>Nothing's here…</p></div>
        </section>
      </div>
    </div>
  </section>

  <footer class="footer">
    <div class="container-fluid">
      <div class="level">
        <div class="level-left">
          <div class="level-item">
            © 2020, JustBoil.me
          </div>
          <div class="level-item">
            <a href="https://github.com/vikdiesel/admin-one-bulma-dashboard" style="height: 20px">
              <img src="https://img.shields.io/github/v/release/vikdiesel/admin-one-bulma-dashboard?color=%23999">
            </a>
          </div>
        </div>
        <div class="level-right">
          <div class="level-item">
            <div class="logo">
              <a href="https://justboil.me"><img src="img/justboil-logo.svg" alt="JustBoil.me"></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <div id="sample-modal" class="modal">
    <div class="modal-background jb-modal-close"></div>
    <div class="modal-card">
      <header class="modal-card-head">
        <p class="modal-card-title">Confirm action</p>
        <button class="delete jb-modal-close" aria-label="close"></button>
      </header>
      <section class="modal-card-body">
        <p>This will permanently delete <b>Some Object</b></p>
        <p>This is sample modal</p>
      </section>
      <footer class="modal-card-foot">
        <button class="button jb-modal-close">Cancel</button>
        <button class="button is-danger jb-modal-close">Delete</button>
      </footer>
    </div>
    <button class="modal-close is-large jb-modal-close" aria-label="close"></button>
  </div>
</div>

<!-- Scripts below are for demo only -->
<script type="text/javascript" src="js/main.min.js"></script>

<!-- Icons below are for demo only. Feel free to use any icon pack. Docs: https://bulma.io/documentation/elements/icon/ -->
<link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.9.95/css/materialdesignicons.min.css">
</body>
</html>
