<template>
	<div>
		<el-form-item v-if="$check_register_field('add','rider_number','/rider/view')" label="骑手编号" prop="rider_number">
		<el-input id="rider_number" v-model="form['rider_number']" placeholder="请输入骑手编号"></el-input>
		</el-form-item>
		<el-form-item v-if="$check_register_field('add','rider_name','/rider/view')" label="骑手姓名" prop="rider_name">
		<el-input id="rider_name" v-model="form['rider_name']" placeholder="请输入骑手姓名"></el-input>
		</el-form-item>
		<el-form-item v-if="$check_register_field('add','gender','/rider/view')" label="性别" prop="gender">
		<el-select id="gender" v-model="form['gender']">
			<el-option v-for="o in list_gender" :key="o" :label="o" :value="o">
			</el-option>
		</el-select>
		</el-form-item>
		<el-form-item v-if="$check_register_field('add','id','/rider/view')" label="身份证" prop="id">
		<el-input id="id" v-model="form['id']" placeholder="请输入身份证"></el-input>
		</el-form-item>

	</div>
</template>

<script>
	import mixin from "@/mixins/component.js";

	export default {
		mixins: [mixin],
		props:{

			form:{
				type: Object,
				default: function(){
					return {
						"rider_number":'',
						"rider_name":'',
						"gender":'',
						"id":'',
					}
				}
			},

		},
		data() {
			return {
				field: "rider_id",
				url_add: "~/api/rider/add?",
				url_set: "~/api/rider/set?",
				url_upload: "~/api/rider/upload?",
				list_gender: ['男','女'],

				rules: {
					"rider_number": [ {required: true,message: '骑手编号不能为空'}, ],
					"rider_name": [ ],
					"gender": [ ],
					"id": [ ],
				}

			}
		},
		methods: {

		},
		created() {
		}
	}
</script>
