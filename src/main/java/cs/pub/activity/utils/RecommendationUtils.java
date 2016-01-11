package cs.pub.activity.utils;

import java.util.List;

import cs.pub.activity.model.Activity;

public class RecommendationUtils {
	
	public static double cosineSimilarity(double[] vectorA, double[] vectorB) {
	    double dotProduct = 0.0;
	    double normA = 0.0;
	    double normB = 0.0;
	    int length = vectorA.length;
	    
	    vectorA = normalizeVector(vectorA);
	    vectorB = normalizeVector(vectorB);
	    
	    for (int i = 0; i < length; i++) {
	        dotProduct += vectorA[i] * vectorB[i];
	        normA += Math.pow(vectorA[i], 2);
	        normB += Math.pow(vectorB[i], 2);
	    }   
	    
	    return dotProduct / (Math.sqrt(normA) * Math.sqrt(normB));
	}
	
	public static double computeAverage(double[] vector) {
		double average = 0.0;
		int length = vector.length;
		
		for (int i = 0; i < length; i++) {
			average += vector[i];
		}
		
		return average/vector.length;
	}
	
	public static double[] normalizeVector(double[] vector) {
		double average = computeAverage(vector);
		int length = vector.length;
		
		for (int i = 0; i < length; i++) {
			vector[i] -= average;
		}
		
		return vector;
	}
	
	public static boolean intersect(double[] vectorA, double[] vectorB) {
		int length = vectorA.length;
		
		for(int i = 0; i < length; i++) {
			if(vectorA[i] != 0 && vectorB[i] != 0)
				return true;
		}
		
		return false;
	}
}
