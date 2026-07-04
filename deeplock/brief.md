# Agentic Audit Brief: DeepLock

## Project Overview

- Project: DeepLock (`deeplock`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.837Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc
- Contract surface: 42 unique implementations (50 raw deployments)
- DeFi Llama TVL: $1,786,201.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 31 project-authored contract(s) across 1 chain(s); 22 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (bep20, servicepayer, generatorcopyright). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 120; live-surface contracts included: 50 (23 live, 27 unknown).
- Excluded by liveness: 70 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/14 (0.0%)
- Deployed-live implementations: 15 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 42
- Raw deployments: 50
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ALPHAGOAT | unknown | bsc | n/a | [`0x317205...56b44c`](./contracts/bsc-56/0x3172057a27b0dbc48a99b8fe2222c4535d56b44c/) | ⚠️ Unaudited |
| ANON_INU_COIN | unknown | bsc | n/a | [`0x64f367...b54147`](./contracts/bsc-56/0x64f36701138f0e85cc10c34ea535fdbadcb54147/) | ⚠️ Unaudited |
| BatCoin | unknown | bsc | n/a | [`0xe2ed1a...62b7d9`](./contracts/bsc-56/0xe2ed1a8b7fac86bf00aa3b920c1e5c3c4962b7d9/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | [`0x89313f...c1b20a`](./contracts/bsc-56/0x89313ffffd74e00c9e88b167564ad4b3f5c1b20a/) | ⚠️ Unaudited |
| CoinToken | token | bsc | n/a | 3 deployments: bsc [`0x6396f9...075896`](./contracts/bsc-56/0x6396f960d14d285e70f9e8dc44452ccff7075896/); bsc `0xa27cf3...100e15`; bsc `0xf919ea...245a4b` | ⚠️ Unaudited |
| DeepLock | unknown | bsc | n/a | [`0x60de5f...aaee19`](./contracts/bsc-56/0x60de5f9386b637fe97af1cc05f25548e9baaee19/) | ⚠️ Unaudited |
| DeepLockLocker | unknown | bsc | n/a | [`0x3f4d6b...a4551e`](./contracts/bsc-56/0x3f4d6bf08cb7a003488ef082102c2e6418a4551e/) | ⚠️ Unaudited |
| GRV | unknown | bsc | n/a | [`0x1337ac...6148b5`](./contracts/bsc-56/0x1337ace33c2b3fc17d85f33dbd0ed73a896148b5/) | ⚠️ Unaudited |
| HelloBEP20 | unknown | bsc | n/a | 7 deployments: bsc [`0x20c5ad...661dcf`](./contracts/bsc-56/0x20c5ada8b7a061dd6f32c715e4d5712491661dcf/); bsc `0x59ee79...048184`; bsc `0x618ecb...928a0a`; bsc `0x8df5ad...37e851`; bsc `0xd1bf81...a53e81`; bsc `0xd6a600...17bbd0`; bsc `0xe0f763...b5cf1d` | ⚠️ Unaudited |
| Mooniswap | unknown | bsc | n/a | [`0x168926...e1f2a4`](./contracts/bsc-56/0x168926cd2b2559c8359a7c0ffd2be7ad56e1f2a4/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x596e48...e2a9e3`](./contracts/bsc-56/0x596e48cde23ba55adc2b8b00b4ef472184e2a9e3/) | ⚠️ Unaudited |
| RedPill | unknown | bsc | n/a | [`0x187d76...9ed916`](./contracts/bsc-56/0x187d765829b5570c964f4b551d26d5745f9ed916/) | ⚠️ Unaudited |
| RPS | unknown | bsc | n/a | [`0x486dcc...8f6bec`](./contracts/bsc-56/0x486dccaf152b271630216d62c00188f2558f6bec/) | ⚠️ Unaudited |
| SimpleBEP20 | unknown | bsc | n/a | [`0xffc85d...0fd511`](./contracts/bsc-56/0xffc85da016e5f307bbcf2e370a11ab5e460fd511/) | ⚠️ Unaudited |
| TokenMintERC20Token | token | bsc | n/a | [`0xd43b22...eb5d47`](./contracts/bsc-56/0xd43b226d365d8b22ba472afc2fa769b356eb5d47/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0013ef...e05629` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x00dc64...5651c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03592a...951274` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x231656...4ba646` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ac944...deb965` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d229b...83edc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e98d3...beb7be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f37d9...dbba5d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47f6c1...518d00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x484a43...5a4ff3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x67cd84...1037b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a963c...631ac8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77c0f9...ba5460` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x850195...86ee7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x865b95...fa4b6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x96556d...fa102a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ad498...21c480` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad59fa...05ca97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2e4be...0814ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8c6dd...3616a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce80ab...50c909` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd364cc...a73ed9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9aec5...32c140` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdde9e8...1735f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6301c...2f24ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed7749...97b51c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xedf0a4...401548` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DeepLock.pdf (also discovered via alternate URL)](https://web.archive.org/web/20210623162512/https://github.com/TechRate/Smart-Contract-Audits/blob/main/DeepLock.pdf) | TechRate | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x317205...56b44c`](./contracts/bsc-56/0x3172057a27b0dbc48a99b8fe2222c4535d56b44c/) | ALPHAGOAT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x64f367...b54147`](./contracts/bsc-56/0x64f36701138f0e85cc10c34ea535fdbadcb54147/) | ANON_INU_COIN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe2ed1a...62b7d9`](./contracts/bsc-56/0xe2ed1a8b7fac86bf00aa3b920c1e5c3c4962b7d9/) | BatCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x89313f...c1b20a`](./contracts/bsc-56/0x89313ffffd74e00c9e88b167564ad4b3f5c1b20a/) | BEP20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6396f9...075896`](./contracts/bsc-56/0x6396f960d14d285e70f9e8dc44452ccff7075896/) | CoinToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x60de5f...aaee19`](./contracts/bsc-56/0x60de5f9386b637fe97af1cc05f25548e9baaee19/) | DeepLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3f4d6b...a4551e`](./contracts/bsc-56/0x3f4d6bf08cb7a003488ef082102c2e6418a4551e/) | DeepLockLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1337ac...6148b5`](./contracts/bsc-56/0x1337ace33c2b3fc17d85f33dbd0ed73a896148b5/) | GRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20c5ad...661dcf`](./contracts/bsc-56/0x20c5ada8b7a061dd6f32c715e4d5712491661dcf/) | HelloBEP20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x168926...e1f2a4`](./contracts/bsc-56/0x168926cd2b2559c8359a7c0ffd2be7ad56e1f2a4/) | Mooniswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x596e48...e2a9e3`](./contracts/bsc-56/0x596e48cde23ba55adc2b8b00b4ef472184e2a9e3/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x187d76...9ed916`](./contracts/bsc-56/0x187d765829b5570c964f4b551d26d5745f9ed916/) | RedPill | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x486dcc...8f6bec`](./contracts/bsc-56/0x486dccaf152b271630216d62c00188f2558f6bec/) | RPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xffc85d...0fd511`](./contracts/bsc-56/0xffc85da016e5f307bbcf2e370a11ab5e460fd511/) | SimpleBEP20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21321] DeepLock.pdf

Fork inheritance lineage and inherited audits are included when available.
