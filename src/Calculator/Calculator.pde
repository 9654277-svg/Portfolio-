//Eliana Steele | 5 sept 2025 | Calculator
Button[] buttons = new Button[12];
Button[] numButtons = new Button[10];
int num = 0;
float l, r, result;
boolean left;
String dVal;
String op;


void setup() {
  size(100, 320);
  background(#FA9FDC);
  left = true;
  l = 0.0;
  r = 0.0;
  result = 0.0;
  dVal = "0.0";
  op = "";
  buttons[0] = new Button(20, 145, 20, 10, ".", #CBC9CB, #9FB0DE, true);
  numButtons[0] = new Button(20, 300, 20, 10, "0", #CBC9CB, #9FB0DE, true);
  buttons[1] = new Button(50, 145, 20, 10, "±", #CBC9CB, #9FB0DE, true);
  buttons[2] = new Button(80, 145, 20, 10, "sqrt", #CBC9CB, #9FB0DE, true);
  buttons[3] = new Button(50, 183, 30, 30, "C", #CBC9CB, #9FB0DE, false);
  buttons[4] = new Button(25, 175, 10, 10, "+", #CBC9CB, #9FB0DE, true);
  buttons[5] = new Button(25, 190, 10, 10, "x", #CBC9CB, #9FB0DE, true);
  buttons[6] = new Button(75, 175, 10, 10, "-", #CBC9CB, #9FB0DE, true);
  buttons[7] = new Button(75, 190, 10, 10, "÷", #CBC9CB, #9FB0DE, true);
  buttons[8] = new Button(20, 220, 20, 10, "π", #CBC9CB, #9FB0DE, true);
  buttons[9] = new Button(80, 220, 20, 10, "sq", #CBC9CB, #9FB0DE, true);
  numButtons[7] = new Button(20, 240, 20, 10, "7", #CBC9CB, #9FB0DE, true);
  numButtons[9] = new Button(80, 240, 20, 10, "9", #CBC9CB, #9FB0DE, true);
  numButtons[8] = new Button(50, 240, 20, 10, "8", #CBC9CB, #9FB0DE, true);
  numButtons[5] = new Button(50, 260, 20, 10, "5", #CBC9CB, #9FB0DE, true);
  numButtons[6] = new Button(80, 260, 20, 10, "6", #CBC9CB, #9FB0DE, true);
  numButtons[4] = new Button(20, 260, 20, 10, "4", #CBC9CB, #9FB0DE, true);
  numButtons[1] = new Button(20, 280, 20, 10, "1", #CBC9CB, #9FB0DE, true);
  numButtons[2] = new Button(50, 280, 20, 10, "2", #CBC9CB, #9FB0DE, true);
  numButtons[3] = new Button(80, 280, 20, 10, "3", #CBC9CB, #9FB0DE, true);
  buttons[10] = new Button(50, 300, 20, 10, "P", #CBC9CB, #9FB0DE, true);
  buttons[11]= new Button(80, 300, 20, 10, "=", #CBC9CB, #9FB0DE, true);
}


void draw() {
  background(#D18BB7);
  for (int i=0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void keyPressed() {
  println("Key:" + key);
  println("KeyCode:" + keyCode);
  if (keyCode == 107) {
    dVal = "0.0";
    left = false;
    op = "+"; 
  } else if (keyCode == 45 || keyCode == 109) {
    left = false;
    dVal = "0.0";
    op = "-";
      } else if (keyCode == 46 || keyCode == 110) {
  if (dVal.contains(".") == false) 
        dVal += ".";
  } else if (keyCode == 106) {
    left = false;
    dVal = "0.0";
    op = "*";
  } else if (keyCode == 10) {
    performCalculation();
      } else if (keyCode == 8) {
  result = 0.0;
      dVal = "0.0";
      op = "C";
  } else if (keyCode == 111) {
    result = 0.0;
    dVal = "0.0";
    op = "÷";
    left = false;
  } else if (keyCode == 96 || keyCode == 48) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "0";
          l = float(dVal);
        } else {
          dVal += "0";
          l = float(dVal);
        }
    } else if (left == false) {
      if (dVal.equals("0.0")) {
        dVal = "0";
        r=float(dVal);
      } else {
        dVal += "0";
        r= float(dVal);
      }
    }
    }
  } else if (keyCode == 49 || keyCode == 97) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "1";
          l = float(dVal);
        } else {
          dVal += "1";
          l = float(dVal);
        }
    } else if (left == false) {
      if (dVal.equals("0.0")) {
        dVal = "1";
        r=float(dVal);
      } else {
        dVal += "1";
        r= float(dVal);
      }
    }
    }
  } else if (keyCode == 98 || keyCode == 50) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "2";
          l = float(dVal);
        } else {
          dVal += "2";
          l = float(dVal);
        }
    } else if (left == false) {
      if (dVal.equals("0.0")) {
        dVal = "2";
        r=float(dVal);
      } else {
        dVal += "2";
        r= float(dVal);
      }
    }
  }
  } else if (keyCode == 51 || keyCode == 99) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "3";
          l = float(dVal);
        } else {
          dVal += "3";
          l = float(dVal);
        }
    } else if (left == false) {
      if (dVal.equals("0.0")) {
        dVal = "3";
        r=float(dVal);
      } else {
        dVal += "3";
        r= float(dVal);
      }
    }
    }
  } else if (keyCode == 52 || keyCode == 100) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "4";
          l = float(dVal);
        } else {
          dVal += "4";
          l = float(dVal);
        }
    } else if (left == false) {
      if (dVal.equals("0.0")) {
        dVal = "4";
        r=float(dVal);
      } else {
        dVal += "4";
        r= float(dVal);
      }
    }
    }
  } else if (keyCode == 53 || keyCode == 101) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "5";
          l = float(dVal);
        } else {
          dVal += "5";
          l = float(dVal);
        }
    } else if (left == false) {
      if (dVal.equals("0.0")) {
        dVal = "5";
        r=float(dVal);
      } else {
        dVal += "5";
        r= float(dVal);
      }
    }
    }
  } else if (keyCode == 54 || keyCode == 102) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "6";
          l = float(dVal);
        } else {
          dVal += "6";
          l = float(dVal);
        }
    } else if (left == false) {
      if (dVal.equals("0.0")) {
        dVal = "6";
        r=float(dVal);
      } else {
        dVal += "6";
        r= float(dVal);
      }
    }
    }
  } else if (keyCode == 55 || keyCode == 103) {
    if (dVal.length()<17) {
      if (left == true){
        if (dVal.equals("0.0")) {
          dVal = "7";
          l = float(dVal);
        } else {
          dVal += "7";
          l = float(dVal);
        }
    } else if (left == false) {
      if (dVal.equals("0.0")) {
        dVal = "7";
        r=float(dVal);
      } else {
        dVal += "7";
        r= float(dVal);
      }
    }
    }
  } else if (keyCode == 56 || keyCode == 104) {
    if (dVal.length()<17) {
      if (left == true){
        if (dVal.equals("0.0")) {
          dVal = "8";
          l = float(dVal);
        } else {
          dVal += "8";
          l = float(dVal);
        }
    } else if (left == false) {
      if (dVal.equals("0.0")) {
        dVal = "8";
        r=float(dVal);
      } else {
        dVal += "8";
        r= float(dVal);
      }
    }
    }
  } else if (keyCode == 57 || keyCode == 105) {
    if (dVal.length()<17) {
      if (left == true){
        if (dVal.equals("0.0")) {
          dVal = "9";
          l = float(dVal);
        } else {
          dVal += "9";
          l = float(dVal);
        }
    } else if (left == false) {
      if (dVal.equals("0.0")) {
        dVal = "9";
        r=float(dVal);
      } else {
        dVal += "9";
        r= float(dVal);
      }
    }
  
  }
}
}

