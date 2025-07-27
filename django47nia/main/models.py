#coding:utf-8
__author__ = "ila"
from django.db import models

from .model import BaseModel

from datetime import datetime



class xuesheng(BaseModel):
    __doc__ = u'''xuesheng'''
    __tablename__ = 'xuesheng'

    __loginUser__='xuehao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='xuehao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=True, verbose_name=u'创建时间')
    xuehao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='学号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    xueshengxingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='学生姓名' )
    touxiang=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    shoujihaoma=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机号码' )
    youxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='邮箱' )
    '''
    xuehao=VARCHAR
    mima=VARCHAR
    xueshengxingming=VARCHAR
    touxiang=Text
    xingbie=VARCHAR
    shoujihaoma=VARCHAR
    youxiang=VARCHAR
    '''
    class Meta:
        db_table = 'xuesheng'
        verbose_name = verbose_name_plural = '学生'
class jiaoshi(BaseModel):
    __doc__ = u'''jiaoshi'''
    __tablename__ = 'jiaoshi'

    __loginUser__='jiaoshigonghao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='jiaoshigonghao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=True, verbose_name=u'创建时间')
    jiaoshigonghao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='教师工号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    jiaoshixingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教师姓名' )
    touxiang=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    lianxidianhua=models.CharField ( max_length=255, null=True, unique=False, verbose_name='联系电话' )
    youxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='邮箱' )
    '''
    jiaoshigonghao=VARCHAR
    mima=VARCHAR
    jiaoshixingming=VARCHAR
    touxiang=Text
    xingbie=VARCHAR
    lianxidianhua=VARCHAR
    youxiang=VARCHAR
    '''
    class Meta:
        db_table = 'jiaoshi'
        verbose_name = verbose_name_plural = '教师'
class gongyingshang(BaseModel):
    __doc__ = u'''gongyingshang'''
    __tablename__ = 'gongyingshang'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=True, verbose_name=u'创建时间')
    fuzeren=models.CharField ( max_length=255,null=False, unique=False, verbose_name='负责人' )
    lianxidianhua=models.CharField ( max_length=255,null=False, unique=False, verbose_name='联系电话' )
    gongsimingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='公司名称' )
    gongsidizhi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='公司地址' )
    tianjiariqi=models.DateField   (  null=True, unique=False, verbose_name='添加日期' )
    beizhu=models.TextField   (  null=True, unique=False, verbose_name='备注' )
    '''
    fuzeren=VARCHAR
    lianxidianhua=VARCHAR
    gongsimingcheng=VARCHAR
    gongsidizhi=VARCHAR
    tianjiariqi=Date
    beizhu=Text
    '''
    class Meta:
        db_table = 'gongyingshang'
        verbose_name = verbose_name_plural = '供应商'
class jiaocaileixing(BaseModel):
    __doc__ = u'''jiaocaileixing'''
    __tablename__ = 'jiaocaileixing'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=True, verbose_name=u'创建时间')
    jiaocaileixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教材类型' )
    '''
    jiaocaileixing=VARCHAR
    '''
    class Meta:
        db_table = 'jiaocaileixing'
        verbose_name = verbose_name_plural = '教材类型'
class jiaocaixinxi(BaseModel):
    __doc__ = u'''jiaocaixinxi'''
    __tablename__ = 'jiaocaixinxi'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=True, verbose_name=u'创建时间')
    jiaocaibianhao=models.CharField ( max_length=255, null=True,unique=True, verbose_name='教材编号' )
    jiaocaimingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教材名称' )
    fengmian=models.TextField   (  null=True, unique=False, verbose_name='封面' )
    jiaocaileixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教材类型' )
    shuliang=models.IntegerField  ( null=False, unique=False, verbose_name='数量' )
    danjia=models.FloatField   ( null=False, unique=False, verbose_name='单价' )
    gongyingshang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='供应商' )
    tianjiariqi=models.DateField   (  null=True, unique=False, verbose_name='添加日期' )
    jiaocaixiangqing=models.TextField   (  null=True, unique=False, verbose_name='教材详情' )
    '''
    jiaocaibianhao=VARCHAR
    jiaocaimingcheng=VARCHAR
    fengmian=Text
    jiaocaileixing=VARCHAR
    shuliang=Integer
    danjia=Float
    gongyingshang=VARCHAR
    tianjiariqi=Date
    jiaocaixiangqing=Text
    '''
    class Meta:
        db_table = 'jiaocaixinxi'
        verbose_name = verbose_name_plural = '教材信息'
