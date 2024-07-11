import { CCTVListModel, cctvListModel } from '../models/cctvListModel'
import { router } from '@kit.ArkUI'
import request from '../utils/cctvRequest'
import { RequestListModel } from '../models/requestModel'
import { ParamsSearchModel } from '../models/paramsModel'

@Entry
@Component
export struct MoreDetails {
  private scroller: Scroller = new Scroller()
  @State listData: CCTVListModel[] = cctvListModel
  @State cateName: string = ''
  @State currPage: string = ''
  @State r: CCTVListModel = {} as CCTVListModel;
  @State
  @Watch('refreshData')
  searchResult: CCTVListModel[] = []
  @State data: CCTVListModel[] = this.listData

  build() {
    Column() {
      Stack({ alignContent: Alignment.TopStart }) {
        Column() {
          Image($rawfile('back.png')).width(28)
        }
        .width(44)
        .height('100%')
        .justifyContent(FlexAlign.Center)
        .zIndex(1)
        .onClick(() => {
          router.back()
        })

        Text(this.r.shortName)
          .textAlign(TextAlign.Center)
          .height('100%')
          .width('100%')
          .fontSize(18)
          .fontColor('#fff')
      }
      .height(44)
      .backgroundColor('#ee7700')
      .width('100%')

      Text(this.r.tabList[0].url)

      Image(this.r.tabList[0].url)
        .width('100%')
        .height(500)
    }.width('100%')
  }

  async aboutToAppear() {
    let params: ParamsSearchModel = router.getParams() as ParamsSearchModel
    this.r = this.listData.find((item) => item.id == params.id) as CCTVListModel;

    this.cateName = params.cateName
    this.currPage = params.currPage

    if (!params.searchResult) {
      let result =
        await request.get<string, RequestListModel>('/cache/ef972bd6675867a16c8fd5c0b4597a56?ran=1720667588356')
      this.listData = this.data = result.data
    } else {
      this.listData = this.data = params.searchResult
    }
  }
  refreshData() {
    this.listData = this.data = this.searchResult
  }
}