<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h3 class="ui center aligned header">New Item</h3>
<div ng-show="itemForm.name.$dirty && itemForm.email.$dirty && itemForm.$invalid">
	<div class="ui error message">
		<div class="header">
			Validation Failed!
		</div>
		<ul class="list">
			<li>
				<span ng-show="itemForm.first_name.$error.required">
					Please input name.
				</span>
			</li>
		</ul>
	</div>
</div>

<form name="itemForm" ng-submit="itemForm.$valid && addItem() && itemForm.$setPristine()"
      novalidate>
	<div class="ui form segment">
		<div class="field">
			<label>Name</label>
			<input placeholder="Enter Name" type="text" ng-model="newItem.name"
			       name="name" required>
		</div>
		<input type="submit" class="circular ui right floated basic blue small submit button"
		       value="Submit"/>
		<input type="button" class="circular ui basic small button" value="Cancel"
		       ng-click="itemForm.$setPristine();setItemTab(1)"/>
	</div>
</form>
