const album = () => {
  const album_name_request = document.getElementById('album_name')

  if (album_name_request) {
    fetch(
      'https://en.wikipedia.org/w/api.php?action=query&origin=*&prop=extracts&list=search&srsearch=' +
        album_name_request.innerText +
        '&format=json&dataType=jsonp',
      {
        method: 'get',
      }
    )
      .then(function (resp) {
        return resp.json()
      })
      .then(function (data) {
        processId(data)
      })

    // $.ajax({
    //   url: 'https://en.wikipedia.org/w/api.php',
    //   data: {
    //     action: 'query',
    //     prop: 'extracts',
    //     list: 'search',
    //     srsearch: album_name_request.innerText,
    //     format: 'json',
    //   },
    //   dataType: 'jsonp',
    //   success: processId,
    // })

    let pageId

    function processId(data) {
      pageId = data.query.search[0].pageid
      fetch(
        'https://en.wikipedia.org/w/api.php?action=query&origin=*&prop=extracts&redirects=1&exsentences=3&exintro=true&explaintext=true&pageids=' +
          pageId +
          '&format=json&dataType=jsonp',
        {
          method: 'get',
        }
      )
        .then(function (resp) {
          return resp.json()
        })
        .then(function (data) {
          console.log(data)
          processResult(data)
        })
      // $.ajax({
      //   url: 'https://en.wikipedia.org/w/api.php',
      //   data: {
      //     action: 'query',
      //     prop: 'extracts',
      //     redirects: 1,
      //     exsentences: 3,
      //     exintro: true,
      //     explaintext: true,
      //     pageids: pageId,
      //     format: 'json',
      //   },
      //   dataType: 'jsonp',
      //   success: processResult,
      // })

      function processResult(data) {
        const pages = data.query.pages
        const pages_inner = Object.keys(pages)[0]
        const text = pages[pages_inner].extract
        const album_trivia = document.getElementById('album_trivia')
        album_trivia.innerText = text
      }
    }
  }
}

export { album }

//https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&redirects=1&titles=rollingstones
