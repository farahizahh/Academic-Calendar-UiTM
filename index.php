<?php 
include 'header.php';
?>

<!DOCTYPE html>
<html>
<head>
	<Title>Academic Calendar UiTM</Title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>



<?php 
// Include configuration file 
include_once 'config.php'; 
 
$postData = ''; 
if(!empty($_SESSION['postData'])){ 
    $postData = $_SESSION['postData']; 
    unset($_SESSION['postData']); 
} 
 
$status = $statusMsg = ''; 
if(!empty($_SESSION['status_response'])){ 
    $status_response = $_SESSION['status_response']; 
    $status = $status_response['status']; 
    $statusMsg = $status_response['status_msg']; 
} 
?>

<!-- Status message -->
<?php if(!empty($statusMsg)){ ?>
    <div class="alert alert-<?php echo $status; ?>"><?php echo $statusMsg; ?></div>
<?php } ?>


<div class="modal-body row">
  <div class="col-md-6">
<?php include('events_list_client.php')?>



</div>
  <div class="col-md-6">
    <form method="post" action="addEvent.php" class="form">
	<figure class="text-center">
	<h3><p class="font-weight-bold">Add Event Reminder to Google Calendar</p></h3>
	</figure>
        <div class="form-group">
            <label>Event Title</label>
            <input type="text" class="form-control" name="title" value="<?php echo !empty($postData['title'])?$postData['title']:''; ?>" required>
        </div>
        <div class="form-group">
            <label>Event Description</label>
            <textarea name="description" class="form-control"><?php echo !empty($postData['description'])?$postData['description']:''; ?></textarea>
        </div>
        <div class="form-group">
            <label>Location</label>
            <input type="text" name="location" class="form-control" value="<?php echo !empty($postData['location'])?$postData['location']:''; ?>">
        </div>
        <div class="form-group">
            <label>Date</label>
            <input type="date" name="date" class="form-control" value="<?php echo !empty($postData['date'])?$postData['date']:''; ?>" required>
        </div>
        <div class="form-group time">
            <label>Time</label>
            <input type="time" name="time_from" class="form-control" value="<?php echo !empty($postData['time_from'])?$postData['time_from']:''; ?>">
            <span>TO</span>
            <input type="time" name="time_to" class="form-control" value="<?php echo !empty($postData['time_to'])?$postData['time_to']:''; ?>">
        </div>
        <div class="form-group">
            <input type="submit" class="form-control btn-primary" name="submit" value="Add Event"/>
        </div>
    </form>
  </div>
</div>

<?php 
include 'footer.php';
?>