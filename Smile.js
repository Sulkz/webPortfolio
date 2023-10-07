let canvas = document.getElementById("mycanvas");
let context = canvas.getContext("2d");




// When LEFT eyebrows are cicked from above or on the eye bro from the ranges that the ey brow occupy it gets raised
canvas.addEventListener("click", function(event){
    let x = event.offsetX;
    let y = event.offsetY;
    console.log(event);

    if(x >= 137 && x < 188 && y < 133 && y > 78){
         /* Head shape of a lemon*/

    /*HAIR*/
    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.1,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0.2,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();



    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill();


    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.3,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.6,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.9,-1.1,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-1.2,-1,0.6,2,100,0,Math.PI*2);
    context.fill()
        

    ///*Other side of hair */
    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill();


    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.3,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.6,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.9,-1.1,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(1.2,-1,0.6,2,60,0,Math.PI*2);
    context.fill()


    /*head design */
    context.fillStyle="rgb(206, 198, 179)";
    context.beginPath();
    context.ellipse(0,0,1.9,3,0,0,Math.PI*2);
    context.fill();

    //Nose design
    context.strokeStyle = "rgb(0,0,0)";
    context.lineWidth = "0.05";
    context.beginPath();
    context.moveTo(-0.1,0.7);
    context.lineTo(0.1,-0.5);
    context.moveTo(-0.1,0.7);
    context.lineTo(-0.1,-0.5);
    context.stroke();



    /*left eye creation*/
    /*outside*/
    context.fillStyle="rgb(240, 248, 255)";
    context.beginPath();
    context.ellipse(-0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
        
    context.fill();
    /*inside*/
    context.fillStyle="rgb(0,0,0)";
    context.beginPath();
    context.arc(-0.9, -0.6, 0.08, 0, Math.PI * 2,false);
    context.fill();

    /*Right eye creation*/
    /*ouside*/
    context.fillStyle="rgb(240, 248, 255)";
    context.beginPath();
    context.ellipse(0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
    context.fill();
        
    context.fillStyle="rgb(0,0,0)";-
    context.beginPath();
    context.arc(0.9, -0.6, 0.08, 0, Math.PI * 2,false);
    context.fill();

    
    // eyebrows
    context.beginPath();
    context.ellipse(-0.9,-1.8,0.6,0.1,0,0,Math.PI*2);
    context.fill();

    context.beginPath();
    context.ellipse(0.9,-1.5,0.6,0.1,0,0,Math.PI*2);
    context.fill();

    //Mouth
    context.beginPath();
    context.ellipse(0,1.3,0.8,0.07,0,0,Math.PI*2);
    context.fill();

    

    }
});


// when RIGHT eyebrows are clicked from above or on the eye bro from the ranges that the ey brow occupy it gets raised
canvas.addEventListener("click", function(event){
    let x = event.offsetX;
    let y = event.offsetY;
    console.log(event);

    if(x >= 229 && x < 277 && y < 132 && y > 78){
         /* Head shape of a lemon*/

    /*HAIR*/
    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.1,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0.2,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();



    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill();


    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.3,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.6,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.9,-1.1,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-1.2,-1,0.6,2,100,0,Math.PI*2);
    context.fill()
        

    ///*Other side of hair */
    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill();


    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.3,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.6,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.9,-1.1,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(1.2,-1,0.6,2,60,0,Math.PI*2);
    context.fill()


    /*head design */
    context.fillStyle="rgb(206, 198, 179)";
    context.beginPath();
    context.ellipse(0,0,1.9,3,0,0,Math.PI*2);
    context.fill();

    //Nose design
    context.strokeStyle = "rgb(0,0,0)";
    context.lineWidth = "0.05";
    context.beginPath();
    context.moveTo(-0.1,0.7);
    context.lineTo(0.1,-0.5);
    context.moveTo(-0.1,0.7);
    context.lineTo(-0.1,-0.5);
    context.stroke();



    /*left eye creation*/
    /*outside*/
    context.fillStyle="rgb(240, 248, 255)";
    context.beginPath();
    context.ellipse(-0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
        
    context.fill();
    /*inside*/
    context.fillStyle="rgb(0,0,0)";
    context.beginPath();
    context.arc(-0.9, -0.6, 0.08, 0, Math.PI * 2,false);
    context.fill();

    /*Right eye creation*/
    /*ouside*/
    context.fillStyle="rgb(240, 248, 255)";
    context.beginPath();
    context.ellipse(0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
    context.fill();
        
    context.fillStyle="rgb(0,0,0)";-
    context.beginPath();
    context.arc(0.9, -0.6, 0.08, 0, Math.PI * 2,false);
    context.fill();

    
    // eyebrows
    context.beginPath();
    context.ellipse(-0.9,-1.5,0.6,0.1,0,0,Math.PI*2);
    context.fill();

    context.beginPath();
    context.ellipse(0.9,-1.8,0.6,0.1,0,0,Math.PI*2);
    context.fill();

    //Mouth
    context.beginPath();
    context.ellipse(0,1.3,0.8,0.07,0,0,Math.PI*2);
    context.fill();

    

    }
});
// when mouth is clicked changes color of mouth
canvas.addEventListener("click", function(event){
    let x = event.offsetX;
    let y = event.offsetY;
    console.log(event);

    if(x> 165 && x < 235 && y < 273 && y > 255){
         /* Head shape of a lemon*/

    /*HAIR*/
    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.1,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0.2,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();



    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill();


    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.3,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.6,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.9,-1.1,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-1.2,-1,0.6,2,100,0,Math.PI*2);
    context.fill()
        

    ///*Other side of hair */
    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill();


    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.3,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.6,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.9,-1.1,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(1.2,-1,0.6,2,60,0,Math.PI*2);
    context.fill()


    /*head design */
    context.fillStyle="rgb(206, 198, 179)";
    context.beginPath();
    context.ellipse(0,0,1.9,3,0,0,Math.PI*2);
    context.fill();

    //Nose design
    context.strokeStyle = "rgb(0,0,0)";
    context.lineWidth = "0.05";
    context.beginPath();
    context.moveTo(-0.1,0.7);
    context.lineTo(0.1,-0.5);
    context.moveTo(-0.1,0.7);
    context.lineTo(-0.1,-0.5);
    context.stroke();



    /*left eye creation*/
    /*outside*/
    context.fillStyle="rgb(240, 248, 255)";
    context.beginPath();
    context.ellipse(-0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
        
    context.fill();
    /*inside*/
    context.fillStyle="rgb(0,0,0)";
    context.beginPath();
    context.arc(-0.9, -0.6, 0.08, 0, Math.PI * 2,false);
    context.fill();

    /*Right eye creation*/
    /*ouside*/
    context.fillStyle="rgb(240, 248, 255)";
    context.beginPath();
    context.ellipse(0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
    context.fill();
        
    context.fillStyle="rgb(0,0,0)";-
    context.beginPath();
    context.arc(0.9, -0.6, 0.08, 0, Math.PI * 2,false);
    context.fill();

    
    // eyebrows
    context.beginPath();
    context.ellipse(-0.9,-1.5,0.6,0.1,0,0,Math.PI*2);
    context.fill();

    context.beginPath();
    context.ellipse(0.9,-1.5,0.6,0.1,0,0,Math.PI*2);
    context.fill();

    //Mouth
    context.fillStyle="rgb(29, 48, 255)";
    context.beginPath();
    context.ellipse(0,1.3,0.8,0.07,0,0,Math.PI*2);
    context.fill();

    

    }
});

// when mouth is clicked changes color of mouth
canvas.addEventListener("dblclick", function(event){
    let x = event.offsetX;
    let y = event.offsetY;
    console.log(event);

    if(x> 165 && x < 235 && y < 273 && y > 255){
         /* Head shape of a lemon*/

    /*HAIR*/
    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.1,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0.2,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();



    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill();


    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.3,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.6,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.9,-1.1,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-1.2,-1,0.6,2,100,0,Math.PI*2);
    context.fill()
        

    ///*Other side of hair */
    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill();


    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.3,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.6,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.9,-1.1,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(1.2,-1,0.6,2,60,0,Math.PI*2);
    context.fill()


    /*head design */
    context.fillStyle="rgb(206, 198, 179)";
    context.beginPath();
    context.ellipse(0,0,1.9,3,0,0,Math.PI*2);
    context.fill();

    //Nose design
    context.strokeStyle = "rgb(0,0,0)";
    context.lineWidth = "0.05";
    context.beginPath();
    context.moveTo(-0.1,0.7);
    context.lineTo(0.1,-0.5);
    context.moveTo(-0.1,0.7);
    context.lineTo(-0.1,-0.5);
    context.stroke();



    /*left eye creation*/
    /*outside*/
    context.fillStyle="rgb(240, 248, 255)";
    context.beginPath();
    context.ellipse(-0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
        
    context.fill();
    /*inside*/
    context.fillStyle="rgb(0,0,0)";
    context.beginPath();
    context.arc(-0.9, -0.6, 0.08, 0, Math.PI * 2,false);
    context.fill();

    /*Right eye creation*/
    /*ouside*/
    context.fillStyle="rgb(240, 248, 255)";
    context.beginPath();
    context.ellipse(0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
    context.fill();
        
    context.fillStyle="rgb(0,0,0)";-
    context.beginPath();
    context.arc(0.9, -0.6, 0.08, 0, Math.PI * 2,false);
    context.fill();

    
    // eyebrows
    context.beginPath();
    context.ellipse(-0.9,-1.5,0.6,0.1,0,0,Math.PI*2);
    context.fill();

    context.beginPath();
    context.ellipse(0.9,-1.5,0.6,0.1,0,0,Math.PI*2);
    context.fill();

    //Mouth
    context.fillStyle="rgb(129, 78, 20)";
    context.beginPath();
    context.ellipse(0,1.3,0.8,0.07,0,0,Math.PI*2);
    context.fill();

    

    }
});


// when button clicked displays neutral is displayed
const resetBtn = document.getElementById("resetBtn");
resetBtn.addEventListener('click', function(e){
    console.log(e);
    /* Head shape of a lemon*/

    /*HAIR*/
    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.1,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0.2,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();



    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill();


    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.3,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.6,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.9,-1.1,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-1.2,-1,0.6,2,100,0,Math.PI*2);
    context.fill()
        

    ///*Other side of hair */
    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill();


    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.3,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.6,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.9,-1.1,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(1.2,-1,0.6,2,60,0,Math.PI*2);
    context.fill()


    /*head design */
    context.fillStyle="rgb(206, 198, 179)";
    context.beginPath();
    context.ellipse(0,0,1.9,3,0,0,Math.PI*2);
    context.fill();

    //Nose design
    context.strokeStyle = "rgb(0,0,0)";
    context.lineWidth = "0.05";
    context.beginPath();
    context.moveTo(-0.1,0.7);
    context.lineTo(0.1,-0.5);
    context.moveTo(-0.1,0.7);
    context.lineTo(-0.1,-0.5);
    context.stroke();



    /*left eye creation*/
    /*outside*/
    context.fillStyle="rgb(240, 248, 255)";
    context.beginPath();
    context.ellipse(-0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
        
    context.fill();
    /*inside*/
    context.fillStyle="rgb(0,0,0)";
    context.beginPath();
    context.arc(-0.9, -0.6, 0.08, 0, Math.PI * 2,false);
    context.fill();

    /*Right eye creation*/
    /*ouside*/
    context.fillStyle="rgb(240, 248, 255)";
    context.beginPath();
    context.ellipse(0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
    context.fill();
        
    context.fillStyle="rgb(0,0,0)";-
    context.beginPath();
    context.arc(0.9, -0.6, 0.08, 0, Math.PI * 2,false);
    context.fill();

    //eyebrows
    context.beginPath();
    context.ellipse(-0.9,-1.5,0.6,0.1,0,0,Math.PI*2);
    context.fill();

    context.beginPath();
    context.ellipse(0.9,-1.5,0.6,0.1,0,0,Math.PI*2);
    context.fill();

    //Mouth
    context.beginPath();
    context.ellipse(0,1.3,0.8,0.07,0,0,Math.PI*2);
    context.fill();

   
});
// when button clicked displays Happy face mouth opens 
const happyBtn = document.getElementById("happyBtn");
happyBtn.addEventListener('click', function(e){
    
    console.log(e);

    /* Head shape of a lemon*/

    /*HAIR*/
    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.1,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0.2,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();



    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill();


    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.3,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.6,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.9,-1.1,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-1.2,-1,0.6,2,100,0,Math.PI*2);
    context.fill()
        

    ///*Other side of hair */
    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill();


    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.3,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.6,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.9,-1.1,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(1.2,-1,0.6,2,60,0,Math.PI*2);
    context.fill()


    /*head */
    context.fillStyle="rgb(206, 198, 179)";
    context.beginPath();
    context.ellipse(0,0,1.9,3,0,0,Math.PI*2);
    context.fill();

    //Nose design
    context.strokeStyle = "rgb(0,0,0)";
    context.lineWidth = "0.05";
    context.beginPath();
    context.moveTo(-0.1,0.7);
    context.lineTo(0.1,-0.5);
    context.moveTo(-0.1,0.7);
    context.lineTo(-0.1,-0.5);
    context.stroke();



    /*left eye creation*/
    /*outside*/
    context.fillStyle="rgb(240, 248, 255)";
    context.beginPath();
    context.ellipse(-0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
        
    context.fill();
    /*inside*/
    context.fillStyle="rgb(0,0,0)";
    context.beginPath();
    context.arc(-0.9, -0.6, 0.08, 0, Math.PI * 2,false);
    context.fill();

    /*Right eye creation*/
    /*ouside*/
    context.fillStyle="rgb(240, 248, 255)";
    context.beginPath();
    context.ellipse(0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
    context.fill();
        
    context.fillStyle="rgb(0,0,0)";-
    context.beginPath();
    context.arc(0.9, -0.6, 0.08, 0, Math.PI * 2,false);
    context.fill();

    //eyebrows
    context.beginPath();
    context.ellipse(-0.9,-1.6,0.6,0.1,0,0,Math.PI*2);
    context.fill();

    context.beginPath();
    context.ellipse(0.9,-1.6,0.6,0.1,0,0,Math.PI*2);
    context.fill();
    
    // Mouth
    context.beginPath();
    context.ellipse(0,1.3,0.9,0.9,0,0,Math.PI);
    context.fill();

});

// when button clicked displays fear on the face mouth opens 
// eybrows raised at an angle

const fearBtn = document.getElementById("fearBtn");
fearBtn.addEventListener('click', function(e){
    console.log(e);
    

    /* Head shape of a lemon*/

    /*HAIR*/
    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.1,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0.2,-1.4,0.6,2,0,0,Math.PI*2);
    context.fill();



    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill();


    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.3,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.6,-1.4,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-0.9,-1.1,0.6,2,100,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb(207,219,219)";
    context.beginPath();
    context.ellipse(-1.2,-1,0.6,2,100,0,Math.PI*2);
    context.fill()
        

    ///*Other side of hair */
    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill();


    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.3,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.6,-1.4,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(0.9,-1.1,0.6,2,60,0,Math.PI*2);
    context.fill()

    context.fillStyle="rgb((207,219,219)";
    context.beginPath();
    context.ellipse(1.2,-1,0.6,2,60,0,Math.PI*2);
    context.fill()


    /*head */
    context.fillStyle="rgb(206, 198, 179)";
    context.beginPath();
    context.ellipse(0,0,1.9,3,0,0,Math.PI*2);
    context.fill();

    //Nose
    context.strokeStyle = "rgb(0,0,0)";
    context.lineWidth = "0.05";
    context.beginPath();
    context.moveTo(-0.1,0.7);
    context.lineTo(0.1,-0.5);
    context.moveTo(-0.1,0.7);
    context.lineTo(-0.1,-0.5);
    context.stroke();



    /*left eye creation*/
    /*outside*/
    context.fillStyle="rgb(240, 248, 255)";
    context.beginPath();
    context.ellipse(-0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
        
    context.fill();
    /*inside*/
    context.fillStyle="rgb(0,0,0)";
    context.beginPath();
    context.arc(-0.9, -0.6, 0.08, 0, Math.PI * 2,false);
    context.fill();

    /*Right eye creation*/
    /*ouside*/
    context.fillStyle="rgb(240, 248, 255)";
    context.beginPath();
    context.ellipse(0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
    context.fill();
        
    context.fillStyle="rgb(0,0,0)";-
    context.beginPath();
    context.arc(0.9, -0.6, 0.08, 0, Math.PI * 2,false);
    context.fill();

    //eyebrows
    context.beginPath();
    context.ellipse(-0.9,-1.6,0.6,0.1,-70,0,Math.PI*2);
    context.fill();

    context.beginPath();
    context.ellipse(0.9,-1.6,0.6,0.1,70,0,Math.PI*2);
    context.fill();
    // mouth
    context.beginPath();
    context.ellipse(0,1.5,0.8,0.8,0,0,Math.PI*2);
    context.fill();

});



class Face {
    constructor(xpos,ypos,radius){
        this.xpos = xpos;
        this.ypos = ypos;
        this.radius = radius

    }

    draw(context){
        
        context.translate(this.xpos,this.ypos);
        context.scale(this.radius,this.radius);

       

        this.#drawHead(context);
        this.#drawEyes(context);
        this.#drawNose(context);
        this.#drawMouth(context);
        this.#drawEyebrows(context);

        
    }



    #drawEyebrows(context){
        context.beginPath();
        context.ellipse(-0.9,-1.5,0.6,0.1,0,0,Math.PI*2);
        context.fill();

        context.beginPath();
        context.ellipse(0.9,-1.5,0.6,0.1,0,0,Math.PI*2);
        context.fill();
    }

    #drawNose(context){
        context.strokeStyle = "rgb(0,0,0)";
        context.lineWidth = "0.06";
        context.beginPath();
        context.moveTo(-0.1,0.7);
        context.lineTo(0.1,-0.5);
        context.moveTo(-0.1,0.7);
        context.lineTo(-0.1,-0.5);
        context.stroke();


    }
    

    #drawMouth(context){
        context.beginPath();
        context.ellipse(0,1.3,0.8,0.07,0,0,Math.PI*2);
        context.fill();

    }

    


    #drawEyes(context){
        /*left eye creation*/
        /*outside*/
        context.fillStyle="rgb(240, 248, 255)";
        context.beginPath();
        context.ellipse(-0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
        
        context.fill();
        /*inside*/
        context.fillStyle="rgb(0,0,0)";
        context.beginPath();
        context.arc(-0.9, -0.6, 0.08, 0, Math.PI * 2,false);
        context.fill();

        /*Right eye creation*/
        /*ouside*/
        context.fillStyle="rgb(240, 248, 255)";
        context.beginPath();
        context.ellipse(0.9,-0.6,0.7,0.7,0,0,Math.PI*2);
        context.fill();
        
        context.fillStyle="rgb(0,0,0)";-
        context.beginPath();
        context.arc(0.9, -0.6, 0.08, 0, Math.PI * 2,false);
        context.fill();
        
    }


    #drawHead(context){
        /* Head shape of a lemon*/

        /*HAIR*/
        context.fillStyle="rgb(207,219,219)";
        context.beginPath();
        context.ellipse(0,-1.4,0.6,2,0,0,Math.PI*2);
        context.fill();

        context.fillStyle="rgb(207,219,219)";
        context.beginPath();
        context.ellipse(-0.1,-1.4,0.6,2,0,0,Math.PI*2);
        context.fill();

        context.fillStyle="rgb(207,219,219)";
        context.beginPath();
        context.ellipse(0.2,-1.4,0.6,2,0,0,Math.PI*2);
        context.fill();



        context.fillStyle="rgb(207,219,219)";
        context.beginPath();
        context.ellipse(0,-1.4,0.6,2,100,0,Math.PI*2);
        context.fill();


        context.fillStyle="rgb(207,219,219)";
        context.beginPath();
        context.ellipse(-0.3,-1.4,0.6,2,100,0,Math.PI*2);
        context.fill()

        context.fillStyle="rgb(207,219,219)";
        context.beginPath();
        context.ellipse(-0.6,-1.4,0.6,2,100,0,Math.PI*2);
        context.fill()

        context.fillStyle="rgb(207,219,219)";
        context.beginPath();
        context.ellipse(-0.9,-1.1,0.6,2,100,0,Math.PI*2);
        context.fill()

        context.fillStyle="rgb(207,219,219)";
        context.beginPath();
        context.ellipse(-1.2,-1,0.6,2,100,0,Math.PI*2);
        context.fill()
        

        ///*Other side of hair */
        context.fillStyle="rgb((207,219,219)";
        context.beginPath();
        context.ellipse(0,-1.4,0.6,2,60,0,Math.PI*2);
        context.fill();


        context.fillStyle="rgb((207,219,219)";
        context.beginPath();
        context.ellipse(0.3,-1.4,0.6,2,60,0,Math.PI*2);
        context.fill()

        context.fillStyle="rgb((207,219,219)";
        context.beginPath();
        context.ellipse(0.6,-1.4,0.6,2,60,0,Math.PI*2);
        context.fill()

        context.fillStyle="rgb((207,219,219)";
        context.beginPath();
        context.ellipse(0.9,-1.1,0.6,2,60,0,Math.PI*2);
        context.fill()

        context.fillStyle="rgb((207,219,219)";
        context.beginPath();
        context.ellipse(1.2,-1,0.6,2,60,0,Math.PI*2);
        context.fill()


        /*head */
        context.fillStyle="rgb(206, 198, 179)";
        context.beginPath();
        context.ellipse(0,0,1.9,3,0,0,Math.PI*2);
        context.fill();
        
    }


}

let my_face = new Face(200,200,50);

my_face.draw(context);

