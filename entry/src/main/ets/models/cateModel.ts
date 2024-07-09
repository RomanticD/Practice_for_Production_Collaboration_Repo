export interface CateModel{
  title: string
  image: string
}

export const cateModel: CateModel[] = [
  {
    title: 'FootBall',
    image: 'footBall.png',
  },
  {
    title: 'BasketBall',
    image: 'basketBall.png',
  },
  {
    title: 'VolleyBall',
    image: 'volleyBall.png',
  },
  {
    title: 'Tennis',
    image: 'tennis.png',
  },
  {
    title: 'PingPong',
    image: 'pingpong.png',
  },
  {
    title: 'E-sports',
    image: 'esportsLogo.png',
  }
]

export const searchCateModel = (keyword: string): CateModel[] => {
  return cateModel.filter(item =>
  item.title.toLowerCase().includes(keyword.toLowerCase())
  );
};