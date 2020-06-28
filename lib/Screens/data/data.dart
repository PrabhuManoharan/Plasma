import 'package:flutter/material.dart';

class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath, this.title, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("Welcome to Plasma app!");
  sliderModel.setTitle("Welcome");
  sliderModel.setImageAssetPath("assets/cc.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc(
      "Keeping the pandemic in mind, we added a feature which gives you information about everything you need to know.");
  sliderModel.setTitle("Covid-19");
  sliderModel.setImageAssetPath("assets/all.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc(" Help saving the world and making it a better place.");
  sliderModel.setTitle("Save The World");
  sliderModel.setImageAssetPath("assets/pp.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}
