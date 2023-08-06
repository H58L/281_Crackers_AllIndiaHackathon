<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Resources</title>
    <link rel="stylesheet" href="resourceadd.css">
</head>
<style>body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    margin: 0;
    padding: 0;
    display: flexbox;
    background-color: #7895CB;
    margin-right: 50px;
    margin-left: 50px;
    margin-top: 0px;
}

.container {
    max-width: 600px;
    margin: 20px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

label {
    display: block;
    margin-bottom: 5px;
}

input[type="text"],
textarea {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: grey;
}

header {
    margin-top: 0;
    margin-left: -50px;
    margin-right: -50px;
    background-color: black;
    display: flex;
    justify-content: space-between;
    align-items: center;
    color: aliceblue;
}

.nav-btn {
    background: none;
    color: white;
    padding: 1.0em 1.5em;
}


.nav-btn-log {
    background: white;
    color: black;
    padding: 0.6em 0.9em;
}

.Logo {
    margin-left: -22em;
}

.navigation {
    float: right;
}

</style>

<body>
    <header>
        <img src="LOGO.png" alt="logo" height="60px" width="60px">
        <h1 class="Logo">Logo</h1>
        <nav class="navigation">
            <button class="nav-btn">Home</button>
            <button class="nav-btn">About</button>
            <button class="nav-btn">Resources</button>
            <button class="nav-btn">Classroom</button>
            <button class="nav-btn">My profile</button>
            <button class="nav-btn-log">Logout</button>
        </nav>
    </header>
    <script src="resourceadd.js"></script>
    <div class="container">
        <h1>Add Resources</h1>
        <form action="resource" method=Post >

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="name">Topic:</label>
            <input type="text" id="topic" name="topic" required>

            <label for="type">File Type</label>
            <input type="text" id="type" name="type" required>

            <label for="url">URL:</label>
            <input type="text" id="url" name="url" required>

            <button type="submit">Add Resource</button>
        </form>

    </div>


</body>
<script>
// JavaScript code to handle form submission and displaying added resources
document.getElementById('resourceForm').addEventListener('submit', function (event) {
    event.preventDefault();

    const urlInput = document.getElementById('url');
    const typeInput = document.getElementById('type');
    const typeName = document.getElementById('name');

    // Clear input fields after submission
    urlInput.value = '';
    typeInput.value = '';
    typeName.value = '';

});</script>
</html>