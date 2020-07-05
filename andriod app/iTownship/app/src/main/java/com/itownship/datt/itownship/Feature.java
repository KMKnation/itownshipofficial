package com.itownship.datt.itownship;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.content.Intent;
import android.view.View;



public class Feature extends ActionBarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_feature);
    }

    public void Expense(View view){
        Intent i=new Intent(this,Expense_Manager.class);
        startActivity(i);
    }

    public void Meeting(View view){
        Intent i=new Intent(this,Meeting_Manager.class);
        startActivity(i);
    }

    public void Resident(View view){
        Intent i=new Intent(this,Resident_Manager.class);
        startActivity(i);
    }


    public void Website(View view){
        Intent i=new Intent(this,Websit_Manager.class);
        startActivity(i);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_feature, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement


        return super.onOptionsItemSelected(item);
    }
}
