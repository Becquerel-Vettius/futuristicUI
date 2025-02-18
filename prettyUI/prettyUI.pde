


void setup(){
  

  
  frameRate(60);
  size(900,800);
  fullScreen();
  
  PFont font;
  font = loadFont("OCRAExtended-25.vlw");
  textFont(font);
  
    pList.add( new Popup(100,100,600,800,"On 18 February 1478, George, Duke of Clarence was executed in the Tower of London. Having been found guilty of high treason in parliament, the Duke was executed, probably by way of drowning in a butt of malmsey, by order of his brother, King Edward IV. Relations between Clarence and the King had been tempestuous for several years. They had fallen out in the late 1460s when the Duke had married Richard, Earl of Warwick's daughter Isabel in defiance of Edward's express wishes, and joined the Earl's ill-fated rebellion in 1471. Although Clarence had returned to his brother's side, his authority over his Midlands and Welsh March heartlands gradually declined. For this, Edward was partially responsible, as he had liberally recruited from his brother's tenantry. The King had also promoted his in-laws—personal enemies of Clarence—often at the Duke's expense. After Isabel's death, Clarence was also vexed over Edward's refusal to allow him to marry his choice of bride. In December 1476, Clarence's wife Isabel died following childbirth, in Tewkesbury; she was followed by their newly-born son a few days later. Historians have speculated that Clarence now became near deranged with grief, and that he came to imagine she had been poisoned. The following April he sent an armed force to arrest one of her ladies, Ankarette Twynho, in Frome, Somerset. A co-accused, John Thursby, was accused of poisoning the Duke and Duchess's newly-born son. A third man, Roger Tocotes was accused of harbouring them, but managed to evade arrest. Twynho and Thursby were found guilty and immediately executed. The following month, the King ordered an investigation into possible treason among some of Clarence's closest retainers and servants. This resulted in the execution of two of the Duke's associates, Thomas Burdet and John Stacy. Clarence publicly disputed the findings of the commission, and this, and other allegations, led to his own arrest and eventual execution. Historians have generally considered Clarence's fall from power to have been the direct result of his abuse of his feudal authority and usurping of the King's justice. While none consider Clarence's actions as justifiable, differing motives have been presented. His original attack on Twynho, Tocotes and Thursby has been variously been put down to a lack of mental stability, petulance or grief-induced derangement. The executions, in turn, were probably a symptom of his declining authority. Haemorrhaging support as his affinity was, Clarence may have intended both a show of strength and a warning to his followers not to betray him. "));
    
    pList.add( new Popup(1000,100,400,300, "lorem ipsum dolor"));
    pList.add( new Popup(1100,150,400,300, "lorem ipsum dolor"));
    pList.add( new Popup(1200,200,400,300, "lorem ipsum dolor"));
    
    pList.add( new Popup(1500,100,200,300, "yet a few words"));
    
    pList.add( new Popup(200,950,500,80,"ALERT! DESCENDING ALERT!"));

}
   String filler = "lorem ipsum dolor, und so weiter, going on until it fills this textbox, perserverance";




void draw(){
  background(200);
  
 
 for(int i = pList.size()-1 ; i>=0 ; i--){
   Popup A = pList.get(i);
   
   A.fade(pList);
   
   //A.renderFrame();
   
   //A.renderText();

 }
  
 for(int i = 0; i <= pList.size()-1 ; i++) {
   Popup A = pList.get(i);
   
   A.renderFrame();
   
   A.renderText();
   
 }
  
  
  
  
  
  
  
  
  
  
}
