import { ListModel } from '../models/listModel'
import { HotCateModel } from '../models/hotCateModel'
import { CateModel } from '../models/cateModel'

export interface ReqListModel {
  ret: boolean
  data: ListModel[]
}

export interface  ReqHotCateModel {
  ret: boolean,
  data: HotCateModel[]
}

export interface ReqCateModel {
  ret: boolean,
  data: CateModel
}