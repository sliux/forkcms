{include:{$BACKEND_CORE_PATH}/Layout/Templates/Head.tpl}
{include:{$BACKEND_CORE_PATH}/Layout/Templates/StructureStartModule.tpl}

<div class="pageTitle">
	<h2>{$lblGroups|ucfirst}</h2>
</div>

{form:edit}
	<div class="box">
		<div class="heading ">
			<h3>{$lblEditGroup|ucfirst}</h3>
		</div>
		<div class="options">
			<label for="name">{$lblName|ucfirst}</label>
			{$txtName} {$txtNameError}
		</div>
		<div class="options">
			<p class="helpTxt">{$msgDefaultGroup|ucfirst}</p>
			<ul class="inputList">
				{iteration:default}
				<li>
					{$default.rbtDefault}
					<label for="{$default.id}">{$default.label}</label>
				</li>
				{/iteration:default}
			</ul>
		</div>
	</div>

	<div class="fullwidthOptions">
		<div class="buttonHolderRight">
			<input id="editButton" class="inputButton button mainButton" type="submit" name="add" value="{$lblSave|ucfirst}" />
		</div>
	</div>
{/form:edit}

{include:{$BACKEND_CORE_PATH}/Layout/Templates/StructureEndModule.tpl}
{include:{$BACKEND_CORE_PATH}/Layout/Templates/Footer.tpl}
