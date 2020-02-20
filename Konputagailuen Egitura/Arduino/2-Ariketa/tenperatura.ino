int ledG = 11;
int ledZ = 6;
int pultsadore1 = 12;
int egoera1 = 0;
int pultsadore2 = 4;
int egoera2 = 0;
int potentziometroa = 14;
int tenp_sentsorea = 18;

int aux = 0;

float aukeratutako_tenp;
float giro_tenp;


void setup(){
  
  pinMode(pultsadore1, INPUT);
  pinMode(pultsadore2, INPUT);
  
  pinMode(ledG, OUTPUT);
  pinMode(ledZ, OUTPUT);
  
  Serial.begin(9600);
  
}

void loop(){
  
  egoera1 = digitalRead(pultsadore1);
  egoera2 = digitalRead(pultsadore2);
  
  if (egoera1 == HIGH){
    
    aukeratutako_tenp = analogRead(potentziometroa);
    aukeratutako_tenp = map(aukeratutako_tenp, 0, 1023, 15, 30);
    giro_tenp = analogRead(tenp_sentsorea);
    giro_tenp = (5.0 * giro_tenp * 100.0) / 1024.0;
    
    if (giro_tenp < aukeratutako_tenp){
      digitalWrite(ledG, HIGH);
      digitalWrite(ledZ, LOW);
    }
    else {
      digitalWrite(ledZ, HIGH);
      digitalWrite(ledG, LOW);
    }
  }
  
  if(egoera2 == HIGH) {
     aux = 1; 
  }
  else if(egoera2 == LOW && aux == 1) {
  
    Serial.print("Aukeratutako tenperatura: ");
    Serial.print(aukeratutako_tenp);
    Serial.print("\n");
    Serial.print("Giro tenperatura: ");
    Serial.print(giro_tenp);
    Serial.print("\n");
    Serial.print("Egikaritzen ari da: ");
    
    if(giro_tenp < aukeratutako_tenp){
       Serial.print("Berogailua"); 
    }
    else {
      Serial.print("Haizagailua");
    }
    Serial.print("\n");
    
    aux = 0;
  }
  
}
