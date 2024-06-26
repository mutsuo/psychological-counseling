<%@ page language = "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--页面标题“课程_章节命名”-->
    <title>课程</title>
    <!--video-->
    <link href="css/video/video-js.min.css" rel="stylesheet">
    <!-- zui -->
    <link href="css/zui-theme.css" rel="stylesheet">
    <link href="css/zui.css" rel="stylesheet">
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/zui.js"></script> 
    <script src="js/zui.lite.js"></script>
    <!--自定义-->
    <link href="css/mystyle.css" rel="stylesheet">
    <script src="js/change-state.js"></script>
  </head>
  <body>
    <!-- 在此处编码你的创意 -->
    <nav class="navbar lesson-nav" role="navigation">
        <div class="container-fluid">
          <!-- 导航项目 -->
          <div class="collapse navbar-collapse navbar-collapse-example">
            <!-- 一般导航项目 -->
            <ul class="nav navbar-nav">
                <!--返回目录按钮-->
              <li><a href="course-instr.html"><i class="icon icon-reply"></i></a></li>
              <!--章节名-->
              <li><span class="ch-name">婴儿的认知发展</span></li>
              <!--跳转评论按钮：锚点定位-->
              <li><a href="#comment" name="course"><i class="icon icon-comment-alt"></i></a></li>
            </ul>
          </div><!-- END .navbar-collapse -->
        </div>
    </nav><!--END .lesson-nav-->

    <!--页面内容主体-->
    <div class="lesson-contains">
        <!--课程播放板块-->
        <div class="lesson-part">
            <!--目录-->
            <div class="directory">
                <!--导航条-->
                <div class="dir-nav">
                    <ul id="dir-nav-contain">
                        <li id="1" class="active" onclick="changeNav(this)"><a href="#">课程目录</a></li>
                        <li id="2" onclick="changeNav(this)"><a href="#">相关视频</a></li>
                    </ul>
                </div>
                <!--目录主体-->
                <div id="directory-contain-1" class="directory-contain" style="display:block">
                    <!--注：一级目录不可点击-->
                    <!--注：二级目录提供选中(.active)和未选中两种样式-->
                    <!--注：二级目录的选中(.active)样式可能需要后台负责人手动设置，暂未提供可用的js函数-->
                    <!--范例-->
                    <!--一级目录：章节-->
                    
                    
                    <span class="directory-level-1"><span class="num">①</span><a>基础心理学</a></span>
                    <!-- 二级目录：课程 -->
                    <span class="directory-level-2 active"><a href="course.html">婴儿的认知发展</a></span>
                    
                  
          	<!--    <span class="directory-level-2"><a href="course.html">幼儿的语言发展</a></span>    -->
                    <!--END 范例-->
			<!-- 
                    <span class="directory-level-2"><a href="course.html">婴儿的认知发展</a></span>
                    <span class="directory-level-2"><a href="course.html">幼儿的语言发展</a></span>

                    <span class="directory-level-1"><span class="num">②</span><a>基础心理学</a></span>
                    <span class="directory-level-2"><a href="course.html">婴儿的认知发展</a></span>
                    <span class="directory-level-2"><a href="course.html">幼儿的语言发展</a></span>
                    <span class="directory-level-2"><a href="course.html">婴儿的认知发展</a></span>
                    <span class="directory-level-2"><a href="course.html">幼儿的语言发展</a></span>

                    <span class="directory-level-1"><span class="num">②</span><a>基础心理学</a></span>
                    <span class="directory-level-2"><a href="course.html">婴儿的认知发展</a></span>
                    <span class="directory-level-2"><a href="course.html">幼儿的语言发展</a></span>
                    <span class="directory-level-2"><a href="course.html">婴儿的认知发展</a></span>
                    <span class="directory-level-2"><a href="course.html">幼儿的语言发展</a></span>
                    <span class="directory-level-2"><a href="course.html">婴儿的认知发展</a></span>
                    <span class="directory-level-2"><a href="course.html">幼儿的语言发展</a></span>
                    
                    <span class="directory-level-1"><span class="num">③</span><a>基础心理学</a></span>
                    <span class="directory-level-2"><a href="course.html">婴儿的认知发展</a></span>
                    <span class="directory-level-2"><a href="course.html">幼儿的语言发展</a></span>
                    <span class="directory-level-2"><a href="course.html">婴儿的认知发展</a></span>
                    <span class="directory-level-2"><a href="course.html">幼儿的语言发展</a></span>
                    <span class="directory-level-2"><a href="course.html">婴儿的认知发展</a></span>
                    <span class="directory-level-2"><a href="course.html">幼儿的语言发展</a></span>
          -->
                </div><!-- END 目录主体 -->
                
                <!--相关视频-->
                <div id="directory-contain-2" class="directory-contain" style="display:none">
                    <!--一个课程-->
                    <div class="recomment-course">
                        <!--课程图片-->
                        <img class="course-img" src="images/course.jpg" alt="课程"/>
                        <!--课程名：跳转到对应课程介绍页-->
                        <a href="#" class="course-name title-h2">时间管理·速成指南</a>
                        <!--主讲人姓名-->
                        <span class="teacher">纪元</span>
                    </div>
                    <!--以下都是重复的-->
                    <!--一个课程-->
                    <div class="recomment-course">
                        <!--课程图片-->
                        <img class="course-img" src="images/course.jpg" alt="课程"/>
                        <!--课程名：跳转到对应课程介绍页-->
                        <a href="#" class="course-name title-h2">时间管理·速成指南</a>
                        <!--主讲人姓名-->
                        <span class="teacher">纪元</span>
                    </div>
                    <!--一个课程-->
                    <div class="recomment-course">
                        <!--课程图片-->
                        <img class="course-img" src="images/course.jpg" alt="课程"/>
                        <!--课程名：跳转到对应课程介绍页-->
                        <a href="#" class="course-name title-h2">时间管理·速成指南</a>
                        <!--主讲人姓名-->
                        <span class="teacher">纪元</span>
                    </div>
                    <!--一个课程-->
                    <div class="recomment-course">
                        <!--课程图片-->
                        <img class="course-img" src="images/course.jpg" alt="课程"/>
                        <!--课程名：跳转到对应课程介绍页-->
                        <a href="#" class="course-name title-h2">时间管理·速成指南</a>
                        <!--主讲人姓名-->
                        <span class="teacher">纪元</span>
                    </div>
                    <div class="recomment-course">
                        <!--课程图片-->
                        <img class="course-img" src="images/course.jpg" alt="课程"/>
                        <!--课程名：跳转到对应课程介绍页-->
                        <a href="#" class="course-name title-h2">时间管理·速成指南</a>
                        <!--主讲人姓名-->
                        <span class="teacher">纪元</span>
                    </div>
                </div>
            </div>
            <!--视频-->
            <div class="lesson-video">
                <div class="m">
                    <video id="my-video" class="video-js" controls preload="auto" width="960" height="400"
                        poster="m.jpg" data-setup="{}">
                        <source src="http://vjs.zencdn.net/v/oceans.mp4" type="video/mp4">
                        <source src="http://vjs.zencdn.net/v/oceans.webm" type="video/webm">
                        <source src="http://vjs.zencdn.net/v/oceans.ogv" type="video/ogg">
                        <p class="vjs-no-js"> To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a> </p>
                    </video>
                    <script src="js/video/video.min.js"></script> 
                    <script src="http://vjs.zencdn.net/5.19/lang/zh-CN.js"></script>
                    <script type="text/javascript">                        
                        var myPlayer = videojs('my-video');
                        videojs("my-video").ready(function(){
                            var myPlayer = this;
                            myPlayer.play();
                        });   
                    </script> 
                </div>
            </div>
        </div>
        <!--输入框-->
        <!--使用的是wang富文本编辑器-->
        <!--文档请见：https://www.kancloud.cn/wangfupeng/wangeditor3/455793-->
        <div class="comment-input" id="comment-input">
            <button class="btn btn-link" type="button" onclick="closeCommentWindow()">取消</button>
            <button class="btn" onclick="closeCommentWindow()">发送</button>
            <div id="editor">
                <p></p>
            </div>                
            <!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
            <script type="text/javascript" src="js/wangEditor.min.js"></script>
            <script type="text/javascript">
                var E = window.wangEditor
                var editor = new E('#editor')
                // 或者 var editor = new E( document.getElementById('editor') )
                // 自定义菜单配置
                editor.customConfig.menus = [
                    'emoticon'
                ]
                // editor.customConfig.color = ['#000000']
                editor.create()
                </script>
        </div>
        <!--黑色遮罩-->
        <div id="shade"></div>
        <!--评论板块-->        
        <a href="#" name="comment"></a>
        <div class="comment-part">
            <span class="board-title-h1">讨论区</span>
            <button type="button" class="to-comment" onclick="openCommentWindow()"><i class="icon icon-pencil"></i>参与讨论</button>
            <a href="#course" class="back-to-course">回到课堂</a>
            <!--内容主体-->
            <div class="panel comment-contain">
                <div class="panel-body">
                    <!--一条评论-->
                    <div class="comment">
                        <div class="comment-header">
                            <!--用户头像-->
                            <img src="images/avatar.png" alt="头像">
                            <!--用户昵称：点击跳转到用户个人页面-->
                            <a href="#">远道。</a>
                            <!--评论时间：精细到日即可-->
                            <span class="tag">2018年11月22日</span>
                        </div>
                        <!--评论内容-->
                        <p>厉害了</p>
                    </div>

                    <!--以下都是重复的-->
                    <!--一条评论-->
                    <div class="comment">
                            <div class="comment-header">
                                <!--用户头像-->
                                <img src="images/avatar.png" alt="头像">
                                <!--用户昵称：点击跳转到用户个人页面-->
                                <a href="#">远道。</a>
                                <!--评论时间：精细到日即可-->
                                <span class="tag">2018年11月22日</span>
                            </div>
                            <!--评论内容-->
                            <p>很高兴一起学习</p>
                    </div>
                    <!--一条评论-->
                    <div class="comment">
                            <div class="comment-header">
                                <!--用户头像-->
                                <img src="images/avatar.png" alt="头像">
                                <!--用户昵称：点击跳转到用户个人页面-->
                                <a href="#">远道。</a>
                                <!--评论时间：精细到日即可-->
                                <span class="tag">2018年11月22日</span>
                            </div>
                            <!--评论内容-->
                            <p>蛮有趣的</p>
                        </div>

                        <!--一条评论-->
                    <div class="comment">
                            <div class="comment-header">
                                <!--用户头像-->
                                <img src="images/avatar.png" alt="头像">
                                <!--用户昵称：点击跳转到用户个人页面-->
                                <a href="#">远道。</a>
                                <!--评论时间：精细到日即可-->
                                <span class="tag">2018年11月22日</span>
                            </div>
                            <!--评论内容-->
                            <p>没人讨论</p>
                        </div>
                        <!--一条评论-->
                    <div class="comment">
                            <div class="comment-header">
                                <!--用户头像-->
                                <img src="images/avatar.png" alt="头像">
                                <!--用户昵称：点击跳转到用户个人页面-->
                                <a href="#">远道。</a>
                                <!--评论时间：精细到日即可-->
                                <span class="tag">2018年11月22日</span>
                            </div>
                            <!--评论内容-->
                            <p>很高兴一起学习</p>
                    </div>
                    <!--一条评论-->
                    <div class="comment">
                            <div class="comment-header">
                                <!--用户头像-->
                                <img src="images/avatar.png" alt="头像">
                                <!--用户昵称：点击跳转到用户个人页面-->
                                <a href="#">远道。</a>
                                <!--评论时间：精细到日即可-->
                                <span class="tag">2018年11月22日</span>
                            </div>
                            <!--评论内容-->
                            <p>蛮有趣的</p>
                        </div>

                        <!--一条评论-->
                    <div class="comment">
                            <div class="comment-header">
                                <!--用户头像-->
                                <img src="images/avatar.png" alt="头像">
                                <!--用户昵称：点击跳转到用户个人页面-->
                                <a href="#">远道。</a>
                                <!--评论时间：精细到日即可-->
                                <span class="tag">2018年11月22日</span>
                            </div>
                            <!--评论内容-->
                            <p>没人讨论</p>
                        </div>
                </div>
                <!--分页器-->         
                <div class="pager-bar">
                    <ul class="pager">
                        <li class="previous"><a href="your/nice/url">«</a></li>
                        <li><a href="your/nice/url">1</a></li>
                        <li class="active"><a href="your/nice/url">2</a></li>
                        <li><a href="your/nice/url">3</a></li>
                        <li class="next"><a href="your/nice/url">»</a></li>
                    </ul>
                </div>
            </div><!--END panel-->
        </div><!--END comment-part-->
    </div>
    <!-- jQuery (ZUI中的Javascript组件依赖于jQuery) -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <!-- ZUI Javascript组件 -->
    <script src="js/zui.min.js"></script>
  </body>
</html>
