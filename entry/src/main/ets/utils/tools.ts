export function fuzzyMatch(pattern, text) {
  const regex = new RegExp(pattern.split('').join('.*'), 'i')
  return regex.test(text)
}