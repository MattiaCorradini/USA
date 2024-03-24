let maxBounds = [
    [5.499550, -167.276413],
    [83.162102, -52.233040]
];

let map = L.map('map').setView([39.099724,  -94.578331], 3.5);
L.tileLayer('https://tiles.stadiamaps.com/tiles/alidade_smooth/{z}/{x}/{y}{r}.{ext}', {
    minZoom: 0,
    maxZoom: 20,
    ext: 'png'
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

// fetch('./states.json')
//     .then((response) => response.json())
//     .then((geojsonFeature) => {
//         geojsonFeature['features'] = geojsonFeature['features'].filter(val => republicans.includes(val['properties']['name'].toUpperCase()));
//         console.log(geojsonFeature['features'][0]['properties']['name'].toUpperCase())
//         L.geoJSON(geojsonFeature, {style: republicansStyle}).addTo(map);
//     });
//
// fetch('./states.json')
//     .then((response) => response.json())
//     .then((geojsonFeature) => {
//         geojsonFeature['features'] = geojsonFeature['features'].filter(val => democrats.includes(val['properties']['name'].toUpperCase()));
//         L.geoJSON(geojsonFeature, {style: democratsStyle}).addTo(map);
//     });

// Aggiungi un gestore di eventi clic per i poligoni

let bottomleft = document.getElementsByClassName("leaflet-bottom leaflet-left");
for (let div of bottomleft){
    let text = document.createElement('p');
    text.id = "stateText";
    text.className = "text-slate-700 text-lg pl-4"
    div.appendChild(text);
}

function onEachFeature(feature, layer) {
    layer.on('click', function (e) {
        window.location.replace(`index.php?state=${feature.properties.name}`);
    });
    layer.on('mouseover', function (a){
        // layer.bindPopup(feature.properties.name).openPopup();
        let stateText = document.getElementById('stateText');
        stateText.textContent = feature.properties.name;
    });
    layer.on('mouseout', function (a){
        // layer.bindPopup(feature.properties.name).openPopup();
        let stateText = document.getElementById('stateText');
        stateText.textContent = "";
    });
}

fetch('./data/states.json')
    .then((response) => response.json())
    .then((geojsonFeature) => {
        let geojsonFeatureRepublicans = geojsonFeature['features'].filter(val => republicans.includes(val['properties']['name'].toUpperCase()));
        let geojsonFeatureDemocrats = geojsonFeature['features'].filter(val => democrats.includes(val['properties']['name'].toUpperCase()));
        L.geoJSON(geojsonFeatureRepublicans, {
            style: republicansStyle,
            onEachFeature: onEachFeature // Aggiungi il gestore di eventi clic
        }).addTo(map);
        L.geoJSON(geojsonFeatureDemocrats, {
            style: democratsStyle,
            onEachFeature: onEachFeature // Aggiungi il gestore di eventi clic
        }).addTo(map);
    });

let qualcosa = document.getElementsByClassName("leaflet-bottom leaflet-right")
for (let aa of qualcosa){
    aa.remove()
}


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


