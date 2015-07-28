@isTest
global class GitHubMock implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest req) {
        System.assertEquals('GET', req.getMethod());
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('[{"id": 851638, "name": "developerforce.github.com", "description": "Documentation", "html_url": "https:\\/\\/github.com\\/developerforce\\/developerforce.github.com", "stargazers_count": 6}]');
        res.setStatusCode(200);
        return res;
    }
}