import Image from 'next/image'
import styles from './page.module.scss'

export default function Home() {
  
  return (

    <main className={styles.main}>
      <div className={styles.joeygonz}>
        <h1>JoeyGonz</h1>
        <p><i>I can save you.</i></p>
      </div>
      <div className={styles.card}>
        <h2>In the meantime, go and make a boring log at my other site {"->"} <a href="https://boring.eojhet.com">Boring.Eojhet.com</a></h2>
      </div>
    </main>
  )
}
