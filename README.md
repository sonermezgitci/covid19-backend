# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


       <!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <script type="text/javascript" src="index.js"></script>
  </head>
  <body>
    <form id="new-user-form">
      <h1>Covid19</h1>
     
      <p>Please fill in this form to create an account.</p>
        <hr>
    
        <label for="name"><b>Name</b></label>
        <input id= 'input-name' type="text" placeholder="Enter First Name" name="name" required>
        <label for="lastname"><b>Lastname</b></label>
        <input id= 'input-lastname'type="text" placeholder="Enter Lastname" name="lastname" required>
        <label for="age"><b>Age</b></label>
        <input id= 'input-age'type="text" placeholder="Enter your Age " name="age" required>
        <label for="age"><b>Gender</b></label>
        <input id= 'input-gender'type="text" placeholder="Enter your Gender " name="gender" required>
    </form>


        <h3>SYMPTOMS</h3>
          <label for="select-symptom">Fever more than 100 degrees </label>
          <input type="radio" name="colors" id="yes">Yes
          <input type="radio" name="colors" id="no">No
        </form>
      </select>
    

      <br>
      <label for="select-symptom">Sore Throat </label>
          <input type="radio" name="colors" id="yes">Yes
          <input type="radio" name="colors" id="no">No
        </form>
      </select>
      </br>
      
      <br>
      <label for="select-symptom">Runny Nose </label>
      <input type="radio" name="colors" id="yes">Yes
      <input type="radio" name="colors" id="no">No
    </form>
  </select>
  </br>
  
      <br>
        <label for="select-symptom">Shortness of Breath</label>
         <input type="radio" name="colors" id="yes">Yes
         <input type="radio" name="colors" id="no">No
       </form>
     </select>
     </br>
     
     <br>
    <label for="select-symptom">Dry Cough</label>
        <input type="radio" name="colors" id="yes">Yes
        <input type="radio" name="colors" id="no">No
      </form>
    </select>
  </br>

         <br>
          <label for="select-symptom">Tiredness </label>
         <input type="radio" name="colors" id="yes">Yes
         <input type="radio" name="colors" id="no">No
       </form>
          </select>
      </br>
    
    <br>
    <label for="select-symptom">Other Symptoms </label>
  </br>
    <textarea id='input-description' name="description" rows="8" cols="80" value="" placeholder="Enter other symptoms "></textarea>
    
    <br>
    <input type="submit" name="submit">
  </br>
        <hr>
    
      </form>

          <h3> QUARANTINE PERIOD </h3>
          <input type="text" placeholder="days " name="days" required>
          <br><br>
          <hr>
          
          
        
            
         
   
          
        </body>
        </html>