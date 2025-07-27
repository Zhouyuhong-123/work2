const base = {
    get() {
        return {
            url : "http://localhost:8080/django47nia/",
            name: "django47nia",
            // 退出到首页链接
            indexUrl: ''
        };
    },
    getProjectName(){
        return {
            projectName: "教材管理网站"
        } 
    }
}
export default base
