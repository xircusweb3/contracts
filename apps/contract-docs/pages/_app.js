import { getDocSlugs } from "@/libs/api"

export default function App({ Component, pageProps }) {
  return <Component {...pageProps} />
}

export async function getServerSideProps() {
  const files = getDocSlugs()
  console.log("FILES", files)

  return {
    props: {

    }
  }
}