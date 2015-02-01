console.log(function () {
    var a = [1].pop();              // 要素を取り出す
    if (a == undefined) return [];  // 取り出せたかチェック
    var b = [].pop();               // 要素を取り出す（失敗）
    if (b == undefined) return [];  // ここで引っ掛かる
    return [a * b];                 // 処理されない
}());
