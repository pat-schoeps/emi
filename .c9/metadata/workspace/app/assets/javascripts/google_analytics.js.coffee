{"filter":false,"title":"google_analytics.js.coffee","tooltip":"/app/assets/javascripts/google_analytics.js.coffee","undoManager":{"mark":1,"position":1,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":42,"column":22},"action":"insert","lines":["class @GoogleAnalytics","","  @load: ->","    # Google Analytics depends on a global _gaq array. window is the global scope.","    window._gaq = []","    window._gaq.push [\"_setAccount\", GoogleAnalytics.analyticsId()]","","    # Create a script element and insert it in the DOM","    ga = document.createElement(\"script\")","    ga.type = \"text/javascript\"","    ga.async = true","    ga.src = ((if \"https:\" is document.location.protocol then \"https://ssl\" else \"http://www\")) + \".google-analytics.com/ga.js\"","    firstScript = document.getElementsByTagName(\"script\")[0]","    firstScript.parentNode.insertBefore ga, firstScript","","    # If Turbolinks is supported, set up a callback to track pageviews on page:change.","    # If it isn't supported, just track the pageview now.","    if typeof Turbolinks isnt 'undefined' and Turbolinks.supported","      document.addEventListener \"page:change\", (->","        GoogleAnalytics.trackPageview()","      ), true","    else","      GoogleAnalytics.trackPageview()","","  @trackPageview: (url) ->","    unless GoogleAnalytics.isLocalRequest()","      if url","        window._gaq.push [\"_trackPageview\", url]","      else","        window._gaq.push [\"_trackPageview\"]","      window._gaq.push [\"_trackPageLoadTime\"]","","  @isLocalRequest: ->","    GoogleAnalytics.documentDomainIncludes \"local\"","","  @documentDomainIncludes: (str) ->","    document.domain.indexOf(str) isnt -1","","  @analyticsId: ->","    # your google analytics ID(s) here...","    'UA-XXXXXXX-XX'","","GoogleAnalytics.load()"]}]}],[{"group":"doc","deltas":[{"start":{"row":40,"column":4},"end":{"row":40,"column":19},"action":"remove","lines":["'UA-XXXXXXX-XX'"]},{"start":{"row":40,"column":4},"end":{"row":40,"column":19},"action":"insert","lines":["'UA-60151334-1'"]}]}]]},"ace":{"folds":[],"scrolltop":414.5,"scrollleft":0,"selection":{"start":{"row":40,"column":19},"end":{"row":40,"column":19},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":28,"state":"start","mode":"ace/mode/coffee"}},"timestamp":1424903738066,"hash":"601a8d911b8f143c766a779b3118025bf87d1250"}