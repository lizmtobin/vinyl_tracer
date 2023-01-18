import mapboxgl from '!mapbox-gl'
import 'mapbox-gl/dist/mapbox-gl.css'
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder'

const buildMap = (mapElement) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey
  return new mapboxgl.Map({
    container: 'map',
    // style: 'mapbox://styles/liztobin/cktkgfk0k611517mo8lcoe7ep',
    style: 'mapbox://styles/gidb/cld1jpjcy000t01nyrei4tzy7',
  })
}

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.info_window)
    const element = document.createElement('div')
    element.className = 'marker'
    element.style.backgroundImage = `url('${marker.image_url}')`
    element.style.backgroundSize = 'contain'
    element.style.width = '25px'
    element.style.height = '25px'

    new mapboxgl.Marker(element)
      .setLngLat([marker.lng, marker.lat])
      .setPopup(popup)
      .addTo(map)
  })
}

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds()
  markers.forEach((marker) => bounds.extend([marker.lng, marker.lat]))
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 })
}

const initMapbox = () => {
  const mapElement = document.getElementById('map')
  if (mapElement) {
    const markers = JSON.parse(mapElement.dataset.markers)
    const map = buildMap(mapElement)
    addMarkersToMap(map, markers)
    fitMapToMarkers(map, markers)
  }
}

export { initMapbox }
