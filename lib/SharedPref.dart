import 'package:shared_preferences/shared_preferences.dart';

class SharedPref{
  static late SharedPreferences pref;

  static prefSetInt(String key,int value)async{
    pref=await SharedPreferences.getInstance();
    pref.setInt(key, value);
  }

  Future<int> prefGetInt(String key ,int defvalue)async{
    pref=await SharedPreferences.getInstance();
    if(pref.getInt(key)!=null){
      return pref.getInt(key)!;
    }else{
      return defvalue;
    }
  }

  prefSetDouble(String key,double value)async{
    pref=await SharedPreferences.getInstance();
    pref.setDouble(key, value);
  }

  Future<double> prefGetDouble(String key ,double defvalue)async{
    pref=await SharedPreferences.getInstance();
    if(pref.getDouble(key)!=null){
      return pref.getDouble(key)!;
    }else{
      return defvalue;
    }
  }


  prefSetString(String key,String value)async{
    pref=await SharedPreferences.getInstance();
    pref.setString(key, value);
  }

  Future<String> prefGetString(String key ,String defvalue)async{
    pref=await SharedPreferences.getInstance();
    if(pref.getString(key)!=null){
      return pref.getString(key)!;
    }else{
      return defvalue;
    }
  }


  prefSetBool(String key,bool value)async{
    pref=await SharedPreferences.getInstance();
    pref.setBool(key, value);
  }

  prefGetBool(String key ,bool defvalue)async{
    pref=await SharedPreferences.getInstance();
    if(pref.getBool(key)!=null){
      return pref.getBool(key);
    }else{
      return defvalue;
    }
  }



  //clear
  prefClearAll()async{
    pref=await SharedPreferences.getInstance();
    pref.clear();
  }

  //specific remove
  prefremove(key)async{
  pref=await SharedPreferences.getInstance();
  pref.remove(key);
}


}