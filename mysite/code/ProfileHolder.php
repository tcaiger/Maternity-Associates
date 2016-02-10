<?php

class ProfileHolder extends Page {

	private static $allowed_children = array (
		'ProfilePage'
	);
	
}

class ProfileHolder_Controller extends Page_Controller {
	
	public function Profiles(){
		return ProfilePage::get()
				->sort('Created', 'ASC');
	}
}



	

