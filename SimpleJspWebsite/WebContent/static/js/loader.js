 /**
 * @author           Pierre-Henry Soria <pierrehenrysoria@gmail.com>
 * @link             http://github.com/pH-7
 * @copyright        Pierre-Henry Soria, All Rights Reserved.
 * @license          GNU General Public License version 3 or later. <http://www.gnu.org/copyleft/gpl.html>
 */

var sFolder = url.stic + 'js/';
var aFileList = [
    'ajph',
    'lib/tipsy',
    'lib/bootstrap',
    'common'
];

for(i in aFileList) 
    document.write('<script src="' + sFolder + aFileList[i] + '.js"></script>\n');
