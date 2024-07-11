export interface ListModel {
  name: string
  id: string
  img1: string
  img2: string
  date: string
  cate: string
  part1: string
  part2: string
  audience: number
  like: number
  [props: string]: number | string
}

export const listModel: ListModel[] = [
  {
    name: 'UEFA Euro 2024 Spain vs Germany',
    id: '001',
    img1: 'Spain.png',
    img2: 'Germany.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'Spain',
    part2: 'Germany',
    audience: 45678,
    like: 1234
  },
  {
    name: 'UEFA Euro 2024 France vs Portugal',
    id: '002',
    img1: 'France.png',
    img2: 'Portugal.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'France',
    part2: 'Portugal',
    audience: 45234,
    like: 1223
  },
  {
    name: 'UEFA Euro 2024 Netherlands vs England',
    id: '003',
    img1: 'Netherlands.png',
    img2: 'England.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'Netherlands',
    part2: 'England',
    audience: 45254,
    like: 1323
  },
  {
    name: 'UEFA Euro 2024 Spain vs France',
    id: '004',
    img1: 'Spain.png',
    img2: 'France.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'Spain',
    part2: 'France',
    audience: 45534,
    like: 1923
  },
  {
    name: 'UEFA Euro 2024 Germany vs Portugal',
    id: '005',
    img1: 'Germany.png',
    img2: 'Portugal.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'Germany',
    part2: 'Portugal',
    audience: 45400,
    like: 1456
  },
  {
    name: 'UEFA Euro 2024 France vs England',
    id: '006',
    img1: 'France.png',
    img2: 'England.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'France',
    part2: 'England',
    audience: 45012,
    like: 1334
  },
  {
    name: 'UEFA Euro 2024 Spain vs Portugal',
    id: '007',
    img1: 'Spain.png',
    img2: 'Portugal.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'Spain',
    part2: 'Portugal',
    audience: 45789,
    like: 1567
  },
  {
    name: 'UEFA Euro 2024 Netherlands vs Germany',
    id: '008',
    img1: 'Netherlands.png',
    img2: 'Germany.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'Netherlands',
    part2: 'Germany',
    audience: 45345,
    like: 1345
  },
  {
    name: 'UEFA Euro 2024 Netherlands vs France',
    id: '009',
    img1: 'Netherlands.png',
    img2: 'France.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'Netherlands',
    part2: 'France',
    audience: 45276,
    like: 1256
  },
  {
    name: 'UEFA Euro 2024 England vs Germany',
    id: '010',
    img1: 'England.png',
    img2: 'Germany.png',
    date: '2024-07-06 00:00',
    cate: 'football',
    part1: 'England',
    part2: 'Germany',
    audience: 45523,
    like: 1489
  },
  {
    name: 'FIBA World Cup 2024 Argentina vs Australia',
    id: '011',
    img1: 'Argentina.png',
    img2: 'Australia.png',
    date: '2024-07-10 00:00',
    cate: 'basketball',
    part1: 'Argentina',
    part2: 'Australia',
    audience: 20345,
    like: 980
  },
  {
    name: 'FIBA World Cup 2024 USA vs Serbia',
    id: '012',
    img1: 'America.png',
    img2: 'Serbia.png',
    date: '2024-07-10 00:00',
    cate: 'basketball',
    part1: 'USA',
    part2: 'Serbia',
    audience: 22034,
    like: 1102
  },
  {
    name: 'FIBA World Cup 2024 Spain vs France',
    id: '013',
    img1: 'Spain.png',
    img2: 'France.png',
    date: '2024-07-10 00:00',
    cate: 'basketball',
    part1: 'Spain',
    part2: 'France',
    audience: 21056,
    like: 1250
  },
  {
    name: 'FIBA World Cup 2024 Germany vs New Zealand',
    id: '014',
    img1: 'Germany.png',
    img2: 'New Zealand.png',
    date: '2024-07-10 00:00',
    cate: 'basketball',
    part1: 'Germany',
    part2: 'New Zealand',
    audience: 19876,
    like: 1134
  },
  {
    name: 'FIBA World Cup 2024 Portugal vs Netherlands',
    id: '015',
    img1: 'Portugal.png',
    img2: 'Netherlands.png',
    date: '2024-07-10 00:00',
    cate: 'basketball',
    part1: 'Portugal',
    part2: 'Netherlands',
    audience: 17543,
    like: 876
  },
  {
    name: 'FIBA World Cup 2024 Indonesia vs Brazil',
    id: '016',
    img1: 'Indonesia.png',
    img2: 'Brazil.png',
    date: '2024-07-10 00:00',
    cate: 'basketball',
    part1: 'Indonesia',
    part2: 'Brazil',
    audience: 19234,
    like: 954
  },
  {
    name: 'FIBA World Cup 2024 England vs Italy',
    id: '017',
    img1: 'England.png',
    img2: 'Italy.png',
    date: '2024-07-10 00:00',
    cate: 'basketball',
    part1: 'England',
    part2: 'Italy',
    audience: 18456,
    like: 1023
  },
  {
    name: 'FIBA World Cup 2024 Argentina vs Brazil',
    id: '018',
    img1: 'Argentina.png',
    img2: 'Brazil.png',
    date: '2024-07-10 00:00',
    cate: 'basketball',
    part1: 'Argentina',
    part2: 'Brazil',
    audience: 20987,
    like: 1150
  },
  {
    name: 'FIBA World Cup 2024 USA vs Spain',
    id: '019',
    img1: 'America.png',
    img2: 'Spain.png',
    date: '2024-07-10 00:00',
    cate: 'basketball',
    part1: 'USA',
    part2: 'Spain',
    audience: 23045,
    like: 1204
  },
  {
    name: 'FIBA World Cup 2024 Serbia vs France',
    id: '020',
    img1: 'Serbia.png',
    img2: 'France.png',
    date: '2024-07-10 00:00',
    cate: 'basketball',
    part1: 'Serbia',
    part2: 'France',
    audience: 19934,
    like: 980
  },
  {
    name: 'FIVB World Cup 2024 Brazil vs USA',
    id: '021',
    img1: 'Brazil.png',
    img2: 'America.png',
    date: '2024-07-15 00:00',
    cate: 'volleyball',
    part1: 'Brazil',
    part2: 'USA',
    audience: 15432,
    like: 893
  },
  {
    name: 'FIVB World Cup 2024 Russia vs Italy',
    id: '022',
    img1: 'Russia.png',
    img2: 'Italy.png',
    date: '2024-07-15 00:00',
    cate: 'volleyball',
    part1: 'Russia',
    part2: 'Italy',
    audience: 14321,
    like: 782
  },
  {
    name: 'Wimbledon 2024 Nadal vs Federer',
    id: '023',
    img1: 'Spain.png',
    img2: 'Switzerland.png',
    date: '2024-07-20 00:00',
    cate: 'tennis',
    part1: 'Nadal',
    part2: 'Federer',
    audience: 20456,
    like: 1093
  },
  {
    name: 'Wimbledon 2024 Djokovic vs Murray',
    id: '024',
    img1: 'Serbia.png',
    img2: 'UnitedKingdom.png',
    date: '2024-07-20 00:00',
    cate: 'tennis',
    part1: 'Djokovic',
    part2: 'Murray',
    audience: 19432,
    like: 1034
  },
  {
    name: 'World Table Tennis Championships 2024 France vs Germany',
    id: '025',
    img1: 'France.png',
    img2: 'Germany.png',
    date: '2024-07-25 00:00',
    cate: 'pingpong',
    part1: 'France',
    part2: 'Germany',
    audience: 12543,
    like: 943
  },
  {
    name: 'World Table Tennis Championships 2024 Japan vs Sweden',
    id: '026',
    img1: 'Japan.png',
    img2: 'Sweden.png',
    date: '2024-07-25 00:00',
    cate: 'pingpong',
    part1: 'Japan',
    part2: 'Sweden',
    audience: 11321,
    like: 854
  },
  {
    name: 'LoL World Championship 2024 T1 vs G2',
    id: '027',
    img1: 'T1.png',
    img2: 'G2.png',
    date: '2024-07-30 00:00',
    cate: 'e-sports',
    part1: 'T1',
    part2: 'G2',
    audience: 50321,
    like: 4502
  },
  {
    name: 'LoL World Championship 2024 RNG vs FNC',
    id: '028',
    img1: 'RNG.png',
    img2: 'FNC.png',
    date: '2024-07-30 00:00',
    cate: 'e-sports',
    part1: 'RNG',
    part2: 'FNC',
    audience: 48976,
    like: 4321
  }

];


export const searchListModel = (keyword: string): ListModel[] => {
  return listModel.filter(item =>
  item.name.toLowerCase().includes(keyword.toLowerCase()) ||
  item.part1.toLowerCase().includes(keyword.toLowerCase()) ||
  item.part2.toLowerCase().includes(keyword.toLowerCase())
  );
};