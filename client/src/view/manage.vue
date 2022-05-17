<template>
  <div id="manage">
        <div class="left">
            <div class="manage-card">
                <el-card class="box-card">
                    <el-descriptions :title="Medicine.name" :column="2">
                        <el-descriptions-item label="通用名称">{{Medicine.name}}</el-descriptions-item>
                        <el-descriptions-item label="英文名称">{{Medicine.english_name}}</el-descriptions-item>
                        <el-descriptions-item label="汉语拼音">{{Medicine.pinyin}}</el-descriptions-item>
                        <el-descriptions-item label="药品类型">{{Medicine.medicine_type}}</el-descriptions-item>
                        <el-descriptions-item label="处方类型">{{Medicine.prescription_type}}</el-descriptions-item>
                        <el-descriptions-item label="医保类型">{{Medicine.Type_of_medical_insurance}}</el-descriptions-item>
                        <el-descriptions-item label="参考价格">{{Medicine.price}}元</el-descriptions-item>
                    </el-descriptions>
                </el-card>
            </div>
            <div class="manage-card-box">
                <div class="ingredient">
                    <div class="ingredient-color"></div><p>成分</p>
                    <div>{{Msg.component}}</div>
                </div>
                <div class="effect">
                    <span class="effect-color"></span><p>功效</p>
                    <div>{{Msg.effect}}</div>
                </div>
                <div class="usage">
                    <span class="usage-color"></span><p>用法用量</p>
                    <div>{{Msg.dosage}}</div>
                </div>
                <div class="adverse-reaction">
                    <span class="adverse-reaction-color"></span><p>不良反应</p>
                    <div>{{Msg.adverse_reaction}}</div>
                </div>
                <div class="careful">
                    <span class="careful-color"></span><p>注意事项</p>
                    <div>{{Msg.note}}</div>
                </div>
            </div>
        </div>
        <div class="right">
            <div class="evaluate">
                <div class="medicine">
                    <el-card class="box-card">
                        <div slot="header" class="clearfix">
                            <span>药物评价</span>
                            <el-button style="float: right; padding: 3px 0" type="text" @click="dialogFormVisible = true">评价</el-button>
                            <el-dialog title="评价" :visible.sync="dialogFormVisible">
                                <el-form :model="form">
                                    <el-form-item label="药物评价" :label-width="formLabelWidth">
                                        <el-input v-model="form.name" autocomplete="off"></el-input>
                                    </el-form-item>
                                </el-form>
                                <div slot="footer" class="dialog-footer">
                                    <el-button @click="dialogFormVisible = false">取 消</el-button>
                                    <el-button type="primary" @click="dialogFormVisible = false">确 定</el-button>
                                </div>
                            </el-dialog>
                        </div>
                        <div v-for="item in drugEvaluation" :key="item.id" class="text item">{{item.drugEvaluation }}</div>
                    </el-card>
                </div>
                <div class="medicine">
                    <el-card class="box-card">
                        <div slot="header" class="clearfix">
                            <span>用户评价</span>
                            <el-button style="float: right; padding: 3px 0" type="text" @click="dialogFormVisible = true">评价</el-button>
                            <el-dialog title="评价" :visible.sync="dialogFormVisible">
                                <el-form :model="form">
                                    <el-form-item label="用户评价" :label-width="formLabelWidth">
                                        <el-input v-model="form.name" autocomplete="off"></el-input>
                                    </el-form-item>
                                </el-form>
                                <div slot="footer" class="dialog-footer">
                                    <el-button @click="dialogFormVisible = false">取 消</el-button>
                                    <el-button type="primary" @click="dialogFormVisible = false">确 定</el-button>
                                </div>
                            </el-dialog>
                        </div>
                        <div v-for="item in userEvaluation" :key="item.id" class="text item">{{item.userEvaluation}}</div>
                    </el-card>
                </div>
                <div class="medicine">
                    <el-card class="box-card">
                        <div slot="header" class="clearfix">
                            <span>医生专业评价</span>
                            <el-button style="float: right; padding: 3px 0" type="text" @click="dialogFormVisible = true">评价</el-button>
                            <el-dialog title="评价" :visible.sync="dialogFormVisible">
                                <el-form :model="form">
                                    <el-form-item label="医生专业评价" :label-width="formLabelWidth">
                                        <el-input v-model="form.name" autocomplete="off"></el-input>
                                    </el-form-item>
                                </el-form>
                                <div slot="footer" class="dialog-footer">
                                    <el-button @click="dialogFormVisible = false">取 消</el-button>
                                    <el-button type="primary" @click="dialogFormVisible = false">确 定</el-button>
                                </div>
                            </el-dialog>
                        </div>
                        <div v-for="item in doctorEvaluation" :key="item.id" class="text item">{{item.doctorEvaluation }}</div>
                    </el-card>
                </div>
            </div>
        </div>
  </div>
</template>

