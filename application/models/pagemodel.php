<?php

class Pagemodel extends Model 
{

	/** 
	* Constructor
	*/
	function Pagemodel()
	{
		parent::Model();
	}
	
	/** 
	* Return an array of pages — used in the manage view
	*
	* @access public
	* @return array
	*/
	function pages()
	{
		$query = $this->db->query("SELECT * FROM `pages` ORDER BY `id` ASC");
		return $query->result_array();
	}
	
	/** 
	* Return a list of a single page — used when editing a page
	*
	* @access public
	* @param integer
	* @return array
	*/
	function page($id)
	{
		$query = $this->db->query("SELECT * FROM `pages` WHERE `id` = '$id' LIMIT 1");
		return $query->result_array();
	}
	
	/** 
	* Return an array of a page — used in the front end
	*
	* @access public
	* @param string
	* @return array
	*/
	function fetch($slug)
	{
		$query = $this->db->query("SELECT * FROM `pages` WHERE `slug` = '$slug'");
		return $query->result_array();
	}
	
	/** 
	* Add a record to the database
	*
	* @access public
	* @param array
	*/
	function add($data)
	{
		$this->db->query("INSERT INTO `pages` (`title`, `content`, `slug`) VALUES (".$this->db->escape($data['title']).", ".$this->db->escape($data['content']).", ".$this->db->escape($data['slug']).")");
	}
	
	/** 
	* Update a record in the database
	*
	* @access public
	* @param integer
	* @param array
	*/
	function edit($id, $data)
	{
		$this->db->query("UPDATE `pages` SET `title` = ".$this->db->escape($data['title']).", `content` = ".$this->db->escape($data['content']).", `slug` = ".$this->db->escape($data['slug'])." WHERE `id` = '$id'");
	}
	
	/** 
	* Remove a record from the database
	*
	* @access public
	* @param integer
	*/
	function delete($id)
	{
		$this->db->query("DELETE FROM `pages` WHERE `id` = '$id'");
	}

}

?>