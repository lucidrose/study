package example1.score.rest;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import example1.score.business.GlobalMemoryScoreService;
import example1.score.business.IScoreService;
import example1.score.model.Score;

@Path("/score")
public class RestScoreReturnJson {
	
	//private IScoreService scoreService = null;
	//아래 부분은 나중에.. IoC로 적용~!
	private IScoreService scoreService = new GlobalMemoryScoreService(); 
	
	public void SetScoreService(IScoreService scoreService)
	{
		this.scoreService = scoreService;
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("add/{id}={score}")
	public String addScore(
			@PathParam("id") final String id,
			@PathParam("score") final int score
			)
	{
		scoreService.AddScore(new Score(id,score));
		return "[{\"Result\":\"true\"}]";
	}
	
	/*@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	@Path("post")
	public String postTest(@FormParam("id") String id, @FormParam("score") int score) {
		scoreService.AddScore(new Score(id,score));
		return "[{\"Result\":\"true\"}]";	
	}*/
	
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("get")
	public List<Score> addScore()
	{
		List<Score> scores = scoreService.GetScoreList();
		return scores;
	}
}
