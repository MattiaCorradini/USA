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
<div class="all">
    <div class="nav navbar bg-base-100 fixed">
        <div class="flex-1">
            <a class="btn btn-ghost text-xl" href="index.php">US ELECTION</a>
        </div>
        <div class="flex-none">
            <button class="btn btn-square btn-ghost">
                <a href="index.php?map=true"><img src="./img/img_4.png" class="icon"></a>
            </button>
        </div>
    </div>

    <div class="section uno bianco" id="home">
        <div class="title">
            <h1>US ELECTION</h1>
            <h3>The best elections database since 1976</h3>
        </div>
        <a href="#next"><img src="./img/img_3.png" class="icon"></a>
    </div>

    <div class="section due" id="next">
        <h1>Branches of Government</h1>
        <div class="overflow-x-auto">
            <table class="table-lg table-zebra">
                <thead>
                <tr>
                    <th>Type</th>
                    <th>Description</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Executive</td>
                    <td>The president, elected every 4 years</td>
                </tr>
                <tr>
                    <td>Judicial</td>
                    <td>Supreme Court, 9 justices, who are chosen by the president</td>
                </tr>
                <tr>
                    <td>Legislative</td>
                    <td>Senate and House of Representatives elected every 6 and 2 years, respectively</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="section due bianco">
        <h1>The parties</h1>
        <div class="parties">
            <div role="tablist" class="tabs tabs-bordered">
                <input type="radio" name="my_tabs_2" role="tab" class="tab" aria-label="Republican" data-tab="1" checked />
                <div role="tabpanel" class="tab-content bg-base-100 border-base-300 rounded-box p-6">
                    <p><strong>Republican Party:</strong></p>
                    <ul>
                        <li>Founded in 1854, GOP has shaped American politics for over a century.</li>
                        <li><i>Notable presidents</i>: Richard Nixon, Ronald Reagan, George W. Bush, Donald Trump.</li>
                        <li><i>Ideologies</i>: conservative principles, limited government intervention, strong military stance.</li>
                        <li><i>Current ideologies</i>: increased military spending, anti-immigration, individualism, less government
                            intervention, traditional values.</li>
                    </ul>
                </div>

                <input type="radio" name="my_tabs_2" role="tab" class="tab" aria-label="Democratic" data-tab="2" />
                <div role="tabpanel" class="tab-content bg-base-100 border-base-300 rounded-box p-6">
                    <p><strong>Democratic Party:</strong></p>
                    <ul>
                        <li>Founded in 1828, cornerstone of American politics.</li>
                        <li><i>Notable presidents</i>: Franklin D. Roosevelt, John F. Kennedy, Jimmy Carter, Bill Clinton, Barack
                            Obama.
                        </li>
                        <li><i>Ideologies</i>: progressive values, social justice, environmental protection, economic equality.</li>
                        <li><i>Current ideologies</i>: social justice, gun control, environmental protection, healthcare for all,
                            reducing economic inequality.</li>
                    </ul>
                </div>

                <input type="radio" name="my_tabs_2" role="tab" class="tab" aria-label="Third&nbsp;Parties" data-tab="3" />
                <div role="tabpanel" class="tab-content bg-base-100 border-base-300 rounded-box p-6">
                    <p><strong>Third Parties:</strong></p>
                    <ul>
                        <li><i>Green Party</i>: abolition of the death penalty, repeal of three-strikes laws, banning of private prisons, legalization of marijuana, and decriminalization of other drugs</li>
                        <li><i>Constitution</i>: laws should be restored to what the party claims is its "Biblical foundations". It has been described by its critics as a theocratic party, as with its predecessor</li>
                        <li><i>Libertarian</i>: individual liberty in personal and economic affairs, avoidance of "foreign entanglements" and military and economic intervention in other nations' affairs, and free trade and migration,  opposes gun control.</li>
                    </ul>
                </div>
            </div>
            <img src="./img/img.png">
        </div>
    </div>

    <div class="section due">
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
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-5 h-5">
                            <path fill-rule="evenodd"
                                  d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.857-9.809a.75.75 0 00-1.214-.882l-3.483 4.79-1.88-1.88a.75.75 0 10-1.06 1.061l2.5 2.5a.75.75 0 001.137-.089l4-5.5z"
                                  clip-rule="evenodd" />
                        </svg>
                    </div>
                    <div class="timeline-end timeline-box">Caucuses begin in January and end in June, <br> Party Debates take
                        place</div>
                    <hr />
                </li>
                <li>
                    <hr />
                    <div class="timeline-start">July-September</div>
                    <div class="timeline-middle">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-5 h-5">
                            <path fill-rule="evenodd"
                                  d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.857-9.809a.75.75 0 00-1.214-.882l-3.483 4.79-1.88-1.88a.75.75 0 10-1.06 1.061l2.5 2.5a.75.75 0 001.137-.089l4-5.5z"
                                  clip-rule="evenodd" />
                        </svg>
                    </div>
                    <div class="timeline-end timeline-box">Parties hold conventions <br> nominating candidates</div>
                    <hr />
                </li>
                <li>
                    <hr />
                    <div class="timeline-start">November</div>
                    <div class="timeline-middle">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-5 h-5">
                            <path fill-rule="evenodd"
                                  d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.857-9.809a.75.75 0 00-1.214-.882l-3.483 4.79-1.88-1.88a.75.75 0 10-1.06 1.061l2.5 2.5a.75.75 0 001.137-.089l4-5.5z"
                                  clip-rule="evenodd" />
                        </svg>
                    </div>
                    <div class="timeline-end timeline-box">Election Day is on the 1st Tuesday in November</div>
                    <hr />
                </li>
                <li>
                    <hr />
                    <div class="timeline-start">December</div>
                    <div class="timeline-middle">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-5 h-5">
                            <path fill-rule="evenodd"
                                  d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.857-9.809a.75.75 0 00-1.214-.882l-3.483 4.79-1.88-1.88a.75.75 0 10-1.06 1.061l2.5 2.5a.75.75 0 001.137-.089l4-5.5z"
                                  clip-rule="evenodd" />
                        </svg>
                    </div>
                    <div class="timeline-end timeline-box">Electors in the Electoral <br> College cast their votes</div>
                </li>
            </ul>
        </div>
    </div>

    <div class="section due bianco">
        <h1>Number of votes per state</h1>
        <div class="vote">
            <img src="./img/img_2.png" class="foto">
        </div>
        <a href="index.php?map=true">View map and information of each elections since 1976</a>
    </div>

</div>

</body>

</html>