<div class="ui segment" ng-controller="ItemController">
	<div ng-show="isItemTabSelected(1)" class="index-tab">
		<table class="ui table segment">
			<thead>
			<tr>
				<th>Name</th>
				<th>Operations</th>
			</tr>
			</thead>
			<tbody>
			<tr ng-repeat="info in itemInfos | filter:query">
				<td>{{info.name}}</td>
				<td>
					<div class="circular ui basic tiny button"
						 ng-click="setSelectedItem(info); setItemTab(3)">
						<i class="icon edit"></i>Edit
					</div>
					<div class="circular ui basic tiny button"
						 ng-click="setSelectedItem(info); deleteItem()">
						<i class="icon remove"></i>Remove
					</div>
				</td>
			</tr>
			</tbody>
		</table>
		<div style="text-align: right;">
			<div class="circular ui basic small button" ng-click="setNewItem(); setItemTab(2)">
				<i class="icon add"></i>
				Add Item
			</div>
		</div>
	</div>
	<div ng-show="isItemTabSelected(2)" class="new-tab">
		<div ng-include="'items/new.html'"></div>
	</div>
	<div ng-show="isItemTabSelected(3)" class="edit-tab">
		<div ng-include="'items/edit.html'"></div>
	</div>
</div>
