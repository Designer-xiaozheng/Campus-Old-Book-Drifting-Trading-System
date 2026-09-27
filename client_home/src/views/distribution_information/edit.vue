<template>
	<div class="diy_edit page_distribution_information" id="distribution_information_edit">
		<div class='warp'>
			<div class='container'>
				<div class='row diy_edit_content_box'>
					<div v-if="$check_field('set','order_number') || $check_field('add','order_number') || $check_field('get','order_number')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>订单编号:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_order_number" v-model="form['order_number']" placeholder="请输入订单编号" v-if="(form['order_number'] && $check_field('set','order_number')) || (!form['order_number'] && $check_field('add','order_number'))"  :disabled="disabledObj['order_number_isDisabled']"/>
							<span v-else-if="$check_field('get','order_number')">{{ form['full_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','item_name') || $check_field('add','item_name') || $check_field('get','item_name')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>物品名称:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_item_name" v-model="form['item_name']" placeholder="请输入物品名称" v-if="(form['item_name'] && $check_field('set','item_name')) || (!form['item_name'] && $check_field('add','item_name'))"  :disabled="disabledObj['item_name_isDisabled']"/>
							<span v-else-if="$check_field('get','item_name')">{{ form['full_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','item_type') || $check_field('add','item_type') || $check_field('get','item_type')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>物品类型:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_item_type" v-model="form['item_type']" placeholder="请输入物品类型" v-if="(form['item_type'] && $check_field('set','item_type')) || (!form['item_type'] && $check_field('add','item_type'))"  :disabled="disabledObj['item_type_isDisabled']"/>
							<span v-else-if="$check_field('get','item_type')">{{ form['full_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','delivery_address') || $check_field('add','delivery_address') || $check_field('get','delivery_address')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>代送地址:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_delivery_address" v-model="form['delivery_address']" placeholder="请输入代送地址" v-if="(form['delivery_address'] && $check_field('set','delivery_address')) || (!form['delivery_address'] && $check_field('add','delivery_address'))"  :disabled="disabledObj['delivery_address_isDisabled']"/>
							<span v-else-if="$check_field('get','delivery_address')">{{ form['full_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','article_weight') || $check_field('add','article_weight') || $check_field('get','article_weight')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>物品重量:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_article_weight" v-model="form['article_weight']" placeholder="请输入物品重量" v-if="(form['article_weight'] && $check_field('set','article_weight')) || (!form['article_weight'] && $check_field('add','article_weight'))"  :disabled="disabledObj['article_weight_isDisabled']"/>
							<span v-else-if="$check_field('get','article_weight')">{{ form['full_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','running_expenses') || $check_field('add','running_expenses') || $check_field('get','running_expenses')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>跑腿费用:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_running_expenses" v-model="form['running_expenses']" placeholder="请输入跑腿费用" v-if="(form['running_expenses'] && $check_field('set','running_expenses')) || (!form['running_expenses'] && $check_field('add','running_expenses'))"  :disabled="disabledObj['running_expenses_isDisabled']"/>
							<span v-else-if="$check_field('get','running_expenses')">{{ form['full_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','consignee') || $check_field('add','consignee') || $check_field('get','consignee')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>收货人:
							</span>
						</div>
						<div class="diy_field diy_down">
							<select id="form_consignee" :disabled="disabledObj['consignee_isDisabled']" v-model="form['consignee']" v-if="(form['consignee'] && $check_field('set','consignee')) || (!form['consignee'] && $check_field('add','consignee'))" >
								<option v-for="o in list_user_consignee" :value="o['user_id']">
									{{o['nickname'] + '-' + o['username']}}
								</option>
							</select>
							<span v-else-if="$check_field('get','consignee')">{{ form['consignee'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','full_name') || $check_field('add','full_name') || $check_field('get','full_name')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>姓名:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_full_name" v-model="form['full_name']" placeholder="请输入姓名" v-if="(form['full_name'] && $check_field('set','full_name')) || (!form['full_name'] && $check_field('add','full_name'))"  :disabled="disabledObj['full_name_isDisabled']"/>
							<span v-else-if="$check_field('get','full_name')">{{ form['full_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','contact_information') || $check_field('add','contact_information') || $check_field('get','contact_information')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>联系方式:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_contact_information" v-model="form['contact_information']" placeholder="请输入联系方式" v-if="(form['contact_information'] && $check_field('set','contact_information')) || (!form['contact_information'] && $check_field('add','contact_information'))"  :disabled="disabledObj['contact_information_isDisabled']"/>
							<span v-else-if="$check_field('get','contact_information')">{{ form['full_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','rider_number') || $check_field('add','rider_number') || $check_field('get','rider_number')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>骑手编号:
							</span>
						</div>
						<div class="diy_field diy_down">
							<select id="form_rider_number" :disabled="disabledObj['rider_number_isDisabled']" v-model="form['rider_number']" v-if="(form['rider_number'] && $check_field('set','rider_number')) || (!form['rider_number'] && $check_field('add','rider_number'))" >
								<option v-for="o in list_user_rider_number" :value="o['user_id']">
									{{o['nickname'] + '-' + o['username']}}
								</option>
							</select>
							<span v-else-if="$check_field('get','rider_number')">{{ form['rider_number'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','rider_name') || $check_field('add','rider_name') || $check_field('get','rider_name')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>骑手姓名:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_rider_name" v-model="form['rider_name']" placeholder="请输入骑手姓名" v-if="(form['rider_name'] && $check_field('set','rider_name')) || (!form['rider_name'] && $check_field('add','rider_name'))"  :disabled="disabledObj['rider_name_isDisabled']"/>
							<span v-else-if="$check_field('get','rider_name')">{{ form['full_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','distribution_status') || $check_field('add','distribution_status') || $check_field('get','distribution_status')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>配送状态:
							</span>
						</div>
						<!-- 选项 -->
						<div class="diy_field diy_down">
							<select id="form_distribution_status" v-model="form['distribution_status']" v-if="(form['distribution_status'] && $check_field('set','distribution_status')) || (!form['distribution_status'] && $check_field('add','distribution_status'))" >
								<option v-for="o in list_distribution_status" :value="o">
									{{o}}
								</option>
							</select>
							<span v-else-if="$check_field('get','distribution_status')">{{ form['distribution_status'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','order_receiving_quantity') || $check_field('add','order_receiving_quantity') || $check_field('get','order_receiving_quantity')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>接单数量:
							</span>
						</div>
						<!-- 选项 -->
						<div class="diy_field diy_down">
							<select id="form_order_receiving_quantity" v-model="form['order_receiving_quantity']" v-if="(form['order_receiving_quantity'] && $check_field('set','order_receiving_quantity')) || (!form['order_receiving_quantity'] && $check_field('add','order_receiving_quantity'))" >
								<option v-for="o in list_order_receiving_quantity" :value="o">
									{{o}}
								</option>
							</select>
							<span v-else-if="$check_field('get','order_receiving_quantity')">{{ form['order_receiving_quantity'] }}</span>
						</div>
					</div>
				</div>
				<div class="diy_edit_submit_box row">
					<div class="col-12">
						<div class="btn_box">
							<button class="btn_submit" @click="submit()">提交</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import mixin from "@/mixins/page.js";
	export default {
		mixins: [mixin],
		components: {},
		data() {
			return {
				url_get_obj: "~/api/distribution_information/get_obj?",
				url_add: "~/api/distribution_information/add?",
				url_set: "~/api/distribution_information/set?",

				// 登录权限
				oauth: {
					"signIn": true,
					"user_group": []
				},

				// 查询条件
				query: {
					"order_number": "",
					"item_name": "",
					"item_type": "",
					"delivery_address": "",
					"article_weight": "",
					"running_expenses": "",
					"consignee": 0,
					"full_name": "",
					"contact_information": "",
					"rider_number": 0,
					"rider_name": "",
					"distribution_status": "",
					"order_receiving_quantity": "",
					"distribution_information_id": 0,
				},

				obj: {
					"order_number":'', // 订单编号
					"item_name":'', // 物品名称
					"item_type":'', // 物品类型
					"delivery_address":'', // 代送地址
					"article_weight":'', // 物品重量
					"running_expenses":'', // 跑腿费用
					"consignee": 0, // 收货人
					"full_name":'', // 姓名
					"contact_information":'', // 联系方式
					"rider_number": 0, // 骑手编号
					"rider_name":'', // 骑手姓名
					"distribution_status":'', // 配送状态
					"order_receiving_quantity":'', // 接单数量
					"distribution_information_id": 0,
				},

				// 表单字段
				form: {
					"order_number":'', // 订单编号
					"item_name":'', // 物品名称
					"item_type":'', // 物品类型
					"delivery_address":'', // 代送地址
					"article_weight":'', // 物品重量
					"running_expenses":'', // 跑腿费用
					"consignee": 0, // 收货人
					"full_name":'', // 姓名
					"contact_information":'', // 联系方式
					"rider_number": 0, // 骑手编号
					"rider_name":'', // 骑手姓名
					"distribution_status":'', // 配送状态
					"order_receiving_quantity":'', // 接单数量
					"distribution_information_id": 0,

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
					"rider_number_isDisabled": false,
					"rider_name_isDisabled": false,
					"distribution_status_isDisabled": false,
					"order_receiving_quantity_isDisabled": false,
				},
				// 用户列表
				list_user_consignee: [],
				// 用户列表
				list_user_rider_number: [],
				//配送状态选项列表
				list_distribution_status: ['配送中','已送达'],
				//接单数量选项列表
				list_order_receiving_quantity: ['1'],

				// ID字段
				field: "distribution_information_id",
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
			async get_user_session_rider_number(){
				var _this = this;
				var json = await this.$get("~/api/user_group/get_obj?name=骑手");
				if(json.result && json.result.obj){
					var source_table = json.result.obj.source_table;
					var user_id = _this.$store.state.user.user_id;
					if (user_id){
						var url = "~/api/"+source_table+"/get_obj?"
						this.$get(url, {"user_id":_this.$store.state.user.user_id}, function(res) {
							if (res.result && res.result.obj) {
								var arr = []
								for (let key in res.result.obj) {
									arr.push(key)
								}
								var arrForm = []
								for (let key in _this.form) {
									arrForm.push(key)
								}
								_this.form["rider_number"] = user_id
								_this.disabledObj['rider_number' + '_isDisabled'] = true
								for (var i=0;i<arr.length;i++){
									for (var j=0;j<arrForm.length;j++){
										if (arr[i]===arrForm[j]){
											if (arr[i]!=="rider_number") {
												_this.form[arrForm[j]] = res.result.obj[arr[i]]
												_this.disabledObj[arrForm[j] + '_isDisabled'] = true
												break;
											}
										}
									}
								}
							}
						});
					}
				}
				else if(json.error){
					console.error(json.error);
				}
			},

			/**
			 * 修改文件
			 * @param { Object } files 上传文件对象
			 * @param { String } str 表单的属性名
			 */
			change_file(files, str) {
				var form = new FormData();
				form.append("file", files[0]);
				this.$post("~/api/distribution_information/upload?", form, (res) => {
					if (res.result) {
						this.form[str] = res.result.url;
					} else if (res.error) {
						this.$toast(res.error.message);
					}
				});
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_before(param){
				var form = $.db.get("form");
				if (form) {
					this.obj = $.push(this.obj ,form);
					this.form = $.push(this.form ,form);
				}
				var arr = []
				for (let key in form) {
					arr.push(key)
				}
				for (var i=0;i<arr.length;i++){
					this.disabledObj[arr[i] + '_isDisabled'] = true
				}
				return param;
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json ,func){
				var form = $.db.get("form");
				var obj = Object.assign({} ,form ,this.obj);
				if (form) {
					this.obj = $.push(this.obj ,obj);
				}
				if (form) {
					this.form = $.push(this.form ,form);
				}
				if(func){
					func(json);
				}
			},

		},
		created() {
			this.get_list_user_consignee();
			this.get_user_session_rider_number();
			this.get_list_user_rider_number();
		}
	}
</script>

<style>
</style>
