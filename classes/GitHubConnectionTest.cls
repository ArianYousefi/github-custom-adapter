@isTest
public class GitHubConnectionTest {

    @isTest static void testCallout() {
        Test.setMock(HttpCalloutMock.class, new GitHubMock());
		GitHubConnection gitHubConnection = new GitHubConnection();
        List<Map<String, Object>> repos = gitHubConnection.getOrgRepos('developerforce', 1, 20);
        System.assertEquals(1, repos.size());
        System.assertEquals('developerforce.github.com', repos.get(0).get('Name'));
        System.assertEquals(851638, repos.get(0).get('ExternalId'));
    }

}