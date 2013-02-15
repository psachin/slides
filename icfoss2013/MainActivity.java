package com.icfoss.events;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

import android.os.AsyncTask;
import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;

public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        // new DownloadFileAsync().execute();
    }

   
    
    class DownloadFileAsync extends AsyncTask<String, String, String>{

    	String result = "";
	@Override
		protected String doInBackground(String... params) {
			HttpClient httpclient = new DefaultHttpClient();
			HttpContext httpcontext = new BasicHttpContext();
			HttpGet httpget = new HttpGet("http://icfoss.org/events.html");
			
			try {
				HttpResponse response = httpclient.execute(httpget, httpcontext);
				
				BufferedReader b_reader = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
				
				String line = null;
				while((line = b_reader.readLine()) != null){
					result += line + "\n";
				}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return null;
		}
    
	@Override
	protected void onPostExecute(String r) {
		
		addEventsIndatabase(result);
		
	}
	
    }
    
    
	private void addEventsIndatabase(String result) {
		String[] topic = StringUtils.substringsBetween(result, "<strong>", "</strong>");
		String[] date = StringUtils.substringsBetween(result, "</h3>","<p>");
			
		DatabaseHandler db = new DatabaseHandler(this);
		
		for (int i=0; i< topic.length; i++){
			String event_title = StringUtils.remove(topic[i], "&ldquo;");
			event_title = StringUtils.remove(event_title, "&rdquo;");
			
			String date_title = StringUtils.remove(date[i], "(");
			date_title = StringUtils.remove(date_title, ")");
			
			db.addEvent(new Event(event_title, date_title));
    		db.close();
			
		}
		}
    
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
    }

}
