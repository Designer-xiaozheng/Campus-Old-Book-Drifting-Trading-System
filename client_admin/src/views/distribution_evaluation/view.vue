<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','order_number') || $check_field('add','order_number') || $check_field('set','order_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="订单编号" prop="order_number">
					<el-input id="order_number" v-model="form['order_number']" placeholder="请输入订单编号"
							  v-if="user_group === '管理员' || (form['distribution_evaluation_id'] && $check_field('set','order_number')) || (!form['distribution_evaluation_id'] && $check_field('add','order_number'))" :disabled="disabledObj['order_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','order_number')">{{form['order_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','item_name') || $check_field('add','item_name') || $check_field('set','item_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="物品名称" prop="item_name">
					<el-input id="item_name" v-model="form['item_name']" placeholder="请输入物品名称"
							  v-if="user_group === '管理员' || (form['distribution_evaluation_id'] && $check_field('set','item_name')) || (!form['distribution_evaluation_id'] && $check_field('add','item_name'))" :disabled="disabledObj['item_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','item_name')">{{form['item_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','consignee') || $check_field('add','consignee') || $check_field('set','consignee')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="收货人" prop="consignee">
						<div v-if="user_group !== '管理员'">
							{{ get_user_session_consignee(form['consignee']) }}
							<!--<el-input id="business_name" v-model="form['consignee']" placeholder="请输入收货人"-->
							<!--v-if="user_group === '管理员' || (form['distribution_evaluation_id'] && $check_field('set','consignee')) || (!form['distribution_evaluation_id'] && $check_field('add','consignee'))" :disabled="disabledObj['consignee_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','consignee')">{{form['consignee']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['distribution_evaluation_id'] && $check_field('set','consignee')) || (!form['distribution_evaluation_id'] && $check_field('add','consignee'))" id="consignee" v-model="form['consignee']" :disabled="disabledObj['consignee_isDisabled']">
								<el-option v-for="o in list_user_consignee" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','consignee')" id="consignee" v-model="form['consignee']" :disabled="true">
								<el-option v-for="o in list_user_consignee" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="consignee" v-model="form['consignee']" :disabled="disabledObj['consignee_isDisabled']">
							<el-option v-for="o in list_user_consignee" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','full_name') || $check_field('add','full_name') || $check_field('set','full_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="姓名" prop="full_name">
					<el-input id="full_name" v-model="form['full_name']" placeholder="请输入姓名"
							  v-if="user_group === '管理员' || (form['distribution_evaluation_id'] && $check_field('set','full_name')) || (!form['distribution_evaluation_id'] && $check_field('add','full_name'))" :disabled="disabledObj['full_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','full_name')">{{form['full_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','rider_number') || $check_field('add','rider_number') || $check_field('set','rider_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="骑手编号" prop="rider_number">
						<el-select v-if="user_group === '管理员' || (form['distribution_evaluation_id'] && $check_field('set','rider_number')) || (!form['distribution_evaluation_id'] && $check_field('add','rider_number'))" id="rider_number" v-model="form['rider_number']" :disabled="disabledObj['rider_number_isDisabled']">
							<el-option v-for="o in list_user_rider_number" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','rider_number')" id="rider_number" v-model="form['rider_number']" :disabled="true">
							<el-option v-for="o in list_user_rider_number" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','rider_name') || $check_field('add','rider_name') || $check_field('set','rider_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="骑手姓名" prop="rider_name">
					<el-input id="rider_name" v-model="form['rider_name']" placeholder="请输入骑手姓名"
							  v-if="user_group === '管理员' || (form['distribution_evaluation_id'] && $check_field('set','rider_name')) || (!form['distribution_evaluation_id'] && $check_field('add','rider_name'))" :disabled="disabledObj['rider_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','rider_name')">{{form['rider_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','distribution_status') || $check_field('add','distribution_status') || $check_field('set','distribution_status')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="配送状态" prop="distribution_status">
					<el-input id="distribution_status" v-model="form['distribution_status']" placeholder="请输入配送状态"
							  v-if="user_group === '管理员' || (form['distribution_evaluation_id'] && $check_field('set','distribution_status')) || (!form['distribution_evaluation_id'] && $check_field('add','distribution_status'))" :disabled="disabledObj['distribution_status_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','distribution_status')">{{form['distribution_status']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','rider_rating') || $check_field('add','rider_rating') || $check_field('set','rider_rating')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="骑手评分" prop="rider_rating">
					<el-select id="rider_rating" v-model="form['rider_rating']"
						v-if="user_group === '管理员' || (form['distribution_evaluation_id'] && $check_field('set','rider_rating')) || (!form['distribution_evaluation_id'] && $check_field('add','rider_rating'))">
						<el-option v-for="o in list_rider_rating" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','rider_rating')">{{form['rider_rating']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','evaluation_content') || $check_field('add','evaluation_content') || $check_field('set','evaluation_content')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="评价内容" prop="evaluation_content">
					<el-input type="textarea" id="evaluation_content" v-model="form['evaluation_content']" placeholder="请输入评价内容"
						v-if="user_group === '管理员' || (form['distribution_evaluation_id'] && $check_field('set','evaluation_content')) || (!form['distribution_evaluation_id'] && $check_field('add','evaluation_content'))" :disabled="disabledObj['evaluation_content_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','evaluation_content')">{{form['evaluation_content']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "distribution_evaluation_id",
				url_add: "~/api/distribution_evaluation/add?",
				url_set: "~/api/distribution_evaluation/set?",
				url_get_obj: "~/api/distribution_evaluation/get_obj?",
				url_upload: "~/api/distribution_evaluation/upload?",

				query: {
					"distribution_evaluation_id": 0,
				},

				form: {
					"order_number":'', // 订单编号
					"item_name":'', // 物品名称
					"consignee": 0, // 收货人
					"full_name":'', // 姓名
					"rider_number": 0, // 骑手编号
					"rider_name":'', // 骑手姓名
					"distribution_status":'', // 配送状态
					"rider_rating":'', // 骑手评分
					"evaluation_content":'', // 评价内容
					"distribution_evaluation_id": 0, // ID

				},
				disabledObj:{
					"order_number_isDisabled": false,
					"item_name_isDisabled": false,
					"consignee_isDisabled": false,
					"full_name_isDisabled": false,
					"rider_number_isDisabled": false,
					"rider_name_isDisabled": false,
					"distribution_status_isDisabled": false,
					"rider_rating_isDisabled": false,
					"evaluation_content_isDisabled": false,
				},
				// 用户列表
				list_user_consignee: [],
				// 用户组
				group_user_consignee: "",
				// 用户列表
				list_user_rider_number: [],
				//骑手评分选项列表
				list_rider_rating: ['1星','2星','3星','4星','5星'],

			}
		},
		methods: {
			/**
			 * 获取顾客用户列表
			 */
			async get_list_user_consignee() {
                // if(this.user_group !== "管理员" && this.form["consignee"] === 0) {
                //     this.form["consignee"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=顾客");
                if(json.result && json.result.list){
                    this.list_user_consignee = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			/**
			 * 获取顾客用户组
			 */
			async get_group_user_consignee() {
				this.form["consignee"] = this.user.user_id;
				var json = await this.$get("~/api/user_group/get_obj?name=顾客");
				if(json.result && json.result.obj){
					this.group_user_consignee = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_consignee(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_consignee.source_table+"/get_obj?"
				this.$get(url, user_id, function(res) {
					if (res.result && res.result.obj) {
						var arr = []
						for (let key in res.result.obj) {
							arr.push(key)
						}
						var arrForm = []
						for (let key in _this.form) {
							arrForm.push(key)
						}
						for (var i=0;i<arr.length;i++){
							for (var j=0;j<arrForm.length;j++){
								if (arr[i]===arrForm[j]){
									if (arr[i]!=="consignee") {
										_this.form[arrForm[j]] = res.result.obj[arr[i]]
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
										break;
									}else {
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
									}
								}
							}
						}
					}
				});
			},
			get_user_consignee(id){
				var obj = this.list_user_consignee.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},
			/**
			 * 获取骑手用户列表
			 */
			async get_list_user_rider_number() {
                // if(this.user_group !== "管理员" && this.form["rider_number"] === 0) {
                //     this.form["rider_number"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=骑手");
                if(json.result && json.result.list){
                    this.list_user_rider_number = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			get_user_rider_number(id){
				var obj = this.list_user_rider_number.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				// 获取缓存数据附加
				form = $.db.get("form");
				$.push(this.form ,form);
				/**
				* 请求列表前
				* @param {Object} param
				*/
				var user_group = this.user.user_group;
				if (user_group !== "管理员") {
					switch (user_group) {
						case "收货人":
							if(param["consignee"] > 0){
								param["consignee"] = this.user.user_id;
							}
							break;
						case "骑手编号":
							if(param["rider_number"] > 0){
								param["rider_number"] = this.user.user_id;
							}
							break;
					}
				}
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/distribution_evaluation/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/distribution_evaluation/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/distribution_evaluation/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/distribution_evaluation/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/distribution_evaluation/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
			this.get_list_user_consignee();
			this.get_group_user_consignee();
			this.get_list_user_rider_number();
		}
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}
</style>
