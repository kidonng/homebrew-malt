import { ky, ServerRequest, ExtendedRequest } from '../deps.ts'

export default async (req: ServerRequest) => {
  const { search, redirect } = new ExtendedRequest(req)
  const { owner, app, release } = search

  const { download_url } = await ky(`https://install.appcenter.ms/api/v0.1/apps/${owner}/${app}/distribution_groups/public/releases/${release}`).json()

  redirect(download_url)
}
