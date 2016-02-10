<?php
class Page extends SiteTree {

	

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
			
		Requirements::css("{$this->ThemeDir()}/css/bootstrap.min.css");
		Requirements::css("http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800");
		Requirements::css("https://fonts.googleapis.com/css?family=Raleway:400,300,200,100,900,800,700,500");
		Requirements::css("{$this->ThemeDir()}/font-awesome/css/font-awesome.min.css");
		Requirements::css("{$this->ThemeDir()}/css/main.min.css");


	    Requirements::javascript("{$this->ThemeDir()}/js/jquery.js");
	    Requirements::javascript("{$this->ThemeDir()}/js/bootstrap.min.js");
	    Requirements::javascript("{$this->ThemeDir()}/js/main.js");
	    Requirements::javascript("https://maps.googleapis.com/maps/api/js");
	}
}
