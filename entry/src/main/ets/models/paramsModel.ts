import { CCTVListModel } from '../models/cctvListModel'

export interface ParamsModel {
  cate: string
  id: string | number
}

export interface ParamsSearchModel {
  id: number
  cateName: string,
  currPage: string,
  searchResult?: CCTVListModel[]
}