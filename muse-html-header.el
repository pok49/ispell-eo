<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<lisp>
  (let ((author (muse-publishing-directive "author")))
    (concat "<html"
            (when (string= author "Sergio Pokrovskij") " lang=\"eo\"")
            ">"))
</lisp>
<head>
  <title><lisp>(muse-publishing-directive "title")</lisp></title>
  <meta http-equiv="<lisp>muse-html-meta-http-equiv</lisp>"
        content="<lisp>muse-html-meta-content-type</lisp>">
  <lisp>
    (let ((maintainer (muse-style-element :maintainer)))
      (when maintainer
        (concat "<link rev=\"made\" href=\"" maintainer "\">")))
  </lisp><lisp>
    (muse-style-element :style-sheet muse-publishing-current-style)
  </lisp>
</head>
<body>
  <h1><lisp>(muse-publishing-directive "title")</lisp></h1>
  <!-- Page published by Emacs Muse begins here -->
