import React from 'react'
import Image from 'next/image'
import Link from 'next/link'
import { links } from '@/utils/links'

function Nav() {
  const liElement = (link: {
    title: string
    href: string
    external: boolean
  }) => (
    <li>
      <Link
        title={link.title}
        href={link.href}
        target={link.external ? '_blank' : undefined}>
        {link.title}
      </Link>
    </li>
  )
  return (
    <div className="navbar fixed z-[100] bg-base-100 shadow-md">
      <div className="flex flex-grow">
        <Link
          href="/"
          className="btn btn-ghost text-xl">
          <Image
            src="/icon-small.webp"
            alt="logo"
            width={30}
            height={30}
            className="rounded-lg"
          />
          overstimulated
        </Link>
      </div>
      <div className="flex-none">
        <ul className="menu menu-horizontal px-1">
          {liElement(links.download)}
          {liElement(links.privacy)}
          {liElement(links.support)}
        </ul>
      </div>
    </div>
  )
}

export default Nav
