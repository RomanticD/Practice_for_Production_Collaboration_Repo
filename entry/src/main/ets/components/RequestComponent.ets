import { ListModel, listModel } from '../models/listModel'
import { CCTVListModel, cctvListModel } from '../models/cctvListModel'
import { router } from '@kit.ArkUI'
import request from '../utils/cctvRequest'
import { RequestListModel } from '../models/requestModel'
import { ParamsSearchModel } from '../models/paramsModel'
import { PullToRefresh, PullToRefreshConfigurator } from '@ohos/pulltorefresh'
import { DetailType } from '../utils/Help'

@Component
export struct RequestComponent {
  private scroller: Scroller = new Scroller()
  @State listData: CCTVListModel[] = cctvListModel
  @State cateName: string = ''
  @State currPage: string = ''
  @Prop cateIndex: number

  @State
  @Watch('refreshData')
  searchResult: CCTVListModel[] = []

  private itemsPerPage: number = 5

  @State data: CCTVListModel[] = this.listData

  private currentPage: number = 1

  private totalPage: number = Math.ceil(listModel.length/this.itemsPerPage)

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
              resolve('Loading')
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
      ForEach(this.data, (item: CCTVListModel) => {
        ListItem() {
          Column() {
            Row(){
              Image(item.logoPath)
                .width(100)
                .margin({ left: 50 })

              Text(item.shortName)
                .fontSize(24)
                .margin({left:70})
            }
            .align(Alignment.Center)
            .justifyContent(FlexAlign.Center)
            .margin({bottom: 5})
            .height(175)
          }
        }
        .onClick(() => {
          router.pushUrl({
            url: 'pages/MoreDetails',
            params: {
              id: item.id,
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
      let result = await request.get<string, RequestListModel>('/cache/ef972bd6675867a16c8fd5c0b4597a56?ran=1720667588356')
      this.listData = this.data = result.data
    } else {
      this.listData = this.data = params.searchResult
    }
  }

  refreshData() {
    this.listData = this.data = this.searchResult
  }
}