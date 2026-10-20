[out:json][timeout:25][maxsize:67108864];
area(3600076910)->.scope;
.scope out tags;
nwr(area.scope)[~"^(email|contact:email|e-mail|contact:e-mail|e_mail|contact:e_mail|mail|contact:mail)(:.*)?$"~"."];
out body center;
