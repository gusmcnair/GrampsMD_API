<h1>GrampsMD</h1>

Sick of WebMD telling you you're about to die, when you just have sniffles and a stomachache? Introducing GrampsMD, the folksy, no-frills alternative. Maybe you just need some of great-grandma's spring elixir! Maybe you're just hysterical! Maybe Grandpa doesn't know what you have, but why don't you call him and Grandma more often! Whatever the case may be, Grandpa's advice is sure to beat that of those quack doctors. (Please, please, please do not use GrampsMD for actual medical advice.)

[Link to live app](https://grampsmd.now.sh/)

[Link to frontend repo](https://github.com/gusmcnair/GrampsMDClient)

<h2>How it works</h2>
On load, the client makes a request to GET symptoms from the symptoms API endpoint. The user selects from this list of symptoms, and enters some personal information. This information is sent as another GET request to the ailments API request, and a series of sorting functions are performed on the backend in order to determine the ailment that the symptoms most closely match. These are returned to and displayed on the client. The user then has the option of performing another search.

<h2>Images of states</h2>

![App on load](https://github.com/gusmcnair/GrampsMDClient/blob/master/src/graphics/grampsmdlandingpage.png?raw=true)

![Second form page](https://github.com/gusmcnair/GrampsMDClient/blob/master/src/graphics/grampsmdsecondpage.png?raw=true)

![Results page](https://github.com/gusmcnair/GrampsMDClient/blob/master/src/graphics/grampsmdresults.png?raw=true)

<h2>Technologies used</h2>
<h3>Frontend</h3>
<ul>
    <li>React</li>
    <li>JSX</li>
    <li>CSS</li>
    <li>JavaScript</li>
</ul>
<h3>Backend</h3>
<ul>
    <li>Node.js</li>
    <li>Express.js</li>
    <li>Postgres/PostgreSQL</li>
    <li>Mocha</li>
    <li>Chai</li>
    <li>Knex.js</li>
</ul>
