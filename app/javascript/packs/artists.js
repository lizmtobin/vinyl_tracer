const artist = () => {
  const artist_name = document.getElementById('artist_name')

  if (artist_name) {
    console.log(artist_name.innerText)
    fetch(
      'https://en.wikipedia.org/w/api.php?action=query&origin=*&prop=extracts&redirects=1&exsentences=6&exintro=true&explaintext=true&titles=' +
        artist_name.innerText +
        '&format=json&dataType=jsonp',
      {
        method: 'get',
      }
    )
      .then(function (resp) {
        return resp.json()
      })
      .then(function (data) {
        processResult(data)
      })

    function processResult(data) {
      console.log(data)
      const pages = data.query.pages
      const pages_inner = Object.keys(pages)[0]
      console.log(pages_inner)
      const text = pages[pages_inner].extract
      const artist_trivia = document.getElementById('artist_trivia')
      artist_trivia.innerText = text
    }
  }
}

//   if (artist_name) {
//     $.ajax({
//       url: 'https://en.wikipedia.org/w/api.php',
//       data: {
//         action: 'query',
//         prop: 'extracts',
//         redirects: 1,
//         exsentences: 6,
//         exintro: true,
//         explaintext: true,
//         titles: artist_name.innerText,
//         format: 'json',
//       },
//       dataType: 'jsonp',
//       success: processResult,
//     })
//     function processResult(apiResult) {
//       const pages = apiResult.query.pages
//       const pages_inner = Object.keys(pages)[0]
//       const text = pages[pages_inner].extract
//       const artist_trivia = document.getElementById('artist_trivia')
//       artist_trivia.innerText = text
//     }
//   }
// }

export { artist }

//https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&redirects=1&titles=rollingstones
