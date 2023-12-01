// 根据选择器获取元素
const getSelector = ele => {
    return typeof ele === "string" ? document.querySelector(ele) : "";
}

// 登录注册载入
const containerShow = () => {
    var show = getSelector(".container")
    show.className += " container-show"
}

window.onload = containerShow;

// 登录注册页切换
((window, document) => {
    // 登录 -> 注册
    let toSignBtn = getSelector(".toSign"),
        toLoginBtn = getSelector(".toLogin")
        loginBox = getSelector(".login-box"),
        signBox = getSelector(".sign-box");
    toSignBtn.onclick = () => {
        loginBox.className += ' animate_login';
        signBox.className += ' animate_sign';
        document.title = "注册";
    }
    toLoginBtn.onclick = () => {
        loginBox.classList.remove("animate_login");
        signBox.classList.remove("animate_sign");
        document.title = "登录";
    }

})(window, document);

