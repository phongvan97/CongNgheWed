package com.example.phong.btl;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class History {

@SerializedName("type")
@Expose
private String type;
@SerializedName("date")
@Expose
private String date;
@SerializedName("card1")
@Expose
private String card1;
@SerializedName("card2")
@Expose
private String card2;
@SerializedName("id1")
@Expose
private String id1;
@SerializedName("id2")
@Expose
private String id2;

public String getType() {
return type;
}

public void setType(String type) {
this.type = type;
}

public String getDate() {
return date;
}

public void setDate(String date) {
this.date = date;
}

public String getCard1() {
return card1;
}

public void setCard1(String card1) {
this.card1 = card1;
}

public String getCard2() {
return card2;
}

public void setCard2(String card2) {
this.card2 = card2;
}

public String getId1() {
return id1;
}

public void setId1(String id1) {
this.id1 = id1;
}

public String getId2() {
return id2;
}

public void setId2(String id2) {
this.id2 = id2;
}

}