void mousePressed() {
  //not number buttons
  for (int i = 0; i<buttons.length; i++) {
    if (buttons[i].over && buttons[i].val.equals("+")) {
      left = false;
      op = "+";
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val.equals("-")) {
      left = false;
      dVal = "0.0";
      op = "-";
    } else if (buttons[i].over && buttons[i].val.equals("C")) {
      result = 0.0;
      dVal = "0.0";
      op = "C";
    } else if (buttons[i].over && buttons[i].val.equals("=")) {
      performCalculation();
    } else if (buttons[i].over && buttons[i].val.equals("sqrt")) {
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals("sq")) {
      if (left) {
        l = sq(l);
        dVal = str(l);
      } else {
        r = sq(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals("±")) {
      if (left) {
        l = l*=1;
        dVal = str(l);
      } else {
        r= r*=1;
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals("P")) {
      left = false;
      op = "P";
      dVal = "0.0";
    } else if (buttons[i].over && buttons[i].val.equals("π")) {
      if (left) {
        l = PI;
        dVal = str(l);
      } else {
        r= PI;
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals("x")) {
      left = false;
      op = buttons[i].val;
      dVal = "0.0";
      op = "*";
    } else if (buttons[i].over && buttons[i].val.equals("÷")) {
      result = 0.0;
      op = buttons[i].val;
      dVal = "0.0";
      op = "÷";
      left = false;
    } else if (buttons[i].over && buttons[i].val.equals(".")) {
      if (dVal.contains(".") == false) {
        dVal += ".";
      }
    }
  }
  // all number buttons
  for (int i = 0; i<numButtons.length; i++) {
    if (dVal.length()<14) {
      if (numButtons[i].over && left == true) {
        if (dVal.equals("0.0")) {
          dVal = (numButtons[i].val);
          l = float(dVal);
        } else {
          dVal+=(numButtons[i].val);
          l = float(dVal);
        }
      } else if (numButtons[i].over && left == false) {
        if (dVal.equals("0.0")) {
          dVal = (numButtons[i].val);
          r = float(dVal);
        } else {
          dVal+=(numButtons[i].val);
          l = float(dVal);
        }
      }
    }
  }
  println("L:" + l);
  println("R:" + r);
  println("Result:" + result);
  println("Op:" + op);
  println("Left:" + left);
}


void updateDisplay() {
  rectMode(CORNER);
  rect(10, 10, 80, 100, 5);
  fill(#FFFAFA);
  textSize(14);
  textAlign(RIGHT);
  if (dVal.length()>8) {
    textSize(15);
  } else if (dVal.length()>9) {
    textSize(13);
  }
  text(dVal, width-17, 30);
}

void performCalculation() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("*")) {
    result = l * r;
  } else if (op.equals("÷")) {
    result = l / r;
  } else if (op.equals("P")) {
    result = pow(l, r);
  } else if (op.equals("=")) {
    result = l = r;
  } else if (op.equals("C")) {
    result = l = 0.0;
    result = r = 0.0;
  }
  dVal = str (result);
}
