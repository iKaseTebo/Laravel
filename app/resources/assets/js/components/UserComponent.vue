<template>
	<div class="container">
		<ul>
			<li v-for="user in users">{{user.name}}: {{user.email}}</li>
		</ul>
	</div>
</template>

<script>
	export default {
		name: 'Users',
		data() {
			return {
				users: []
			}
		},
		methods: {
		},
		created: function(){
			console.log('Created Ran..');
			this.$http.get('https://jsonplaceholder.typicode.com/users')
			.then(function(res){
				this.users= res.data;
			})
		}
	}
</script>
