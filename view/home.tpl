
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
<!--      <li data-target="#myCarousel" data-slide-to="0" ></li>-->
      <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
<!--
      <div class="item ">
        <img src="{$IMG1}" alt="Los Angeles" class="img img-responsive"  style="width:100%;">
      </div>
-->

      <div class="item active">
        <img src="{$IMG2}" alt="Chicago" class="img img-responsive" style="width:100%;">
      </div>

      <div class="item">
        <img src="{$IMG3}" alt="New york" class="img img-responsive" style="width:100%;">
      </div>

     <div class="item">
        <img src="{$IMG4}" alt="New york" class="img img-responsive" style="width:100%;">
      </div>
     <div class="item">
        <img src="{$IMG5}" alt="New york" class="img img-responsive" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

