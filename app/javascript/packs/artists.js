const artist = () => {
  const artist_name = document.getElementById("artist_name").innerText;
            $.ajax({
                url: 'http://en.wikipedia.org/w/api.php',
                data: { action: 'query', prop: 'extracts', redirects: 1, exsentences: 6, exintro: true, explaintext: true, titles: artist_name, format: 'json' },
                dataType: 'jsonp',
                success: processResult
            });
  function processResult(apiResult){
    const pages = apiResult.query.pages
    const pages_inner = Object.keys(pages)[0]
    const text = pages[pages_inner].extract
  const artist_trivia = document.getElementById("artist_trivia");
    artist_trivia.innerText = text;
  }
}

export {artist}



//https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&redirects=1&titles=rollingstones
