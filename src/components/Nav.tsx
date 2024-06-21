import React from 'react'
import Image from 'next/image'
import Link from 'next/link'
import { links } from '@/utils/links'

function Nav() {
  const hamburgerIcon = (
    <svg
      xmlns="http://www.w3.org/2000/svg"
      fill="none"
      viewBox="0 0 24 24"
      className="inline-block h-5 w-5 stroke-current">
      <path
        strokeLinecap="round"
        strokeLinejoin="round"
        strokeWidth="2"
        d="M4 6h16M4 12h16M4 18h16"></path>
    </svg>
  )

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
          <li className="flex md:hidden">
            <details>
              <summary>{hamburgerIcon}</summary>
              <ul className="absolute right-0 rounded-t-none bg-base-100 p-2">
                {liElement(links.download)}
                {liElement(links.privacy)}
                {liElement(links.support)}
              </ul>
            </details>
          </li>
          <div className="hidden md:flex">
            {liElement(links.download)}
            {liElement(links.privacy)}
            {liElement(links.support)}
          </div>
        </ul>
      </div>
    </div>
  )
}

export default Nav
