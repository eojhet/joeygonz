import styles from './footer.module.scss';

export default function Footer () {

  return (
    <footer className={styles.container}>
      <div className={styles.innerContainer}>
        <p>&copy;JoeyGonz 2023</p>
      </div>
    </footer>
  )
}