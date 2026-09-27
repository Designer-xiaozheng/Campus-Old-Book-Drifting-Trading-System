<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','order_number') || $check_field('add','order_number') || $check_field('set','order_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="订单编号" prop="order_number">
					<el-input id="order_number" v-model="form['order_number']" placeholder="请输入订单编号"
							  v-if="user_group === '管理员' || (form['errand_order_id'] && $check_field('set','order_number')) || (!form['errand_order_id'] && $check_field('add','order_number'))" :disabled="true"></el-input>
					<div v-else-if="$check_field('get','order_number')">{{form['order_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','item_name') || $check_field('add','item_name') || $check_field('set','item_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="物品名称" prop="item_name">
					<el-input id="item_name" v-model="form['item_name']" placeholder="请输入物品名称"
							  v-if="user_group === '管理员' || (form['errand_order_id'] && $check_field('set','item_name')) || (!form['errand_order_id'] && $check_field('add','item_name'))" :disabled="disabledObj['item_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','item_name')">{{form['item_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','item_type') || $check_field('add','item_type') || $check_field('set','item_type')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="物品类型" prop="item_type">
					<el-input id="item_type" v-model="form['item_type']" placeholder="请输入物品类型"
							  v-if="user_group === '管理员' || (form['errand_order_id'] && $check_field('set','item_type')) || (!form['errand_order_id'] && $check_field('add','item_type'))" :disabled="disabledObj['item_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','item_type')">{{form['item_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','delivery_address') || $check_field('add','delivery_address') || $check_field('set','delivery_address')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="代送地址" prop="delivery_address">
					<el-input id="delivery_address" v-model="form['delivery_address']" placeholder="请输入代送地址"
							  v-if="user_group === '管理员' || (form['errand_order_id'] && $check_field('set','delivery_address')) || (!form['errand_order_id'] && $check_field('add','delivery_address'))" :disabled="disabledObj['delivery_address_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','delivery_address')">{{form['delivery_address']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','article_weight') || $check_field('add','article_weight') || $check_field('set','article_weight')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="物品重量" prop="article_weight">
					<el-input id="article_weight" v-model="form['article_weight']" placeholder="请输入物品重量"
							  v-if="user_group === '管理员' || (form['errand_order_id'] && $check_field('set','article_weight')) || (!form['errand_order_id'] && $check_field('add','article_weight'))" :disabled="disabledObj['article_weight_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','article_weight')">{{form['article_weight']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','running_expenses') || $check_field('add','running_expenses') || $check_field('set','running_expenses')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="跑腿费用" prop="running_expenses">
					<el-input id="running_expenses" v-model="form['running_expenses']" placeholder="请输入跑腿费用"
							  v-if="user_group === '管理员' || (form['errand_order_id'] && $check_field('set','running_expenses')) || (!form['errand_order_id'] && $check_field('add','running_expenses'))" :disabled="disabledObj['running_expenses_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','running_expenses')">{{form['running_expenses']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','consignee') || $check_field('add','consignee') || $check_field('set','consignee')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="收货人" prop="consignee">
						<el-select v-if="user_group === '管理员' || (form['errand_order_id'] && $check_field('set','consignee')) || (!form['errand_order_id'] && $check_field('add','consignee'))" id="consignee" v-model="form['consignee']" :disabled="disabledObj['consignee_isDisabled']">
							<el-option v-for="o in list_user_consignee" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','consignee')" id="consignee" v-model="form['consignee']" :disabled="true">
							<el-option v-for="o in list_user_consignee" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','full_name') || $check_field('add','full_name') || $check_field('set','full_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="姓名" prop="full_name">
					<el-input id="full_name" v-model="form['full_name']" placeholder="请输入姓名"
							  v-if="user_group === '管理员' || (form['errand_order_id'] && $check_field('set','full_name')) || (!form['errand_order_id'] && $check_field('add','full_name'))" :disabled="disabledObj['full_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','full_name')">{{form['full_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','contact_information') || $check_field('add','contact_information') || $check_field('set','contact_information')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="联系方式" prop="contact_information">
					<el-input id="contact_information" v-model="form['contact_information']" placeholder="请输入联系方式"
							  v-if="user_group === '管理员' || (form['errand_order_id'] && $check_field('set','contact_information')) || (!form['errand_order_id'] && $check_field('add','contact_information'))" :disabled="disabledObj['contact_information_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','contact_information')">{{form['contact_information']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','number_of_orders') || $check_field('add','number_of_orders') || $check_field('set','number_of_orders')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="订单数" prop="number_of_orders">
					<el-select id="number_of_orders" v-model="form['number_of_orders']"
						v-if="user_group === '管理员' || (form['errand_order_id'] && $check_field('set','number_of_orders')) || (!form['errand_order_id'] && $check_field('add','number_of_orders'))">
						<el-option v-for="o in list_number_of_orders" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','number_of_orders')">{{form['number_of_orders']}}</div>
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
				field: "errand_order_id",
				url_add: "~/api/errand_order/add?",
				url_set: "~/api/errand_order/set?",
				url_get_obj: "~/api/errand_order/get_obj?",
				url_upload: "~/api/errand_order/upload?",

				query: {
					"errand_order_id": 0,
				},

				form: {
					"order_number":this.$get_stamp(), // 订单编号
					"item_name":'', // 物品名称
					"item_type":'', // 物品类型
					"delivery_address":'', // 代送地址
					"article_weight":'', // 物品重量
					"running_expenses":'', // 跑腿费用
					"consignee": 0, // 收货人
					"full_name":'', // 姓名
					"contact_information":'', // 联系方式
					"number_of_orders":'', // 订单数
					"errand_order_id": 0, // ID

				},
				disabledObj:{
					"order_number_isDisabled": false,
					"item_name_isDisabled": false,
					"item_type_isDisabled": false,
					"delivery_address_isDisabled": false,
					"article_weight_isDisabled": false,
					"running_expenses_isDisabled": false,
					"consignee_isDisabled": false,
					"full_name_isDisabled": false,
					"contact_information_isDisabled": false,
					"number_of_orders_isDisabled": false,
				},
				// 用户列表
				list_user_consignee: [],
				//订单数选项列表
				list_number_of_orders: ['1'],

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
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
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
					bl = this.$check_action('/errand_order/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/errand_order/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/errand_order/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/errand_order/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/errand_order/view','get');
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
