console.log(function () {
    var ret = [];
    for (var a of [2,3,4]) {      // 値がある
        ret.push(a * 2);      // 処理される
    }
    // var a = [2,3,4];
    // for (var i=0; i<a.length; i++ ) {      // 値がある
    // for (var i in a) {      // 値がある
    //     ret.push(a[i] * 2);      // 処理される
    // }
    return ret;
}());
console.log(function () {
    var ret = [];
    for (var a of [1]) {      // 値がある
        for (var b of []) {   // 値がない（ソースが空）
            ret.push(a * b);  // 処理されない
        }
    }
    return ret;
}());
