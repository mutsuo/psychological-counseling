<%@ page language = "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
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
    <div class="course-instr-contains">
        <!--课程概要-->
        <div class="class-instr panel">
            <div class="panel-body">
                <!--课程图片-->
                <img src="images/course.jpg" alt="课程展示图片" />
                <!--课程概要信息-->
                <div class="course-brief-instr">
                    <!--课程名名称-->
                    <span class="class-name title-h1">心理咨询师职业认证课程（台湾博士2017版）</span>
                    <!--收藏按钮-->
                    <a class="collect" onclick="changeCollectIcon();"><i class="icon icon-star-empty"></i>收藏</a><br/>
                    <!--主讲人名字-->
                    <span class="teacher">主讲人：会天心理</span><br/>
                    <!--课程价格-->
                    <span class="price">免费</span>
                    <!--加入课程按钮：若是付费课程，显示“购买课程”，否则显示“加入我的课程”-->
                    <!--加入课程成功之后，显示“进入学习”-->
                    <button class="btn btn-block ">加入我的课程</button>
                </div>
            </div>
        </div>
        <!--课程信息-->
        <div class="class-instr-detail">
            <!--左栏：课程介绍-->
            <div class="left-part panel">
                <div class="panel-body">
                
                <!--导航栏-->
                <div class="class-instr-detail-nav">
                    <a href="#" name="nav"></a>
                    <ul class="nav nav-secondary dir-nav">
                        <li class="active" id="1" onclick="changeNav(this)"><a href="#nav">课程简介</a></li>
                        <li id="2" onclick="changeNav(this)"><a href="#nav">课程目录</a></li>
                        <li id="3" onclick="changeNav(this)"><a href="#nav">讨论区</a></li>
                    </ul>
                </div>
                <!--课程信息主体-->
                <!--1. 课程简介-->
                <div class="instr-part" id="directory-contain-1">
                    <p>
                    <table>
                        <tr>
                            <th>适用人群</th>
                            <td>零基础即可</td>
                        </tr>
                        <tr>
                            <th>教学老师</th>
                            <td>高淑贞（中国台湾）<br/>
                                心理谘商学博士&nbsp;彰化师大辅导与谘商学系教授&nbsp;彰化师大教育学院院长&nbsp;台湾游戏治疗学会创会、第一、二届理事长&nbsp;台湾青少年犯罪防治研究学会谘询顾问<br/>
                                曾仁美（中国台湾）<br/>
                                心理谘商学博士&nbsp;台南大学辅导与咨商学系硕士班兼任助理教授&nbsp;台湾沙游治疗学会常务理事&nbsp;台南市谘商心理师公会理事&nbsp;台湾游戏治疗学会监事&nbsp;高雄师范大学复健与咨商研究所博士班实习督导<br/>
                                林清文（中国台湾）<br/>
                                心理谘商学博士&nbsp;国立彰化师大师资培育中心主任&nbsp;国立台中教育大学谘商与应用心理学系兼任教授&nbsp;国立彰化师大辅导与谘商学系教授兼学生事务长&nbsp;国立彰化师大辅导学系副教授兼任代理系主任<br/>
                                吴丽云（中国台湾）<br/>
                                心理谘商学博士&nbsp;新竹生命线员工协助服务中心谘商心理师/讲师&nbsp;台南市家扶中心谘商心理师&nbsp;台南市政府家庭暴力暨性侵害防治中心谘商心理师&nbsp;台南市家庭教育咨询委员<br/>
                                陈静怡（中国台湾）<br/>
                                心理谘商学博士&nbsp;卫生署精神疾病强制鉴定、强制社区治疗审查会委员&nbsp;台湾游戏治疗学会监事、教育与专业训练组委员&nbsp;基隆市警察局心理辅导顾问&nbsp;台湾游戏治疗学会秘书长<br/>
                            </td>
                        </tr>
                    </table>
                    课程目标：<br/>
                    <ol>
                        <li>不限工作和职业，不限基础，对心理学感兴趣者；</li>
                        <li>聆听国内权威老师精彩讲授，摒弃单一理论学习，获得更多实操经验分享者；</li>
                        <li>想在心理咨询方面有所建树，学以致用，并顺利获得职业资格证书者；</li>
                        <li>自我心灵放松，启迪心智者均可参与学习。</li>
                    </ol>
                    课程特色：<br/>
                    <ol>
                        <li>教材精讲：基础知识、技能知识与案例分析结合。</li>
                        <li>综合水平提升：知识、研究与实践综合运用水平的整体提升。</li>
                        <li>应用能力与情景训练：案例分析与研究、模拟咨询练习指导、总结与讲评。</li>
                        <li>全方位辅导：含考前串讲、试题分析、应试指导、模拟考试等，帮助学员顺利取证。</li>
                        <li>咨询实践（见习）：学习课程结束后，具备一定的实战咨询技能。</li>
                    </ol>
                    </p>
                </div><!--END 1.课程简介-->

                <!--2. 课程目录-->
                <div id="directory-contain-2" class="dir-part " style="display:none">
                    <table>
                        <tr><th class="title-h3">第一章</th><td class="title-h3">基础心理学</td></tr>
                        <tr><td class="index">1</td><td onmouseout="hideBtn(this)" onmouseover="showBtn(this);">婴儿的认知发展<a style="display:none" class="btn btn-primary" href="course.html">开始学习<i class="icon icon-play-sign"></i></a></td></tr>
                        <tr><td class="index">2</td><td onmouseout="hideBtn(this)" onmouseover="showBtn(this);">幼儿的语言发展<a style="display:none" class="btn btn-primary" href="course.html">开始学习<i class="icon icon-play-sign"></i></a></td></tr>
                        <tr><td class="index">3</td><td onmouseout="hideBtn(this)" onmouseover="showBtn(this);">童年期个性和社会学发展<a style="display:none" class="btn btn-primary" href="course.html">开始学习<i class="icon icon-play-sign"></i></a></td></tr>
                        <tr><th class="title-h3">第二章</th><td class="title-h3">基础心理学</td></tr>
                        <tr><td class="index">1</td><td onmouseout="hideBtn(this)" onmouseover="showBtn(this);">婴儿的认知发展<a style="display:none" class="btn btn-primary" href="course.html">开始学习<i class="icon icon-play-sign"></i></a></td></tr>
                        <tr><td class="index">2</td><td onmouseout="hideBtn(this)" onmouseover="showBtn(this);">幼儿的语言发展<a style="display:none" class="btn btn-primary" href="course.html">开始学习<i class="icon icon-play-sign"></i></a></td></tr>
                        <tr><td class="index">3</td><td onmouseout="hideBtn(this)" onmouseover="showBtn(this);">童年期个性和社会学发展<a style="display:none" class="btn btn-primary" href="course.html">开始学习<i class="icon icon-play-sign"></i></a></td></tr>
                        <tr><th class="title-h3">第三章</th><td class="title-h3">基础心理学</td></tr>
                        <tr><td class="index">1</td><td onmouseout="hideBtn(this)" onmouseover="showBtn(this);">婴儿的认知发展<a style="display:none" class="btn btn-primary" href="course.html">开始学习<i class="icon icon-play-sign"></i></a></td></tr>
                        <tr><td class="index">2</td><td onmouseout="hideBtn(this)" onmouseover="showBtn(this);">幼儿的语言发展<a style="display:none" class="btn btn-primary" href="course.html">开始学习<i class="icon icon-play-sign"></i></a></td></tr>
                        <tr><td class="index">3</td><td onmouseout="hideBtn(this)" onmouseover="showBtn(this);">童年期个性和社会学发展<a style="display:none" class="btn btn-primary" href="course.html">开始学习<i class="icon icon-play-sign"></i></a></td></tr>
                        <tr><th class="title-h3">第四章</th><td class="title-h3">基础心理学</td></tr>
                        <tr><td class="index">1</td><td onmouseout="hideBtn(this)" onmouseover="showBtn(this);">婴儿的认知发展<a style="display:none" class="btn btn-primary" href="course.html">开始学习<i class="icon icon-play-sign"></i></a></td></tr>
                        <tr><td class="index">2</td><td onmouseout="hideBtn(this)" onmouseover="showBtn(this);">幼儿的语言发展<a style="display:none" class="btn btn-primary" href="course.html">开始学习<i class="icon icon-play-sign"></i></a></td></tr>
                        <tr><td class="index">3</td><td onmouseout="hideBtn(this)" onmouseover="showBtn(this);">童年期个性和社会学发展<a style="display:none" class="btn btn-primary" href="course.html">开始学习<i class="icon icon-play-sign"></i></a></td></tr>
                    </table>
                </div><!--END 2. 课程目录-->
                <!--3. 讨论区-->
                <div class="comment-part" style="display:none" id="directory-contain-3">
                    <!--评论框-->
                    <div class="comment-block">
                        <div id="editor">
                            <p>说点什么...</p>
                        </div>
                        <a class="btn btn-primary" href="#">发送一条评论</a>
                    
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
                            editor.create()
                        </script>
                    </div>

                    <!--评论内容展示区-->
                    <div class="comment-show">
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
                    </div><!--END 3.讨论区 .comment-show-->
                </div>
            </div>
        </div>
            <!--右栏：相关课程推荐-->
            <div class="right-part panel">
                <div class="panel-body">
                    <span class="board-title-h1">相关课程</span>
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
            </div><!--END 右侧-->
        </div>
    </div>
    <!-- jQuery (ZUI中的Javascript组件依赖于jQuery) -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <!-- ZUI Javascript组件 -->
    <script src="js/zui.min.js"></script>
  </body>
</html>