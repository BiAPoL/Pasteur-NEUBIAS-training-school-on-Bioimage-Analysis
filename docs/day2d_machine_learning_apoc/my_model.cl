/*
OpenCL RandomForestClassifier
classifier_class_name = ObjectSegmenter
feature_specification = gaussian_blur=5 sobel_of_gaussian_blur=5
num_ground_truth_dimensions = 2
num_classes = 2
num_features = 2
max_depth = 2
num_trees = 100
feature_importances = 0.7543628505155221,0.245637149484478
positive_class_identifier = 2
apoc_version = 0.9.0
*/
__kernel void predict (IMAGE_in0_TYPE in0, IMAGE_in1_TYPE in1, IMAGE_out_TYPE out) {
 sampler_t sampler = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP_TO_EDGE | CLK_FILTER_NEAREST;
 const int x = get_global_id(0);
 const int y = get_global_id(1);
 const int z = get_global_id(2);
 float i0 = READ_IMAGE(in0, sampler, POS_in0_INSTANCE(x,y,z,0)).x;
 float i1 = READ_IMAGE(in1, sampler, POS_in1_INSTANCE(x,y,z,0)).x;
 float s0=0;
 float s1=0;
if(i0<117.54747009277344){
 s0+=706.0;
} else {
 if(i1<85.72477722167969){
  s1+=378.0;
 } else {
  s0+=14.0;
 }
}
if(i1<38.67491912841797){
 if(i1<14.327082633972168){
  s0+=216.0;
  s1+=10.0;
 } else {
  s0+=258.0;
  s1+=89.0;
 }
} else {
 if(i1<79.76466369628906){
  s0+=203.0;
  s1+=275.0;
 } else {
  s0+=47.0;
 }
}
if(i1<46.786590576171875){
 if(i1<9.822185516357422){
  s0+=179.0;
  s1+=1.0;
 } else {
  s0+=422.0;
  s1+=140.0;
 }
} else {
 if(i1<81.33183288574219){
  s0+=131.0;
  s1+=208.0;
 } else {
  s0+=17.0;
 }
}
if(i0<126.22744750976562){
 if(i1<72.27606201171875){
  s0+=679.0;
  s1+=1.0;
 } else {
  s0+=34.0;
  s1+=5.0;
 }
} else {
 if(i1<85.39649963378906){
  s1+=371.0;
 } else {
  s0+=8.0;
 }
}
if(i1<37.164520263671875){
 if(i0<131.35333251953125){
  s0+=484.0;
 } else {
  s1+=83.0;
 }
} else {
 if(i0<123.6237564086914){
  s0+=234.0;
 } else {
  s0+=10.0;
  s1+=287.0;
 }
}
if(i1<34.945098876953125){
 if(i1<18.311105728149414){
  s0+=281.0;
  s1+=19.0;
 } else {
  s0+=214.0;
  s1+=65.0;
 }
} else {
 if(i1<80.48577117919922){
  s0+=217.0;
  s1+=277.0;
 } else {
  s0+=25.0;
 }
}
if(i1<24.39528465270996){
 if(i1<11.564120292663574){
  s0+=211.0;
  s1+=5.0;
 } else {
  s0+=154.0;
  s1+=32.0;
 }
} else {
 if(i0<123.38143157958984){
  s0+=366.0;
  s1+=3.0;
 } else {
  s0+=16.0;
  s1+=311.0;
 }
}
if(i0<123.38143157958984){
 if(i0<115.80667114257812){
  s0+=710.0;
 } else {
  s0+=5.0;
  s1+=2.0;
 }
} else {
 if(i1<85.868408203125){
  s1+=368.0;
 } else {
  s0+=13.0;
 }
}
if(i1<24.7958984375){
 if(i0<132.14788818359375){
  s0+=372.0;
 } else {
  s1+=42.0;
 }
} else {
 if(i1<52.70560073852539){
  s0+=233.0;
  s1+=133.0;
 } else {
  s0+=138.0;
  s1+=180.0;
 }
}
if(i0<117.7053451538086){
 s0+=689.0;
} else {
 if(i1<86.08059692382812){
  s1+=388.0;
 } else {
  s0+=21.0;
 }
}
if(i0<130.41989135742188){
 if(i0<120.15666198730469){
  s0+=733.0;
 } else {
  s0+=10.0;
  s1+=9.0;
 }
} else {
 if(i0<141.07937622070312){
  s0+=9.0;
  s1+=33.0;
 } else {
  s1+=304.0;
 }
}
if(i0<120.15666198730469){
 if(i1<74.1160659790039){
  s0+=687.0;
 } else {
  s0+=30.0;
  s1+=1.0;
 }
} else {
 if(i1<86.02186584472656){
  s1+=366.0;
 } else {
  s0+=14.0;
 }
}
if(i1<38.89848327636719){
 if(i1<10.885963439941406){
  s0+=182.0;
  s1+=2.0;
 } else {
  s0+=325.0;
  s1+=81.0;
 }
} else {
 if(i1<80.36042022705078){
  s0+=195.0;
  s1+=270.0;
 } else {
  s0+=43.0;
 }
}
if(i0<126.46204376220703){
 if(i0<117.7053451538086){
  s0+=741.0;
  s1+=1.0;
 } else {
  s0+=9.0;
  s1+=5.0;
 }
} else {
 if(i1<86.46417236328125){
  s1+=337.0;
 } else {
  s0+=5.0;
 }
}
if(i0<117.7053451538086){
 s0+=725.0;
} else {
 if(i0<141.07937622070312){
  s0+=15.0;
  s1+=35.0;
 } else {
  s1+=323.0;
 }
}
if(i1<31.098953247070312){
 if(i0<131.19813537597656){
  s0+=464.0;
 } else {
  s1+=60.0;
 }
} else {
 if(i0<123.38143157958984){
  s0+=260.0;
  s1+=1.0;
 } else {
  s0+=10.0;
  s1+=303.0;
 }
}
if(i1<34.987396240234375){
 if(i1<9.822185516357422){
  s0+=182.0;
  s1+=4.0;
 } else {
  s0+=302.0;
  s1+=79.0;
 }
} else {
 if(i0<130.41989135742188){
  s0+=256.0;
  s1+=12.0;
 } else {
  s0+=6.0;
  s1+=257.0;
 }
}
if(i1<38.12560272216797){
 if(i0<131.26348876953125){
  s0+=509.0;
 } else {
  s1+=112.0;
 }
} else {
 if(i0<125.65444946289062){
  s0+=211.0;
  s1+=3.0;
 } else {
  s0+=7.0;
  s1+=256.0;
 }
}
if(i1<38.89848327636719){
 if(i1<24.39528465270996){
  s0+=364.0;
  s1+=35.0;
 } else {
  s0+=140.0;
  s1+=60.0;
 }
} else {
 if(i0<130.53738403320312){
  s0+=240.0;
  s1+=13.0;
 } else {
  s0+=4.0;
  s1+=242.0;
 }
}
if(i0<123.38143157958984){
 if(i0<115.28054809570312){
  s0+=716.0;
 } else {
  s0+=6.0;
  s1+=3.0;
 }
} else {
 if(i0<141.07937622070312){
  s0+=15.0;
  s1+=35.0;
 } else {
  s1+=323.0;
 }
}
if(i0<116.15447998046875){
 s0+=711.0;
} else {
 if(i1<82.97989654541016){
  s1+=368.0;
 } else {
  s0+=19.0;
 }
}
if(i0<127.43399810791016){
 if(i0<117.7053451538086){
  s0+=712.0;
 } else {
  s0+=11.0;
  s1+=10.0;
 }
} else {
 if(i0<136.99288940429688){
  s0+=5.0;
  s1+=22.0;
 } else {
  s0+=1.0;
  s1+=337.0;
 }
}
if(i1<38.89848327636719){
 if(i0<129.76654052734375){
  s0+=514.0;
 } else {
  s1+=96.0;
 }
} else {
 if(i1<80.36042022705078){
  s0+=179.0;
  s1+=277.0;
 } else {
  s0+=32.0;
 }
}
if(i0<120.15666198730469){
 s0+=717.0;
} else {
 if(i0<130.41989135742188){
  s0+=10.0;
  s1+=13.0;
 } else {
  s0+=5.0;
  s1+=353.0;
 }
}
if(i1<27.089006423950195){
 if(i1<19.881690979003906){
  s0+=311.0;
  s1+=24.0;
 } else {
  s0+=90.0;
  s1+=30.0;
 }
} else {
 if(i1<80.36042022705078){
  s0+=316.0;
  s1+=287.0;
 } else {
  s0+=40.0;
 }
}
if(i1<38.16231918334961){
 if(i1<24.324371337890625){
  s0+=381.0;
  s1+=36.0;
 } else {
  s0+=121.0;
  s1+=46.0;
 }
} else {
 if(i1<79.8900146484375){
  s0+=210.0;
  s1+=274.0;
 } else {
  s0+=30.0;
 }
}
if(i1<30.780467987060547){
 if(i0<131.7880859375){
  s0+=426.0;
 } else {
  s1+=62.0;
 }
} else {
 if(i1<79.8900146484375){
  s0+=276.0;
  s1+=289.0;
 } else {
  s0+=45.0;
 }
}
if(i0<117.7053451538086){
 if(i0<116.15447998046875){
  s0+=734.0;
 } else {
  s0+=3.0;
  s1+=2.0;
 }
} else {
 if(i1<85.12902069091797){
  s1+=345.0;
 } else {
  s0+=14.0;
 }
}
if(i0<123.38143157958984){
 if(i1<72.26008605957031){
  s0+=696.0;
 } else {
  s0+=27.0;
  s1+=2.0;
 }
} else {
 if(i0<129.82046508789062){
  s0+=10.0;
  s1+=11.0;
 } else {
  s0+=5.0;
  s1+=347.0;
 }
}
if(i0<123.38143157958984){
 if(i0<115.80667114257812){
  s0+=718.0;
 } else {
  s0+=7.0;
  s1+=6.0;
 }
} else {
 if(i1<86.12741088867188){
  s1+=346.0;
 } else {
  s0+=21.0;
 }
}
if(i0<117.7053451538086){
 s0+=717.0;
} else {
 if(i0<136.99288940429688){
  s0+=13.0;
  s1+=37.0;
 } else {
  s0+=1.0;
  s1+=330.0;
 }
}
if(i0<130.41989135742188){
 if(i1<63.795467376708984){
  s0+=666.0;
 } else {
  s0+=78.0;
  s1+=7.0;
 }
} else {
 if(i1<86.52218627929688){
  s1+=343.0;
 } else {
  s0+=4.0;
 }
}
if(i0<130.53738403320312){
 if(i0<116.15447998046875){
  s0+=712.0;
 } else {
  s0+=18.0;
  s1+=13.0;
 }
} else {
 if(i1<87.53176879882812){
  s1+=351.0;
 } else {
  s0+=4.0;
 }
}
if(i1<28.26451873779297){
 if(i1<9.822185516357422){
  s0+=181.0;
  s1+=2.0;
 } else {
  s0+=237.0;
  s1+=54.0;
 }
} else {
 if(i0<129.02938842773438){
  s0+=320.0;
  s1+=11.0;
 } else {
  s0+=4.0;
  s1+=289.0;
 }
}
if(i0<119.21109008789062){
 s0+=722.0;
} else {
 if(i1<85.72477722167969){
  s1+=361.0;
 } else {
  s0+=15.0;
 }
}
if(i0<126.46204376220703){
 if(i0<116.15447998046875){
  s0+=720.0;
 } else {
  s0+=8.0;
  s1+=3.0;
 }
} else {
 if(i1<86.46417236328125){
  s1+=359.0;
 } else {
  s0+=8.0;
 }
}
if(i1<24.7958984375){
 if(i0<133.07652282714844){
  s0+=372.0;
 } else {
  s1+=42.0;
 }
} else {
 if(i0<127.43399810791016){
  s0+=356.0;
  s1+=6.0;
 } else {
  s0+=1.0;
  s1+=321.0;
 }
}
if(i0<130.41989135742188){
 if(i1<69.183837890625){
  s0+=654.0;
  s1+=1.0;
 } else {
  s0+=59.0;
  s1+=16.0;
 }
} else {
 if(i1<87.3485107421875){
  s1+=364.0;
 } else {
  s0+=4.0;
 }
}
if(i1<28.280364990234375){
 if(i0<131.78363037109375){
  s0+=417.0;
 } else {
  s1+=59.0;
 }
} else {
 if(i1<75.71788787841797){
  s0+=286.0;
  s1+=287.0;
 } else {
  s0+=46.0;
  s1+=3.0;
 }
}
if(i0<123.38143157958984){
 if(i0<116.15447998046875){
  s0+=713.0;
 } else {
  s0+=7.0;
  s1+=5.0;
 }
} else {
 if(i0<129.7029571533203){
  s0+=8.0;
  s1+=17.0;
 } else {
  s0+=4.0;
  s1+=344.0;
 }
}
if(i1<38.127601623535156){
 if(i0<131.35333251953125){
  s0+=494.0;
 } else {
  s1+=100.0;
 }
} else {
 if(i1<80.48577117919922){
  s0+=200.0;
  s1+=260.0;
 } else {
  s0+=44.0;
 }
}
if(i0<123.6237564086914){
 if(i0<116.15447998046875){
  s0+=715.0;
 } else {
  s0+=7.0;
  s1+=5.0;
 }
} else {
 if(i0<141.07937622070312){
  s0+=17.0;
  s1+=44.0;
 } else {
  s1+=310.0;
 }
}
if(i1<37.080875396728516){
 if(i0<131.35333251953125){
  s0+=465.0;
 } else {
  s1+=89.0;
 }
} else {
 if(i0<117.7053451538086){
  s0+=242.0;
 } else {
  s0+=17.0;
  s1+=285.0;
 }
}
if(i1<38.16231918334961){
 if(i0<131.82470703125){
  s0+=493.0;
 } else {
  s1+=84.0;
 }
} else {
 if(i1<81.23767852783203){
  s0+=201.0;
  s1+=283.0;
 } else {
  s0+=37.0;
 }
}
if(i0<130.41989135742188){
 if(i0<116.15447998046875){
  s0+=705.0;
 } else {
  s0+=20.0;
  s1+=12.0;
 }
} else {
 if(i0<139.58599853515625){
  s0+=4.0;
  s1+=28.0;
 } else {
  s1+=329.0;
 }
}
if(i0<123.38143157958984){
 if(i0<116.15447998046875){
  s0+=735.0;
 } else {
  s0+=6.0;
  s1+=4.0;
 }
} else {
 if(i0<141.07937622070312){
  s0+=17.0;
  s1+=41.0;
 } else {
  s1+=295.0;
 }
}
if(i0<130.41989135742188){
 if(i1<62.031036376953125){
  s0+=675.0;
 } else {
  s0+=75.0;
  s1+=10.0;
 }
} else {
 if(i1<87.707275390625){
  s1+=335.0;
 } else {
  s0+=3.0;
 }
}
if(i1<34.945098876953125){
 if(i0<130.64739990234375){
  s0+=459.0;
 } else {
  s1+=80.0;
 }
} else {
 if(i0<117.48991394042969){
  s0+=273.0;
  s1+=2.0;
 } else {
  s0+=14.0;
  s1+=270.0;
 }
}
if(i1<23.89476203918457){
 if(i0<132.15234375){
  s0+=378.0;
 } else {
  s1+=36.0;
 }
} else {
 if(i0<125.65444946289062){
  s0+=359.0;
  s1+=5.0;
 } else {
  s0+=12.0;
  s1+=308.0;
 }
}
if(i1<38.127601623535156){
 if(i0<131.35333251953125){
  s0+=517.0;
 } else {
  s1+=94.0;
 }
} else {
 if(i0<123.38143157958984){
  s0+=217.0;
  s1+=2.0;
 } else {
  s0+=14.0;
  s1+=254.0;
 }
}
if(i1<24.403636932373047){
 if(i1<9.822185516357422){
  s0+=172.0;
  s1+=1.0;
 } else {
  s0+=203.0;
  s1+=34.0;
 }
} else {
 if(i0<115.80667114257812){
  s0+=350.0;
 } else {
  s0+=22.0;
  s1+=316.0;
 }
}
if(i0<123.38143157958984){
 if(i1<72.27606201171875){
  s0+=672.0;
 } else {
  s0+=35.0;
  s1+=4.0;
 }
} else {
 if(i0<130.53738403320312){
  s0+=11.0;
  s1+=15.0;
 } else {
  s0+=4.0;
  s1+=357.0;
 }
}
if(i1<34.945098876953125){
 if(i1<9.822185516357422){
  s0+=164.0;
  s1+=2.0;
 } else {
  s0+=272.0;
  s1+=92.0;
 }
} else {
 if(i0<130.41989135742188){
  s0+=277.0;
  s1+=9.0;
 } else {
  s0+=3.0;
  s1+=279.0;
 }
}
if(i0<126.46204376220703){
 if(i1<72.26008605957031){
  s0+=670.0;
 } else {
  s0+=45.0;
  s1+=7.0;
 }
} else {
 if(i1<85.82718658447266){
  s1+=365.0;
 } else {
  s0+=11.0;
 }
}
if(i0<126.22744750976562){
 if(i1<74.57794189453125){
  s0+=701.0;
  s1+=1.0;
 } else {
  s0+=26.0;
  s1+=3.0;
 }
} else {
 if(i1<86.46417236328125){
  s1+=355.0;
 } else {
  s0+=12.0;
 }
}
if(i1<46.84507751464844){
 if(i1<24.403636932373047){
  s0+=341.0;
  s1+=43.0;
 } else {
  s0+=194.0;
  s1+=104.0;
 }
} else {
 if(i0<129.02938842773438){
  s0+=166.0;
  s1+=11.0;
 } else {
  s0+=5.0;
  s1+=234.0;
 }
}
if(i0<117.7053451538086){
 if(i0<115.80667114257812){
  s0+=718.0;
 } else {
  s0+=4.0;
  s1+=2.0;
 }
} else {
 if(i1<85.19703674316406){
  s1+=361.0;
 } else {
  s0+=13.0;
 }
}
if(i0<122.59567260742188){
 if(i0<116.15447998046875){
  s0+=707.0;
 } else {
  s0+=6.0;
  s1+=5.0;
 }
} else {
 if(i0<129.50927734375){
  s0+=4.0;
  s1+=15.0;
 } else {
  s0+=2.0;
  s1+=359.0;
 }
}
if(i1<24.284683227539062){
 if(i0<132.15234375){
  s0+=405.0;
 } else {
  s1+=41.0;
 }
} else {
 if(i1<80.36042022705078){
  s0+=303.0;
  s1+=305.0;
 } else {
  s0+=44.0;
 }
}
if(i1<37.02981185913086){
 if(i0<131.35333251953125){
  s0+=473.0;
 } else {
  s1+=87.0;
 }
} else {
 if(i1<80.36042022705078){
  s0+=227.0;
  s1+=269.0;
 } else {
  s0+=42.0;
 }
}
if(i1<38.859901428222656){
 if(i0<131.48524475097656){
  s0+=502.0;
 } else {
  s1+=95.0;
 }
} else {
 if(i0<116.0318374633789){
  s0+=215.0;
 } else {
  s0+=15.0;
  s1+=271.0;
 }
}
if(i1<24.316020965576172){
 if(i1<10.768133163452148){
  s0+=166.0;
  s1+=2.0;
 } else {
  s0+=160.0;
  s1+=34.0;
 }
} else {
 if(i1<79.76466369628906){
  s0+=340.0;
  s1+=354.0;
 } else {
  s0+=42.0;
 }
}
if(i0<116.0318374633789){
 s0+=716.0;
} else {
 if(i1<83.84963989257812){
  s1+=372.0;
 } else {
  s0+=10.0;
 }
}
if(i1<30.868711471557617){
 if(i0<131.19813537597656){
  s0+=440.0;
 } else {
  s1+=84.0;
 }
} else {
 if(i0<120.15666198730469){
  s0+=282.0;
  s1+=1.0;
 } else {
  s0+=18.0;
  s1+=273.0;
 }
}
if(i0<120.15666198730469){
 if(i0<115.28054809570312){
  s0+=720.0;
 } else {
  s0+=8.0;
  s1+=3.0;
 }
} else {
 if(i1<84.8984603881836){
  s1+=357.0;
 } else {
  s0+=10.0;
 }
}
if(i1<39.41240310668945){
 if(i1<14.327082633972168){
  s0+=226.0;
  s1+=9.0;
 } else {
  s0+=277.0;
  s1+=85.0;
 }
} else {
 if(i1<80.36042022705078){
  s0+=190.0;
  s1+=267.0;
 } else {
  s0+=44.0;
 }
}
if(i0<123.38143157958984){
 if(i1<73.56863403320312){
  s0+=662.0;
 } else {
  s0+=35.0;
  s1+=3.0;
 }
} else {
 if(i0<141.07937622070312){
  s0+=16.0;
  s1+=43.0;
 } else {
  s1+=339.0;
 }
}
if(i0<116.0318374633789){
 s0+=739.0;
} else {
 if(i1<83.24552917480469){
  s1+=347.0;
 } else {
  s0+=12.0;
 }
}
if(i0<126.22744750976562){
 if(i0<117.7053451538086){
  s0+=741.0;
 } else {
  s0+=8.0;
  s1+=2.0;
 }
} else {
 if(i1<85.82718658447266){
  s1+=342.0;
 } else {
  s0+=5.0;
 }
}
if(i1<34.987396240234375){
 if(i0<130.03001403808594){
  s0+=483.0;
 } else {
  s1+=96.0;
 }
} else {
 if(i0<123.38143157958984){
  s0+=232.0;
  s1+=5.0;
 } else {
  s0+=9.0;
  s1+=273.0;
 }
}
if(i0<116.0318374633789){
 s0+=720.0;
} else {
 if(i0<130.7747802734375){
  s0+=11.0;
  s1+=21.0;
 } else {
  s0+=2.0;
  s1+=344.0;
 }
}
if(i1<39.859527587890625){
 if(i0<131.39540100097656){
  s0+=512.0;
 } else {
  s1+=110.0;
 }
} else {
 if(i1<80.48577117919922){
  s0+=182.0;
  s1+=256.0;
 } else {
  s0+=38.0;
 }
}
if(i1<27.089006423950195){
 if(i0<131.8729248046875){
  s0+=397.0;
 } else {
  s1+=53.0;
 }
} else {
 if(i1<79.76466369628906){
  s0+=320.0;
  s1+=293.0;
 } else {
  s0+=35.0;
 }
}
if(i1<38.859901428222656){
 if(i1<9.822185516357422){
  s0+=161.0;
  s1+=4.0;
 } else {
  s0+=355.0;
  s1+=93.0;
 }
} else {
 if(i0<119.21109008789062){
  s0+=220.0;
 } else {
  s0+=11.0;
  s1+=254.0;
 }
}
if(i0<125.65444946289062){
 if(i1<75.88104248046875){
  s0+=687.0;
 } else {
  s0+=34.0;
  s1+=3.0;
 }
} else {
 if(i1<86.67636108398438){
  s1+=358.0;
 } else {
  s0+=16.0;
 }
}
if(i1<38.73835372924805){
 if(i0<131.26348876953125){
  s0+=492.0;
 } else {
  s1+=130.0;
 }
} else {
 if(i0<123.6237564086914){
  s0+=223.0;
  s1+=4.0;
 } else {
  s0+=10.0;
  s1+=239.0;
 }
}
if(i1<46.723045349121094){
 if(i0<126.85824584960938){
  s0+=576.0;
 } else {
  s1+=135.0;
 }
} else {
 if(i1<79.76466369628906){
  s0+=130.0;
  s1+=225.0;
 } else {
  s0+=32.0;
 }
}
if(i0<123.38143157958984){
 if(i1<74.1160659790039){
  s0+=697.0;
 } else {
  s0+=37.0;
  s1+=1.0;
 }
} else {
 if(i1<86.12741088867188){
  s1+=356.0;
 } else {
  s0+=7.0;
 }
}
if(i1<44.993438720703125){
 if(i0<129.11581420898438){
  s0+=525.0;
 } else {
  s1+=131.0;
 }
} else {
 if(i1<80.36042022705078){
  s0+=157.0;
  s1+=238.0;
 } else {
  s0+=47.0;
 }
}
if(i1<24.39528465270996){
 if(i0<132.15234375){
  s0+=371.0;
 } else {
  s1+=51.0;
 }
} else {
 if(i1<80.48577117919922){
  s0+=333.0;
  s1+=307.0;
 } else {
  s0+=36.0;
 }
}
if(i0<130.41989135742188){
 if(i0<116.15447998046875){
  s0+=700.0;
 } else {
  s0+=24.0;
  s1+=17.0;
 }
} else {
 if(i0<141.07937622070312){
  s0+=6.0;
  s1+=27.0;
 } else {
  s1+=324.0;
 }
}
if(i1<24.39528465270996){
 if(i1<10.768133163452148){
  s0+=186.0;
  s1+=3.0;
 } else {
  s0+=188.0;
  s1+=34.0;
 }
} else {
 if(i0<123.6237564086914){
  s0+=343.0;
  s1+=1.0;
 } else {
  s0+=8.0;
  s1+=335.0;
 }
}
if(i0<115.80667114257812){
 s0+=740.0;
} else {
 if(i1<83.24552917480469){
  s1+=341.0;
 } else {
  s0+=17.0;
 }
}
if(i0<123.38143157958984){
 if(i0<117.54747009277344){
  s0+=707.0;
 } else {
  s0+=5.0;
  s1+=2.0;
 }
} else {
 if(i0<129.02938842773438){
  s0+=5.0;
  s1+=13.0;
 } else {
  s0+=2.0;
  s1+=364.0;
 }
}
if(i1<24.245046615600586){
 if(i0<132.15234375){
  s0+=387.0;
 } else {
  s1+=51.0;
 }
} else {
 if(i1<80.36042022705078){
  s0+=302.0;
  s1+=317.0;
 } else {
  s0+=41.0;
 }
}
if(i0<129.02938842773438){
 if(i1<63.795467376708984){
  s0+=673.0;
 } else {
  s0+=76.0;
  s1+=6.0;
 }
} else {
 if(i1<87.09002685546875){
  s1+=334.0;
 } else {
  s0+=9.0;
 }
}
if(i1<33.39801788330078){
 if(i0<131.33334350585938){
  s0+=435.0;
 } else {
  s1+=81.0;
 }
} else {
 if(i0<128.835693359375){
  s0+=274.0;
  s1+=6.0;
 } else {
  s0+=1.0;
  s1+=301.0;
 }
}
if(i0<128.835693359375){
 if(i0<116.0318374633789){
  s0+=730.0;
 } else {
  s0+=20.0;
  s1+=8.0;
 }
} else {
 if(i0<141.07937622070312){
  s0+=7.0;
  s1+=38.0;
 } else {
  s1+=295.0;
 }
}
if(i0<129.02938842773438){
 if(i1<60.77544403076172){
  s0+=640.0;
 } else {
  s0+=100.0;
  s1+=9.0;
 }
} else {
 if(i0<141.07937622070312){
  s0+=13.0;
  s1+=31.0;
 } else {
  s1+=305.0;
 }
}
if(i1<24.7958984375){
 if(i1<9.775710105895996){
  s0+=182.0;
  s1+=3.0;
 } else {
  s0+=181.0;
  s1+=46.0;
 }
} else {
 if(i1<51.87153625488281){
  s0+=232.0;
  s1+=125.0;
 } else {
  s0+=142.0;
  s1+=187.0;
 }
}
if(i0<125.64948272705078){
 if(i0<116.15447998046875){
  s0+=727.0;
 } else {
  s0+=7.0;
  s1+=4.0;
 }
} else {
 if(i1<86.67636108398438){
  s1+=352.0;
 } else {
  s0+=8.0;
 }
}
if(i1<45.97661590576172){
 if(i1<9.80844783782959){
  s0+=178.0;
  s1+=3.0;
 } else {
  s0+=354.0;
  s1+=140.0;
 }
} else {
 if(i1<79.8900146484375){
  s0+=146.0;
  s1+=246.0;
 } else {
  s0+=31.0;
 }
}
if(i0<120.15666198730469){
 if(i1<74.57794189453125){
  s0+=686.0;
 } else {
  s0+=25.0;
  s1+=2.0;
 }
} else {
 if(i0<130.41989135742188){
  s0+=8.0;
  s1+=22.0;
 } else {
  s0+=3.0;
  s1+=352.0;
 }
}
if(i1<24.39528465270996){
 if(i1<9.822185516357422){
  s0+=181.0;
  s1+=4.0;
 } else {
  s0+=180.0;
  s1+=35.0;
 }
} else {
 if(i1<62.44404602050781){
  s0+=295.0;
  s1+=190.0;
 } else {
  s0+=76.0;
  s1+=137.0;
 }
}
if(i1<34.945098876953125){
 if(i0<130.64739990234375){
  s0+=463.0;
 } else {
  s1+=78.0;
 }
} else {
 if(i1<79.76466369628906){
  s0+=229.0;
  s1+=286.0;
 } else {
  s0+=42.0;
 }
}
if(i1<38.127601623535156){
 if(i0<131.26348876953125){
  s0+=508.0;
 } else {
  s1+=81.0;
 }
} else {
 if(i1<79.8900146484375){
  s0+=196.0;
  s1+=278.0;
 } else {
  s0+=35.0;
 }
}
if(i0<125.65444946289062){
 if(i1<69.183837890625){
  s0+=678.0;
 } else {
  s0+=52.0;
  s1+=8.0;
 }
} else {
 if(i0<129.02938842773438){
  s0+=5.0;
  s1+=6.0;
 } else {
  s0+=5.0;
  s1+=344.0;
 }
}
if(i0<123.38143157958984){
 if(i1<72.27606201171875){
  s0+=678.0;
 } else {
  s0+=34.0;
  s1+=2.0;
 }
} else {
 if(i0<130.41989135742188){
  s0+=10.0;
  s1+=11.0;
 } else {
  s0+=8.0;
  s1+=355.0;
 }
}
if(i1<46.810577392578125){
 if(i1<31.13024139404297){
  s0+=436.0;
  s1+=51.0;
 } else {
  s0+=136.0;
  s1+=67.0;
 }
} else {
 if(i0<122.83799743652344){
  s0+=160.0;
  s1+=4.0;
 } else {
  s0+=9.0;
  s1+=235.0;
 }
}
if(i1<39.11579513549805){
 if(i1<24.896106719970703){
  s0+=389.0;
  s1+=30.0;
 } else {
  s0+=120.0;
  s1+=49.0;
 }
} else {
 if(i1<80.36042022705078){
  s0+=191.0;
  s1+=280.0;
 } else {
  s0+=39.0;
 }
}
 float max_s=s0;
 int cls=1;
 if (max_s < s1) {
  max_s = s1;
  cls=2;
 }
 WRITE_IMAGE (out, POS_out_INSTANCE(x,y,z,0), cls);
}
