@extends('layout_update_v3')
@section('content_update')
<div class="col-sm-9">
    <div class="blog-post-area">
        <h2 class="title text-center">Chi tiết tin tức</h2>
        <div class="single-blog-post">
            <h3>{{$blog->title}}</h3>
            <div class="post-meta">
                <ul>
                    <li><i class="fa fa-user"></i> {{$blog->admin_name}}</li>
                    <li><i class="fa fa-clock-o"></i> {{ date('H:i', strtotime($blog->updated_at)) }}</li>
                    <li><i class="fa fa-calendar"></i> {{ date('d-M-y', strtotime($blog->updated_at)) }}</li>
                </ul>
                <span>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </span>
            </div>
            <div>{!!html_entity_decode($blog->content)!!}</div>
        </div>
    </div><!--/blog-post-area-->

    {{-- <div class="rating-area">
        <ul class="ratings">
            <li class="rate-this">Bình chọn cho bài viết:</li>
            <li>
                <i class="fa fa-star color"></i>
                <i class="fa fa-star color"></i>
                <i class="fa fa-star color"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
            </li>
            <li class="color">(6 votes)</li>
        </ul>
    </div><!--/rating-area--> --}}

    {{-- <div class="response-area">
        <h2>3 RESPONSES</h2>
        <ul class="media-list">
            <li class="media">

                <a class="pull-left" href="#">
                    <img class="media-object" src="images/blog/man-two.jpg" alt="">
                </a>
                <div class="media-body">
                    <ul class="sinlge-post-meta">
                        <li><i class="fa fa-user"></i>Janis Gallagher</li>
                        <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                        <li><i class="fa fa-calendar"></i> DEC 5, 2013</li>
                    </ul>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Replay</a>
                </div>
            </li>
            <li class="media second-media">
                <a class="pull-left" href="#">
                    <img class="media-object" src="images/blog/man-three.jpg" alt="">
                </a>
                <div class="media-body">
                    <ul class="sinlge-post-meta">
                        <li><i class="fa fa-user"></i>Janis Gallagher</li>
                        <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                        <li><i class="fa fa-calendar"></i> DEC 5, 2013</li>
                    </ul>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Replay</a>
                </div>
            </li>
            <li class="media">
                <a class="pull-left" href="#">
                    <img class="media-object" src="images/blog/man-four.jpg" alt="">
                </a>
                <div class="media-body">
                    <ul class="sinlge-post-meta">
                        <li><i class="fa fa-user"></i>Janis Gallagher</li>
                        <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                        <li><i class="fa fa-calendar"></i> DEC 5, 2013</li>
                    </ul>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Replay</a>
                </div>
            </li>
        </ul>
    </div>
    <div class="replay-box">
        <div class="row">
            <div class="col-sm-4">
                <h2>Leave a replay</h2>
                <form>
                    <div class="blank-arrow">
                        <label>Your Name</label>
                    </div>
                    <span>*</span>
                    <input type="text" placeholder="write your name...">
                    <div class="blank-arrow">
                        <label>Email Address</label>
                    </div>
                    <span>*</span>
                    <input type="email" placeholder="your email address...">
                    <div class="blank-arrow">
                        <label>Web Site</label>
                    </div>
                    <input type="email" placeholder="current city...">
                </form>
            </div>
            <div class="col-sm-8">
                <div class="text-area">
                    <div class="blank-arrow">
                        <label>Your Name</label>
                    </div>
                    <span>*</span>
                    <textarea name="message" rows="11"></textarea>
                    <a class="btn btn-primary" href="">post comment</a>
                </div>
            </div>
        </div>
    </div> --}}
</div>
@endsection