class jiaocairuku(BaseModel):
    __doc__ = u'''jiaocairuku'''
    __tablename__ = 'jiaocairuku'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=True, verbose_name=u'创建时间')
    rukubianhao=models.CharField ( max_length=255, null=True,unique=True, verbose_name='入库编号' )
    jiaocaibianhao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教材编号' )
    jiaocaimingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教材名称' )
    jiaocaileixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教材类型' )
    shuliang=models.IntegerField  ( null=False, unique=False, verbose_name='数量' )
    danjia=models.FloatField   ( null=False, unique=False, verbose_name='单价' )
    heji=models.FloatField   ( null=False, unique=False, verbose_name='合计' )
    rukuriqi=models.DateField   (  null=True, unique=False, verbose_name='入库日期' )
    gongyingshang=models.CharField ( max_length=255,null=False, unique=False, verbose_name='供应商' )
    beizhu=models.CharField ( max_length=255, null=True, unique=False, verbose_name='备注' )
    '''
    rukubianhao=VARCHAR
    jiaocaibianhao=VARCHAR
    jiaocaimingcheng=VARCHAR
    jiaocaileixing=VARCHAR
    shuliang=Integer
    danjia=Float
    heji=Float
    rukuriqi=Date
    gongyingshang=VARCHAR
    beizhu=VARCHAR
    '''
    class Meta:
        db_table = 'jiaocairuku'
        verbose_name = verbose_name_plural = '教材入库'
class jiaoshilingshu(BaseModel):
    __doc__ = u'''jiaoshilingshu'''
    __tablename__ = 'jiaoshilingshu'



    __authTables__={'jiaoshigonghao':'jiaoshi',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=True, verbose_name=u'创建时间')
    dingdanbianhao=models.CharField ( max_length=255, null=True,unique=True, verbose_name='订单编号' )
    jiaocaibianhao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教材编号' )
    jiaocaimingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教材名称' )
    jiaocaileixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教材类型' )
    shuliang=models.IntegerField  ( null=False, unique=False, verbose_name='数量' )
    danjia=models.FloatField   ( null=False, unique=False, verbose_name='单价' )
    heji=models.FloatField   (  null=True, unique=False, verbose_name='合计' )
    dingdanriqi=models.DateField   (  null=True, unique=False, verbose_name='订单日期' )
    jiaoshigonghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教师工号' )
    jiaoshixingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教师姓名' )
    ispay=models.CharField ( max_length=255, null=True, unique=False,default='未支付', verbose_name='是否支付' )
    '''
    dingdanbianhao=VARCHAR
    jiaocaibianhao=VARCHAR
    jiaocaimingcheng=VARCHAR
    jiaocaileixing=VARCHAR
    shuliang=Integer
    danjia=Float
    heji=Float
    dingdanriqi=Date
    jiaoshigonghao=VARCHAR
    jiaoshixingming=VARCHAR
    ispay=VARCHAR
    '''
    class Meta:
        db_table = 'jiaoshilingshu'
        verbose_name = verbose_name_plural = '教师领书'
