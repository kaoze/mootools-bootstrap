<!DOCTYPE html>
<html lang="en">
  <!-- test_runner_no_wrapper -->
  <head>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le javascript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
    <script src="${get_asset_url('Bootstrap','prettify.js')}"></script>
    <script src="/depender/build?requireLibs=Bootstrap&require=Core/DomReady&version=${version}"></script>
    <script>$(function () { prettyPrint() })</script>

    <!-- Le styles -->
    <link href="${get_asset_url('Bootstrap','bootstrap.css')}" rel="stylesheet">
    <link href="${get_asset_url('Bootstrap','docs.css')}" rel="stylesheet">
    <link href="${get_asset_url('Bootstrap','prettify.css')}" rel="stylesheet">

  </head>

  <body id="bootstrap-js">

    <!-- Topbar
    ================================================== -->
    <div class="topbar">
      <div class="fill">
        <div class="container">
          <h3><a href="#">Bootstrap JS (for MooTools)</a></h3>
          <ul>
            <li><a href="#overview">Overview</a></li>
            <li><a href="#modal">Modals</a></li>
            <li><a href="#dropdown">Dropdown</a></li>
            <li><a href="#tabs">Tabs</a></li>
            <li><a href="#twipsy">Twipsy</a></li>
            <li><a href="#popover">Popover</a></li>
            <li><a href="#alerts">Alerts</a></li>
            <li><a href="#scrollspy">ScrollSpy</a></li>
          </ul>
        </div>
      </div>
    </div>

    <!-- Masthead (blueprinty thing)
    ================================================== -->
    <header class="jumbotron subhead" id="overview">
      <div class="inner">
        <div class="container">
          <h1>Javascript for Bootstrap</h1>
          <p class="lead">
            Bring Bootstrap's components to life with new, custom plugins that work with <a href="http://mootools.net/" target="_blank"><strong>MooTools</strong></a>.
          </p>
          <p><a href="http://twitter.github.com/bootstrap/">&larr; Back to Bootstrap home</a></p>
        </div><!-- /container -->
      </div>
    </header>

    <div class="container">

    <!-- Modal
    ================================================== -->

    <section id="modal">
      <div class="page-header">
        <h1>Modals <small>Delegator.BS.ShowPopup.js &amp; Behavior.BS.Popup.js</small></h1>
      </div>
      <div class="row">
        <div class="span4 columns">
          <p>Our Modal plugin is a super slim take on the traditional modal js plugin, taking special care to include only the bare functionality that we require here at twitter.</p>
        </div>
        <div class="span12 columns">
          <h3>Using Behavior.Popup and Delegator.ShowPopup</h3>
<pre class="prettyprint linenums">
  &lt;!-- this button will show the popup below it -->
  &lt;button data-trigger="BS.showPopup" data-bs-showpopup-target="!body #demoPopup"
      class="btn danger">Launch Modal&lt;/button>

  &lt;div data-behavior="BS.Popup" class="modal hide" id="demoPopup">
    &lt;div class="modal-header">
      &lt;a href="#" class="close">&times;&lt;/a>
      &lt;h3>Modal Heading&lt;/h3>
    &lt;/div>
    &lt;div class="modal-body">
      &lt;p>One fine body...&lt;/p>
    &lt;/div>
    &lt;div class="modal-footer">
      &lt;a href="#" class="btn primary">Primary&lt;/a>
      &lt;a href="#" class="btn secondary">Secondary&lt;/a>
    &lt;/div>
  &lt;/div>
