<template>
  <div class="page_search">
	<div class="warp">
	  <div class="container">
		<div class="row">
		  <div class="col-12">
			<div class="card_result_search">
			  <div class="title">搜索结果</div>
				<!-- 商品搜索结果 -->
			  <list_result_search
				:list="result_goods"
				title="药品商城"
				source_table="goods"
			  ></list_result_search>
				<!-- 文章搜索结果 -->
			  <list_result_search
				:list="result_article"
				title="药品资讯"
				source_table="article"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/customer/list', 'get')"
				:list="result_customer_full_name"
				title="顾客姓名"
				source_table="customer"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/rider/list', 'get')"
				:list="result_rider_rider_number"
				title="骑手骑手编号"
				source_table="rider"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/rider/list', 'get')"
				:list="result_rider_rider_name"
				title="骑手骑手姓名"
				source_table="rider"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/commodity_management/list', 'get')"
				:list="result_commodity_management_remarks"
				title="商品管理备注"
				source_table="commodity_management"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/errand_order/list', 'get')"
				:list="result_errand_order_order_number"
				title="跑腿订单订单编号"
				source_table="errand_order"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/errand_order/list', 'get')"
				:list="result_errand_order_item_type"
				title="跑腿订单物品类型"
				source_table="errand_order"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/errand_order/list', 'get')"
				:list="result_errand_order_number_of_orders"
				title="跑腿订单订单数"
				source_table="errand_order"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/distribution_information/list', 'get')"
				:list="result_distribution_information_order_number"
				title="配送信息订单编号"
				source_table="distribution_information"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/distribution_information/list', 'get')"
				:list="result_distribution_information_item_type"
				title="配送信息物品类型"
				source_table="distribution_information"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/distribution_evaluation/list', 'get')"
				:list="result_distribution_evaluation_order_number"
				title="配送评价订单编号"
				source_table="distribution_evaluation"
			  ></list_result_search>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </div>
</template>

<script>
import mixin from "../../mixins/page.js";
import list_result_search from "../../components/diy/list_result_search.vue";