class xueshenglingshu(BaseModel):
    __doc__ = u'''xueshenglingshu'''
    __tablename__ = 'xueshenglingshu'



    __authTables__={'xuehao':'xuesheng',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=True, verbose_name=u'创建时间')
    dingdanbianhao=models.CharField ( max_length=255, null=True,unique=True, verbose_name='订单编号' )
    jiaocaibianhao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教材编号' )
    jiaocaimingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教材名称' )
    jiaocaileixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教材类型' )
    shuliang=models.IntegerField  ( null=False, unique=False, verbose_name='数量' )
    danjia=models.FloatField   ( null=False, unique=False, verbose_name='单价' )
    heji=models.FloatField   (  null=True, unique=False, verbose_name='合计' )
    dingdanriqi=models.DateField   (  null=True, unique=False, verbose_name='订单日期' )
    xuehao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='学号' )
    xueshengxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='学生姓名' )
    ispay=models.CharField ( max_length=255, null=True, unique=False,default='未支付', verbose_name='是否支付' )
    '''
    dingdanbianhao=VARCHAR
    jiaocaibianhao=VARCHAR
    jiaocaimingcheng=VARCHAR
    jiaocaileixing=VARCHAR
    shuliang=Integer
    danjia=Float
    heji=Float
    dingdanriqi=Date
    xuehao=VARCHAR
    xueshengxingming=VARCHAR
    ispay=VARCHAR
    '''
    class Meta:
        db_table = 'xueshenglingshu'
        verbose_name = verbose_name_plural = '学生领书'
class jiaoshituishu(BaseModel):
    __doc__ = u'''jiaoshituishu'''
    __tablename__ = 'jiaoshituishu'



    __authTables__={'jiaoshigonghao':'jiaoshi',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=True, verbose_name=u'创建时间')
    dingdanbianhao=models.CharField ( max_length=255, null=True,unique=True, verbose_name='订单编号' )
    jiaocaibianhao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教材编号' )
    jiaocaimingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教材名称' )
    jiaocaileixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教材类型' )
    tuishushuliang=models.IntegerField  ( null=False, unique=False, verbose_name='退书数量' )
    tuishuyuanyin=models.CharField ( max_length=255, null=True, unique=False, verbose_name='退书原因' )
    shenqingshijian=models.DateTimeField  (  null=True, unique=False, verbose_name='申请时间' )
    jiaoshigonghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教师工号' )
    jiaoshixingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教师姓名' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='待审核', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    '''
    dingdanbianhao=VARCHAR
    jiaocaibianhao=VARCHAR
    jiaocaimingcheng=VARCHAR
    jiaocaileixing=VARCHAR
    tuishushuliang=Integer
    tuishuyuanyin=VARCHAR
    shenqingshijian=DateTime
    jiaoshigonghao=VARCHAR
    jiaoshixingming=VARCHAR
    sfsh=VARCHAR
    shhf=Text
    '''
    class Meta:
        db_table = 'jiaoshituishu'
        verbose_name = verbose_name_plural = '教师退书'
class xueshengtuishu(BaseModel):
    __doc__ = u'''xueshengtuishu'''
    __tablename__ = 'xueshengtuishu'



    __authTables__={'xuehao':'xuesheng',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=True, verbose_name=u'创建时间')
    dingdanbianhao=models.CharField ( max_length=255, null=True,unique=True, verbose_name='订单编号' )
    jiaocaibianhao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教材编号' )
    jiaocaimingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教材名称' )
    jiaocaileixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='教材类型' )
    tuishushuliang=models.IntegerField  ( null=False, unique=False, verbose_name='退书数量' )
    tuishuyuanyin=models.CharField ( max_length=255, null=True, unique=False, verbose_name='退书原因' )
    shenqingshijian=models.DateTimeField  (  null=True, unique=False, verbose_name='申请时间' )
    xuehao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='学号' )
    xueshengxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='学生姓名' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='待审核', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    '''
    dingdanbianhao=VARCHAR
    jiaocaibianhao=VARCHAR
    jiaocaimingcheng=VARCHAR
    jiaocaileixing=VARCHAR
    tuishushuliang=Integer
    tuishuyuanyin=VARCHAR
    shenqingshijian=DateTime
    xuehao=VARCHAR
    xueshengxingming=VARCHAR
    sfsh=VARCHAR
    shhf=Text
    '''
    class Meta:
        db_table = 'xueshengtuishu'
        verbose_name = verbose_name_plural = '学生退书'
