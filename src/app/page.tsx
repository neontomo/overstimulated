import React from 'react'
import Nav from '@/components/Nav'
import Hero from '@/components/Hero'
import Image from 'next/image'
import BenefitsHeaders from '@/components/BenefitsHeaders'
import AppStoreButton from '@/components/AppStoreButton'

export default function Home() {
  return (
    <main className="w-full max-w-full bg-base-200 pb-56">
      <Nav />

      <Hero
        title={'an app to soothe the overstimulated mind'}
        description={
          'choose from games that combine gorgeous lighting, colours, haptics & sound to get your brain to that sweet spot. designed for neurodivergent brains.'
        }
        image={'/ipad.webp?v=2'}
      />

      <div className="flex flex-col gap-32">
        <div>
          <BenefitsHeaders
            title={'focus, without needing to be productive'}
            description={
              'no pressures, no deadlines, just you and the game. pop bubbles in an ethereal environment or plant birch trees that sway in the wind.'
            }
          />

          <div className="mx-auto lg:w-2/3">
            <Image
              alt={'Hero image'}
              width={1409}
              height={1080}
              className="zoom-on-hover rounded-lg md:px-16"
              sizes="(max-width: 640px) 100vw, (max-width: 768px) 100vw, (max-width: 1024px) 100vw, 50vw"
              src={'/ipad-2.webp?v=2'}
            />
          </div>
        </div>

        <div>
          <BenefitsHeaders
            title={'inspired by nature & art'}
            description={
              'the games are inspired by the beauty of nature & artists like James Turrell.'
            }
          />

          <div className="mx-auto lg:w-2/3">
            <Image
              alt={'Hero image'}
              width={1409}
              height={1080}
              className="zoom-on-hover rounded-lg md:px-16"
              sizes="(max-width: 640px) 100vw, (max-width: 768px) 100vw, (max-width: 1024px) 100vw, 50vw"
              src={'/ipad-3.webp?v=2'}
            />
          </div>
        </div>

        <div>
          <BenefitsHeaders
            title={'loved by children'}
            description={'the games are loved by children and adults alike.'}
          />

          <div className="mx-auto flex w-2/3 items-center justify-center rounded-lg px-16 md:w-1/2 lg:w-1/3">
            <video
              autoPlay
              loop
              muted
              playsInline
              className="zoom-on-hover w-full rounded-2xl">
              <source
                src="children.mp4"
                type="video/mp4"
              />
              Your browser does not support the video tag.
            </video>
          </div>
        </div>

        <div className="mx-auto flex flex-col items-center md:flex-row">
          <BenefitsHeaders
            title={'download app now'}
            description={'available on iPad and iPhone.'}
          />

          <AppStoreButton />
        </div>
      </div>
    </main>
  )
}
