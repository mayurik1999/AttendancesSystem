<%-- 
    Document   : index
    Created on : 25 Mar, 2021, 11:35:26 PM
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
  <title>Admin</title>

  <!-- Bulma is included -->
  <link rel="stylesheet" href="css/main.min.css">

  <!-- Fonts -->
  <link rel="dns-prefetch" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">
</head>
<body>
  <section class="section is-title-bar">
    <div class="level">
      <div class="level-left">
        <div class="level-item">
          <ul>
            <li>Admin</li>
            <li>Dashboard</li>
          </ul>
        </div>
      </div>
      
    </div>
  </section>
  <section class="hero is-hero-bar">
    <div class="hero-body">
      <div class="level">
        <div class="level-left">
          <div class="level-item"><h1 class="title">
            Dashboard
          </h1></div>
        </div>
        <div class="level-right" style="display: none;">
          <div class="level-item"></div>
        </div>
      </div>
    </div>
  </section>
  <section class="section is-main-section">
    <div class="tile is-ancestor">
      <div class="tile is-parent">
        <div class="card tile is-child">
          <div class="card-content">
            <div class="level is-mobile">
              <div class="level-item">
                <div class="is-widget-label"><h3 class="subtitle is-spaced">
                  Total faculty
                </h3>
                  <h1 class="title">
                    512
                  </h1>
                </div>
              </div>
              <div class="level-item has-widget-icon">
                <div class="is-widget-icon"><span class="icon has-text-primary is-large"><i
                    class="mdi mdi-account-multiple mdi-48px"></i></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="tile is-parent">
        <div class="card tile is-child">
          <div class="card-content">
            <div class="level is-mobile">
              <div class="level-item">
                <div class="is-widget-label"><h3 class="subtitle is-spaced">
                  Lectures Done
                </h3>
                  <h1 class="title">
                    7,770
                  </h1>
                </div>
              </div>
              <div class="level-item has-widget-icon">
                
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="tile is-parent">
        <div class="card tile is-child">
          <div class="card-content">
            <div class="level is-mobile">
              <div class="level-item">
                <div class="is-widget-label"><h3 class="subtitle is-spaced">
                  Avg. Attendance
                </h3>
                  <h1 class="title">
                    82%
                  </h1>
                </div>
              </div>
              <div class="level-item has-widget-icon">
                <div class="is-widget-icon"><span class="icon has-text-success is-large"><i
                    class="mdi mdi-finance mdi-48px"></i></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<!--    <div class="card">
      <header class="card-header">
        <p class="card-header-title">
          <span class="icon"><i class="mdi mdi-finance"></i></span>
          Performance
        </p>
        <a href="#" class="card-header-icon">
          <span class="icon"><i class="mdi mdi-reload"></i></span>
        </a>
      </header>
      <div class="card-content">
        <div class="chart-area">
          <div style="height: 100%;">
            <div class="chartjs-size-monitor">
              <div class="chartjs-size-monitor-expand">
                <div></div>
              </div>
              <div class="chartjs-size-monitor-shrink">
                <div></div>
              </div>
            </div>
            <canvas id="big-line-chart" width="2992" height="1000" class="chartjs-render-monitor" style="display: block; height: 400px; width: 1197px;"></canvas>
          </div>
        </div>
      </div>
    </div>-->
    <div class="card has-table has-mobile-sort-spaced">
      <header class="card-header">
        <p class="card-header-title">
          <span class="icon"><i class="mdi mdi-account-multiple"></i></span>
          Faculties
        </p>
        <a href="#" class="card-header-icon">
          <span class="icon"><i class="mdi mdi-reload"></i></span>
        </a>
      </header>
      <div class="card-content">
        <div class="b-table has-pagination">
          <div class="table-wrapper has-mobile-cards">
            <table class="table is-fullwidth is-striped is-hoverable is-sortable is-fullwidth">
              <thead>
              <tr>
                <th></th>
                <th>Name</th>
                <th>Department</th>
                <th>Email</th>
                <th>Phone</th>
                
                <th></th>
              </tr>
              </thead>
             <tbody>
                <%
                                        DBConnection con = new DBConnection();
                                        ResultSet rs = con.select("SELECT * FROM tab_teacher");
                                        int i = 1;
                                        while (rs.next()) {
                                    %>
                                    <tr>
                                        <td> <%=i%> </td>
                                        <td><%=rs.getString("teach_name")%> </td>
                                        <td><%=rs.getString("teach_dept")%> </td>
                                        <td><%=rs.getString("teach_email")%> </td>
                                        <td><%=rs.getString("teach_mobile")%> </td>
                                        
                                        
                                        
                                    </tr>
                                    <%
                                            i++;
                                        }
                                        con.close();
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
  </section>
<!--  <footer class="footer">
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
  </footer>-->
</div>

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

<!-- Scripts below are for demo only -->
<script type="text/javascript" src="js/main.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script type="text/javascript" src="js/chart.sample.min.js"></script>

<!-- Icons below are for demo only. Feel free to use any icon pack. Docs: https://bulma.io/documentation/elements/icon/ -->
<link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.9.95/css/materialdesignicons.min.css">
</body>
</html>
 
