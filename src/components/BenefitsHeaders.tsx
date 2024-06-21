function BenefitsHeaders({
  title,
  description
}: {
  title: string
  description: string
}) {
  return (
    <div className="mx-auto px-16 text-center md:w-1/2 md:px-0">
      <h1 className="text-5xl font-bold">{title}</h1>
      <p className="py-6">{description}</p>
    </div>
  )
}

export default BenefitsHeaders