export default {
  mixins: [mixin],
  data() {
	return {
	  "query": {
		word: "",
	  },
	  "result_goods": [],
	  "result_article": [],
			"result_customer_full_name":[],
			"result_rider_rider_number":[],
			"result_rider_rider_name":[],
			"result_commodity_management_remarks":[],
			"result_errand_order_order_number":[],
			"result_errand_order_item_type":[],
			"result_errand_order_number_of_orders":[],
			"result_distribution_information_order_number":[],
			"result_distribution_information_item_type":[],
			"result_distribution_evaluation_order_number":[],
	};
  },
  methods: {
	/**
	 * 获取药品商城
	 */
	get_goods() {
	  this.$get("~/api/goods/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_goods = json.result.list;
		}
	  });
	},
	/**
	 * 获取文章
	 */
	get_article() {
	  this.$get("~/api/article/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_article = json.result.list;
		}
	  });
	},
	/**
	 * 获取full_name
	 */
	get_customer_full_name(){
		this.$get("~/api/customer/get_list?like=0", { page: 1, size: 10, "full_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_customer_full_name = json.result.list;
			result_customer_full_name.map(o => o.title = o['full_name'])
	  			this.result_customer_full_name = result_customer_full_name
		 	}
		});
	},
	/**
	 * 获取rider_number
	 */
	get_rider_rider_number(){
		this.$get("~/api/rider/get_list?like=0", { page: 1, size: 10, "rider_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_rider_rider_number = json.result.list;
			result_rider_rider_number.map(o => o.title = o['rider_number'])
	  			this.result_rider_rider_number = result_rider_rider_number
		 	}
		});
	},
	/**
	 * 获取rider_name
	 */
	get_rider_rider_name(){
		this.$get("~/api/rider/get_list?like=0", { page: 1, size: 10, "rider_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_rider_rider_name = json.result.list;
			result_rider_rider_name.map(o => o.title = o['rider_name'])
	  			this.result_rider_rider_name = result_rider_rider_name
		 	}
		});
	},
	/**
	 * 获取remarks
	 */
	get_commodity_management_remarks(){
		this.$get("~/api/commodity_management/get_list?like=0", { page: 1, size: 10, "remarks": this.query.word }, (json) => {
		  if (json.result) {
			var result_commodity_management_remarks = json.result.list;
			result_commodity_management_remarks.map(o => o.title = o['remarks'])
	  			this.result_commodity_management_remarks = result_commodity_management_remarks
		 	}
		});
	},
	/**
	 * 获取order_number
	 */
	get_errand_order_order_number(){
		this.$get("~/api/errand_order/get_list?like=0", { page: 1, size: 10, "order_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_errand_order_order_number = json.result.list;
			result_errand_order_order_number.map(o => o.title = o['order_number'])
	  			this.result_errand_order_order_number = result_errand_order_order_number
		 	}
		});
	},
	/**
	 * 获取item_type
	 */
	get_errand_order_item_type(){
		this.$get("~/api/errand_order/get_list?like=0", { page: 1, size: 10, "item_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_errand_order_item_type = json.result.list;
			result_errand_order_item_type.map(o => o.title = o['item_type'])
	  			this.result_errand_order_item_type = result_errand_order_item_type
		 	}
		});
	},
	/**
	 * 获取number_of_orders
	 */
	get_errand_order_number_of_orders(){
		this.$get("~/api/errand_order/get_list?like=0", { page: 1, size: 10, "number_of_orders": this.query.word }, (json) => {
		  if (json.result) {
			var result_errand_order_number_of_orders = json.result.list;
			result_errand_order_number_of_orders.map(o => o.title = o['number_of_orders'])
	  			this.result_errand_order_number_of_orders = result_errand_order_number_of_orders
		 	}
		});
	},
	/**
	 * 获取order_number
	 */
	get_distribution_information_order_number(){
		this.$get("~/api/distribution_information/get_list?like=0", { page: 1, size: 10, "order_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_distribution_information_order_number = json.result.list;
			result_distribution_information_order_number.map(o => o.title = o['order_number'])
	  			this.result_distribution_information_order_number = result_distribution_information_order_number
		 	}
		});
	},
	/**
	 * 获取item_type
	 */
	get_distribution_information_item_type(){
		this.$get("~/api/distribution_information/get_list?like=0", { page: 1, size: 10, "item_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_distribution_information_item_type = json.result.list;
			result_distribution_information_item_type.map(o => o.title = o['item_type'])
	  			this.result_distribution_information_item_type = result_distribution_information_item_type
		 	}
		});
	},
	/**
	 * 获取order_number
	 */
	get_distribution_evaluation_order_number(){
		this.$get("~/api/distribution_evaluation/get_list?like=0", { page: 1, size: 10, "order_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_distribution_evaluation_order_number = json.result.list;
			result_distribution_evaluation_order_number.map(o => o.title = o['order_number'])
	  			this.result_distribution_evaluation_order_number = result_distribution_evaluation_order_number
		 	}
		});
	},

  },
  components: { list_result_search },
	created(){
    this.query.word = this.$route.query.word || "";
  },
  mounted() {
	this.get_goods();
	this.get_article();
		this.get_customer_full_name();
		this.get_rider_rider_number();
		this.get_rider_rider_name();
		this.get_commodity_management_remarks();
		this.get_errand_order_order_number();
		this.get_errand_order_item_type();
		this.get_errand_order_number_of_orders();
		this.get_distribution_information_order_number();
		this.get_distribution_information_item_type();
		this.get_distribution_evaluation_order_number();
  },
  watch: {
	$route() {
	  $.push(this.query, this.$route.query);
	  this.get_goods();
	  this.get_article();
	  this.get_customer_full_name();
	  this.get_rider_rider_number();
	  this.get_rider_rider_name();
	  this.get_commodity_management_remarks();
	  this.get_errand_order_order_number();
	  this.get_errand_order_item_type();
	  this.get_errand_order_number_of_orders();
	  this.get_distribution_information_order_number();
	  this.get_distribution_information_item_type();
	  this.get_distribution_evaluation_order_number();
	},
  },
};
</script>

<style scoped>
.card_search {
  text-align: center;
}
.card_result_search>.title {
  text-align: center;
  padding: 10px 0;
}
</style>
