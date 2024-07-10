import { ListModel } from '../models/listModel'

export interface ParamsModel {
  id: string
}

export interface ParamsSearchModel {
  cateName: string,
  currPage: string,
  searchResult?: ListModel[]
}