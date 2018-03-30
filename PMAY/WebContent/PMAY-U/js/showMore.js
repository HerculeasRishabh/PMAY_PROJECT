
        var i = 2;
        function showMore(){
            var catOptions = "";
            catOptions += `<div class="row">
                <p style="margin-left:10px;">Family Member Details</p>
                <div class="col input-field s3">
                    <input name="nameFam" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Name of Family member</label>
                </div>
                <div class="col input-field s1">
                <select name="memberGenderFam">
                    <option value="">SEX</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>
            <div class="col input-field s1">
                <select name="memberRelationFam">
                    <option value="">Relation</option>
                    <option value="Mother">Mother</option>
                    <option value="Father">Father</option>
                    <option value="Sister">Sister</option>
                    <option value="Husband">Husband</option>
                    <option value="Son">Son</option>
                    <option value="Daughter">Daughter</option>
                </select>
                    </div>
                    <div class="col input-field s1">
                        <input name="memberAgeFam" id="icon_prefix" type="number" class="validate">
                        <label for="icon_prefix">Age</label>
                    </div>
                    <div class="col input-field s3">
                        <input name="memberAadharFam" id="icon_prefix" type="number" class="validate">
                        <label for="icon_prefix">Aadhar Card Number</label>
                    </div>
                </div>
            </div>`;
            i+=1;
            document.getElementById("memMain").innerHTML += catOptions;
            $('select').material_select();
        }

