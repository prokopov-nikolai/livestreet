{extends file='components/email/email.tpl'}

{block name='content'}
	Пользователь <a href="{$oUserFrom->getUserWebPath()}">{$oUserFrom->getDisplayName()}</a> оставил новый комментарий к письму <b>«{$oTalk->getTitle()|escape:'html'}»</b>, прочитать его можно перейдя по <a href="{router page='talk'}read/{$oTalk->getId()}/#comment{$oTalkComment->getId()}">этой ссылке</a>
	<br>
	<br>
	
	{if Config::Get('sys.mail.include_talk')}
		Текст сообщения: <i>{$oTalkComment->getText()}</i>
		<br>
		<br>
	{/if}
	
	Не забудьте предварительно авторизоваться!
{/block}