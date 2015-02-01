console.log(function () {
    var ret = [];
    for (var a of [1]) {      // 値がある
        ret.push(a * 2);      // 処理される
    }
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
