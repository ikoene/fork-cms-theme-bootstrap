{include:core/layout/templates/head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">

	{include:core/layout/templates/header.tpl}

    <div class="container">
		<div class="row">
            <div class="col-lg-12">
				{* Main position *}
				{iteration:positionMain}
					{$positionMain.blockContent}
				{/iteration:positionMain}
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