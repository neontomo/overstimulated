import Link from 'next/link'
import Image from 'next/image'

function Hero({
  fullHeight = true,
  title,
  description,
  image,
  linkAppStore,
  linkTitle = 'get started',
  link
}: {
  fullHeight?: boolean
  title?: string
  description?: string
  image?: string
  linkAppStore?: string
  linkTitle?: string
  link?: string
}) {
  return (
    <div
      className={`hero bg-base-200 md:px-16 ${fullHeight && 'min-h-screen'}`}>
      <div className="hero-content flex-col gap-8 lg:flex-row-reverse">
        <div className="w-full">
          {image && (
            <Image
              src={image}
              alt={'Hero image'}
              width={1920}
              height={1080}
              className="zoom-on-hover max-w-full rounded-lg"
            />
          )}
        </div>
        <div>
          {title && (
            <h1 className="w-full text-4xl font-bold md:text-5xl">{title}</h1>
          )}
          {description && <p className="py-6 lg:w-1/2">{description}</p>}

          {/* {linkAppStore && (
            
          )} */}

          {(link || linkAppStore) && (
            <div className="flex">
              <Link
                className={`zoom-on-hover ${
                  link
                    ? 'btn bg-[#FF7676] hover:bg-[#FF7676] hover:opacity-80'
                    : ''
                }`}
                title={linkTitle}
                target="_blank"
                href={link ? link : linkAppStore ? linkAppStore : ''}>
                {linkAppStore ? (
                  <Image
                    src="/download.svg"
                    alt="download in app store"
                    width={150}
                    height={150}
                    className="zoom-on-hover cursor-pointer"
                  />
                ) : (
                  linkTitle
                )}
              </Link>
            </div>
          )}
        </div>
      </div>
    </div>
  )
}

export default Hero
