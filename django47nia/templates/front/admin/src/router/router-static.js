import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import xueshengtuishu from '@/views/modules/xueshengtuishu/list'
    import gongyingshang from '@/views/modules/gongyingshang/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import jiaocaixinxi from '@/views/modules/jiaocaixinxi/list'
    import jiaocairuku from '@/views/modules/jiaocairuku/list'
    import jiaoshituishu from '@/views/modules/jiaoshituishu/list'
    import jiaocaileixing from '@/views/modules/jiaocaileixing/list'
    import jiaoshi from '@/views/modules/jiaoshi/list'
    import jiaoshilingshu from '@/views/modules/jiaoshilingshu/list'
    import xueshenglingshu from '@/views/modules/xueshenglingshu/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/xueshengtuishu',
        name: '学生退书',
        component: xueshengtuishu
      }
      ,{
	path: '/gongyingshang',
        name: '供应商',
        component: gongyingshang
      }
      ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
      ,{
	path: '/jiaocaixinxi',
        name: '教材信息',
        component: jiaocaixinxi
      }
      ,{
	path: '/jiaocairuku',
        name: '教材入库',
        component: jiaocairuku
      }
      ,{
	path: '/jiaoshituishu',
        name: '教师退书',
        component: jiaoshituishu
      }
      ,{
	path: '/jiaocaileixing',
        name: '教材类型',
        component: jiaocaileixing
      }
      ,{
	path: '/jiaoshi',
        name: '教师',
        component: jiaoshi
      }
      ,{
	path: '/jiaoshilingshu',
        name: '教师领书',
        component: jiaoshilingshu
      }
      ,{
	path: '/xueshenglingshu',
        name: '学生领书',
        component: xueshenglingshu
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '系统首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
