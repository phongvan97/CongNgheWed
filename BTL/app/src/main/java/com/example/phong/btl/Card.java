package com.example.phong.btl;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Card {

@SerializedName("id")
@Expose
private String id;
@SerializedName("namecard")
@Expose
private String namecard;
@SerializedName("img")
@Expose
private String img;
@SerializedName("mean")
@Expose
private String mean;

public String getId() {
return id;
}

public void setId(String id) {
this.id = id;
}

public String getNamecard() {
return namecard;
}

public void setNamecard(String namecard) {
this.namecard = namecard;
}

public String getImg() {
return img;
}

public void setImg(String img) {
this.img = img;
}

public String getMean() {
return mean;
}

public void setMean(String mean) {
this.mean = mean;
}

}