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

This repository includes a GitHub Actions workflow that automatically updates formula versions and checksums when new releases are published.

### Bump Formula Workflow

The `bump-formula.yaml` workflow can be manually triggered to update a formula to a new version:

**Inputs:**
- `package_name` (required): The formula name without the `.rb` extension (e.g., `hledger-price-tracker`)
- `version` (required): The new version number without the `v` prefix (e.g., `0.1.16`)
- `source_repo` (optional): The source repository in `owner/repo` format. Defaults to `lentidas/PACKAGE_NAME`

**How it works:**
1. Authenticates using a GitHub App token to access release artifacts
2. Downloads checksums from the release's `checksums.txt` artifact, or computes them from release binaries if the artifact is not available
3. Updates the formula file with the new version and checksums for all supported architectures:
   - macOS Intel (x86_64)
   - macOS Apple Silicon (arm64)
   - Linux Intel (x86_64)
   - Linux ARM (arm64)
4. Commits and pushes the changes back to the repository

**Prerequisites:**
- A GitHub App with access to both repositories
- Repository secrets configured:
  - `APP_ID`: The GitHub App ID
  - `APP_PRIVATE_KEY`: The GitHub App private key

**Usage:**

To trigger the workflow manually, navigate to the Actions tab in this repository, select "Bump Formula Version", and click "Run workflow". Provide the required inputs and run the workflow.

Alternatively, you can trigger it programmatically using the GitHub API or from another workflow:

```yaml
- name: Trigger formula bump
  uses: actions/github-script@v7
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    script: |
      await github.rest.actions.createWorkflowDispatch({
        owner: 'lentidas',
        repo: 'homebrew-tap',
        workflow_id: 'bump-formula.yaml',
        ref: 'main',
        inputs: {
          package_name: 'hledger-price-tracker',
          version: '0.1.16'
        }
      });
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
