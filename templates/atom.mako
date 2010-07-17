<?xml version="1.0"?>
<feed xmlns="http://www.w3.org/2005/Atom">
		<title>Peanut Butter Logic</title>
		<id>${feed_id()}</id>
		<updated>${rfc3339.rfc3339(datetime.datetime.now())}</updated>
		<link rel="self" href="http://www.muftor.com/blog/atom.xml"/>
  % for post in posts():
  <entry>
    <id>${make_id(post)}</id>
    <updated>${rfc3339.rfc3339(post.date)}</updated>
    <title type="text">${post.title}</title>
    <link rel="alternate" type="text/html" href="${post.url}" title="${post.title}"/>

    <content type="xhtml"><div xmlns='http://www.w3.org/1999/xhtml'>${post.content}</div></content>
        <author>
      <name>Eddy Pronk</name>
    </author>
  </entry>
  % endfor

</feed>
