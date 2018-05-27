
<script language="javascript"  type="text/javascript">
<!--
// Remember the current position.
function storeCaret(text)
{
    // Only bother if it will be useful.
    if (typeof(text.createTextRange) != "undefined")
        text.caretPos = document.selection.createRange().duplicate();
}

function SmileIT(smile,textarea){
    // Attempt to create a text range (IE).
    if (typeof(textarea.caretPos) != "undefined" && textarea.createTextRange)
    {
        var caretPos = textarea.caretPos;

        caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? smile + ' ' : smile
        caretPos.select();
    }
    // Mozilla text range replace.
    else if (typeof(textarea.selectionStart) != "undefined")
    {
        var begin = textarea.value.substr(0, textarea.selectionStart);
        var end = textarea.value.substr(textarea.selectionEnd);
        var scrollPos = textarea.scrollTop;

        textarea.value = begin + smile + end;

        if (textarea.setSelectionRange)
        {
            textarea.focus();
            textarea.setSelectionRange(begin.length + smile.length, begin.length + smile.length);
        }
        textarea.scrollTop = scrollPos;
    }
    // Just put it on the end.
    else
    {
        textarea.value += smile;
        textarea.focus(textarea.value.length - 1);
    }
}

function PopMoreSmiles(form,name) {
         newWin=window.open('index.php?page=moresmiles&form='+form+'&text='+name,'moresmile','height=500,width=750,resizable=yes,scrollbars=yes');
         if (window.focus) {newWin.focus()}
}

function BBTag(opentag, closetag, textarea)
{
    // Can a text range be created?
    if (typeof(textarea.caretPos) != "undefined" && textarea.createTextRange)
    {
        var caretPos = textarea.caretPos, temp_length = caretPos.text.length;

        caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? opentag + caretPos.text + closetag + ' ' : opentag + caretPos.text + closetag;

        if (temp_length == 0)
        {
            caretPos.moveStart("character", -closetag.length);
            caretPos.moveEnd("character", -closetag.length);
            caretPos.select();
        }
        else
            textarea.focus(caretPos);
    }
    // Mozilla text range wrap.
    else if (typeof(textarea.selectionStart) != "undefined")
    {
        var begin = textarea.value.substr(0, textarea.selectionStart);
        var selection = textarea.value.substr(textarea.selectionStart, textarea.selectionEnd - textarea.selectionStart);
        var end = textarea.value.substr(textarea.selectionEnd);
        var newCursorPos = textarea.selectionStart;
        var scrollPos = textarea.scrollTop;

        textarea.value = begin + opentag + selection + closetag + end;

        if (textarea.setSelectionRange)
        {
            if (selection.length == 0)
                textarea.setSelectionRange(newCursorPos + opentag.length, newCursorPos + opentag.length);
            else
                textarea.setSelectionRange(newCursorPos, newCursorPos + opentag.length + selection.length + closetag.length);
            textarea.focus();
        }
        textarea.scrollTop = scrollPos;
    }
    // Just put them on the end, then.
    else
    {
        textarea.value += opentag + closetag;
        textarea.focus(textarea.value.length - 1);
    }
} 
// -->
</script>
<div class="block s12 l12 m12 bg-like-head">
  <br>
  <div class="row block center">
    <a href="#!" class="btn editeur" style="font-weight: bold;" name="bold" value="B " onclick="javascript: BBTag('[b]','[/b]',document.forms.<tag:form_name />.<tag:object_name />)" title="Gras"><i class="material-icons">format_bold</i></a>
    <a href="#!" class="btn editeur" style="font-style: italic;" name="italic" value="i " onclick="javascript: BBTag('[i]','[/i]',document.forms.<tag:form_name />.<tag:object_name />)" title="Italic"><i class="material-icons">format_italic</i></a>
    <a href="#!" class="btn editeur" style="text-decoration: underline;" name="underline" value="U " onclick="javascript: BBTag('[u]','[/u]',document.forms.<tag:form_name />.<tag:object_name />)" title="Souligné"><i class="material-icons">format_underlined</i></a>
    <a href="#!" class="btn editeur" name="li" value="Liste " onclick="javascript: BBTag('[*]','',document.forms.<tag:form_name />.<tag:object_name />)" title="Faire une liste"><i class="material-icons">list</i></a>
    <a href="!" class="btn editeur" name="code" value="Code" onclick="javascript: BBTag('[code]','[/code]',document.forms.<tag:form_name />.<tag:object_name />)" title="Inserer du Code"><i class="material-icons">code</i></a>
    <a href="#!" class="btn editeur" name="quote" value="Quote" onclick="javascript: BBTag('[quote]','[/quote]',document.forms.<tag:form_name />.<tag:object_name />)" title="Inserer une citation"><i class="material-icons">format_quote</i></a>
    <a href="#!" class="btn editeur" name="url" value="Url" onclick="javascript: BBTag('[url]','[/url]',document.forms.<tag:form_name />.<tag:object_name />)" title="Inserer un lien"><i class="material-icons">insert_link</i></a>
    <a href="#!" class="btn editeur" name="img" value="Img" onclick="javascript: BBTag('[img]','[/img]',document.forms.<tag:form_name />.<tag:object_name />)" title="Inserer une image"><i class="material-icons">image</i></a>
  </div>
  <div class="col right-align input-field">
    <select id="taille" onchange="BBTag('[size=' + this.options[this.selectedIndex].value.toLowerCase() + ']','[/size]', document.forms.<tag:form_name />.<tag:object_name />); this.selectedIndex = 0;" name="fontchange">
              <option value="1">xx-small</option>
              <option value="2">x-small</option>
              <option value="3">small</option>
              <option value="4" selected>medium</option>
              <option value="5">large</option>
              <option value="6">x-large</option>
              <option value="7">xx-large</option>
              </select>
      <label>Taille</label>
            </div>
             <div class="col left-align input-field">
              <select onchange="BBTag('[color=' + this.options[this.selectedIndex].value.toLowerCase() + ']','[/color]', document.forms.<tag:form_name />.<tag:object_name />); this.selectedIndex = 0;" name="fontchange">
              <option value="" selected="selected">---</option>
              <option value="Black" style="color:black">Black</option>
              <option value="Red" style="color:red">Red</option>
              <option value="Yellow" style="color:Yellow">Yellow</option>
              <option value="Pink" style="color:Pink">Pink</option>
              <option value="Green" style="color:Green">Green</option>
              <option value="Orange" style="color:Orange">Orange</option>
              <option value="Purple" style="color:Purple">Purple</option>
              <option value="Blue" style="color:Blue">Blue</option>
              <option value="Beige" style="color:Beige">Beige</option>
              <option value="Brown" style="color:Brown">Brown</option>
              <option value="Teal" style="color:Teal">Teal</option>
              <option value="Navy" style="color:Navy">Navy</option>
              <option value="Maroon" style="color:Maroon">Maroon</option>
              <option value="LimeGreen" style="color:LimeGreen">Lime Green</option>
              </select>
              <label>Couleur</label>
            </div>
      <div class="col s12 l12 m12 block center">
        <textarea placeholder="Le texte ici" name="<tag:object_name />" style="width:98%" onselect="storeCaret(this);" onclick="storeCaret(this);" onkeyup="storeCaret(this);" onchange="storeCaret(this);" class="materialize-textarea"><tag:content /></textarea>
      </div>
		<table><tr>
      <td><center>
      <tag:smilies_table /></center>
      <center>
      <a href="javascript: PopMoreSmiles('<tag:form_name />','<tag:object_name />')"><tag:language.MORE_SMILES /></a></center>
      </td>
    </tr>
  </table>
</div>