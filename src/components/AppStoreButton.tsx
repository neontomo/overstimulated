import Image from 'next/image'
import Link from 'next/link'
import { links } from '@/utils/links'

function AppStoreButton({ size = 200 }: { size?: number }) {
  return (
    <Link
      className={`zoom-on-hover`}
      title={'download in app store'}
      target="_blank"
      href={links.download.href}>
      <Image
        src="/download.svg"
        alt="Hero image"
        width={size}
        height={size}
        className="zoom-on-hover cursor-pointer hover:opacity-80"
      />
    </Link>
  )
}

export default AppStoreButton
