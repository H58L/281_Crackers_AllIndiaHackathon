// Sample data (replace this with data from the backend)
const resources = [
    { name: 'Resource 1', type: 'PDF', url: 'https://example.com/resource1.pdf' },
    { name: 'Resource 2', type: 'Video', url: 'https://example.com/resource2.mp4' },
];

// Function to display the list of resources
function displayResources() {
    const resourceListContainer = document.getElementById('resourceList');

    resources.forEach(resource => {
        const resourceItem = document.createElement('div');
        resourceItem.classList.add('resource-item');

        const nameElement = document.createElement('p');
        nameElement.textContent = `Name: ${resource.name}`;

        const typeElement = document.createElement('p');
        typeElement.textContent = `Type: ${resource.type}`;

        const urlElement = document.createElement('a');
        urlElement.href = resource.url;
        urlElement.textContent = 'View Resource';

        resourceItem.appendChild(nameElement);
        resourceItem.appendChild(typeElement);
        resourceItem.appendChild(urlElement);

        resourceListContainer.appendChild(resourceItem);
    });
}

// Call the function to display resources when the page loads
window.onload = displayResources;