% for post in posts():
  <h3><a href="${post.filename}">${post.title}</a></h3>
<p>${post.date}</p>
${post.content}
<hr/>
% endfor
