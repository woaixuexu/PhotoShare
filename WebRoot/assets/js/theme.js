var saveSelectColor = {
    'Name': 'SelcetColor',
    'Color': 'theme-white'
}



// 鍒ゆ柇鐢ㄦ埛鏄惁宸叉湁鑷繁閫夋嫨鐨勬ā鏉块鏍�
if (storageLoad('SelcetColor')) {
    $('body').attr('class', storageLoad('SelcetColor').Color)
} else {
    storageSave(saveSelectColor);
    $('body').attr('class', 'theme-white')
}


// 鏈湴缂撳瓨
function storageSave(objectData) {
    localStorage.setItem(objectData.Name, JSON.stringify(objectData));
}

function storageLoad(objectName) {
    if (localStorage.getItem(objectName)) {
        return JSON.parse(localStorage.getItem(objectName))
    } else {
        return false
    }
}