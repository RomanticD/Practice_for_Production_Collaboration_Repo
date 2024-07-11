import { CCTVListModel } from '../models/cctvListModel'

export interface ParamsModel {
  id: string | number
}

export interface ParamsSearchModel {
  cateName: string,
  currPage: string,
  searchResult?: CCTVListModel[]
}