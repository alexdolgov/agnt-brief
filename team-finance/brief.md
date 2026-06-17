# Agentic Audit Brief: Team Finance

## Project Overview

- Project: Team Finance (`team-finance`)
- Website: [https://www.team.finance](https://www.team.finance)
- Lifecycle: active (Tier 0, 77.4% below peak)
- Generated: 2026-06-17T07:00:44.403Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, blast, bsc, cronos, ethereum, fantom, kava, klaytn, mantle, polygon
- Contract surface: 21 unique implementations (27 raw deployments)
- DeFi Llama TVL: $45,164,923.62
- On-chain TVL (included contracts): $1,518.77
- TVL by chain: Ethereum $911.76 | Bsc $586.30 | Base $20.01 | Mantle $0.71

## Project Description

Team Finance is a multi-chain non-custodial token launch and management platform. Its products include token creation, token and LP liquidity locking, vesting schedules, and staking pools across supported chains.

### Architecture

The protocol consists of a single product family centered around token locking. Core locking logic is implemented in LockToken contracts, which are deployed behind upgradeable proxies (AdminUpgradeabilityProxy and TransparentUpgradeableProxy) for future improvements. Supporting contracts like StakingPool and PriceEstimator provide additional functionality, while unnamed contracts likely serve as registries or adapters.

## Contract Surface Quality

- Indexed contracts: 125; live-surface contracts included: 27 (12 live, 15 unknown).
- Excluded by liveness: 72 inactive, 26 singleton, 0 uninitialized.
- Deployment units: 7/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 3
- Unverified implementations: 14
- Unique implementations: 21
- Raw deployments: 27
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,518.77
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LockToken | token | mantle | unit-27152 | [`0xd03450...328b14`](./contracts/mantle-5000/0xd03450a71b81d408fc3d4f4bf928ca4da5328b14/) | ⚠️ Unaudited |
| LockToken | token | polygon | unit-27149 | [`0x3ef744...6e56c7`](./contracts/polygon-137/0x3ef7442df454ba6b7c1deec8ddf29cfb2d6e56c7/) | ⚠️ Unaudited |
| LockToken | token | base | unit-27155 | [`0x4f0fd5...a7c33a`](./contracts/base-8453/0x4f0fd563be89ec8c3e7d595bf3639128c0a7c33a/) | ⚠️ Unaudited |
| TeamToken | token | arbitrum | n/a | [`0x446eb0...8c40b9`](./contracts/arbitrum-42161/0x446eb0f112dec3e84e29ce9bedab89060b8c40b9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LockToken | token | polygon | n/a | 5 deployments: ethereum `0xc77aab...878bd5`; ethereum `0xdbf723...c6220a`; bsc `0x753659...d9a85c`; polygon [`0x586c21...9af55c`](./contracts/polygon-137/0x586c21a779c24efd2a8af33c9f7df2a2ea9af55c/); avalanche `0x88ada0...b70367` | ⚠️ Unaudited (bytecode match) |
| LockToken | token | bsc | unit-27148 | 2 deployments: bsc [`0x0c89c0...518820`](./contracts/bsc-56/0x0c89c0407775dd89b12918b9c0aa42bf96518820/); avalanche `0xe2fe53...1435fb` | ⚠️ Unaudited (bytecode match) |
| LockToken | token | blast | unit-27171 | 2 deployments: base `0x9e9ce7...4040e6`; blast [`0x624a4c...02143c`](./contracts/blast-81457/0x624a4cb48a52a29d97eb1127bd0585ea1e02143c/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x05b711...e7995f` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xb6061e...1bc194` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc2995a...12c12d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xccebbe...90b63e` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xa9ec65...2502d6` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x070a08...a16d97` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x0c89c0...518820` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x5dd3d6...0c14b8` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x6c7c87...fa7cfd` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x7c2aa3...778934` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x854b4c...28a152` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x9b83f4...2f5abe` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xb5c902...cd73f7` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xf26194...4c2bf8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://2491867235-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcC38SHSHMB696ztGk5L9%2Fuploads%2FhBZpTk3UcUBhL9NrB5A3%2FBailsec%20-%20TrustSwap%20SWAP%20Token%20Audit.pdf) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://2491867235-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcC38SHSHMB696ztGk5L9%2Fuploads%2F9HLnqL9xaTELvjjEZJtH%2FBailsec%20Audit%20of%20Team%20Finance%20Staking%20Solution.pdf) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11702] Rendered PDF capture
- [11703] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
