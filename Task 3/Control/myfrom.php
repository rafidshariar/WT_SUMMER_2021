<?php
$Name="";
$email="";
$Comment="";
$validatepassword="";
$validatecomment="";
$validateradio="";
$validatecheckbox="";
$v1=$v2=$v3="";
$validateemail="";
$Password="";
$validImage="";

if($_SERVER["REQUEST_METHOD"]=="POST")
{
$Name=$_REQUEST["name"]; 
$email=$_REQUEST["email"]; 
$Comment=$_REQUEST["comment"];
$Password=$_REQUEST["password"];

if(!empty($Name) && strlen($Name)>=4) 
{
    $Name="Mr.  ".$Name;
}

else if(empty($Name))
{
    $Name="Error!! Name Can not be empty!";
}
else if( strlen($Name)<6)
{
    $Name="Sorry! Name is too short and need to be more than 4 character !!";
}
else if(empty($Name) &&  strlen($Name)<6)
{
    $Name="Invalid  !!";
}



if(empty($email) || !preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix",$email))
{
    $validateemail="Enter Valid a Email!";
}
else{
    $validateemail= "Email:  ".$email;
}


if(strlen($Password)<8)
{
    $validatepassword=" Password Must Contain 8 character!!";
}
else{
    $validatepassword=$Password;
}



if(strlen($Comment)<15)
{
    $validatecomment=" Comment Must Contain 15 character!!";
}
else{
    $validatecomment=$Comment;
}

if(isset($_REQUEST["gender"]))
{
    $validateradio= "Gender - ".$_REQUEST["gender"];
}
else{
    $validateradio= "Gender Must not be empty!";
}



if(!isset($_REQUEST["Reading"])&&!isset($_REQUEST["Dancing"])&&!isset($_REQUEST["Singing"]))
{
    $validatecheckbox = "Minimum One Checkbox needs to be checked!";
    
}
else{
    $validatecheckbox="Selected Hobbies are : ";
   if(isset($_REQUEST["Dancing"]))
   {
       $v1= $_REQUEST["Dancing"];
       $validatecheckbox=$validatecheckbox.$v1;
   }
   if(isset($_REQUEST["Singing"]))
   { 
       $v2= $_REQUEST["Singing"];
       $validatecheckbox=$validatecheckbox.",".$v2;
   }
   if(isset($_REQUEST["Reading"]))
   {
    $v3= $_REQUEST["Reading"];
    $validatecheckbox=$validatecheckbox.",".$v3;
   }  


   $target_File="Images/".$_FILES["fileupload"]["name"];

   if(move_uploaded_file($_FILES["fileupload"]["tmp_name"],$target_File))
   {
       echo "You have uploadede a new file";
      #echo "br".$_FILES(["fileupload"]["type"]);
       #echo "<img src='".$target_File."'>";
   }
   else 
       $validFile= "Sorry ,You must upload a file to continue";
   
}
}

 ?>