</pre>
          <h3>Behavior.BS.Popup Options</h3>
          <table class="zebra-striped">
            <thead>
             <tr>
               <th style="width: 100px;">Name</th>
               <th style="width: 50px;">type</th>
               <th style="width: 50px;">default</th>
               <th>description</th>
             </tr>
            </thead>
            <tbody>
            <tr>
              <td>hide</td>
              <td>boolean</td>
              <td>false</td>
              <td>Do not show the Popup immediately.</td>
            </tr>
             <tr>
               <td>mask</td>
               <td>boolean</td>
               <td>true</td>
               <td>Includes a modal-backdrop element.</td>
             </tr>
             <tr>
               <td>animate</td>
               <td>boolean</td>
               <td>true</td>
               <td>Slides the window into and out of view with a smooth transition.</td>
             </tr>
             <tr>
               <td>closeOnClickOut</td>
               <td>boolean</td>
               <td>true</td>
               <td>Close the popup when the user clicks out of it (on the mask or, if it's not used, the document body outside the popup).</td>
             </tr>
             <tr>
               <td>closeOnEsc</td>
               <td>boolean</td>
               <td>false</td>
               <td>Closes the modal when escape key is pressed</td>
             </tr>
            </tbody>
          </table>
          <h3>Behavior Options</h3>
          <p>
            <span class="label notice">Notice</span>
            Behavior options can be set inline (<code>data-filtername-option="value"</code>) or using JSON-like values like so:
          </p>
<pre class="prettyprint linenums">
  &lt;div data-behavior="FilterName" data-filtername-options="
    'string': 'foo',
    'number': 1,
    'object': { 'array': [1,2]}
  ">...&lt;/div>
</pre>
          <h3>Selectors</h3>
          <p>
            <span class="label notice">Notice</span>
            Selectors in Behavior filters and Delegator triggers are always relative to the element they modify. So if you want
            to find an element that is a child of that element, you can just use a regular selector, but if you need to find
            an element that is somewhere else in the DOM, use <a href="http://mootools.net/docs/core/Slick/Slick">Slick's</a>
            reverse combinators (<code>!.someParent #someChildOfThatParent</code> - e.g. <code>!body #foo</code>).
          </p>

          <h3>Demo</h3>
          <!-- sample modal content -->
          <div data-behavior="BS.Popup" class="modal hide" id="demoPopup">
            <div class="modal-header">
              <a href="#" class="close">&times;</a>
              <h3>Modal Heading</h3>
            </div>
            <div class="modal-body">
              <p>One fine body...</p>
            </div>
            <div class="modal-footer">
              <a href="#" class="btn primary">Primary</a>
              <a href="#" class="btn secondary">Secondary</a>
            </div>
          </div>


          <button data-trigger="BS.showPopup" data-bs-showpopup-target="!body #demoPopup" class="btn danger">Launch Modal</button>

        </div>
      </div>
    </section>


    <!-- Dropdown
    ================================================== -->

    <section id="dropdown">
      <div class="page-header">
        <h1>Dropdown <small>Behavior.BS.Dropdown.js</small></h1>
      </div>
      <div class="row">
        <div class="span4 columns">
          <p>This plugin is for adding dropdown interaction to the bootstrap topbar or tabbed navigations.</p>
        </div>
        <div class="span12 columns">
          <h3>Using Behavior.BS.Dropdown</h3>
          <p>To quickly add dropdown functionality to any nav element, use the <code>Dropdown</code> behavior. Any valid bootstrap dropdown inside the container will automatically be activated.</p>
<pre class="prettyprint linenums">
&lt;-- a simple example -->
&lt;ul data-behavior="BS.Dropdown">
  &lt;li class="menu">
    &lt;a href="#" class="menu">Menu2&lt;/a>
    &lt;ul class="menu-dropdown">
      &lt;li>&lt;a>item1&lt;/a>&lt;/li>
      &lt;li>&lt;a>item2&lt;/a>&lt;/li>
      &lt;li>&lt;a>item3&lt;/a>&lt;/li>
    &lt;/ul>
  &lt;/li>
&lt;/ul>

&lt;-- an example with numerous menus -->
&lt;div class="topbar-wrapper" data-behavior="BS.Dropdown">
  &lt;div id="topbar-example" class="topbar">
    &lt;div class="topbar-inner">
      &lt;div class="container">
        &lt;h3>&lt;a href="#">Project Name&lt;/a>&lt;/h3>
        &lt;ul>
          &lt;li>&lt;a href="#">Link&lt;/a>&lt;/li>
          &lt;li>&lt;a href="#">Link&lt;/a>&lt;/li>
        &lt;/ul>
        &lt;form action="">
          &lt;input type="text" placeholder="Search" />
        &lt;/form>
        &lt;ul class="nav secondary-nav">
          &lt;li class="menu">
            &lt;a href="#" class="menu">Dropdown 1&lt;/a>
            &lt;ul class="menu-dropdown">
              &lt;li>&lt;a href="#">Secondary link&lt;/a>&lt;/li>
              &lt;li>&lt;a href="#">Something else here&lt;/a>&lt;/li>
              &lt;li class="divider">&lt;/li>
              &lt;li>&lt;a href="#">Another link&lt;/a>&lt;/li>
            &lt;/ul>
          &lt;/li>
          &lt;li class="menu">
            &lt;a href="#" class="menu">Dropdown 2&lt;/a>
            &lt;ul class="menu-dropdown">
              &lt;li>&lt;a href="#">Secondary link&lt;/a>&lt;/li>
              &lt;li>&lt;a href="#">Something else here&lt;/a>&lt;/li>
              &lt;li class="divider">&lt;/li>
              &lt;li>&lt;a href="#">Another link&lt;/a>&lt;/li>
            &lt;/ul>
          &lt;/li>
        &lt;/ul>
      &lt;/div>
    &lt;/div>
  &lt;/div>
&lt;/div></pre>
          <h3>Demo</h3>
          <div class="topbar-wrapper" data-behavior="BS.Dropdown">
            <div id="topbar-example" class="topbar">
              <div class="topbar-inner">
                <div class="container">
                  <h3><a href="#">Project Name</a></h3>
                  <ul>
                    <li><a href="#">Link</a></li>
                    <li><a href="#">Link</a></li>
                  </ul>
                  <form action="">
                    <input type="text" placeholder="Search" />
                  </form>
                  <ul class="nav secondary-nav">
                    <li class="menu">
                      <a href="#" class="menu">Dropdown 1</a>
                      <ul class="menu-dropdown">
                        <li><a href="#">Secondary link</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Another link</a></li>
                      </ul>
                    </li>
                    <li class="menu">
                      <a href="#" class="menu">Dropdown 2</a>
                      <ul class="menu-dropdown">
                        <li><a href="#">Secondary link</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Another link</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Tabs
    ================================================== -->

    <section id="tabs">
      <div class="page-header">
        <h1>Tabs <small>Behavior.BS.Tabs.js</small></h1>
      </div>
      <div class="row">
        <div class="span4 columns">
          <p>This plugin adds quick, dynamic tab and pill functionality.</p>
        </div>
        <div class="span12 columns">
          <h3>Markup</h3>
          <p>You can activate a tab or pill navigation without writing any javascript by simply giving them a <code>data-behavior="Tabs"</code>.</p>
          <pre class="prettyprint linenums"> &lt;ul class="tabs" data-behavior="BS.Tabs" &gt;...&lt;/ul&gt;</pre>
          <p>
            Activates tab functionality for a given container.
          </p>
<pre class="prettyprint linenums">
  &lt;ul class="tabs" data-behavior="BS.Tabs">
    &lt;li class="active">&lt;a>Home&lt;/a>&lt;/li>
    &lt;li>&lt;a>Profile&lt;/a>&lt;/li>
    &lt;li>&lt;a>Messages&lt;/a>&lt;/li>
    &lt;li>&lt;a>Settings&lt;/a>&lt;/li>
  &lt;/ul>
  &lt;div id="my-tab-content" class="tab-content">
    &lt;div class="active" id="home">
      ...
    &lt;/div>
    &lt;div id="profile">
      ...
    &lt;/div>
    &lt;div id="messages">
      ...
    &lt;/div>
    &lt;div id="settings">
      ...
    &lt;/div>
  &lt;/div>
</pre>
          <h3>Behavior.BS.Tab Options</h3>
          <table class="zebra-striped">
            <thead>
             <tr>
               <th style="width: 100px;">Name</th>
               <th style="width: 50px;">type</th>
               <th style="width: 50px;">default</th>
               <th>description</th>
             </tr>
            </thead>
            <tbody>
            <tr>
              <td>tabs-selector</td>
              <td>string</td>
              <td>">li"</td>
              <td>A selector to find the tab elements that the user clicks.</td>
            </tr>
             <tr>
               <td>sections-selector</td>
               <td>string</td>
               <td>"+.tab-content > div"</td>
               <td>A selector to find the sections that correlate to each tab.</td>
             </tr>
             <tr>
               <td>smooth</td>
               <td>boolean</td>
               <td>false</td>
               <td>Fade in the content when the tabs are switched.</td>
             </tr>
             <tr>
               <td>smoothSize</td>
               <td>boolean</td>
               <td>false</td>
               <td>Transition the height of each tab section as its displayed.</td>
             </tr>
             <tr>
               <td>selectedClass</td>
               <td>string</td>
               <td>"active"</td>
               <td>The class added to the active tab.</td>
             </tr>
             <tr>
               <td>hash</td>
               <td>string</td>
               <td>--</td>
               <td>If defined, will add a hash value to the window location so that if the user reloads the selected tab will be selected by default.</td>
             </tr>
            </tbody>
          </table>
          <h3>Demo</h3>
          <ul class="tabs" data-behavior="BS.Tabs">
            <li class="active"><a href="#home">Home</a></li>
            <li><a>Profile</a></li>
            <li><a>Messages</a></li>
            <li><a>Settings</a></li>
          </ul>
          <div id="my-tab-content" class="tab-content">
            <div class="active" id="home">
              <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
            </div>
            <div id="profile">
              <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
            </div>
            <div id="messages">
              <p>Banksy do proident, brooklyn photo booth delectus sunt artisan sed organic exercitation eiusmod four loko. Quis tattooed iphone esse aliqua. Master cleanse vero fixie mcsweeney's. Ethical portland aute, irony food truck pitchfork lomo eu anim. Aesthetic blog DIY, ethical beard leggings tofu consequat whatever cardigan nostrud. Helvetica you probably haven't heard of them carles, marfa veniam occaecat lomo before they sold out in shoreditch scenester sustainable thundercats. Consectetur tofu craft beer, mollit brunch fap echo park pitchfork mustache dolor.</p>
            </div>
            <div id="settings">
              <p>Sunt qui biodiesel mollit officia, fanny pack put a bird on it thundercats seitan squid ad wolf bicycle rights blog. Et aute readymade farm-to-table carles 8-bit, nesciunt nulla etsy adipisicing organic ea. Master cleanse mollit high life, next level Austin nesciunt american apparel twee mustache adipisicing reprehenderit hoodie portland irony. Aliqua tofu quinoa +1 commodo eiusmod. High life williamsburg cupidatat twee homo leggings. Four loko vinyl DIY consectetur nisi, marfa retro keffiyeh vegan. Fanny pack viral retro consectetur gentrify fap.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Tips
    ================================================== -->

    <section id="twipsy">
      <div class="page-header">
        <h1>Twipsy <small>Bootstrap.Twipsy.js and Behavior.Twipsy.js</small></h1>
      </div>
      <div class="row">
        <div class="span4 columns">
          <p>Based on the excellent jQuery.tipsy plugin written by Jason Frame; twipsy is an updated version, which doesn't rely on images, uses css3 for animations, and is based on MooTools.</p>
        </div>
        <div class="span12 columns">
          <h3>Using Behavior.Twipsy.js</h3>
          <pre class="prettyprint linenums">&lt;a data-behavior="BS.Twipsy" title="I'm a twipsy">a tip!&lt;/a></pre>
          <h3>Options</h3>
          <table class="zebra-striped">
            <thead>
             <tr>
               <th style="width: 100px;">Name</th>
               <th style="width: 100px;">type</th>
               <th style="width: 50px;">default</th>
               <th>description</th>
             </tr>
            </thead>
            <tbody>
             <tr>
               <td>animate</td>
               <td>boolean</td>
               <td>true</td>
               <td>apply a css fade transition to the tooltip</td>
             </tr>
             <tr>
               <td>delayIn</td>
               <td>number</td>
               <td>200</td>
               <td>delay before showing tooltip (ms)</td>
             </tr>
             <tr>
               <td>delayOut</td>
               <td>number</td>
               <td>0</td>
               <td>delay before hiding tooltip (ms)</td>
             </tr>
             <tr>
               <td>fallback</td>
               <td>string</td>
               <td>''</td>
               <td>text to use when no tooltip title is present</td>
             </tr>
             <tr>
               <td>placement</td>
               <td>string</td>
               <td>'above'</td>
               <td>how to position the tooltip - above | below | left | right</td>
             </tr>
             <tr>
               <td>offset</td>
               <td>number</td>
               <td>0</td>
               <td>pixel offset of tooltip from target element</td>
             </tr>
             <tr>
               <td>title</td>
               <td>string, function</td>
               <td>'title'</td>
               <td>attribute or method for retrieving title text</td>
             </tr>
             <tr>
               <td>trigger</td>
               <td>string</td>
               <td>'hover'</td>
               <td>how tooltip is triggered - hover | focus | manual</td>
             </tr>
            </tbody>
          </table>
          <h3>Demo</h3>
          <div class="well">
            <p class="muted">Tight pants next level keffiyeh
              <a href="#" data-behavior='BS.Twipsy' data-bs-twipsy-location="above" title='Some title text'>you probably</a> haven't heard of them. Photo booth beard raw denim letterpress vegan messenger bag stumptown. Farm-to-table seitan, mcsweeney's fixie sustainable quinoa 8-bit american apparel
              <a href="#" data-behavior='BS.Twipsy' data-bs-twipsy-location="below" title='Another twipsy'>have a</a> terry richardson vinyl chambray. Beard stumptown, cardigans banh mi lomo thundercats. Tofu biodiesel williamsburg marfa, four loko mcsweeney's cleanse vegan chambray. A
              <a href="#" data-behavior='BS.Twipsy' data-bs-twipsy-location="left" title='Another one here too'>really ironic</a> artisan whatever keytar, scenester farm-to-table banksy Austin
              <a href="#" data-behavior='BS.Twipsy' data-bs-twipsy-location="right" title='The last tip!'>twitter handle</a> freegan cred raw denim single-origin coffee viral.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Popovers
    ================================================== -->

    <section id="popover">
      <div class="page-header">
        <h1>Popovers <small>Behavior.Popover.js</small></h1>
      </div>
      <div class="row">
        <div class="span4 columns">
          <p>The popover plugin provides a simple interface for adding popovers to your application.</p>
        </div>
        <div class="span12 columns">
          <h3>Using Behavior.Popover.js</h3>
          <pre class="prettyprint linenums">&lt;a data-behavior="BS.Popover" title="A Title" data-popover-content="And here's some amazing content. It's very engaging. right?">hover for popover&lt;/a></pre>
          <h3>Options</h3>
          <table class="zebra-striped">
            <thead>
             <tr>
               <th style="width: 100px;">Name</th>
               <th style="width: 100px;">type</th>
               <th style="width: 50px;">default</th>
               <th>description</th>
             </tr>
            </thead>
            <tbody>
             <tr>
               <td>animate</td>
               <td>boolean</td>
               <td>true</td>
               <td>apply a css fade transition to the tooltip</td>
             </tr>
             <tr>
               <td>delayIn</td>
               <td>number</td>
               <td>200</td>
               <td>delay before showing tooltip (ms)</td>
             </tr>
             <tr>
               <td>delayOut</td>
               <td>number</td>
               <td>0</td>
               <td>delay before hiding tooltip (ms)</td>
             </tr>
             <tr>
               <td>fallback</td>
               <td>string</td>
               <td>''</td>
               <td>text to use when no tooltip title is present</td>
             </tr>
             <tr>
               <td>placement</td>
               <td>string</td>
               <td>'right'</td>
               <td>how to position the tooltip - above | below | left | right</td>
             </tr>
             <tr>
               <td>offset</td>
               <td>number</td>
               <td>10</td>
               <td>pixel offset of tooltip from target element</td>
             </tr>
             <tr>
               <td>title</td>
               <td>string, function</td>
               <td>'title'</td>
               <td>attribute or method for retrieving title text</td>
             </tr>
             <tr>
               <td>content</td>
               <td>string, function</td>
               <td>'data-content'</td>
               <td>attribute or method for retrieving content text</td>
             </tr>
             <tr>
               <td>trigger</td>
               <td>string</td>
               <td>'hover'</td>
               <td>how tooltip is triggered - hover | focus | manual</td>
             </tr>
            </tbody>
          </table>
          <h3>Demo</h3>
          <a href="#" class="btn danger" data-behavior="BS.Popover" title="A Title" data-content="And here's some amazing content. It's very engaging. right?">hover for popover</a>
        </div>
      </div>
    </section>



    <!-- Alerts
    ================================================== -->

    <section id="alerts">
      <div class="page-header">
        <h1>Alerts</h1>
      </div>
      <div class="row">
        <div class="span4 columns">
          <p>Adding close functionality to alerts with MooTools' Behavior is super easy.</p>
        </div>
        <div class="span12 columns">
          <h3>Closing Alerts</h3>
          <p>Closing errors uses the `nix` trigger from the `Fx.Reveal` delegator in <a href="https://github.com/anutron/more-behaviors">more-behaviors</a>. You can put this trigger on any element.</p>
          <h3>Markup</h3>
<pre class="prettyprint linenums">&lt;div class="alert-message error">
  &lt;!-- the data trigger references the parent div.alert-message -->
  &lt;a class="close" data-trigger="nix" data-nix-options="
    'target': '!div.alert-message'
  ">&amp;times;&lt;/a>
  &lt;p>Oh snap! You Got an error!&lt;/p>
&lt;/div></pre>
          <h3>Demo</h3>
          <div class="alert-message warning fade in" data-alert="alert" >
            <a class="close" href="#" data-trigger="nix" data-nix-options="
              'target': '!div.alert-message'
            ">&times;</a>
            <p><strong>Holy guacamole!</strong> Best check yo self, you're not looking too good.</p>
          </div>
          <div class="alert-message block-message error fade in" data-alert="alert" >
            <a class="close" href="#" data-trigger="nix" data-nix-options="
              'target': '!div.alert-message'
            ">&times;</a>
            <p><strong>Oh snap! You got an error!</strong> Change this and that and try again. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum.</p>
            <div class="alert-actions">
              <a class="btn small" href="#" data-trigger="nix" data-nix-options="
                'target': '!div.alert-actions'
              ">Take this action</a> <a class="btn small" href="#">Or do this</a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- ScrollSpy
     ================================================== -->

     <section id="scrollspy">
       <div class="page-header">
         <h1>ScrollSpy <small></small></h1>
       </div>
       <div class="row">
         <div class="span16 columns">
           <p>There is currently no support for the Scrollspy functionality found in Bootstrap.</p>
         </div>
       </div>
     </section>

    </div><!-- /container -->

    <footer class="footer">
      <div class="container">
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>
          Designed and built with all the love in the world <a href="http://twitter.com/twitter" target="_blank">@twitter</a> by <a href="http://twitter.com/mdo" target="_blank">@mdo</a> and <a href="http://twitter.com/fat" target="_blank">@fat</a>.<br />
          Licensed under the <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache License v2.0</a>.
        </p>
      </div>
    </footer>

    <script>
      var behavior = new Behavior().apply(document.body);
      var delegator = new Delegator({
        getBehavior: function(){ return behavior; }
      }).attach(document.body);
    </script>
  </body>
</html>
