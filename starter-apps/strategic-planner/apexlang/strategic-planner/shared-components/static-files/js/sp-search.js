(() => {
  // Select all input fields subtype search within an UT template
  const inputFields = document.querySelectorAll('.t-Form-fieldContainer input[type="search"]');

  // Loop through each input field and inject a clear button
  inputFields.forEach(inputField => {
    // Create a span element to act as the clear button
    const clearButton = document.createElement('span');
    clearButton.setAttribute("aria-hidden", "true"); 
    clearButton.classList.add('sp-ClearButton');

    // Add an event listener to clear the input field when clicked
    clearButton.addEventListener('click', () => {
      inputField.value = ''; // Clear value
      inputField.focus(); // Set focus back to the input field
    });

    // Append the span to the DOM, right after the input field
    inputField.parentNode.insertBefore(clearButton, inputField.nextSibling);
  });
})();
