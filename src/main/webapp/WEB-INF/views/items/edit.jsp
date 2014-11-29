<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h3 class="ui center aligned header">Edit Item</h3>
<div ng-show="editItemForm.$invalid">
	<div class="ui error message">
		<div class="header">
			 Validate failed!
		</div>
		<ul class="list">
			<li>
				<span ng-show="editItemForm.name.$error.required">
					Please input name.
				</span>
			</li>
		</ul>
	</div>
</div>

<form name="editItemForm"
      ng-submit="editItemForm.$valid && updateItem() && editItemForm.$setPristine()" novalidate>
	<div class="ui form segment">
		<div class="field">
			<label>Name</label>
			<input placeholder="Enter Name" type="text" ng-model="selectedItem.name"
			       name="name" required>
		</div>
		<input type="submit" class="circular ui right floated basic blue small submit button"
		       value="Submit"/>
		<input type="button" class="circular ui basic small button" value="Cancel"
		       ng-click="editItemForm.$setPristine(); setItemTab(1)"/>
	</div>
</form>
