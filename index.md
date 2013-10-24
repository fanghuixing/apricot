---
layout: page
title: Apricot 
tagline: An object-oriented modeling language for hybrid systems
---




###XtextApricot Update Site for Eclipse###
XtextApricot is an Eclipse plugin for Apricot language, 
you can install the plugin in Eclipse using this URL (as below). 
For more details, see   <a href="#Install the Plugin">'Install the Plugin'</a>:

    http://fanghuixing.github.io/XtextApricot/

The plugin is developed on <a href="http://www.eclipse.org">Eclipse</a> (Version: Kepler Release,
Build id: 20130614-0229) with <a href="http://www.eclipse.org/Xtext/">Xtext</a> 2.4.3

----------
#User Guide Contents#
1. <a href="#Install the Plugin">Install the Plugin</a>

2. <a href="#Create New Apricot Project">Create New Apricot Project</a>


3. <a href="#Apricot Syntax">Apricot Syntax</a>

4. <a href="#Case Study">Case Study -- Modeling Subway Control System in Apricot</a>



----------

<br>
## <a name="Install the Plugin"> 1. Install the Plugin </a> ##

In the 'Help' menu of eclipse, select 'Install New Software...'

![Install New Software](assets/figs/InstallNewSoftware.jpg)

The 'Install' window will appear, and click 'Add' to add a new Repository.

![Install New Software](assets/figs/add.jpg)

Type the name of the repository (we use 'Apricot' here), and the location 'http://fanghuixing.github.io/XtextApricot/', then click 'OK'

![Install New Software](assets/figs/AddRepository.jpg)

You will see the available software, the name and the version information, select  all as the below, and click 'next'

![Install New Software](assets/figs/availiable.jpg)

It will calculate the dependency and requirement, at last, the 'Install Details' would come up, now click 'Finish'

![Install New Software](assets/figs/install.jpg)

It will install the plugin,

![Install New Software](assets/figs/installing.jpg)

If you see a security warning, just click 'OK'.

![Install New Software](assets/figs/warning.jpg)

After the installation, you have to restart Eclipse. 

![Install New Software](assets/figs/restart.jpg)



<br>
## <a name="Create New Apricot Project">2. Create New Apricot Project</a>##
At first, select 'File'->'New'->'Project':

![Create New Project](assets/figs/newproject.jpg)


Select 'Apricot Project', then click 'Next':

![Create New Project](assets/figs/selectapricot.jpg)


Set the project name, then click 'Finish':


![Create New Project](assets/figs/projectname.jpg)


Now, we get the new Apricot project, the interfaces are listed in the package 'com.fofo.apricot', the example model class is in the package 'model':

![Create New Project](assets/figs/projectview.jpg)


***
<center>    
<img src="assets/figs/apricot.jpg" alt="Apricot"  style="width: 100px;"/>
</center>
***

<img src="http://fanghuixing.github.io/assets/images/name.jpg" style="FLOAT: right; MARGIN-BOTTOM: 0px; MARGIN-right: 5px;height: 30px;width: 82px;">

Author: Huixing Fang 

fang.huixing@gmail.com


<div id="disqus_thread"></div>
<script type="text/javascript">
        /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
        var disqus_shortname = 'xtextapricot'; // required: replace example with your forum shortname

        /* * * DON'T EDIT BELOW THIS LINE * * */
        (function() {
            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
            dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
        })();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
<script type="text/javascript">
    /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
    var disqus_shortname = 'xtextapricot'; // required: replace example with your forum shortname

    /* * * DON'T EDIT BELOW THIS LINE * * */
    (function () {
        var s = document.createElement('script'); s.async = true;
        s.type = 'text/javascript';
        s.src = '//' + disqus_shortname + '.disqus.com/count.js';
        (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
    }());
</script>
<a href="http://www.apricotresearch.com#disqus_thread">Link</a>  
	
{% include JB/setup %}



