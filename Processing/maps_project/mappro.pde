

void setup(){
    BacheloretteList prog = new BacheloretteList("Desktop/maps_project/data/mapsdata.dat");
  //out.println(prog);
    BachelorList prog1 = new BachelorList("Desktop/maps_project/data/bachelor.dat");
   //out.println(prog1);
   out.println(prog.r1Wcalc()); //men chosing women
   out.println(prog1.r1Wcalc()); //women choosing men
   //out.println(prog.EFData() + " boys" );
   //out.println(prog1.EFData() + " girls");
   
   //out.println(prog.EFDataList() + " trash boys" );
   //out.println(prog1.EFDataList() + " trash girls");
   
  }
