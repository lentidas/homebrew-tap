# [@lentidas](https://github.com/lentidas) Homebrew Tap

## What is Homebrew?

Homebrew is a package manager for macOS (or Linux), see more at https://brew.sh

## What is a Tap?

A third-party (in relation to Homebrew) repository providing installable packages (formulae) on macOS and Linux.

See more at https://docs.brew.sh/Taps

## How do I install packages from here?

```sh
brew install lentidas/tap/<formula>
```

You can also only add the tap which makes formulae within it available in search results (`brew search` output):

```sh
brew tap lentidas/tap
```

Note: to clone the tap via SSH you will need to use:

```sh
brew tap lentidas/tap https://github.com/lentidas/homebrew-tap
```

While you may search across taps, it is necessary to always use fully qualified name (incl. the `lentidas/tap/` prefix) when referring to formulae in external taps such as this one outside of search.

## Automated Formula Updates

This repository includes a GitHub Actions workflow that automatically updates formula versions and checksums when new releases are published on my other repositories.

### `bump-formula.yaml`

The `bump-formula.yaml` workflow can be manually triggered using the GitHub interface or can be triggered from a workflow in another repository.

#### Prerequisites

- A GitHub App with access to both repositories.
- Repository secrets configured:
  - `APP_ID` - the ID of the GitHub App
  - `APP_PRIVATE_KEY` - the private key of the GitHub App

#### Inputs

The `client_payload` for the `repository_dispatch` trigger and the inputs for the `workflow_dispatch` trigger are the same:
- `package_name` (required): The formula name without the `.rb` extension (e.g., `hledger-price-tracker`)
- `version` (required): The new version number without the `v` prefix (e.g., `0.1.16`)
- `source_repo` (optional): The source repository in `owner/repo` format. Defaults to `lentidas/PACKAGE_NAME`

#### Workflow steps

1. Authenticates using a GitHub App token to access release artifacts.
2. Downloads the Linux and Darwin release binaries and computes the checksums from them.
3. Updates the formula file with the new version and checksums for all supported architectures:
   - macOS Intel (x86_64)
   - macOS Apple Silicon (arm64)
   - Linux Intel (x86_64)
   - Linux ARM (arm64)
4. Commits and pushes the changes back to the repository.

#### Usage

To trigger the workflow manually, navigate to the Actions tab in this repository, select "bump-formula-version", and click "Run workflow", providing the required inputs.

Alternatively, you can trigger it programmatically from another workflow:

```yaml
# ...

  notify-homebrew-tap:
    runs-on: ubuntu-latest
    needs: release-please
    if: steps.release-please.outputs.releases_created

    steps:
      - name: Generate authentication token from GitHub App
        id: app_token
        uses: actions/create-github-app-token@v2.2.1
        with:
          app-id: ${{ secrets.APP_ID }}
          private-key: ${{ secrets.APP_PRIVATE_KEY }}
          owner: ${{ github.repository_owner }}

      - name: Dispatch Homebrew formula bump workflow
        uses: peter-evans/repository-dispatch@v4
        with:
          event-type: homebrew-bump-formula
          repository: lentidas/homebrew-tap
          token: ${{ steps.app_token.outputs.token }}
          client-payload: |
            {
              "package_name": "${{ github.repository }}",
              "version": "${{ steps.release-please.outputs.new_version }}",
              "source_repo": "${{ github.repository }}"
            }
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
