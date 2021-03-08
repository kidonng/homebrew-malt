const { stdin, stdout } = process
stdin.setEncoding('utf8')

;(async () => {
  let result = ''
  for await (const chunk of stdin) result += chunk

  const [{ tap, revision, versions: { stable }, installed }] = JSON.parse(result)
  let version = stable
  let status = 'is-bottle'

  if (installed.length) {
    const installation = installed[0]

    if (!installation.built_as_bottle) status = 'not-bottle'
    version = installation.version
  } else status = 'not-installed'

  stdout.write(`${tap} ${revision === 0 ? version : `${version}_${revision}`} ${status}`)
})()
