<div class="topfill"></div>
<div class="topbar">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="white"></div>
            </div>
            <div class="col-md-6 text-right">
                <p><i class="fa fa-clock-o"></i> Mon - Fri: 9:00am - 5:00pm</p>
                <p><i class="fa fa-phone"></i> 09 478 1302</p>
            </div>
        </div>
    </div>
</div>


<header>
    <div class="container">
        <div class="row">
            <div class="col-sm-5">
                <a href="$AbsoluteBaseUrl">
                    <img src="$ThemeDir/img/logo1.jpg" alt="Maternity Associates" id="nav-img">
                </a>
            </div>
            <nav class="col-md-7 text-right">
                
                <ul>
                <!-- Get nav links -->
                <% loop $Menu(1) %>
                    
                    <% if $Pos < 8 %>
                        <li>
                            <a class="$LinkingMode"href="$Link">$MenuTitle</a>
                        </li>

                    <% else %>

                        <li class="dropdown">
                            <a class="dropdown-toggle $LinkingMode" id="$Link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" href="$Link">$MenuTitle</a>
                        
                        
                            <ul class="dropdown-menu" aria-labelledby="$Link">
                                <!-- If there are 2nd level pages -->
                                <% loop $Children %>
                                <li>
                                    <a class="$LinkingMode" href="$Link">$MenuTitle</a>
                                </li>
                                <% end_loop %>
                            </ul>
                        </li>
                        
                    <% end_if %>
                    
                <% end_loop %>
                </ul>
    
            </nav>
        </div>
    </div>
</header>
