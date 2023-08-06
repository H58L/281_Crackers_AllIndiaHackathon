/**
 * 
 */

// index.js
const buttons = document.querySelectorAll('.right');

function handleClick(event) {
    const button = event.target;
    button.textContent = 'Joined';
    button.classList.add('joined');
}

buttons.forEach((button) => {
    button.addEventListener('click', handleClick);
});

