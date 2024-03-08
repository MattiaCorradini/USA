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

let republicans = [
    '01',
    '02',
    '04',
    '10',
    '13',
    '15',
    '16',
    '17',
    '18',
    '19',
    '25',
    '26',
    '27',
    '28',
    '34',
    '35',
    '36',
    '37',
    '41',
    '42',
    '43',
    '44',
    '45',
    '49',
    '51'
];

let liberals = [
    '03',
    '05',
    '06',
    '07',
    '08',
    '09',
    '11',
    '12',
    '14',
    '20',
    '21',
    '22',
    '23',
    '24',
    '29',
    '30',
    '31',
    '32',
    '33',
    '38',
    '39',
    '40',
    '46',
    '47',
    '48',
    '50'
];

let republicansStyle = {
    "color": "#ed393f",
    "weight": 5,
    "opacity": 0.65
};
let liberalsStyle = {
    "color": "#4839ed",
    "weight": 5,
    "opacity": 0.65
};

fetch('./states.json')
    .then((response) => response.json())
    .then((geojsonFeature) => {
        geojsonFeature['features'] = geojsonFeature['features'].filter(val => republicans.includes(val['id']));
        L.geoJSON(geojsonFeature, {style: republicansStyle}).addTo(map);
    });

const tabItems = document.querySelectorAll('.tab-item');
const tabContent = document.querySelector('.tab-content');

tabItems.forEach(tabItem => {
    tabItem.addEventListener('click', () => {
        tabItems.forEach(item => item.classList.remove('active'));
        tabContent.querySelectorAll('.tab-panel').forEach(panel => panel.classList.remove('active'));
        tabItem.classList.add('active');
        const activePanel = tabContent.querySelector(`.tab-panel[data-tab="${tabItem.textContent}"]`);
        activePanel.classList.add('active');
        map.eachLayer(function (layer) {
            map.removeLayer(layer);
        });
        L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
        }).addTo(map);
        if (tabItem.textContent === 'Republicans') {
            fetch('./states.json')
                .then((response) => response.json())
                .then((geojsonFeature) => {
                    geojsonFeature['features'] = geojsonFeature['features'].filter(val => republicans.includes(val['id']));
                    L.geoJSON(geojsonFeature, {style: republicansStyle}).addTo(map);
                });
        } else {
            fetch('./states.json')
                .then((response) => response.json())
                .then((geojsonFeature) => {
                    geojsonFeature['features'] = geojsonFeature['features'].filter(val => liberals.includes(val['id']));
                    L.geoJSON(geojsonFeature, {style: liberalsStyle}).addTo(map);
                });
        }
    });
});
