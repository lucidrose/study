package example1.score.business;

import java.util.ArrayList;
import java.util.List;

import example1.score.model.Score;

public class GlobalMemoryScoreService implements IScoreService {

	private static ArrayList<Score> scores = new ArrayList<Score>();
	
	@Override
	public void AddScore(Score score) {
		scores.add(score);
	}

	@Override
	public List<Score> GetScoreList() {
		return scores;
	}
}
