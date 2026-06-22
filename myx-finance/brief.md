# Agentic Audit Brief: MYX Finance

⚠️ Lifecycle status: DEAD - TVL dropped 99.3% over 90 days

## Project Overview

- Project: MYX Finance (`myx-finance`)
- Website: [https://app.myx.finance](https://app.myx.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T16:52:19.776Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, bsc, linea
- Contract surface: 102 unique implementations (109 raw deployments)
- DeFi Llama TVL: $986,027.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

MYX Finance is a decentralized derivatives protocol enabling users to trade perpetual contracts with leverage. It provides liquidity pools, staking mechanisms, and risk management infrastructure to support trading on multiple chains.

### Architecture

The protocol uses a single product family where core contracts like Pool, HyperVault, and StakerV2 manage liquidity and staking, while Market, PositionManager, and OrderManager handle trading. Supporting proxy contracts provide upgradeability and access control, with oracles and configuration providers shared across the system.

## Contract Surface Quality

- Indexed contracts: 1145; live-surface contracts included: 109 (109 live, 0 unknown).
- Excluded by liveness: 616 inactive, 420 singleton, 0 uninitialized.
- Deployment units: 1/215 live.
- Detected codebases: none
- Unverified dependencies: 5/59.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 96
- Unique implementations: 102
- Raw deployments: 109
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Airdrop | operational_periphery | bsc | n/a | [`0x8f0eb8...8ab439`](./contracts/bsc-56/0x8f0eb8903aae4d170aafb84f5fdb3805008ab439/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | bsc | n/a | 6 deployments: bsc [`0x1e1021...f64255`](./contracts/bsc-56/0x1e1021fbb3efa228767955501d088c7dbaf64255/); bsc `0x20b8dd...8b0676`; bsc `0x2d0301...6bf0c3`; bsc `0x6b065b...d93476`; bsc `0xa2697b...98faf6`; bsc `0xc44f50...397207` | ⚠️ Unaudited |
| ERC20 | token | bsc | n/a | 2 deployments: bsc [`0x46cc0d...1bfc8f`](./contracts/bsc-56/0x46cc0d8a01698374af48f23719704f893f1bfc8f/); bsc `0xb7696b...89b44d` | ⚠️ Unaudited |
| Executor | unknown | linea | n/a | 2 deployments: bsc `0xe8b8d0...6de6e0`; linea [`0x417bac...7cb982`](./contracts/linea-59144/0x417bac72f5fe2aa0e3c21f150ccf6261ed7cb982/) | ⚠️ Unaudited |
| MYX | unknown | bsc | n/a | [`0xd82544...c63e16`](./contracts/bsc-56/0xd82544bf0dfe8385ef8fa34d67e6e4940cc63e16/) | ⚠️ Unaudited |
| OrderManager | governance | arbitrum | unit-43204 | [`0x4df429...900437`](./contracts/arbitrum-42161/0x4df429a8ff6cf308f1c9aa8e4b6bef5e4e900437/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (96)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x02025c...f9ff35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02f152...345f5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03b5f1...17d184` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x072521...5b28c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0cec0e...56a192` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1097d4...57f62f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x138d99...bac1e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1aa226...c04728` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f97ad...ae1c0d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20e39a...0586fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x279c70...fe2819` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a590b...9f5d7f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2eb9bc...4c031b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37713f...8921b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a7348...6774d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f6d50...419f33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x401b73...8cec4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41f70d...89d578` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x489c30...814748` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58bc38...837a81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58e6e8...04e7af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60a32d...b810de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60d3d6...a9b51b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x623884...0f944f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x627152...6ab115` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6677d5...804616` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ed73e...af4bc9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f77be...7cf645` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f3575...d44b50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x808691...bf6863` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x819e2f...14aef5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83594e...ad69ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88afd3...235234` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8990cc...402034` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8beff2...d66e8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c0b6a...be1256` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90b050...817448` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9cf749...1e0c7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9dd786...207225` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f5e0b...3a022e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa082d6...c7207f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa33109...2298f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6c937...da2757` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac812f...f8164b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4f923...ce4b0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb90b4c...8ae4ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb999f6...14106b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc16afe...537b44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc29208...a943dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6a814...ea44ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb3f78...4afc3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd03b61...f4f87b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd82ce3...d0723d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd91a9c...277a09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdba8be...cfd167` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe77fba...f7db83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe045e...c86f95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20f484...d82108` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4dd4a7...ac73c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5aa0cc...70e6fa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67bcf3...dd8ab3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x739d1d...f17057` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x819bcc...fdf907` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x878438...4a7a51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x888b0b...bc69d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa5b939...087aba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb474b5...a8873f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4e1b8...11b30e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc32306...ac450c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc360d3...964ec9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc38fd7...4bacaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf8535...96740f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde4ee2...acaa4c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeaecac...12e498` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0e390c...43d944` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x18de58...8315c2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1c2958...57592f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2d70dd...c1cdf4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x32ef0f...3b9a56` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x375382...c3769a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4a5199...a52719` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4f388a...76675a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x568570...76ff23` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x70102f...ac42e0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x75f499...fba99e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x76e3f4...186503` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7bd819...1f94b0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8f3bcd...4f7c1f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb742b3...be0915` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb7aca8...5342ac` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc7b931...295bb1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd39908...ca466d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdefd12...00468c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe614d9...8ed66e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf1d729...1c1812` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfc0b25...d43e82` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://1570067552-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHCv4CkXABCLemz93mpi7%2Fuploads%2FuhcjNXBHA9yHn3b49ibX%2FPeckShield-Audit-Report-MYX-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://1570067552-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHCv4CkXABCLemz93mpi7%2Fuploads%2FjSF3929CurPBEmPKgS1C%2FSlowMist%20Audit%20Report%20-%20MYX%20Protocol.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://1570067552-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHCv4CkXABCLemz93mpi7%2Fuploads%2Fa73mi2pbsoZwjmQ8TN5F%2FSlowMist%20Audit%20Report%20-%20MYX%20Protocol%20Phase2.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x8f0eb8...8ab439`](./contracts/bsc-56/0x8f0eb8903aae4d170aafb84f5fdb3805008ab439/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x417bac...7cb982`](./contracts/linea-59144/0x417bac72f5fe2aa0e3c21f150ccf6261ed7cb982/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd82544...c63e16`](./contracts/bsc-56/0xd82544bf0dfe8385ef8fa34d67e6e4940cc63e16/) | MYX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 63 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13541] DL audit link
- [13542] DL audit link
- [13543] DL audit link

Fork inheritance lineage and inherited audits are included when available.
