# Agentic Audit Brief: VaultCraft

⚠️ Lifecycle status: DECLINING - TVL dropped 1.4% over 90 days

## Project Overview

- Project: VaultCraft (`vaultcraft`)
- Website: [https://vaultcraft.io/](https://vaultcraft.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T14:47:44.925Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, ethereum, optimism, polygon
- Contract surface: 33 unique implementations (41 raw deployments)
- DeFi Llama TVL: $546,323.29
- On-chain TVL (included contracts): $81,248.81
- TVL by chain: Polygon $50,384.37 | Arbitrum $30,544.24 | Optimism $320.20

## Project Description

VaultCraft is a yield optimization protocol that enables users to deposit assets into automated vaults which execute strategies across multiple chains. It provides tokenized yield-bearing positions and governance through a voting escrow system.

### Architecture

The POP token contracts provide the governance and utility token that interacts with the Voting Escrow system in the Smart Contracts family. VaultRegistry and VaultRouter serve as shared infrastructure for vault discovery and user interactions, while the Treasury management family likely controls protocol-owned liquidity and POP token reserves.

## Contract Surface Quality

- Indexed contracts: 246; live-surface contracts included: 41 (28 live, 13 unknown).
- Excluded by liveness: 205 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: aave-v2
- Unverified dependencies: 1/31.

## Audit Coverage Summary

- Verified implementations audited: 1/11 (9.1%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 1
- Unverified implementations: 22
- Unique implementations: 33
- Raw deployments: 41
- Audits discovered: 7
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $54,604.74
- Latest audit: 2024-07 (aging)
- Staleness: 0 fresh, 1 aging, 3 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $54,604.74 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xRuhum | Tier 2 | 1 | 9.1% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UChildERC20 | token | polygon | unit-42904 | [`0xc5b57e...7ee50c`](./contracts/polygon-137/0xc5b57e9a1e7914fda753a88f24e5703e617ee50c/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-42905 (2 proxies) | 2 deployments: arbitrum [`0x59a696...94a230`](./contracts/arbitrum-42161/0x59a696bf34eae5ad8fd472020e3bed410694a230/); arbitrum `0x68ead5...b885be` | ⚠️ Unaudited |
| MultiStrategyVault | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0xcede40...138b93`](./contracts/arbitrum-42161/0xcede40b40f7af69f5aa6b12d75fd5ea9ce138b93/); arbitrum `0xe1543d...8f20f8` | ⚠️ Unaudited |
| GenericVaultAdapter | adapter | arbitrum | n/a | [`0xd6dfe8...8cd828`](./contracts/arbitrum-42161/0xd6dfe8b986e89ce841331f833ba82dc12b8cd828/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | optimism | n/a | [`0xd41d34...a1be45`](./contracts/optimism-10/0xd41d34d6b50785fdc025cad971fe940b8aa1be45/) | ⚠️ Unaudited |
| OracleVault | operational_periphery | ethereum | n/a | [`0x11eaa7...5366c8`](./contracts/ethereum-1/0x11eaa7a46afe1023f47040691071e174125366c8/) | ⚠️ Unaudited |
| StakingVaultFactory | registry | arbitrum | n/a | [`0xdd0d13...a6d23a`](./contracts/arbitrum-42161/0xdd0d135b5b52b7edd90a83d4a4112c55a1a6d23a/) | ⚠️ Unaudited |
| StringPoRAddressList | unknown | arbitrum | n/a | [`0x6b2091...5a3219`](./contracts/arbitrum-42161/0x6b2091c4eccb16756c2ade0a298fcc75c25a3219/) | ⚠️ Unaudited |
| VaultRouter | adapter | optimism | n/a | 2 deployments: optimism [`0x382884...002919`](./contracts/optimism-10/0x3828845f4d7212b6a0dc3d67482aff4544002919/); arbitrum `0x48943f...1f777b` | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | ethereum | n/a | [`0x0ab4bc...819a1a`](./contracts/ethereum-1/0x0ab4bc35ef33089b9082ca7bb8657d7c4e819a1a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | unknown | ethereum | n/a | 6 deployments: ethereum [`0x434e7e...c7ae02`](./contracts/ethereum-1/0x434e7ea9bc77c93c3f4680862281603338c7ae02/); ethereum `0xa48d49...9d9658`; optimism `0x4e93cc...46c412`; arbitrum `0xc9ed56...3c284c`; arbitrum `0xd11a31...dabf72`; arbitrum `0xd3a179...d538a4` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x4995f3...a243cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54c551...9b7ccc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x577a7f...3f1920` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74bb39...1afe3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x770f4e...99f9b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x788dbb...082a12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b42e0...71498c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d7d27...3dc3f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5aef0...36988b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafa52e...7c0ca2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb85e0d...21f5da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf9273...f08edb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0cd46...8a78c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd13f3d...34c3ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb06a9...cb5554` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb435e...632a2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5d383...367697` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe66f1a...aa4cbd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef4e3a...1b4899` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8207f...12f04d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9854c6...f75d33` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xffc8b5...a9cc6a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://1854965950-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2FgF4N9JVFD9kYVbxfqUOJ%2Fblocksec_popcorn_v1.0-signed.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Multi-strategy audit: <>\](https://gist.github.com/gjaldon/f3d1e2410f6e52370c8f19e72b98ea5c) | yAudit | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Peapod audit: <>](https://gist.github.com/gjaldon/8d2067cd7b382a347c5ca4a5d01aa7c2) | yAudit | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Contest details & results](https://code4rena.com/audits/2023-01-popcorn-contest) | Code4rena | Contest | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [Popcorn Audit](https://gist.github.com/0xruhum/4252cee7e84da6bb5b0a19ed00b5e34e) | 0xRuhum | Audit | 2023-04 | stale | Direct | contract_name | 4 | high |
| [spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf](https://938792658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2FmBWIydyZzVeNBuK3u5an%2FZokyo%20Audit.pdf) | Zokyo | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf](https://938792658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2F0NB6k44GVu1IW2B2mOcG%2FPopcornMay2022.pdf) | G0 Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xcede40...138b93`](./contracts/arbitrum-42161/0xcede40b40f7af69f5aa6b12d75fd5ea9ce138b93/) | MultiStrategyVault | core_logic | $72.38 | Verified native implementation with $72.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd6dfe8...8cd828`](./contracts/arbitrum-42161/0xd6dfe8b986e89ce841331f833ba82dc12b8cd828/) | GenericVaultAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11eaa7...5366c8`](./contracts/ethereum-1/0x11eaa7a46afe1023f47040691071e174125366c8/) | OracleVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdd0d13...a6d23a`](./contracts/arbitrum-42161/0xdd0d135b5b52b7edd90a83d4a4112c55a1a6d23a/) | StakingVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x382884...002919`](./contracts/optimism-10/0x3828845f4d7212b6a0dc3d67482aff4544002919/) | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ab4bc...819a1a`](./contracts/ethereum-1/0x0ab4bc35ef33089b9082ca7bb8657d7c4e819a1a/) | Voting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=16

Zero-match audit list:

- [14099] DL audit link
- [14100] Multi-strategy audit: <>\
- [14101] Peapod audit: <>
- [14102] Contest details & results
- [14104] spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf
- [14105] spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf

Fork inheritance lineage and inherited audits are included when available.
