{**
 * Блок сортировки
 *
 * @param string  $sSortName     
 * @param array   $aSortList     
 * @param string  $sSortOrder    
 * @param string  $sSortOrderWay 
 * @param string  $sSortLabel    
 * @param boolean $bSortShowLabel
 *
 * @styles assets/css/sort.css
 *}

{if $sSortUrl}
	<div class="sort {$sSortClasses}">
		{if $bSortShowLabel|default:true}
			<div class="sort-label">{if $sSortLabel}{$sSortLabel}{else}{$aLang.sort.label}{/if}</div>
		{/if}

		<div class="dropdown dropdown-toggle js-dropdown-default" data-dropdown-target="js-dropdown-sort-{$sSortName}" data-dropdown-selectable="true">...</div>

		<ul class="dropdown-menu" id="js-dropdown-sort-{$sSortName}">
			{foreach $aSortList as $aSortItem}
				{$bIsActive = $sSortOrder == $aSortItem['name']}

				{* TODO: i18n *}
				<li {if $bIsActive}class="active" title="{if $sSortOrderWay == 'asc'}asc{else}desc{/if}"{/if}>
					<a href="{$sSortUrl}?order={$aSortItem['name']}&order_way={if $bIsActive}{if $sSortOrderWay == 'asc'}desc{else}asc{/if}{else}asc{/if}">
						{$aSortItem['text']}
						{if $bIsActive}{if $sSortOrderWay == 'asc'}&darr;{else}&uarr;{/if}{/if}
					</a>
				</li>
			{/foreach}
		</ul>
	</div>
{/if}