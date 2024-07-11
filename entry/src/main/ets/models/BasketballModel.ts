export interface BasketballModel {
  name: string;
  id: string;
  img1: string;
  img2: string;
  date: string;
  cate: string;
  part1: string;
  part2: string;
  audience: number;
  like: number;
  [props: string]: number | string;
}

export const basketballModel: BasketballModel[] = [
  {
    name: 'FIBA World Cup 2024 Argentina vs Australia',
    id: '001',
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
    id: '002',
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
    id: '003',
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
    id: '004',
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
    id: '005',
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
    id: '006',
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
    id: '007',
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
    id: '008',
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
    id: '009',
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
    id: '010',
    img1: 'Serbia.png',
    img2: 'France.png',
    date: '2024-07-10 00:00',
    cate: 'basketball',
    part1: 'Serbia',
    part2: 'France',
    audience: 19934,
    like: 980
  }
];

export const searchBasketballModel = (keyword: string): BasketballModel[] => {
  return basketballModel.filter(item =>
  item.name.toLowerCase().includes(keyword.toLowerCase()) ||
  item.part1.toLowerCase().includes(keyword.toLowerCase()) ||
  item.part2.toLowerCase().includes(keyword.toLowerCase())
  );
};
