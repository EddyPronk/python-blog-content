<%inherit file="base.html"/>

<%def name="body()">

<p>
<a href="http://www.muftor.com/blog/atom.xml" class="feed">subscribe</a>
</p>

% for post in posts():
  <h3><a href="${post.filename}">${post.title}</a></h3>
<p>${post.date.strftime("%B %d, %Y")}</p>
${post.content}

<p><a class="dsq-comment-count" href="${post.filename}#disqus_thread">Comments</a></p>

<hr/>
% endfor
</%def>
