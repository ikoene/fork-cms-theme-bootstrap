{include:core/layout/templates/head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">

	{include:core/layout/templates/header.tpl}

	{* Main position *}
	{iteration:positionMain}
		{option:positionMain.blockIsHTML}
		<div class="container">
			<div class="jumbotron">
				{$positionMain.blockContent}
				<p><a class="btn btn-lg btn-primary" href="#" role="button">{$lblMore|ucfirst} &raquo;</a></p>
			</div>
		</div>
		{/option:positionMain.blockIsHTML}
		{option:!positionMain.blockIsHTML}
			<div class="container">
				{$positionMain.blockContent}
			</div>
		{/option:!positionMain.blockIsHTML}
	{/iteration:positionMain}

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				{* Left position *}
				{iteration:positionLeft}
					{$positionLeft.blockContent}
				{/iteration:positionLeft}
			</div>
			<div class="col-md-4">
				{* Center position *}
				{iteration:positionCenter}
					{$positionCenter.blockContent}
				{/iteration:positionCenter}
			</div>
			<div class="col-md-4">
				{* Right position *}
				{iteration:positionRight}
					{$positionRight.blockContent}
				{/iteration:positionRight}
			</div>
		</div>
	</div>

	{include:core/layout/templates/footer.tpl}

	<noscript>
		<div class="message notice">
			<h4>{$lblEnableJavascript|ucfirst}</h4>
			<p>{$msgEnableJavascript}</p>
		</div>
	</noscript>	

	{* General Javascript *}
	{iteration:jsFiles}
		<script src="{$jsFiles.file}"></script>
	{/iteration:jsFiles}

	{* Theme specific Javascript *}
	<script src="{$THEME_URL}/core/js/boots.js"></script>
	<script src="{$THEME_URL}/core/js/bootstrap.min.js"></script>

	{* Site wide HTML *}
	{$siteHTMLFooter}
</body>
</html>