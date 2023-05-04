import fs from 'fs'
import { join } from 'path'

const DOC_PATH = join(process.cwd(), 'docs')

export function getDocSlugs() {
  return fs.readdirSync(DOC_PATH)
}