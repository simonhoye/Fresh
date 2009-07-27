<h2>Edit Page</h2>
<form method="POST">

<h4>Page Title</h4>
<?php echo form_error('title'); ?>
<input type="text" name="title" value="<?php echo set_value('title', $title); ?>" size="50" />

<h4>Content</h4>
<?php echo form_error('content'); ?>
<textarea rows="10" cols="70" name="content"><?php echo set_value('content', $content); ?></textarea>

<br />
<br />

<input type="submit" value="Submit" />

</form>