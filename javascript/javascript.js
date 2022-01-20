const container = document.querySelector('#container');

const content1 = document.createElement('p');
content1.style.cssText = 'color: red;';
content1.textContent = 'Hey I\'m red!';
container.appendChild(content1);

const content2 = document.createElement('h3');
content2.style.cssText = 'color: blue;';
content2.textContent = 'I\'m a blue h3!';
container.appendChild(content2);

const content3 = document.createElement('div');
content3.style.cssText = 'border: solid black; background-color: pink;';

const content4 = document.createElement('h1');
content4.textContent = 'I\'m in a div!';
content3.appendChild(content4);

const content5 = document.createElement('p');
content5.textContent = 'ME TOO!';
content3.appendChild(content5);

container.appendChild(content3);
btn.addEventListener('click', function (e) {
    e.target.style.background = 'blue';
});