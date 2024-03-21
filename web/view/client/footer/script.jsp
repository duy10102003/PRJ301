<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
<!-- jQuery library -->

<!--Start of PureChat Script-->
<script type='text/javascript' data-cfasync='false'>window.purechatApi = {l: [], t: [], on: function () {
            this.l.push(arguments);
        }};
    (function () {
        var done = false;
        var script = document.createElement('script');
        script.async = true;
        script.type = 'text/javascript';
        script.src = 'https://app.purechat.com/VisitorWidget/WidgetScript';
        document.getElementsByTagName('HEAD').item(0).appendChild(script);
        script.onreadystatechange = script.onload = function (e) {
            if (!done && (!this.readyState || this.readyState == 'loaded' || this.readyState == 'complete')) {
                var w = new PCWidget({c: 'c2162c63-cf30-4c39-804c-e2a57b451b37', f: true});
                done = true;
            }
        };
    })();</script>

<!--End of Tawk.to Script-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${url}/js/bootstrap.js"></script>  
<!-- SmartMenus jQuery plugin -->
<!-- SmartMenus jQuery Bootstrap Addon -->

<!-- To Slider JS -->
<script src="${url}/js/sequence.js"></script>
<script src="${url}/js/sequence-theme.modern-slide-in.js"></script>  
<!-- Product view slider -->
<script type="text/javascript" src="${url}/js/jquery.simpleGallery.js"></script>
<script type="text/javascript" src="${url}/js/jquery.simpleLens.js"></script>
<!-- slick slider -->
<script type="text/javascript" src="${url}/js/slick.js"></script>
<!-- Price picker slider -->
<script type="text/javascript" src="${url}/js/nouislider.js"></script>
<script type="text/javascript" src="${url}/js/validate.js"></script>
<!-- Custom js -->
<script type="text/javascript" src="${url}/js/custom.js"></script> 
