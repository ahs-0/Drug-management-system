<template>
  <div class="home-header-container">
      <div class="title">百灵药师</div>
      <div class="search-input-container">
          <input type="text" value class="search-input" placeholder="文章/疾病/医生/药品/医院">
          <input type="button" class="search-input-button" value="搜索">
      </div>
      <div class="home-banner">
          <a href="#" target="_self" class="banner-left">
            <div class="banner-left-title">药物特征信息</div>
            <div class="banner-left-sub">适用症状</div>
          </a>
          <div class="banner-right">
            <a href="#" target="_self" class="banner-right-item">
              <div class="item-info">
                  <div class="item-info-title">皮肤科</div>
                  <div class="item-info-sub">治疗皮肤疾病</div>
              </div>
            </a>
            <a href="#" target="_self" class="banner-right-item">
              <div class="item-info">
                  <div class="item-info-title">消化科</div>
                  <div class="item-info-sub">诊疗消化系统疾病</div>
              </div>
            </a>
            <a href="#" target="_self" class="banner-right-item">
              <div class="item-info">
                  <div class="item-info-title">五官科</div>
                  <div class="item-info-sub">耳、鼻、喉、口腔、眼</div>
              </div>
            </a>
            <a href="#" target="_self" class="banner-right-item">
              <div class="item-info">
                  <div class="item-info-title">口腔科</div>
                  <div class="item-info-sub">治疗与口腔相关的疾病</div>
              </div>
            </a>
            <a href="#" target="_self" class="banner-right-item">
              <div class="item-info">
                  <div class="item-info-title">呼吸内科</div>
                  <div class="item-info-sub">呼吸系统相关的疾病</div>
              </div>
            </a>
            <a href="#" target="_self" class="banner-right-item">
              <div class="item-info">
                  <div class="item-info-title">神经外科</div>
                  <div class="item-info-sub">治疗的疾病谱上主要划分为脑肿瘤、脑血管病和功能脑病</div>
              </div>
            </a>
            <a href="#" target="_self" class="banner-right-item">
              <div class="item-info">
                  <div class="item-info-title">内分泌科</div>
                  <div class="item-info-sub">专门治疗内分泌科疾病</div>
              </div>
            </a>
            <a href="#" target="_self" class="banner-right-item">
              <div class="item-info">
                  <div class="item-info-title">其他</div>
                  <div class="item-info-sub">其他的疾病</div>
              </div>
            </a>
        </div>
      </div>
      
  </div>
</template>

<script>
export default {
}
</script>

<style lang="less">
    .home-header-container{
        background:url("../assets/img/bgc.png") no-repeat 100% 100%;
        background-size: cover;
        height: 506px;
        width: 100%;
        display:flex;
        align-items: center;
        flex-flow: column nowrap;
        .title{
            margin-top:100px;
            font-size: 35px;
            color:#fff;
        }
    }
    .search-input-container{
        margin-top:50px;
        width:700px;
        font-size:0;
        .search-input{
            width: 580px;
            height: 46px;
            font-size:20px;
        }
        .search-input-button{
            height: 50px;
            width: 100px;
            background-color: #00c792;
            border:1px solid #00c792;
        }
    }
    .search-input:focus {outline:none}
    .home-banner{
        display:flex;
        max-width:1190px;
        width:100%;
        margin-top:50px;
        .banner-left{
            width:226px;
            min-width:226px;
            height: 252px;
            border-radius: 4px;
            box-shadow: 0 6px 12px 0 rgba(0, 0, 0, 0.1);
            background:url("../assets/img/banner-left.png") no-repeat;
            background-size: contain;
            padding: 36px 20px;
            box-sizing: border-box;
            background-color: #fff;
            display:block;
            .banner-left-title{
                top:36px;
                font-size:28px;
                font-weight: 500;
                line-height: 32px;
                color: #252a33;
            }
            .banner-left-sub{
                font-size:12px;
                line-height:16px;
                color: #252a33;
                margin-top:8px;
            }
        }
        .banner-right{
            display:flex;
            flex-flow: row wrap;
            min-width:942px;
            .banner-right-item{
                display:flex;
                padding:36px 20px;
                align-items: center;
                width:226px;
                height:120px;
                border-radius: 4px;
                box-shadow: 0 6px 12px 0 rgba(0, 0, 0, 0.1);
                background-color: #fff;
                box-sizing: border-box;
                margin-left:12px;
                margin-bottom: 12px;
                justify-content: space-between;
                .item-info-title{
                    font-size:20px;
                    font-weight: 500;
                    line-height:24px;
                    color: #252a33;
                }
                .item-info-sub{
                    font-size: 12px;
                    line-height: 16px;
                    color: #252a33;
                    margin-top:8px;
                }
            }
        }
    }
</style>