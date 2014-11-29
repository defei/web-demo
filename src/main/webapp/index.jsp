<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="demo">
<head>
    <title>Demo</title>
    <link rel="shortcut icon" href="resources/app/images/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="http://static.codelogger.org/resources/css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="http://static.codelogger.org/semantic-ui/1.0.0/semantic.min.css"/>
    <link rel="stylesheet" type="text/css" href="resources/css/app.css"/>
</head>
<body>

<div class="ui grid" ng-controller="DataPrepareController">
    <div class="two wide column"></div>
    <div class="twelve wide column" ng-controller="TabController">
        <div class="ui vertically divided grid">
            <div class="one column row">
                <div class="wide column">
                    <div class="ui secondary pointing menu">
                        <a class="item" href=".">
                            <i class="home icon"></i>Home
                        </a>
                        <a class="item" ng-class="{ active:isSelected(2)}" ng-click="setTab(2)">
                            <i class="cubes icon"></i>Items
                        </a>

                        <div class="right menu">
                            <div class="item">
                                <div class="ui icon input">
                                    <input type="text" placeholder="Search..." ng-model="query">
                                    <i class="search link icon"></i>
                                </div>
                            </div>
                            <a href="#" class="ui item">Logout</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="one column row">
                <div class="column">
                    <div ng-show="isSelected(2)" class="nav-tab">
                        <div ng-include="'items/index.html'"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="two wide column"></div>
</div>

<script type="text/javascript" src="http://cdn.staticfile.org/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="http://static.codelogger.org/angular/1.2.27/angular.min.js"></script>
<script type="text/javascript" src="resources/js/app.js"></script>

</body>
</html>