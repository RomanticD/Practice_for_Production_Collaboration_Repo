import { ListModel, listModel } from '../models/listModel'
import { router } from '@kit.ArkUI'

import { PullToRefresh, PullToRefreshConfigurator } from '@ohos/pulltorefresh'

@Component
export struct ListComponent {
  @Prop
  cateIndex: number
  private scroller: Scroller = new Scroller()

  // 每页显示的条数
  private itemsPerPage: number = 5
  // 初始数据
  @State data: ListModel[] = listModel.slice(0, this.itemsPerPage)
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
              resolve('刷新成功')
              this.data = listModel.slice(0, this.itemsPerPage)
              // 页码复位
              this.currentPage = 1
              // 重新启动上拉加载
              this.refreshConfigurator.setHasLoadMore(true)
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
                  ...listModel.slice(this.itemsPerPage * this.currentPage, this.itemsPerPage * this.currentPage + this.itemsPerPage)
                ]
                this.currentPage++
              } else {
                console.log('到底了~')
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
              }
              .layoutWeight(2)
              Text('VS')
                .textAlign(TextAlign.Center)
                .layoutWeight(1)
              Column(){
                Image($rawfile(item.img2))
                  .height(50)
                  .width(50)
                  .padding(5)
                Text(item.part2)
              }
              .layoutWeight(2)
            }
            .height(75)
            Column() {
              Text(item.name).fontSize(20)
              Text(`Audience: ${item.audience}     Like: ${item.like}`)
                .fontSize(14).fontColor('#666').margin({top: 3})
            }
            .backgroundColor('#fff')
            .width('100%')
            .height(60)
            .justifyContent(FlexAlign.Center)
            .borderRadius(6)
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
}