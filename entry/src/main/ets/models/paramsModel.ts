import { CCTVListModel } from '../models/cctvListModel'

export interface ParamsModel {
  id: string
}

export interface ParamsSearchModel {
  cateName: string,
  currPage: string,
  searchResult?: CCTVListModel[]
}