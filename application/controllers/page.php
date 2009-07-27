<?php

class Page extends Application
{

	function Page()
	{
		parent::Application();
		$this->load->model($this->models."pagemodel", 'pages'); // Load the page model
	}

	function _view($page, $page_data)
	{
		$this->load->view('header');
		$this->load->view($page, $page_data);
		$this->load->view('footer');
	}

	function index()
	{
		$page_slug = $this->uri->segment('2'); // Grab the URI segment
		
		if($page_slug === FALSE)
		{
			$page_slug = 'home';
		}
		
		$page_data = $this->pages->fetch($page_slug); // Pull the page data from the database
		
		if($page_data === FALSE)
		{
			show_404(); // Show a 404 if no page exists
		}
		else
		{
			$this->_view('index', $page_data[0]);
		}
	}

}

?>