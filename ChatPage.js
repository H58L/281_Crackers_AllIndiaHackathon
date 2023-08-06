// // JavaScript code to handle group selection and search
// const groupsList = document.querySelectorAll('.group');
// const groupTitle = document.querySelector('.group-name');
// const searchInput = document.getElementById('searchInput');

// // Function to set the group name in the remaining area when a group is clicked
// function setSelectedGroup(groupName) {
//     groupTitle.innerHTML = `<h2>${groupName}</h2>`;
// }

// // Function to handle search functionality
// function handleSearch() {
//     const searchTerm = searchInput.value.toLowerCase();
//     groupsList.forEach((group) => {
//         const groupName = group.dataset.name.toLowerCase();
//         if (groupName.includes(searchTerm)) {
//             group.style.display = 'block';
//         } else {
//             group.style.display = 'none';
//         }
//     });
// }

// // Add click event listeners to the group elements
// groupsList.forEach((group) => {
//     group.addEventListener('click', (event) => {
//         const groupName = event.target.dataset.name;
//         setSelectedGroup(groupName);
//     });
// });

// // Add input event listener to the search input
// searchInput.addEventListener('input', handleSearch);

// // Set default group name on page load
// const defaultGroupName = groupsList[0].dataset.name;
// setSelectedGroup(defaultGroupName);
// JavaScript code to handle group selection
const groupsList = document.querySelectorAll('.group');
const groupTitle = document.querySelector('.group-name');

// Function to set the group name in the remaining area when a group is clicked
function setSelectedGroup(groupName) {
    groupTitle.innerHTML = `<h2>${groupName}</h2>`;
}

// Add click event listeners to the group elements
groupsList.forEach((group) => {
    group.addEventListener('click', (event) => {
        const groupName = event.target.dataset.name;	 
        setSelectedGroup(groupName);
    });
});

// Set default group name on page load
const defaultGroupName = groupsList[0].dataset.name;
setSelectedGroup(defaultGroupName);

// Function to handle search functionality
function handleSearch() {
    const searchTerm = searchInput.value.toLowerCase();
    groupsList.forEach((group) => {
        const groupName = group.dataset.name.toLowerCase();
        if (groupName.includes(searchTerm)) {
            group.style.display = 'block';
        } else {
            group.style.display = 'none';
        }
    });
}

document.addEventListener('DOMContentLoaded', function() {
    const groupsList = document.querySelectorAll('.group');
    const messagesContainer = document.querySelector('.message-box');

    groupsList.forEach((group) => {
        group.addEventListener('click', (event) => {
            const groupID = event.target.dataset.name;
            fetch('ChatPageBox.jsp?groupID=' + encodeURIComponent(groupID))
                .then(response => response.text())
                .then(data => {
                    messagesContainer.innerHTML = data; // Update the messages container
                })
                .catch(error => console.error(error));
        });
    });
});


// Add input event listener to the search input
const searchInput = document.getElementById('searchInput');
searchInput.addEventListener('input', handleSearch);
