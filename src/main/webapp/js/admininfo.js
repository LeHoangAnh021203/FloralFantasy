

let form = document.querySelector('#update_form');

form.addEventListener("submit", e => {
    let day = document.getElementById('day').value;
    let month = document.getElementById('month').value;
    let year = document.getElementById('year').value;
    let email = document.getElementById('email').value;
    let phone = document.getElementById('phone').value;
    let date = new Date();
    let valid = true;
    let birthday = day + "/" + month + "/" + year;

    if (day <= 0 || day >= 32) {
        valid = false;
    } else if (day == null || day == "") {
        valid == false;
    }

    if (month <= 0 || month >= 13) {
        console.log("CEO")
        valid = false
    } else if (month == null || month == "") {
        console.log("CEO")
        valid = false;
    }

    if (year == null || year == "") {
        valid = false;
    }
    if (birthday >= date) {
        valid = false;
    } else if (birthday == null) {
        valid = false;
    }

    if (email == null || email == "") {

        valid = false;
    } else {
        const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        if (!email.match(emailPattern)) {

            valid = false;
        }
    }

    if (phone == null || phone == "") {
        valid = false
    } else {
        const phonePattern = /^0\d{9}$/;
        if (!phone.match(phonePattern)) {
            valid = false;
        }
    }


    if (valid == false) {
        e.preventDefault();
        alert("sai");
    }
})

let update = document.querySelector('#update');
if (update != null) {
    document.querySelector('#update').addEventListener("click", () => {
        let userID = document.querySelector('#userID').value;
//    let roleID = document.querySelector('#roleID');
        $.ajax({
            method: 'post',
            url: '/Admin',
            data: {
                user: userID,
//           role: roleID,
                action: "update to admin"
            },
            success: function (data) {
                console.log(data.message);
                console.log(data.roleID);
                if (data.message == "success") {
                    window.location.href = "/Admin/Detail/" + userID + "/" + data.roleID;

                }
            }
        });
    });
}

let remove=document.querySelector('#remove_account');

if(remove!=null){
    document.querySelector('#remove_account').addEventListener("click", () => {
    let userID = document.querySelector('#userID').value;
    $.ajax({
        method: 'post',
        url: '/Admin',
        data: {
            user: userID,
//           role: roleID,
            action: "remove account"
        },
        success: function (data) {
            console.log(data.message);
            console.log(data.roleID);
            if (data.message == "success") {
                window.location.href = "/Admin";

            }
        }
    });
});
}
