
<main class="profile-page container">
    <div class="row">
        <div class="col-sm-10">
            <h1>$Title
                <small>$Subheading</small>
            </h1>
            <hr>
        </div>
    </div>
    
    <!-- Profile Photo -->
    <div class="row">
        <div class="col-sm-4">
            <div class="col-sm-12 img-rounded profile-photo" style="background-image: url($Photo.URL);"></div>
            <div class="row">
                <div class="col-sm-12">
                    <h3>$Title</h3>
                    <p><i class="fa fa-envelope-o"></i> $Email</p>
                    <p><i class="fa fa-phone-square"></i> $Mobile</p>
                </div>
            </div>
        </div>

        <!-- Profile Content -->
        <div class="partner col-sm-6">
            $Content
            <% if $Parent.Title == "Midwives"%>
                <h3>Midwifery Partner</h3>

                <% with $Page($GetProfile($Partner)) %>
                    <a href="$Link">
                        <div class="img-thumbnail" style="background-image: url($Photo.URL);"></div>
                    
                        <h4>$Title</h4>
                    </a>
                <% end_with %>
                
            <% end_if %>
        </div>
    </div>
</main>