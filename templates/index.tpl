<!DOCTYPE html>
<html lang="en" data-theme="corporate" id="ht">

<head>
    <meta charset="UTF-8">
    <title>US elections</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.3/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="styles/style.css">
</head>

<body>
<div class="all">
    <div class="nav navbar fixed glass z-40" style=" background-image: none; ">
        <div class="flex-1">
            <a class="btn btn-ghost text-xl" href="index.php">US ELECTION</a>
        </div>
        <div class="flex justify-between w-28">
            <div>
                <label class="swap swap-rotate">

                    <!-- this hidden checkbox controls the state -->
                    <input type="checkbox" id="theme" class="theme-controller" value="sunset" />

                    <!-- sun icon -->
                    <svg class="swap-off fill-current w-10 h-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M5.64,17l-.71.71a1,1,0,0,0,0,1.41,1,1,0,0,0,1.41,0l.71-.71A1,1,0,0,0,5.64,17ZM5,12a1,1,0,0,0-1-1H3a1,1,0,0,0,0,2H4A1,1,0,0,0,5,12Zm7-7a1,1,0,0,0,1-1V3a1,1,0,0,0-2,0V4A1,1,0,0,0,12,5ZM5.64,7.05a1,1,0,0,0,.7.29,1,1,0,0,0,.71-.29,1,1,0,0,0,0-1.41l-.71-.71A1,1,0,0,0,4.93,6.34Zm12,.29a1,1,0,0,0,.7-.29l.71-.71a1,1,0,1,0-1.41-1.41L17,5.64a1,1,0,0,0,0,1.41A1,1,0,0,0,17.66,7.34ZM21,11H20a1,1,0,0,0,0,2h1a1,1,0,0,0,0-2Zm-9,8a1,1,0,0,0-1,1v1a1,1,0,0,0,2,0V20A1,1,0,0,0,12,19ZM18.36,17A1,1,0,0,0,17,18.36l.71.71a1,1,0,0,0,1.41,0,1,1,0,0,0,0-1.41ZM12,6.5A5.5,5.5,0,1,0,17.5,12,5.51,5.51,0,0,0,12,6.5Zm0,9A3.5,3.5,0,1,1,15.5,12,3.5,3.5,0,0,1,12,15.5Z"/></svg>

                    <!-- moon icon -->
                    <svg class="swap-on fill-current w-10 h-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M21.64,13a1,1,0,0,0-1.05-.14,8.05,8.05,0,0,1-3.37.73A8.15,8.15,0,0,1,9.08,5.49a8.59,8.59,0,0,1,.25-2A1,1,0,0,0,8,2.36,10.14,10.14,0,1,0,22,14.05,1,1,0,0,0,21.64,13Zm-9.5,6.69A8.14,8.14,0,0,1,7.08,5.22v.27A10.15,10.15,0,0,0,17.22,15.63a9.79,9.79,0,0,0,2.1-.22A8.11,8.11,0,0,1,12.14,19.73Z"/></svg>

                </label>
            </div>
            <div>
                <button class="btn btn-square btn-link">
                    <a href="index.php?map=true"><img src="./img/img_4.png" class="icon"></a>
                </button>
            </div>
        </div>

    </div>

    <div class="section uno bg-base-200" id="home">
        <div class="title">
            <h1>US ELECTION</h1>
            <h3>The best elections database since 1976</h3>
        </div>
        <a href="#next"><img src="./img/img_3.png" class="icon"></a>
    </div>

    <div class="section due" id="next">
        <div class="flex flex-col justify-between items-center h-96">
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
    </div>

    <div class="section due bg-base-200">
        <h1>The parties</h1>
        <div class="parties">
            <div role="tablist" class="tabs tabs-bordered ">
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
            <img src="./img/parties.jpg">
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

    <div class="section due bg-base-200">
        <h1>Number of votes per state</h1>
        <div class="vote">
            <img src="./img/img_2.png" class="foto">
        </div>
        <a href="index.php?map=true">View map and information of each elections since 1976</a>
    </div>

</div>

<script src="scripts/themeload.js"></script>

</body>

</html>