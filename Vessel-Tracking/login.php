<?php
 
        // servername => localhost
        // username => root
        // password => empty
        // database name => staff
        $conn = mysqli_connect("localhost", "root", "", "UserInfo");
         
        // Check connection
        if($conn === false){
            die("ERROR: Could not connect. "
                . mysqli_connect_error());
        }
         
        // Taking all 5 values from the form data(input)
        $UserName =  $_POST['UserName'];
        $Email = $_POST['Email'];
        $Password =  $_POST['Password'];
        // $isAdmin = $_POST['']
        
        if(empty($UserName)||empty($Email)||empty($Password))
        {
            
            echo"Fields Cannot Remain Empty!";
            
        }

        else{
        $sql = "SELECT * FROM admin";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) 
        {
            // OUTPUT DATA OF EACH ROW
            while($row = $result->fetch_assoc())
            {
                // echo "success";
                if($UserName == $row["UserName"] && $Email== $row["Email"] && $Password == $row["Password"])
                {
                    if($row["isAdmin"])
                    {
                    // echo"success";
                    header("Location:task.html");
                    break;
                    }
                    else
                    {
                        header("Location:index.html");
                    }
                    
                }

                else {
                    
                    echo "ERROR! Incorrect Details!";
                    // header("Location:login.html");
                }
            }
        } 
        
    }
       $conn->close();
        // Close connection
        // mysqli_close($conn);
        ?>