// assets/js/script.js

document.getElementById("toggle-mode").addEventListener("click", () => {
    document.body.classList.toggle("light-mode");
});

const artistInput = document.getElementById('artist-input');
const suggestionsList = document.getElementById('suggestions');

artistInput.addEventListener('input', async () => {
    const query = artistInput.value;
    if (query.length > 2) {
        const response = await fetch(`index.php?query=${query}`);
        const suggestions = await response.json();
        showSuggestions(suggestions.artists.items);
    } else {
        suggestionsList.innerHTML = '';
    }
});

function showSuggestions(suggestions) {
    suggestionsList.innerHTML = '';
    suggestions.forEach(artist => {
        const li = document.createElement('li');
        li.textContent = artist.name;
        li.addEventListener('click', () => {
            artistInput.value = artist.name;
            suggestionsList.innerHTML = ''; // Clear suggestions
        });
        suggestionsList.appendChild(li);
    });
}
