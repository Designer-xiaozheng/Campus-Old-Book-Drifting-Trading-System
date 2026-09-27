<template>
	<div class="diy_home diy_list diy_distribution_information" id="diy_distribution_information_list">
		<!-- 列表 -->
		<div class="diy_view_list list list-x" v-if="show">
			<router-link class="diy_card goods diy_list_box_wrap" v-for="(o, i) in list" :key="i"
				:to="'/distribution_information/details?distribution_information_id=' + o['distribution_information_id']">
				<!-- 图片 -->
				<div class="diy_list_img_box" v-if="imgList.length" >
					<div class="diy_row" v-for="(item,index) in imgList" :key="item+index" v-show="$check_field('get',item.name,'/distribution_information/details') && +item.is_img_list">
						<div class="diy_title diy_list_img_title">
							<span>{{item.title}}:</span>
						</div>
						<div class="diy_field diy_img">
							<img :src="$fullUrl(o[item.name])" style="width:100%;height:100%" />
						</div>
					</div>
				</div>
				<!-- 内容 -->
				<div class="diy_list_item_box">
					<div class="diy_list_item_content" v-for="(item,index) in showItemList" :key="item+index">
						<div class="diy_row" :class="{[item.name]:true}" v-if="$check_field('get',item.name,'/distribution_information/details') && +item.is_img_list">
							<div class="diy_title">
								<span>{{item.title}}:</span>
							</div>
							<div class="diy_field diy_text">
								<span v-if="item.type == 'UID'" v-text="get_user_name(o[item.name])"></span>
								<span v-else-if="item.type == '日期'" v-text="$toTime(o[item.name],'yyyy-MM-dd')"></span>
								<span v-else-if="item.type == '时间'" v-text="$toTime(o[item.name],'hh:mm:ss')"></span>
								<span v-else-if="item.type == '日长'" v-text="$toTime(o[item.name],'yyyy-MM-dd hh:mm:ss')"></span>
								<span v-else v-text="o[item.name]"></span>
							</div>
						</div>
					</div>
				</div>
			</router-link>
		</div>
		<!-- 表格 -->
		<div class="diy_view_table" v-else>
			<table class="diy_table">
				<tr class="diy_row">
					<th class="diy_title" v-if="$check_field('get','order_number')">订单编号
					</th>
					<th class="diy_title" v-if="$check_field('get','item_name')">物品名称
					</th>
					<th class="diy_title" v-if="$check_field('get','item_type')">物品类型
					</th>
					<th class="diy_title" v-if="$check_field('get','delivery_address')">代送地址
					</th>
					<th class="diy_title" v-if="$check_field('get','article_weight')">物品重量
					</th>
					<th class="diy_title" v-if="$check_field('get','running_expenses')">跑腿费用
					</th>
					<th class="diy_title" v-if="$check_field('get','consignee')">收货人
					</th>
					<th class="diy_title" v-if="$check_field('get','full_name')">姓名
					</th>
					<th class="diy_title" v-if="$check_field('get','contact_information')">联系方式
					</th>
					<th class="diy_title" v-if="$check_field('get','rider_number')">骑手编号
					</th>
					<th class="diy_title" v-if="$check_field('get','rider_name')">骑手姓名
					</th>
					<th class="diy_title" v-if="$check_field('get','distribution_status')">配送状态
					</th>
					<th class="diy_title" v-if="$check_field('get','order_receiving_quantity')">接单数量
					</th>
				</tr>
				<tr class="diy_row" v-for="(o,i) in list" :key="o+i">
					<td class="diy_field diy_text" v-if="$check_field('get','order_number')">
						<span>
							{{ o["order_number"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','item_name')">
						<span>
							{{ o["item_name"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','item_type')">
						<span>
							{{ o["item_type"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','delivery_address')">
						<span>
							{{ o["delivery_address"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','article_weight')">
						<span>
							{{ o["article_weight"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','running_expenses')">
						<span>
							{{ o["running_expenses"] }}
						</span>
					</td>
					<td class="diy_field diy_uid" v-if="$check_field('get','consignee')">
						<span>
							{{ get_user_name(o['consignee']) }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','full_name')">
						<span>
							{{ o["full_name"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','contact_information')">
						<span>
							{{ o["contact_information"] }}
						</span>
					</td>
					<td class="diy_field diy_uid" v-if="$check_field('get','rider_number')">
						<span>
							{{ get_user_name(o['rider_number']) }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','rider_name')">
						<span>
							{{ o["rider_name"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','distribution_status')">
						<span>
							{{ o["distribution_status"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','order_receiving_quantity')">
						<span>
							{{ o["order_receiving_quantity"] }}
						</span>
					</td>
				</tr>
			</table>
		</div>
	</div>
</template>

<script>
	export default {
		props: {
			list: {
				type: Array,
				default: function() {
					return [];
				},
			},
			show: {
				type: Boolean,
				default: function(){
					return true;
				}
			}
		},
		data() {
			return {
						imgList: [
						],
						itemList: [
								{
									title: "订单编号",
									name: "order_number",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "物品名称",
									name: "item_name",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "物品类型",
									name: "item_type",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "代送地址",
									name: "delivery_address",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "物品重量",
									name: "article_weight",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "跑腿费用",
									name: "running_expenses",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "收货人",
									name: "consignee",
									type: "UID",
									is_img_list: "0"
								},
								{
									title: "姓名",
									name: "full_name",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "联系方式",
									name: "contact_information",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "骑手编号",
									name: "rider_number",
									type: "UID",
									is_img_list: "0"
								},
								{
									title: "骑手姓名",
									name: "rider_name",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "配送状态",
									name: "distribution_status",
									type: "下拉",
									is_img_list: "0"
								},
								{
									title: "接单数量",
									name: "order_receiving_quantity",
									type: "下拉",
									is_img_list: "0"
								},
						],
						richList: [
						],
				// 用户列表
				list_user_consignee: [],
				// 用户列表
				list_user_rider_number: [],
			};
		},
		methods: {
			/**
			 * 获取顾客用户列表
			 */
			async get_list_user_consignee() {
				var json = await this.$get("~/api/user/get_list?user_group=顾客");
				if(json.result && json.result.list){
					this.list_user_consignee = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_name(id){
				var obj = this.list_user_consignee.getObj({"user_id":id});
				var ret = "";
				if(obj){
					ret = obj.nickname+"-"+obj.username;
					// if(obj.nickname){
					// 	ret = obj.nickname;
					// }
					// else{
					// 	ret = obj.username;
					// }
				}
				return ret;
			},
			/**
			 * 获取骑手用户列表
			 */
			async get_list_user_rider_number() {
				var json = await this.$get("~/api/user/get_list?user_group=骑手");
				if(json.result && json.result.list){
					this.list_user_rider_number = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_name(id){
				var obj = this.list_user_rider_number.getObj({"user_id":id});
				var ret = "";
				if(obj){
					ret = obj.nickname+"-"+obj.username;
					// if(obj.nickname){
					// 	ret = obj.nickname;
					// }
					// else{
					// 	ret = obj.username;
					// }
				}
				return ret;
			},
		},
		created() {
			this.get_list_user_consignee();
			this.get_list_user_rider_number();
		},
		computed:{
			showItemList(){
				let arr = [];
				let _type = ["视频","音频","文件"];
				this.itemList.forEach(item => {
					if(_type.indexOf(item.type) === -1 && !!+item.is_img_list){
						arr.push(item)
					}
				})
				return arr.slice(0,4);
			}
		}
	};
</script>

<style scoped>
	.media {
		display: flex;
		flex-direction: column;
		justify-content: space-between;
		flex-basis: 75%;
		min-height: 10rem;
	}

	.goods {
		display: flex;
		width: calc(25% - 1rem);
		margin: 0.5rem;
		padding: 0.5rem;
		flex-direction: column;
		justify-content: space-between;
		background-color: white;
		border-radius: 0.5rem;
	}

	.goods:hover {
		border: 0.2rem solid #909399;
		box-shadow: 0 0.1rem 0.3rem rgba(0, 0, 0, 0.15);
	}

	.goods:hover img {
		filter: blur(1px);
	}

	.price {
		font-size: 1rem;
		margin-right: 3px;
	}

	.price_ago {
		text-decoration: line-through;
		font-size: 0.5rem;
		color: #999;

	}

	.title {
		word-break: break-all;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
		font-weight: 700;
		padding: .25rem;
	}

	.icon_cart {
		color: #FF5722;
		float: right;
	}

	@media (max-width: 992px) {

		.goods {
			width: calc(33% - 1rem);
			;
		}

	}

	@media (max-width: 768px) {

		.goods {
			width: calc(50% - 1rem);
			;
		}

	}
</style>

