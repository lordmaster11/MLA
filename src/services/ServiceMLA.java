package services;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class ServiceMLA {
	public String getCategories() throws IOException { 
		return getJSON("https://api.mercadolibre.com/sites/MLA/categories");
	}
	
	public ArrayList<JSONObject> getObjectsCategories() throws IOException {
		String categories = this.getCategories();
		JSONArray jsonArray = new JSONArray(categories);
		ArrayList<JSONObject> objects = new ArrayList<JSONObject>();
		for(int i =0; i< jsonArray.length(); i++){
            if(jsonArray.get(i) instanceof JSONObject){
                JSONObject jsnObj = (JSONObject)jsonArray.get(i);
                objects.add(jsnObj);
            }
        }
		return objects;	
	}
	
	
	public String getCategory(String id) throws IOException {  
		return getJSON("https://api.mercadolibre.com/sites/MLA/search?category=" + id + "&official_store_id=all");
	}
	
	public JSONObject getObjectCategory(String id) throws IOException {
		String category = this.getCategory(id);
		JSONObject object = new JSONObject(category);
		
		return object;	
	}
	
	
	private String getJSON(String _url) throws IOException {
		String output = "";

		URL url = new URL(_url);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-Type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
		conn.connect();

		int responsecode = conn.getResponseCode();
		System.out.println("Response code is: " + responsecode);

		if (responsecode != 200)
			throw new RuntimeException("HttpResponseCode: " + responsecode);
		else {
			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));

				output= br.readLine();
				conn.disconnect();
			 
		br.close();
		}
		
		//System.out.println(output);
		return output;
	}
}
