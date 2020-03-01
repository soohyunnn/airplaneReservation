/**
 * @license Copyright (c) 2003-2019, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	 config.language = 'ko';
	 config.uiColor = '#F0F0F0';
	 
	 	config.filebrowserBrowseUrl = '/airplanereservation/ckfinder/ckfinder.html';
	    config.filebrowserImageBrowseUrl = '/airplanereservation/ckfinder/ckfinder.html?type=Images';
	    config.filebrowserFlashBrowseUrl = '/airplanereservation/ckfinder/ckfinder.html?type=Flash';
	    config.filebrowserUploadUrl = '/airplanereservation/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files';
	    config.filebrowserImageUploadUrl = '/airplanereservation/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images';
	    config.filebrowserFlashUploadUrl = '/airplanereservation/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash';


};
