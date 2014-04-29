    doc.open('text/html', 'replace');
    html = "<!DOCTYPE html>\
    <html>\
      <head>\
        <title>WYMeditor</title>\
        <meta charset='" + $('meta[charset]').attr('charset') + "' />\
        <meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1' />\
      </head>\
      <body class='wym_iframe'>\
      </body>\
    </html>";
    doc.write(html);
    doc.close();
