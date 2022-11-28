var negCount = instance_number(obj_phy_negative);
        for(var i = 0;i < negCount;i++){
            var nObj = instance_find(obj_phy_negative, i);
            with(nObj) phy_active = true;
        }

