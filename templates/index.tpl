<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>USA elections</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"
          integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY="
          crossorigin=""/>
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
            integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo="
            crossorigin="">
    </script>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
<h1>USA MAP</h1>
<div class="container">
    <div class="tabs">
        <ul class="tab-list">
            <li class="tab-item active">Republicans</li>
            <li class="tab-item">Liberals</li>
        </ul>
        <div class="tab-content">
            <div class="tab-panel active" data-tab="Republicans">
                <p><strong>Republican Party:</strong></p>
                <ul>
                    <li>Founded in 1854, GOP has shaped American politics for over a century.</li>
                    <li>Notable presidents: Richard Nixon, Ronald Reagan, George W. Bush, Donald Trump.</li>
                    <li>Ideologies: conservative principles, limited government intervention, strong military stance.</li>
                    <li>Current ideologies: increased military spending, anti-immigration, individualism, less government intervention, traditional values.</li>
                </ul>
            </div>
            <div class="tab-panel" data-tab="Liberals">
                <p><strong>Democratic Party:</strong></p>
                <ul>
                    <li>Founded in 1828, cornerstone of American politics.</li>
                    <li>Notable presidents: Franklin D. Roosevelt, John F. Kennedy, Jimmy Carter, Bill Clinton, Barack Obama.</li>
                    <li>Ideologies: progressive values, social justice, environmental protection, economic equality.</li>
                    <li>Current ideologies: social justice, gun control, environmental protection, healthcare for all, reducing economic inequality.</li>
                </ul>
            </div>
        </div>
    </div>
    <div id="map"></div>
</div>
<script src="main.js"></script>
</body>
</html>
