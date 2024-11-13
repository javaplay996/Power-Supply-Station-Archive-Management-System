<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [

	{
        "backMenu":[
			{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"用户管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"用户管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"借阅部领导管理",
                        "menuJump":"列表",
                        "tableName":"jieyuebu"
                    }
                ],
                "menu":"借阅部领导管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"主管领导管理",
                        "menuJump":"列表",
                        "tableName":"zhuguan"
                    }
                ],
                "menu":"主管领导管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"综合部主任管理",
                        "menuJump":"列表",
                        "tableName":"zhuren"
                    }
                ],
                "menu":"综合部主任管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"文书档案专责人员管理",
                        "menuJump":"列表",
                        "tableName":"wenshudangan"
                    }
                ],
                "menu":"文书档案专责人员管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"档案管理",
                        "menuJump":"列表",
                        "tableName":"dangan"
                    }
                ],
                "menu":"档案管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"借阅申请管理",
                        "menuJump":"列表",
                        "tableName":"jieyueshenqing"
                    }
                ],
                "menu":"借阅申请管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"借阅登记簿",
                        "menuJump":"列表",
                        "tableName":"jieyuedengjibu"
                    }
                ],
                "menu":"借阅登记簿"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"部门类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryBumen"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"档案类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryDangan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGonggao"
                    }
                ],
                "menu":"基础数据管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,
	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"档案管理",
                        "menuJump":"列表",
                        "tableName":"dangan"
                    }
                ],
                "menu":"档案管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增"
                        ],
                        "menu":"借阅申请管理",
                        "menuJump":"列表",
                        "tableName":"jieyueshenqing"
                    }
                ],
                "menu":"借阅申请管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"借阅登记簿",
                        "menuJump":"列表",
                        "tableName":"jieyuedengjibu"
                    }
                ],
                "menu":"借阅登记簿"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"用户",
        "tableName":"yonghu"
    }
	,
	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"用户管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"用户管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"档案管理",
                        "menuJump":"列表",
                        "tableName":"dangan"
                    }
                ],
                "menu":"档案管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "修改"
                        ],
                        "menu":"借阅申请管理",
                        "menuJump":"列表",
                        "tableName":"jieyueshenqing"
                    }
                ],
                "menu":"借阅申请管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"借阅部领导",
        "tableName":"jieyuebu"
    }
	,
	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"用户管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"用户管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"档案管理",
                        "menuJump":"列表",
                        "tableName":"dangan"
                    }
                ],
                "menu":"档案管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "修改"
                        ],
                        "menu":"借阅申请管理",
                        "menuJump":"列表",
                        "tableName":"jieyueshenqing"
                    }
                ],
                "menu":"借阅申请管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"主管领导",
        "tableName":"zhuguan"
    }
	,
	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"用户管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"用户管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"档案管理",
                        "menuJump":"列表",
                        "tableName":"dangan"
                    }
                ],
                "menu":"档案管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "修改"
                        ],
                        "menu":"借阅申请管理",
                        "menuJump":"列表",
                        "tableName":"jieyueshenqing"
                    }
                ],
                "menu":"借阅申请管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"综合部主任",
        "tableName":"zhuren"
    }
	,
	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"用户管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"用户管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"档案管理",
                        "menuJump":"列表",
                        "tableName":"dangan"
                    }
                ],
                "menu":"档案管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "修改"
                        ],
                        "menu":"借阅申请管理",
                        "menuJump":"列表",
                        "tableName":"jieyueshenqing"
                    }
                ],
                "menu":"借阅申请管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"借阅登记簿",
                        "menuJump":"列表",
                        "tableName":"jieyuedengjibu"
                    }
                ],
                "menu":"借阅登记簿"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"文书档案专责人员",
        "tableName":"wenshudangan"
    }
	
];

var hasMessage = '';