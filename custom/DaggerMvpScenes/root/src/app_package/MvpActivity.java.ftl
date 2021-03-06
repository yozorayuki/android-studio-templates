package ${scenesPackage};

import android.os.Bundle;
import android.support.v4.app.FragmentManager;

import ${packageName}.R;

import javax.inject.Inject;

import dagger.android.support.DaggerAppCompatActivity;

public class ${activityClass} extends DaggerAppCompatActivity {

    @Inject ${fragmentClass} m${fragmentClass};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayout});

        FragmentManager fm = getSupportFragmentManager();
        Fragment fragment = fm.findFragmentById(R.id.content_frame);

        if (fragment == null) {
            fragment = m${fragmentClass};
            fm.beginTransaction().replace(R.id.content_frame, fragment).commit();
        }
    }
}
