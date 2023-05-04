import { getDocSlugs } from "@/libs/api"
import { useRouter } from "next/router"
import { ReactMarkdown } from "react-markdown/lib/react-markdown"

export default function Doc({ title }) {
  const router = useRouter()

  return (
    <div>
      {title}
      <ReactMarkdown>
      </ReactMarkdown>
    </div>
  )
}

export async function getStaticPaths() {

  return {
    paths: [],
    fallback: true
  }
}


export async function getStaticProps({ params: { slug } }) {

  const files = getDocSlugs()

  console.log("FILES", files, slug)

  return {
    props: {

    }
  }
}