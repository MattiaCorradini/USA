let cook = document.getElementById('year');

let maxBounds = [
    [5.499550, -167.276413],
    [83.162102, -52.233040]
];

let map = L.map('map').setView([39.099724,  -94.578331], 3.5);
L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

map.setMaxBounds(maxBounds);

let republicans = []

let democrats = []

fetch('./data/data.json')
    .then(res => res.json())
    .then(data => {
        democrats = data['democrats'];
        republicans = data['republicans'];
    })

let republicansStyle = {
    "color": "#ed393f",
    "weight": 5,
    "opacity": 0.65
};
let democratsStyle = {
    "color": "#4839ed",
    "weight": 5,
    "opacity": 0.65
};

fetch('./states.json')
    .then((response) => response.json())
    .then((geojsonFeature) => {
        geojsonFeature['features'] = geojsonFeature['features'].filter(val => republicans.includes(val['properties']['name'].toUpperCase()));
        console.log(geojsonFeature['features'][0]['properties']['name'].toUpperCase())
        L.geoJSON(geojsonFeature, {style: republicansStyle}).addTo(map);
    });

fetch('./states.json')
    .then((response) => response.json())
    .then((geojsonFeature) => {
        geojsonFeature['features'] = geojsonFeature['features'].filter(val => democrats.includes(val['properties']['name'].toUpperCase()));
        L.geoJSON(geojsonFeature, {style: democratsStyle}).addTo(map);
    });

// tabItems.forEach(tabItem => {
//     tabItem.addEventListener('click', () => {
//         tabItems.forEach(item => item.classList.remove('active'));
//         const activePanel = [...tabItems].filter(item => item.dataset.tab === tabItem.dataset.tab);
//         activePanel.checked = true;
//         map.eachLayer(function (layer) {
//             map.removeLayer(layer);
//         });
//         L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
//             maxZoom: 19,
//             attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
//         }).addTo(map);
//         if (tabItem.dataset.tab === "1") {
//             fetch('./states.json')
//                 .then((response) => response.json())
//                 .then((geojsonFeature) => {
//                     geojsonFeature['features'] = geojsonFeature['features'].filter(val => republicans.includes(val['id']));
//                     L.geoJSON(geojsonFeature, {style: republicansStyle}).addTo(map);
//                 });
//         } else {
//             fetch('./states.json')
//                 .then((response) => response.json())
//                 .then((geojsonFeature) => {
//                     geojsonFeature['features'] = geojsonFeature['features'].filter(val => liberals.includes(val['id']));
//                     L.geoJSON(geojsonFeature, {style: liberalsStyle}).addTo(map);
//                 });
//         }
//     });
// });
