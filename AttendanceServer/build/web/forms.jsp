<%-- 
    Document   : forms
    Created on : 28 Mar, 2021, 7:46:02 PM
    Author     : Mayuri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html lang="en" class="has-aside-left has-aside-mobile-transition has-navbar-fixed-top has-aside-expanded">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Forms </title>

  <!-- Bulma is included -->
  <link rel="stylesheet" href="css/main.min.css">
 
  <!-- Fonts -->
  <link rel="dns-prefetch" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">
</head>
<body>
<div id="app">


 <section class="section is-title-bar">
    <div class="level">
      <div class="level-left">
        <div class="level-item">
          <ul>
            <li>Admin</li>
            <li>Forms</li>
          </ul>
        </div>
      </div>
      <div class="level-right">
        <div class="level-item">
          <div class="buttons is-right">
            
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
            Forms
          </h1></div>
        </div>
        <div class="level-right" style="display: none;">
          <div class="level-item"></div>
        </div>
      </div>
    </div>
  </section>
  <section class="section is-main-section">
    <div class="card">
      <header class="card-header">
        <p class="card-header-title">
          <span class="icon"><i class="mdi mdi-ballot"></i></span>
          New Faculty Forms
        </p>
      </header>
      <div class="card-content">
          <form method="post" action="AddTeachers">
          <div class="field is-horizontal">
            <div class="field-label is-normal">
              <label class="label">Faculty Details</label>
            </div>
            <div class="field-body">
              <div class="field">
                <p class="control is-expanded has-icons-left">
                  <input name="fname" class="input" type="text" placeholder="Faculty Name">
                  <span class="icon is-small is-left"><i class="mdi mdi-account"></i></span>
                </p>
              </div>
              <div class="field">
                <p class="control is-expanded has-icons-left has-icons-right">
                  <input name="email" class="input is-success" type="email" placeholder="Email" >
                  <span class="icon is-small is-left"><i class="mdi mdi-mail"></i></span>
                  <span class="icon is-small is-right"><i class="mdi mdi-check"></i></span>
                </p>
              </div>
            </div>
          </div>
          <div class="field is-horizontal">
            <div class="field-label"></div>
            <div class="field-body">
              <div class="field is-expanded">
                <div class="field has-addons">
                  <p class="control">
                    <a class="button is-static">
                      +91
                    </a>
                  </p>
                  <p class="control is-expanded">
                    <input class="input" type="tel" placeholder="Your phone number" name="number">
                  </p>
                </div>
                <p class="help">Do not enter the first zero</p>
              </div>
            </div>
          </div>
          <div class="field is-horizontal">
            <div class="field-label is-normal">
              <label class="label">Department</label>
            </div>
            <div class="field-body">
              <div class="field is-narrow">
                <div class="control">
                  <div class="select is-fullwidth">
                    <select>
                      <option>CSE</option>
                      <option>IT</option>
                      <option>ENTC</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <hr>
          <div class="field is-horizontal">
            <div class="field-label is-normal">
              <label class="label">Subject</label>
            </div>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input name=""class="input is-danger" type="text" placeholder="e.g. Engg Math 1">
                </div>
                <p class="help is-danger">
                  This field is required
                </p>
              </div>
            </div>
          </div>
           <hr>
          <div class="field is-horizontal">
            <div class="field-label">
              <!-- Left empty for spacing -->
            </div>
            <div class="field-body">
              <div class="field">
                <div class="field is-grouped">
                  <div class="control">
                    <button type="submit" class="button is-primary">
                      <span>Submit</span>
                    </button>
                  </div>
                  <div class="control">
                    <button type="button" class="button is-primary is-outlined">
                      <span>Reset</span>
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
          </section>

          

      
<!-- ------------------------------------------Student form-------------------------------------------------------------     -->
      

<!--  <section class="section is-main-section">
    <div class="card">
      <header class="card-header">
        <p class="card-header-title">
          <span class="icon"><i class="mdi mdi-ballot"></i></span>
          Forms
        </p>
      </header>
      <div class="card-content">
        <form method="get">
          <div class="field is-horizontal">
            <div class="field-label is-normal">
              <label class="label">Student's details</label>
            </div>
            <div class="field-body">
              <div class="field">
                <p class="control is-expanded has-icons-left">
                  <input class="input" type="text" placeholder="student Name">
                  <span class="icon is-small is-left"><i class="mdi mdi-account"></i></span>
                </p>
              </div>
              <div class="field">
                <p class="control is-expanded has-icons-left has-icons-right">
                  <input class="input is-success" type="email" placeholder="Email" >
                  <span class="icon is-small is-left"><i class="mdi mdi-mail"></i></span>
                  <span class="icon is-small is-right"><i class="mdi mdi-check"></i></span>
                </p>
              </div>
            </div>
          </div>
          <div class="field is-horizontal">
            <div class="field-label"></div>
            <div class="field-body">
              <div class="field is-expanded">
                <div class="field has-addons">
                  <p class="control">
                    <a class="button is-static">
                      +91
                    </a>
                  </p>
                  <p class="control is-expanded">
                    <input class="input" type="tel" placeholder="Your phone number">
                  </p>
                </div>
                <p class="help">Do not enter the first zero</p>
              </div>
            </div>
          </div>
          <div class="field is-horizontal">
            <div class="field-label is-normal">
              <label class="label">Department</label>
            </div>
            <div class="field-body">
              <div class="field is-narrow">
                <div class="control">
                  <div class="select is-fullwidth">
                    <select>
                      <option>CSE</option>
                      <option>IT</option>
                      <option>ENTC</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
          </div>
            
            
                <div class="field is-horizontal">
            <div class="field-label is-normal">
              <label class="label">Year</label>
            </div>
            <div class="field-body">
              <div class="field is-narrow">
                <div class="control">
                  <div class="select is-fullwidth">
                    <select>
                      <option>First Year</option>
                      <option>Second Year</option>
                      <option>Third Year</option>
                      <option>Forth Year</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
          </div>
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
          <hr>
          <div class="field is-horizontal">
            <div class="field-label is-normal">
              <label class="label">Subject</label>
            </div>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input class="input is-danger" type="text" placeholder="e.g. Engg Math 1">
                </div>
                <p class="help is-danger">
                  This field is required
                </p>
              </div>
            </div>
          </div>
      
      
      
      
      
      <hr>
          <div class="field is-horizontal">
            <div class="field-label">
               Left empty for spacing 
            </div>
            <div class="field-body">
              <div class="field">
                <div class="field is-grouped">
                  <div class="control">
                    <button type="submit" class="button is-primary">
                      <span>Submit</span>
                    </button>
                  </div>
                  <div class="control">
                    <button type="button" class="button is-primary is-outlined">
                      <span>Reset</span>
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
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
</div>-->

<!-- Scripts below are for demo only -->
<script type="text/javascript" src="js/main.min.js"></script>

<!-- Icons below are for demo only. Feel free to use any icon pack. Docs: https://bulma.io/documentation/elements/icon/ -->
<link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.9.95/css/materialdesignicons.min.css">
</body>
</html>
