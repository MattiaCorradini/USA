<!DOCTYPE html>
<html lang="en" data-theme="sunset">
<head>
    <meta charset="UTF-8">
    <title>US elections</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.3/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
<h1>US ELECTION</h1>
<div class="container">
    <h1>The parties</h1>
    <div class="parties">
    <div role="tablist" class="tabs tabs-bordered">
        <input type="radio" name="my_tabs_2" role="tab" class="tab" aria-label="Republican" data-tab="1" checked/>
        <div role="tabpanel" class="tab-content bg-base-100 border-base-300 rounded-box p-6">
            <p><strong>Republican Party:</strong></p>
            <ul>
                <li>Founded in 1854, GOP has shaped American politics for over a century.</li>
                <li>Notable presidents: Richard Nixon, Ronald Reagan, George W. Bush, Donald Trump.</li>
                <li>Ideologies: conservative principles, limited government intervention, strong military stance.</li>
                <li>Current ideologies: increased military spending, anti-immigration, individualism, less government intervention, traditional values.</li>
            </ul>
        </div>

        <input type="radio" name="my_tabs_2" role="tab" class="tab" aria-label="Democratic" data-tab="2" />
        <div role="tabpanel" class="tab-content bg-base-100 border-base-300 rounded-box p-6">
            <p><strong>Democratic Party:</strong></p>
            <ul>
                <li>Founded in 1828, cornerstone of American politics.</li>
                <li>Notable presidents: Franklin D. Roosevelt, John F. Kennedy, Jimmy Carter, Bill Clinton, Barack Obama.</li>
                <li>Ideologies: progressive values, social justice, environmental protection, economic equality.</li>
                <li>Current ideologies: social justice, gun control, environmental protection, healthcare for all, reducing economic inequality.</li>
            </ul>
        </div>
    </div>
    <img src="/img.png">
    </div>
    <h1>Election year timeline</h1>

    <div class="time-line">
        <!--<div class="event"><h2>January-June</h2>
        <p>Caucuses begin in January and end in June, Party Debates take place</p></div>
        <div class="event"><h2>July-September</h2>
        <p>Parties hold conventions nominating candidates</p></div>
        <div class="event"><h2>November</h2>
        <p>Election Day is on the 1st Tuesday in November</p></div>
        <div class="event"><h2>December</h2>
        <p>Electors in the Electoral College cast their votes</p></div>-->
        <ul class="timeline">
            <li>
                <div class="timeline-start">January-June</div>
                <div class="timeline-middle">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-5 h-5"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.857-9.809a.75.75 0 00-1.214-.882l-3.483 4.79-1.88-1.88a.75.75 0 10-1.06 1.061l2.5 2.5a.75.75 0 001.137-.089l4-5.5z" clip-rule="evenodd" /></svg>
                </div>
                <div class="timeline-end timeline-box">Caucuses begin in January and end in June, <br> Party Debates take place</div>
                <hr/>
            </li>
            <li>
                <hr/>
                <div class="timeline-start">July-September</div>
                <div class="timeline-middle">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-5 h-5"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.857-9.809a.75.75 0 00-1.214-.882l-3.483 4.79-1.88-1.88a.75.75 0 10-1.06 1.061l2.5 2.5a.75.75 0 001.137-.089l4-5.5z" clip-rule="evenodd" /></svg>
                </div>
                <div class="timeline-end timeline-box">Parties hold conventions <br> nominating candidates</div>
                <hr/>
            </li>
            <li>
                <hr/>
                <div class="timeline-start">November</div>
                <div class="timeline-middle">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-5 h-5"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.857-9.809a.75.75 0 00-1.214-.882l-3.483 4.79-1.88-1.88a.75.75 0 10-1.06 1.061l2.5 2.5a.75.75 0 001.137-.089l4-5.5z" clip-rule="evenodd" /></svg>
                </div>
                <div class="timeline-end timeline-box">Election Day is on the 1st Tuesday in November</div>
                <hr/>
            </li>
            <li>
                <hr/>
                <div class="timeline-start">December</div>
                <div class="timeline-middle">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-5 h-5"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.857-9.809a.75.75 0 00-1.214-.882l-3.483 4.79-1.88-1.88a.75.75 0 10-1.06 1.061l2.5 2.5a.75.75 0 001.137-.089l4-5.5z" clip-rule="evenodd" /></svg>
                </div>
                <div class="timeline-end timeline-box">Electors in the Electoral <br>  College cast their votes</div>

            </li>
        </ul>
    </div>

    <h1>Number of votes per state</h1>
    <div class="vote">
        <img src="/img_2.png" class="foto">
    </div>
    <!--<div id="map">

    </div>-->
    <a href="index.php?map=true">View map and infos of each elections since 1976</a>
</div>

</body>
</html>
