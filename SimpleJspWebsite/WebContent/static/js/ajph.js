 /**
 * @title AjPH
 *
 * @desc Loading pages in Ajax with HTML5 pushState.
 *
 * @author           Pierre-Henry Soria <pierrehenrysoria@gmail.com>
 * @link             http://github.com/pH-7
 * @copyright        Pierre-Henry Soria, All Rights Reserved.
 * @license          GNU General Public License version 3 or later. <http://www.gnu.org/copyleft/gpl.html>
 * @version          1.3
 */

 $(document).ready(function() {
    if(window.history && history.pushState) {
      historyedited = false;
      $(window).bind('popstate', function(e) {
        if(historyedited) {
          loadPage(location.pathname + location.search);
        }
      });
      doPager();
    }
});

function doPager() {
    // Loading the ajax pages
    $('a[data-load=ajax]').click(function(e) {
      e.preventDefault();
      $('#ajph').html("<div id='loading'>Loading...</div>");
      loadPage($(this).attr('href'));
      history.pushState(null, null, $(this).attr('href'));
      historyedited = true;
    });
}

function loadPage(link) {
    $.ajax({
      url: link,
      processData: true,
      dataType:'html',
      success: function(data) {
        var content = $(data).find("#sub_ajph"); // Get the new Contents
        var title = $(data).filter('title'); // Get the new Title tag
        var headings = $(data).find('hgroup:first'); // Get the Headings Group
        $('title').text(title.text()); // Set Title
        $('hgroup:first').html(headings.html()); // Set the Headings Group
        $('#ajph').fadeOut('200',function(){
          $(this).html(content.html()).fadeIn('200'); // Set Contents
        });
      }
    });
    doPager();
}
