<!DOCTYPE html>
<html>
  <head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Beneficiary Format B (General)</title>
    <script src="../js/jquery-3.3.1.js"></script>
    <script src="../js/materialize.js"></script>
    <script src="../js/material.js"></script>
    <script src="../js/showMore.js"></script>
    <link rel="stylesheet" href="../css/materialize.css">
    <link rel="stylesheet" href="../css/material.css">
    <link rel="stylesheet" href="../css/style.css">
    <script>
        $(document).ready(function() {
           $('select').material_select();
        });
     </script>
    <script>
        var selectstate = {
            "Andhra Pradesh": ["Anantapur","Chittoor","East Godavari","Guntur","Krishna","Kurnool","Prakasam","Srikakulam","SriPotti Sri Ramulu Nellore","Vishakhapatnam","Vizianagaram","West Godavari","Cudappah"],
            "Arunachal Pradesh":  ["Anjaw","Changlang","Dibang Valley","East Siang","East Kameng","Kurung Kumey","Lohit","Longding","Lower Dibang Valley","Lower Subansiri","Papum Pare", "Tawang","Tirap","Upper Siang","Upper Subansiri","West Kameng","West Siang"],
            "Assam": ["Baksa","Barpeta","Bongaigaon","Cachar","Chirang","Darrang","Dhemaji","Dima Hasao","Dhubri","Dibrugarh","Goalpara","Golaghat","Hailakandi","Jorhat","Kamrup","Kamrup Metropolitan","Karbi Anglong","Karimganj","Kokrajhar","Lakhimpur","Morigaon","Nagaon","Nalbari","Sivasagar","Sonitpur","Tinsukia","Udalguri"],
            "Bihar": ["Araria","Arwal","Aurangabad","Banka","Begusarai","Bhagalpur","Bhojpur","Buxar","Darbhanga","East Champaran","Gaya","Gopalganj","Jamui","Jehanabad","Kaimur",
                                        "Katihar","Khagaria","Kishanganj","Lakhisarai","Madhepura","Madhubani","Munger","Muzaffarpur","Nalanda","Nawada","Patna","Purnia","Rohtas","Saharsa",
                                        "Samastipur","Saran","Sheikhpura","Sheohar","Sitamarhi","Siwan","Supaul","Vaishali","West Champaran"],
            "Chattisgarh": ["Bastar","Bijapur","Bilaspur","Dantewada","Dhamtari","Durg","Jashpur","Janjgir-Champa","Korba","Koriya","Kanker","Kabirdham (formerly Kawardha)","Mahasamund",
                                            "Narayanpur","Raigarh","Rajnandgaon","Raipur","Surajpur","Surguja"],
            "Dadra and Nagar Haveli": ["Amal","Silvassa"],
            "Daman and Diu": ["Daman","Diu"],
            "Delhi": ["Delhi","New Delhi","North Delhi","Noida","Patparganj","Sonabarsa","Tughlakabad"],
            "Goa": ["Chapora","Dabolim","Madgaon","Marmugao (Marmagao)","Panaji Port","Panjim","Pellet Plant Jetty/Shiroda","Talpona","Vasco da Gama"],
            "Gujarat": ["Ahmedabad","Amreli district","Anand","Aravalli","Banaskantha","Bharuch","Bhavnagar","Dahod","Dang","Gandhinagar","Jamnagar","Junagadh",
                                        "Kutch","Kheda","Mehsana","Narmada","Navsari","Patan","Panchmahal","Porbandar","Rajkot","Sabarkantha","Surendranagar","Surat","Tapi","Vadodara","Valsad"],
            "Haryana": ["Ambala","Bhiwani","Faridabad","Fatehabad","Gurgaon","Hissar","Jhajjar","Jind","Karnal","Kaithal", "Kurukshetra","Mahendragarh","Mewat","Palwal","Panchkula","Panipat","Rewari","Rohtak","Sirsa","Sonipat","Yamuna Nagar"],                             
            "Himachal Pradesh":  ["Baddi","Baitalpur","Chamba","Dharamsala","Hamirpur","Kangra","Kinnaur","Kullu","Lahaul & Spiti","Mandi","Simla","Sirmaur","Solan","Una"],
            "Jammu and Kashmir": ["Jammu","Leh","Rajouri","Srinagar"],
            "Jharkhand": ["Bokaro","Chatra","Deoghar","Dhanbad","Dumka","East Singhbhum","Garhwa","Giridih","Godda","Gumla","Hazaribag","Jamtara","Khunti","Koderma","Latehar","Lohardaga","Pakur","Palamu",
                                            "Ramgarh","Ranchi","Sahibganj","Seraikela Kharsawan","Simdega","West Singhbhum"],
            "Karnataka": ["Bagalkot","Bangalore","Bangalore Urban","Belgaum","Bellary","Bidar","Bijapur","Chamarajnagar", "Chikkamagaluru","Chikkaballapur",
                                           "Chitradurga","Davanagere","Dharwad","Dakshina Kannada","Gadag","Gulbarga","Hassan","Haveri district","Kodagu",
                                           "Kolar","Koppal","Mandya","Mysore","Raichur","Shimoga","Tumkur","Udupi","Uttara Kannada","Ramanagara","Yadgir"],
            "Kerela": ["Alappuzha","Ernakulam","Idukki","Kannur","Kasaragod","Kollam","Kottayam","Kozhikode","Malappuram","Palakkad","Pathanamthitta","Thrissur","Thiruvananthapuram","Wayanad"],
            "Madhya Pradesh":  ["Alirajpur","Anuppur","Ashoknagar","Balaghat","Barwani","Betul","Bhilai","Bhind","Bhopal","Burhanpur","Chhatarpur","Chhindwara","Damoh","Dewas","Dhar","Guna","Gwalior","Hoshangabad",
                                    "Indore","Itarsi","Jabalpur","Khajuraho","Khandwa","Khargone","Malanpur","Malanpuri (Gwalior)","Mandla","Mandsaur","Morena","Narsinghpur","Neemuch","Panna","Pithampur","Raipur","Raisen","Ratlam",
                                    "Rewa","Sagar","Satna","Sehore","Seoni","Shahdol","Singrauli","Ujjain"],
            "Maharashtra":  ["Ahmednagar","Akola","Alibag","Amaravati","Arnala","Aurangabad","Aurangabad","Bandra","Bassain","Belapur","Bhiwandi","Bhusaval","Borliai-Mandla","Chandrapur","Dahanu","Daulatabad","Dighi (Pune)","Dombivali","Goa","Jaitapur","Jalgaon",
                                             "Jawaharlal Nehru (Nhava Sheva)","Kalyan","Karanja","Kelwa","Khopoli","Kolhapur","Lonavale","Malegaon","Malwan","Manori",
                                             "Mira Bhayandar","Miraj","Mumbai (ex Bombay)","Murad","Nagapur","Nagpur","Nalasopara","Nanded","Nandgaon","Nasik","Navi Mumbai","Nhave","Osmanabad","Palghar",
                                             "Panvel","Pimpri","Pune","Ratnagiri","Sholapur","Shrirampur","Shriwardhan","Tarapur","Thana","Thane","Trombay","Varsova","Vengurla","Virar","Wada"],
            "Manipur": ["Bishnupur","Churachandpur","Chandel","Imphal East","Senapati","Tamenglong","Thoubal","Ukhrul","Imphal West"],
            "Meghalaya": ["Baghamara","Balet","Barsora","Bolanganj","Dalu","Dawki","Ghasuapara","Mahendraganj","Moreh","Ryngku","Shella Bazar","Shillong"],
            "Mizoram": ["Aizawl","Champhai","Kolasib","Lawngtlai","Lunglei","Mamit","Saiha","Serchhip"],
            "Nagaland": ["Dimapur","Kiphire","Kohima","Longleng","Mokokchung","Mon","Peren","Phek","Tuensang","Wokha","Zunheboto"],                                 
            "Odisha": ["Bahabal Pur","Bhubaneswar","Chandbali","Gopalpur","Jeypore","Paradip Garh","Puri","Rourkela"],
            "Puducherry": ["Karaikal","Mahe","Pondicherry","Yanam"],
            "Punjab": ["Amritsar","Barnala","Bathinda","Firozpur","Faridkot","Fatehgarh Sahib","Fazilka","Gurdaspur","Hoshiarpur","Jalandhar","Kapurthala","Ludhiana","Mansa","Moga","Sri Muktsar Sahib","Pathankot",
                                        "Patiala","Rupnagar","Ajitgarh (Mohali)","Sangrur","Shahid Bhagat Singh Nagar","Tarn Taran"],
            "Rajasthan": ["Ajmer","Banswara","Barmer","Barmer Rail Station","Basni","Beawar","Bharatpur","Bhilwara","Bhiwadi","Bikaner","Bongaigaon","Boranada, Jodhpur","Chittaurgarh","Fazilka","Ganganagar","Jaipur","Jaipur-Kanakpura",
                                       "Jaipur-Sitapura","Jaisalmer","Jodhpur","Jodhpur-Bhagat Ki Kothi","Jodhpur-Thar","Kardhan","Kota","Munabao Rail Station","Nagaur","Rajsamand","Sawaimadhopur","Shahdol","Shimoga","Tonk","Udaipur"],
            "Sikkim": ["Chamurci","Gangtok"],
            "Tamil Nadu":  ["Ariyalur","Chennai","Coimbatore","Cuddalore","Dharmapuri","Dindigul","Erode","Kanchipuram","Kanyakumari","Karur","Krishnagiri","Madurai","Mandapam","Nagapattinam","Nilgiris","Namakkal","Perambalur","Pudukkottai","Ramanathapuram","Salem","Sivaganga","Thanjavur","Thiruvallur","Tirupur",
                                   "Tiruchirapalli","Theni","Tirunelveli","Thanjavur","Thoothukudi","Tiruvallur","Tiruvannamalai","Vellore","Villupuram","Viruthunagar"],
            "Telangana": ["Adilabad","Hyderabad","Karimnagar","Mahbubnagar","Medak","Nalgonda","Nizamabad","Ranga Reddy","Warangal"],
            "Tripura": ["Agartala","Dhalaighat","Kailashahar","Kamalpur","Kanchanpur","Kel Sahar Subdivision","Khowai","Khowaighat","Mahurighat","Old Raghna Bazar","Sabroom","Srimantapur"],
            "Uttar Pradesh":  ["Agra","Allahabad","Auraiya","Banbasa","Bareilly","Berhni","Bhadohi","Dadri","Dharchula","Gandhar","Gauriphanta","Ghaziabad","Gorakhpur","Gunji",
                                    "Jarwa","Jhulaghat (Pithoragarh)","Kanpur","Katarniyaghat","Khunwa","Loni","Lucknow","Meerut","Moradabad","Muzaffarnagar","Nepalgunj Road","Pakwara (Moradabad)",
                                    "Pantnagar","Saharanpur","Sonauli","Surajpur","Tikonia","Varanasi"],
            "Uttrakhand": ["Almora","Badrinath","Bangla","Barkot","Bazpur","Chamoli","Chopra","Dehra Dun","Dwarahat","Garhwal","Haldwani","Hardwar","Haridwar","Jamal","Jwalapur","Kalsi","Kashipur","Mall",
                                           "Mussoorie","Nahar","Naini","Pantnagar","Pauri","Pithoragarh","Rameshwar","Rishikesh","Rohni","Roorkee","Sama","Saur"],
            "West Bengal": ["Alipurduar","Bankura","Bardhaman","Birbhum","Cooch Behar","Dakshin Dinajpur","Darjeeling","Hooghly","Howrah",
                                    "Jalpaiguri","Kolkata","Maldah","Murshidabad","Nadia","North 24 Parganas","Paschim Medinipur","Purba Medinipur","Purulia","South 24 Parganas","Uttar Dinajpur"]
        }
        function changecat(value) {
            if (value.length == 0) document.getElementById("city").innerHTML = "<option></option>";
            else {
                var catOptions = "";
                for (categoryId in selectstate[value]) {
                catOptions += "<option>" + selectstate[value][categoryId] + "</option>";
            }
            document.getElementById("city").innerHTML = catOptions;
            }
            $('select').material_select();
        }        
    </script>
    </head>
  
  
    <body>
        <nav class="topHead">
         
            <div class="nav-wrapper">
                <p style="padding-left: 60px; font-size: 40px; padding-top: 17px;">Format B- Required Information of Survey</p >
            </div>

        </nav>

        <form action="http://localhost:8080/PMAY/BEN_Registration" method = "POST" enctype="multipart/form-data">
            <div class="row">
                <div class="col input-field s3">
                    <select required name="stateName" onChange="changecat(this.value);">
                            <option value="">Select State</option>
                            <option value="Andhra Pradesh">ANDHRA PRADESH</option>
                            <option value="Arunachal Pradesh">ARUNACHAL PRADESH</option>
                            <option value="Assam">ASSAM</option>
                            <option value="Bihar">BIHAR</option>
                            <option value="Chandigarh">CHANDIGARH</option>
                            <option value="Chattisgarh">CHHATTISGARH</option>
                            <option value="Dadra and Nagar Haveli">DADRA AND NAGAR HAVELI</option>
                            <option value="Daman and Diu">DAMAN AND DIU</option>
                            <option value="Delhi">Delhi</option>
                            <option value="Goa">GOA</option>
                            <option value="Gujrat">GUJARAT</option>
                            <option value="Haryana">HARYANA</option>
                            <option value="Himachal Pradesh">HIMACHAL PRADESH</option>
                            <option value="Jammu and Kashmir">JAMMU AND KASHMIR</option>
                            <option value="Jharkhand">JHARKHAND</option>
                            <option value="Karnataka">KARNATAKA</option>
                            <option value="Kerela">KERALA</option>
                            <option value="Madhya Pradesh">MADHYA PRADESH</option>
                            <option value="Maharashtra">MAHARASHTRA</option>
                            <option value="Manipur">MANIPUR</option>
                            <option value="Meghalaya">MEGHALAYA</option>
                            <option value="Mizoram">MIZORAM</option>
                            <option value="Nagaland">NAGALAND</option>
                            <option value="Odisha">ODISHA</option>
                            <option value="Puducherry">PUDUCHERRY</option>
                            <option value="Punjab">PUNJAB</option>
                            <option value="Rajasthan">RAJASTHAN</option>
                            <option value="Sikkim">SIKKIM</option>
                            <option value="Tamil Nadu">TAMIL NADU</option>
                            <option value="Telangana">TELANGANA</option>
                            <option value="Tripura">TRIPURA</option>
                            <option value="Uttar Pradesh">UTTAR PRADESH</option>
                            <option value="Uttrakhand">UTTARAKHAND</option>
                            <option value="West Bengal">WEST BENGAL</option>
                    </select>
                </div>

                <Script>
                </Script>

                <div class="col input-field s3"> 
                    <select required name="districtName" id="city">
                        <option value="">District Name</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col input-field s3">
                        <input required name="cityName" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">City Name</label> 
                </div>
                <div class="col input-field s3">
                        <input required name="wardName" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Ward Name</label> 
                </div>
            </div>

            <div class="row">
                <div class="col input-field s3">
                        <input required name="slumName" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Slum Name</label> 
                </div>
                <div class="col input-field s3">
                        <input required name="areaName" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Area Name</label> 
                </div>
            </div>

            <div class="row">
                <div class="col input-field s6">
                    <select required name="compName">
                        <option value="">Preffered Component of Mission under which Survey needs assistance</option>
                        <option value="1">"In situ" Slum Redevelopment</option>
                        <option value="2">Affordable Housing through Credit Linked Subsidy</option>
                        <option value="3">Affordable Housing in Partnership</option>
                        <option value="3">Subsidy for beneficiary-led individual house construction or enhancement</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s3">
                    <input required name="famHeadName" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Name of Head of Family</label>
                </div>
                <div class="col input-field s3">
                    <select required name="gender">
                        <option value="">Select Sex</option>
                        <option value="1">Male</option>
                        <option value="2">Female</option>
                        <option value="3">Other</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s3">
                    <input required name="fathersName" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Father's Name</label>
                </div>
                <div class="input-field col s3">
                    <input required name="headAge" id="icon_prefix" type="number" class="validate">
                    <label for="icon_prefix">Age of Head of Family</label>
                </div>
            </div>

            <div class="row">
                <p style="margin-left:10px;">Enter Address:</p>
                <div class="input-field col s2">
                    <input required name="addressHouseNumber" id="icon_prefix" type="number" class="validate">
                    <label for="icon_prefix">House number</label>
                </div>
                <div class="input-field col s4">
                    <input required name="addressStreetName" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Name of Street</label>
                </div>
            </div>
            <div class="row">
                <div class="col input-field s4"> 
                    <select required name="ownershipDetails">
                        <option value="">Enter Ownership Details of the Existing House</option>
                        <option value="1">Owner</option>
                        <option value="2">Co-Owner</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col input-field s4"> 
                    <select required name="houseType">
                        <option value="">House Type based on the roof</option>
                        <option value="1">Pucca</option>
                        <option value="2">Semi Pucca</option>
                        <option value="3">Kuccha</option>
                    </select>
                </div>
                <div class="col input-field s4">
                    <input required name="noOfRooms" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">No of Rooms in existing house excluding kitchen</label>
                </div>  
            </div>
            <div class="row">
                <div class="col input-field s2">
                    <input required name="mobileNumber" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Mobile Number</label>
                </div>
                <div class="col input-field s4">
                    <input required name="aadharNumber" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Aadhar Card Number</label>
                </div>
            </div>
				            <div id="memMain">
				                <div class="row">
				                    <p style="margin-left:10px;">Family Member 1 Details</p>
				                    <div class="col input-field s1">
				                        <input name="serialNumber" value=1 id="icon_prefix" type="text" class="validate">
				                    </div>
				                    <div class="col input-field s3">
				                        <input name="nameFam" id="icon_prefix" type="text" class="validate">
				                        <label for="icon_prefix">Name of Family member</label>
				                    </div>
				                    <div class="col input-field s1">
				                        <select name="memberGenderFam">
				                            <option value="">Sex</option>
				                            <option value="01">Male</option>
				                            <option value="02">Female</option>
				                            <option value="03">Other</option>
				                        </select>
				                    </div>
				                    <div class="col input-field s1">
				                        <select name="memberRelationFam">
				                            <option value="">Relation</option>
				                            <option value="01">Mother</option>
				                            <option value="02">Father</option>
				                            <option value="03">Sister</option>
				                            <option value="02">Husband</option>
				                            <option value="02">Son</option>
				                            <option value="02">Daughter</option>
				                        </select>
				                    </div>
				                    <div class="col input-field s1">
				                        <input name="memberAgeFam" id="icon_prefix" type="text" class="validate">
				                        <label for="icon_prefix">Age</label>
				                    </div>
				                    <div class="col input-field s3">
				                        <input name="memberAadharFam" id="icon_prefix" type="text" class="validate">
				                        <label for="icon_prefix">Aadhar Card Number</label>
				                    </div>
				                </div>
				            </div>
            <a style="margin-left:10px; margin-top: -15px; background-color: #f4511e" onclick="showMore()" class="waves-effect waves-light btn">add</a>

            <div class="row">
                <div class="col input-field s3">
                    <select required name="religionName">
                        <option value="">Select Religion</option>
                        <option value="1">Hindu</option>
                        <option value="2">Islam</option>
                        <option value="3">Christianity</option>
                        <option value="3">Sikhism</option>
                        <option value="3">Buddhism</option>
                        <option value="3">Jainism</option>
                        <option value="3">Other</option>
                    </select>
                </div>
                <div class="col input-field s3">
                    <select required name="casteName">
                        <option value="">Select caste</option>
                        <option value="1">General</option>
                        <option value="2">SC</option>
                        <option value="3">ST</option>
                        <option value="4">OBC</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col input-field s3">
                    <input required name="accountNumber" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Bank Account Number</label>
                </div>
                <div class="col input-field s4">
                    <input required name="bankName" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Name of Bank</label>
                </div>
                <div class="row">
                    <div class="col input-field s2">
                        <input required name="branchName" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Name of Branch</label>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col input-field s3"> 
                    <select required name="yearStay">
                        <option value="">Number of years of stay in city</option>
                        <option value="1">0 to 1 Year</option>
                        <option value="2">1 to 3 Years</option>
                        <option value="3">3 to 5 Years</option>
                        <option value="4">More than 5 Years</option>
                    </select>
                </div>
                <div class="col input-field s3">
                    <input required name="dwellingUnits" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Size of Existing Dwelling Units</label>
                </div>    
            </div>
			<div class="row">
                <p class="col">Does the family already has a home/Residential land anywhere in India?</p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="ownsHouseLand" type="radio" id="test3" value = "1"/>
                    <label for="test3">Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="ownsHouseLand" type="radio" id="test4" value = "0"/>
                    <label for="test4">No</label>
                </p>
            </div>
            <div class="row">
                <p class="col">A person with Disability?</p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="disability" type="radio" id="test1" value = "1"/>
                    <label for="test1" >Yes</label>
                </p>
                <p class="col" style="margin-left:50px;">
                    <input required class="with-gap" name="disability" type="radio" id="test2" value = "0"/>
                    <label for="test2">No</label>
                </p>
            </div>
            
            <div class="row">
                <div class="col input-field s3"> 
                    <select required name="maritalStatus">
                        <option value="">Select Marital Status</option>
                        <option value="1">Married</option>
                        <option value="2">Un-married</option>
                        <option value="3">Single Woman or Widow</option>
                    </select>
                </div><div class="col input-field s3"> 
                    <select required name="employmentStatus">
                        <option value="">Select Employment Status</option>
                        <option value="1">Self Employed</option>
                        <option value="2">Salaried</option>
                        <option value="3">Regular Wage</option>
                        <option value="4">Labour Wage</option>
                        <option value="5">Other</option>
                    </select>
                </div>
                <div class="col input-field s3">
                    <input required name="monthlyIncome" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Average Monthly Income</label>
                </div>    
            </div>
            <div class="row">
                <div class="col input-field s4">
                    <input required name="BLP_Card_No" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">BPL Card Number</label>
                </div>
            </div>
            
            <div class="row">
                <div class="col input-field s4"> 
                    <select required name="housingRequirement">
                        <option value="">Housing Requirement of Family</option>
                        <option value="1">New House</option>
                        <option value="2">Enhancement</option>
                    </select>
                </div>    
            </div>

            <div class="row">
                <p style="margin-left:10px;">Upload a Photo of Head of the Family:</p>        
                <p style="margin-left:10px;">(The size of the Photograph should not be more than 16kb)</p>
                <div class="col file-field input-field">
                    <div class="btn">
                        <span>File</span>
                        <input required name="imageBeneficiary" type="file">
                    </div>
                    <div style="width:435px;" class="file-path-wrapper">
                        <input required class="file-path validate" type="text">
                    </div>
                </div>

            </div>
            	<input type = "submit" value = "submit">    
        </form>
  </body>
</html>
