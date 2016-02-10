<!-- Homepage Banner -->
<div class="home-banner" style="background-position: left">
    <div class="container">
        <div class="tagline">
            <h1>$Intro</h1>
            <a href="contact" class="btn">
                <h4>Contact Us</h4>
            </a>
            
        </div>
    </div>
</div>

<!-- Site Welcome Section -->
<div class="row welcome">
    <div class="container">
        <div class="col-lg-12">
            <h1>Welcome To Maternity Assocaites</h1>
            $Content
        </div>
    </div>
</div>

<!-- Site Summary Panels -->
<div class="container">
    <div class="row">
        <% loop SiteSummary %>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i> $Title</h4>
                    </div>
                    <div class="panel-body">
                        <p>$Content.LimitCharacters(132)</p>
                        <a href="$Link" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
        <% end_loop %>
        
    </div>
    
    <!-- Contact Us Section -->
    <% include Contact %>

    <hr>

    <!-- Call to Action Section -->
    <div class="well">
        <div class="row">
            <div class="col-md-8">
                <p>Please contact us on the main number provided. If unattended, please do leave a message and we will get back to you.</p>
            </div>
            <div class="col-md-4">
                <a class="btn btn-lg btn-default btn-block" href="midwives">Contact a midwife</a>
            </div>
        </div>
    </div>
    <hr>
</div>

