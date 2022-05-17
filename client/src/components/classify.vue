<template>
    <div id="classify">
        <div class="tag-group">
            <el-tag @click='getMedicineByFactory()'>全部</el-tag>
            <el-tag
                v-for="item in items"
                :key="item.label"
                :type="item.type" @click='getMedicineByFactory(item.label)'>
                {{ item.label }}
            </el-tag>
            <el-tag type="info">更多</el-tag>
        </div>
        
        <div class="group">
            <router-link class="card" v-for="item in medicine" :key="item.id" :to="{path:'/manage',query:{id:item.id}}">
                <div class="card-div">
                    <img :src="url+item.image" class="image">
                    <span>{{item.name}}</span>
                </div>
            </router-link>
        </div>
    </div>
</template>
<script>
import axios from "axios"
const baseUrl='http://localhost:8000'
export default {
    data() {
      return {
        items: [
          { type: '', label: '标签一' },
          { type: 'success', label: '标签二' },
          { type: 'info', label: '标签三' },
          { type: 'danger', label: '标签四' },
          { type: 'warning', label: '标签五' }
        ],
        medicine:[],
        address:'/manage',
        url:baseUrl
      }
    },
    methods:{
        getAll(){
            axios.get(baseUrl+'/api/medicine/getAll').then(res=>{
                let datas
                if(res.data.status==200){
                    datas=res.data.data
                    this.medicine=datas
                }
                    
            })
        },
        getMedicineByFactory(param){
            if(param===undefined) this.getAll();
            console.log(param)
            axios.get(baseUrl+'/api/medicine/getMedicineByFactory?f='+param).then(res=>{
                let datas=res.data.data
                if(datas.length==0)
                    this.medicine=[]
                else
                    for(var i=0;i<8;i++);
                        this.medicine[i]=datas[i]
                
            })
        }
    },
    created:function(){
        this.getAll()
    }
  }
</script>

<style lang="less">
#classify{
    margin-top:100px;
    .tag-group{
        margin-left:150px;
        .el-tag{
            margin-left:10px;
            width:70px;
            height: 40px;
            font-size:14px;
            line-height: 40px;
        }
    }
}
.group{
    margin-left:150px;
    margin-top:50px;
    margin-bottom: 100px;
    .card{
        .card-div{
            display:inline-block;
            width:300px;
            height:300px;
            box-shadow: 0 6px 12px 0 rgba(0, 0, 0, 0.1);
            margin-top:20px;
            margin-left:20px;
            .image{
                width:100%;
                height: 200px;
                margin-bottom: 20px;
            }
            span{
                margin-left:100px;
            }
        }
    }
}
</style>