<main class="profile-holder container">
    <div class="row">
        <div class="col-sm-11">
            <h1>$Title
            </h1>
            <hr>
        </div>
    </div>
    <div class="row">
        <!-- Profiles -->
        <div class="col-sm-11 col-xs-8">
            <div class="row">
                <% loop $Children %>
                    <div class="col-sm-4 text-center">
                        <a href="$Link">
                            <div class="thumbnail">
             
                                <div class="profile-pic" style="background-image: url($Photo.Greyscale.CroppedImage(240, 300).URL);"></div>
                               
                                <div class="caption">
                                    <h3>$Title<br>
                                        <small>$Subheading</small>
                                    </h3>
                                    
                                   <a href="$Link" class="btn btn-default">View Profile</a>
                                   
                                </div>
                            </div>
                        </a>
                    </div>
                <% end_loop %>
            </div>
        </div>
        <!-- End of Profiles Column -->
    </div>
</main>



   
