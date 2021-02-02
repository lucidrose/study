package example1.score.business;

import java.util.List;

import example1.score.model.Score;

public interface IScoreService {
	public List<Score> GetScoreList();
	public void AddScore(Score score);
}
