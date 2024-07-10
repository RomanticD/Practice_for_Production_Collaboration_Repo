import { ListModel, listModel } from '../models/listModel'
import { router } from '@kit.ArkUI'
import request from '../utils/request'
import { ReqListModel } from '../models/requestModel'
import { ParamsSearchModel } from '../models/paramsModel'
import { PullToRefresh, PullToRefreshConfigurator } from '@ohos/pulltorefresh'

@Component
export struct ListComponent {
  private scroller: Scroller = new Scroller()
  @State listData: ListModel[] = listModel
  @State cateName: string = ''
  @State currPage: string = ''
  @Prop
  cateIndex: number

  @State
  @Watch('refreshData')
  searchResult: ListModel[] = []

  // 每页显示的条数
  private itemsPerPage: number = 5
  // 初始数据
  @State data: ListModel[] = this.listData
  // 当前页，初始值第一页
  private currentPage: number = 1
  // 计算共有多少页
  private totalPage: number = Math.ceil(listModel.length/this.itemsPerPage)

  // 第一步：实例化 PullToRefreshConfigurator
  private refreshConfigurator: PullToRefreshConfigurator = new PullToRefreshConfigurator()

  build() {
    Column() {
      PullToRefresh({
        data: $data,
        scroller: this.scroller,
        // 第二步：注册 refreshConfigurator
        refreshConfigurator: this.refreshConfigurator,
        customList: () => {
          this.listBuilder()
        },
        onRefresh: () => {
          return new Promise<string>((resolve) => {
            setTimeout(() => {
              this.data = this.listData.slice(0, this.itemsPerPage)
              // 页码复位
              this.currentPage = 1
              // 重新启动上拉加载
              this.refreshConfigurator.setHasLoadMore(true)
              resolve('Refresh successfully')
            }, 2000)
          })
        },
        onLoadMore: () => {
          return new Promise((resolve) => {
            setTimeout(() => {
              resolve('')
              if (this.currentPage < this.totalPage) {
                this.data = [
                  ...this.data,
                  ...this.listData.slice(this.itemsPerPage * this.currentPage, this.itemsPerPage * this.currentPage + this.itemsPerPage)
                ]
                this.currentPage++
              } else {
                console.log('No more data')
                // 第三步：设置不能继续上拉
                this.refreshConfigurator.setHasLoadMore(false)
              }
            }, 2000)
          })
        },
        customLoad: null,
        customRefresh: null
      })
    }
  }

  @Builder
  listBuilder() {
    List({scroller: this.scroller}) {
      ForEach(this.data, (item: ListModel) => {
        ListItem() {
          Column() {
            Row(){
              Column(){
                Image($rawfile(item.img1))
                  .height(50)
                  .width(50)
                  .padding(5)
                Text(item.part1)
                  .fontWeight(FontWeight.Bold)
              }
              .layoutWeight(2)
              Text('VS')
                .textAlign(TextAlign.Center)
                .layoutWeight(1)
                .fontWeight(FontWeight.Bolder)
              Column(){
                Image($rawfile(item.img2))
                  .height(50)
                  .width(50)
                  .padding(5)
                Text(item.part2)
                  .fontWeight(FontWeight.Bold)
              }
              .layoutWeight(2)
            }
            .margin({bottom: 5})
            .height(75)

            Column() {
              Text(item.name).fontSize(20)
                .height(50)

              Text(`Audience: ${item.audience}     Like: ${item.like}`)
                .fontSize(14).fontColor('#666').margin({bottom:10})
            }
            .backgroundColor('#fff')
            .width('100%')
            .height(60)
            .justifyContent(FlexAlign.Center)
            .borderRadius(6)
            .margin(10)
          }
        }
        .onClick(() => {
          router.pushUrl({
            url: 'pages/Details',
            params: {
              id: item.id
            }
          })
        })
      })
    }
    .divider({strokeWidth: 1, color: '#eee' })
    .backgroundColor('#fff')
    .scrollBar(BarState.Off)
    .edgeEffect(EdgeEffect.None)
  }

  async aboutToAppear() {
    let params: ParamsSearchModel = router.getParams() as ParamsSearchModel
    this.cateName = params.cateName
    this.currPage = params.currPage

    if (!params.searchResult) {
      let result = await request.get<string, ReqListModel>('/list')
      this.listData = this.data = result.data
    } else {
      this.listData = this.data = params.searchResult
    }

  }

  refreshData() {
    this.listData = this.data = this.searchResult
  }
}