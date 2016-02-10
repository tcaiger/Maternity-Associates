<?php

class ProfilePage extends Page {

	private static $can_be_root = false;

	private static $has_one = array (
		'Photo' => 'Image'
	);
	private static $db = array(
		'Subheading' => 'Varchar(100)',
		'Partner' => 'Varchar(100)',
		'Email' => 'Varchar(100)',
		'Mobile' => 'Varchar'
	);
	public function getCMSFields(){
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', TextField::create('Subheading', 'Subheading'), 'Content');
		$fields->addFieldToTab('Root.Main', TextField::create('Partner', 'Partner'), 'Content');
		$fields->addFieldToTab('Root.Main', TextField::create('Mobile', 'Mobile'), 'Content');
		$fields->addFieldToTab('Root.Main', TextField::create('Email', 'Email'), 'Content');

		$fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('Photo'));
		
		$photo->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpg', 'jpeg'));
		$photo->setFolderName('profile-photos');

		return $fields;
	}
}

class ProfilePage_Controller extends Page_Controller {

	public function GetProfile($Name){

		$partner = ProfilePage::get()->filter(
			'Title', $Name
		);
		foreach($partner as $p) {
    		$URL = $p->URLSegment;
		}
		return $URL;
	}
	
}