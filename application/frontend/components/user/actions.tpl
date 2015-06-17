{**
 * Список действий
 *
 * @param object $user
 *}

{$user = $smarty.local.user}

{component 'nav'
    hook    = 'user_actions'
    mods    = 'stacked'
    classes = 'profile-actions'
    items   = [
        [ 'html' => {include './friend-item.tpl' friendship=$user->getUserFriend() userTarget=$oUserProfile classes='js-user-friend'} ],
        [ 'url' => "{router page='talk'}add/?talk_users={$user->getLogin()}", 'text' => {lang 'user.actions.send_message'} ],
        [
            'url' => "#",
            'classes' => "js-user-follow {if $user->isFollow()}active{/if}",
            'attributes' => [ 'data-id' => $user->getId(), 'data-login' => $user->getLogin() ],
            'text' => {lang name="user.actions.{( $user->isFollow() ) ? 'unfollow' : 'follow'}"}
        ],
        [ 'url' => "#", 'text' => {lang 'user.actions.report'}, classes => 'js-user-report', 'attributes' => [ 'data-param-target_id' => $user->getId() ] ]
    ]}