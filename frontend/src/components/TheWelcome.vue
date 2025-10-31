<template>
<div id="result"></div>
<button id="button"> Click here for a cat fact</button>

</template>

 <script>
  document.addEventListener("DOMContentLoaded", () => {
    async function loadCatFact() {
      try {
        const response = await fetch('https://catfact.ninja/fact');
        const data = await response.json();
        document.getElementById('result').innerText = data.fact;
      } catch (error) {
        document.getElementById('result').innerText = 'Error fetching cat fact.';
        console.error(error);
      }
    }

    document.getElementById("button").onclick = loadCatFact;
  });

  
</script>