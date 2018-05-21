document.addEventListener("DOMContentLoaded", function(){

  var canvas = document.getElementById('mycanvas'); // in your HTML this element appears as <canvas id="myCanvas"></canvas>
  var ctx = canvas.getContext('2d');
  console.log(ctx);

  ctx.fillStyle = 'rgb(0,0,175)'; // sets the color to fill in the rectangle with
  ctx.fillRect(10, 10, 340, 250);   // draws the rectangle at position 10, 10 with a width of 55 and a height of 50

  ctx.fillStyle = 'rgb(75,0,130)'; // sets the color to fill in the rectangle with
  ctx.fillRect(350, 10, 125, 250);   // draws the rectangle at position 10, 10 with a width of 55 and a height of 50

  ctx.fillStyle = 'rgb(204,0,102)'; // sets the color to fill in the rectangle with
  ctx.fillRect(460, 10, 200, 250);   // draws the rectangle at position 10, 10 with a width of 55 and a height of 50


  ctx.beginPath();
  ctx.strokeStyle = 'rgb(0,0,128)';
  ctx.lineWidth = 5;
  ctx.fillStyle = 'black';
  ctx.arc(450, 125, 50, 0, 2*Math.PI);
  ctx.fill()
  ctx.stroke();

  ctx.beginPath();
  ctx.moveTo(440, 100);
  ctx.lineTo(440, 125);
  ctx.strokeStyle = 'yellow';
  ctx.stroke();

  ctx.beginPath();
  ctx.moveTo(460, 100);
  ctx.lineTo(460, 125);
  ctx.strokeStyle = 'yellow';
  ctx.stroke();

  ctx.beginPath();
  ctx.strokeStyle = 'yellow';
  ctx.lineWidth = 5;
  ctx.arc(450, 130, 25, 2*Math.PI, Math.PI);
  ctx.fill()
  ctx.stroke();


});
