
        var i = 2;
        function showMore(){
            var catOptions = "";
            catOptions += `<div class="row">
                <p style="margin-left:10px;">Family Member `+ i +` Details</p>
                <div class="col input-field s1">
                    <input name="serialNumber" id="icon_prefix" type="text" class="validate">
                    <label id="serialNumber" for="icon_prefix">`+ i +`</label>
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
                        <select name="relation">
                            <option value="">Relation</option>
                            <option value="1">Father</option>
                            <option value="2">Mother</option>
                            <option value="3">Husband</option>
                            <option value="4">wife</option>
                            <option value="5">Son</option>
                            <option value="6">Daughter</option>
                            <option value="7">Brother</option>
                            <option value="8">Sister</option>
                        </select>
                    </div>
                    <div class="col input-field s1">
                        <input name="memberAgeFam" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Age</label>
                    </div>
                    <div class="col input-field s2">
                        <input name="memberAadharFam" id="icon_prefix" type="number" class="validate">
                        <label for="icon_prefix">Aadhar Card Number</label>
                    </div>
                </div>
            </div>`;
            i+=1;
            document.getElementById("memMain").innerHTML += catOptions;
            $('select').material_select();
        }

