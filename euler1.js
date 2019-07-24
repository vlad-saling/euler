var compute = new function() {
    var s = 0;

    for (var i = 0; i < 1000; i++) {
        if ((i % 5 === 0) || (i % 3 === 0)) {
            s = s + i;
        }
    }

    console.log(s);

}();
