
        var i = 2;
        function showMore(){
            var catOptions = "";
            catOptions += `<div class="row">
                <p style="margin-left:10px;">Family Member `+ i +` Details</p>
                <div class="col input-field s1">
                    <input name="serialNumber" id="icon_prefix" type="text" class="validate">
                    <label id="serialNumber" for="icon_prefix">`+ i +`</label>
                </div>
                <div class="col input-field s2">
                    <input name="mobileNumber" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Name of Family member</label>
                </div>
                <div class="col input-field s1">
                        <select name="relation">
                            <option value="">Relation</option>
                            <option value="01">Father</option>
                            <option value="02">Mother</option>
                            <option value="03">Husband</option>
                            <option value="04">wife</option>
                            <option value="05">Son</option>
                            <option value="06">Daughter</option>
                            <option value="07">Brother</option>
                            <option value="08">Sister</option>
                        </select>
                    </div>
                    <div class="col input-field s1">
                            <select name="memberGender">
                                <option value="">Sex</option>
                                <option value="01">Male</option>
                                <option value="02">Female</option>
                                <option value="03">Other</option>
                            </select>
                    </div>
                    <div class="col input-field s1">
                        <input name="memberAge" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Age</label>
                    </div>
                    <div class="col input-field s2">
                        <input name="memberAadhar" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Aadhar Card Number</label>
                    </div>
                </div>
            </div>`;
            i+=1;
            document.getElementById("memMain").innerHTML += catOptions;
            $('select').material_select();
        }

