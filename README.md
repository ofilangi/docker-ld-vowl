# docker-ld-vowl

This is an unofficial image
LD-VOWL extracts schema information of Linked Data endpoints and visualizes the extracted information using the VOWL notation.
Visit the website [Visualizing Linked Data Endpoints] [ldvowl] for more information.

by default ld-vowl is reachable at http://localhost:8080

```sh
$ docker run -d -p 8080:8080 --name myname-ld_vowl
$ <webbrowser> http://localhost:8080:http://127.0.0.1:8080/#/graph?endpointURL=<endpoint url>
```
for instance, I visualize my local virtuoso endpoint with the following command :

```sh
firefox http://127.0.0.1:8080/#/graph?endpointURL=http://localhost:8890/sparql
```
If you use virtuoso, enable CORS access with conductor [Cross-Origin Resource Sharing (CORS) enabling a Virtuoso SPARQL Endpoint] [corsvirtuoso] .

   [ldvowl]: <http://vowl.visualdataweb.org/ldvowl.html>
   [corsvirtuoso]: <https://virtuoso.openlinksw.com/dataspace/doc/dav/wiki/Main/VirtTipsAndTricksCORsEnableSPARQLURLs>