<script>
import axios from 'axios'
const baseUrl='http://localhost:8000'
export default {
    data() {
        return{
            medicineId:'',
            Medicine:[],
            drugEvaluation:[],
            userEvaluation:[],
            doctorEvaluation:[],
            Msg:[],
             dialogFormVisible: false,
            form: {
                name: '',
                region: '',
                date1: '',
                date2: '',
                delivery: false,
                type: [],
                resource: '',
                desc: ''
            },
            formLabelWidth: '120px'
        }
    },
    methods:{
        getOneMedicine(){
            axios.get(baseUrl+'/api/medicine/getOne?id='+this.medicineId).then(res=>{
                let datas=res.data.data
                this.Medicine=datas
            })
        },
        getMsg(){
            axios.get(baseUrl+'/api/msg/getMsg?id='+this.medicineId).then(res=>{
                let datas=res.data.data
                this.Msg=datas
            })
        },
        getDrugEvaluations(){
            axios.get(baseUrl+'/api/drugEvation/getDrugEvaluations?id='+this.medicineId).then(res=>{
                let datas=res.data.data
                for(var i=0;i<datas.length;i++){
                    this.drugEvaluation.push(datas[i])
                }
                    
            })
        },
        getUserEvaluations(){
            axios.get(baseUrl+'/api/userEvation/getUserEvaluation?id='+this.medicineId).then(res=>{
                let datas=res.data.data
                for(var i=0;i<datas.length;i++){
                    this.userEvaluation.push(datas[i])
                }
                    
            })
        },
        getDoctorEvaluations(){
            axios.get(baseUrl+'/api/doctorEvation/getDoutorEvaluations?id='+this.medicineId).then(res=>{
                let datas=res.data.data
                for(var i=0;i<datas.length;i++){
                    this.doctorEvaluation.push(datas[i])
                }
                    
            })
        },
    },
    created:function(){
        this.medicineId=this.$route.query.id
        this.getOneMedicine()
        this.getMsg()
        this.getDrugEvaluations()
        this.getUserEvaluations()
        this.getDoctorEvaluations()
    }
}
</script>

<style lang="less">
.text {
    font-size: 14px;
  }

  .item {
    margin-bottom: 18px;
  }

  .clearfix:before,
  .clearfix:after {
    display: table;
    content: "";
  }
  .clearfix:after {
    clear: both
  }

  .box-card {
    width: 480px;
  }
  .manage-card{
      margin-left:100px;
      margin-top:30px;
      .box-card{
          width:800px;
      }
      .el-descriptions-item{
          border-bottom: .5px dashed rgb(235, 229, 229);
      }
  }
  .left{
      float:left;
  }
  .manage-card-box{
      width: 800px;
      margin-left: 100px;
      margin-top:30px;
      margin-bottom: 100px;
      border: 1px solid #fff;
      box-shadow: 0 6px 12px 0 rgba(0, 0, 0, 0.1);
      .ingredient{
          margin-top:20px;
          margin-left:40px;
          margin-right: 50px;
          .ingredient-color{
              display:inline-block;
              width:8px;
              height: 19px;
              background-color: rgb(83, 106, 220);
          }
          p{
              display:inline-block;
              margin-left:20px;
              font-size:20px;
        }
        div{
            margin-top:10px;
            font-size:14px;
        }
      }
      .effect{
          margin-top:20px;
          margin-left:40px;
          margin-right: 50px;
          .effect-color{
              display:inline-block;
              width:8px;
              height: 19px;
              background-color: rgb(83, 106, 220);
          }
          p{
              display:inline-block;
              margin-left:20px;
              font-size:20px;
        }
        div{
            margin-top:10px;
            font-size:14px;
        }
      }
      .usage{
          margin-top:20px;
          margin-left:40px;
          margin-right: 50px;
          .usage-color{
              display:inline-block;
              width:8px;
              height: 19px;
              background-color: rgb(83, 106, 220);
          }
          p{
              display:inline-block;
              margin-left:20px;
              font-size:20px;
        }
        div{
            margin-top:10px;
            font-size:14px;
        }
      }
      .adverse-reaction{
          margin-top:20px;
          margin-left:40px;
          margin-right: 50px;
          .adverse-reaction-color{
              display:inline-block;
              width:8px;
              height: 19px;
              background-color: rgb(83, 106, 220);
          }
          p{
              display:inline-block;
              margin-left:20px;
              font-size:20px;
        }
        div{
            margin-top:10px;
            font-size:14px;
        }
      }
      .careful{
          margin-top:20px;
          margin-left:40px;
          margin-right: 50px;
          margin-bottom: 50px;
          .careful-color{
              display:inline-block;
              width:8px;
              height: 19px;
              background-color: rgb(83, 106, 220);
          }
          p{
              display:inline-block;
              margin-left:20px;
              font-size:20px;
        }
        div{
            margin-top:10px;
            font-size:14px;
        }
      }
  }
  .right{
      float: right;
      margin-right: 50px;
  }
  .evaluate{
      margin-top:30px;
      margin-bottom: 100px;
      .box-card{
          max-height: 250px;
      }
  }
  .right .evaluate div{
      margin-bottom: 10px;
  }
</style>