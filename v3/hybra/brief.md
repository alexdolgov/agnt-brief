# Agentic Audit Brief: Hybra

## Project Overview

- Project: Hybra (`hybra`)
- Website: [https://www.hybra.finance?code=GRYN2U](https://www.hybra.finance?code=GRYN2U)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:41.931Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: hyperliquid
- Contract surface: 76 unique implementations (87 raw deployments)
- DeFi Llama TVL: $2,148,492.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 13 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 6 common project-authored base contract(s) (peripheryimmutablestate, peripheryvalidation, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 92; live-surface contracts included: 87 (16 live, 71 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 76 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 66
- Unique implementations: 76
- Raw deployments: 87
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLFactory | registry | hyperliquid | n/a | [`0x32b9da...1324c2`](./contracts/hyperliquid-999/0x32b9da73215255d50d84feb51540b75acc1324c2/) | ⚠️ Unaudited |
| CLPool | core_logic | hyperliquid | n/a | 2 deployments: hyperliquid [`0xa421f7...9552ab`](./contracts/hyperliquid-999/0xa421f7aada7d11eb6002bc53090fb8d5409552ab/); hyperliquid `0xe31c7b...4e1e23` | ⚠️ Unaudited |
| GrowthHYBR | unknown | hyperliquid | n/a | [`0x348b11...2b8aa5`](./contracts/hyperliquid-999/0x348b11cbb801fab12834e66691b7f25fe72b8aa5/) | ⚠️ Unaudited |
| HYBR | unknown | hyperliquid | n/a | [`0x067b0c...25a9c8`](./contracts/hyperliquid-999/0x067b0c72aa4c6bd3bfefff443c536dcd6a25a9c8/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | hyperliquid | n/a | 3 deployments: hyperliquid [`0x48b88f...097350`](./contracts/hyperliquid-999/0x48b88f07f22fcab3b72e5659f94f1bb773097350/); hyperliquid `0x88d4c3...43176f`; hyperliquid `0xcc9e39...1a2568` | ⚠️ Unaudited |
| PositionValueQuery | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x05db07...07dbc0`](./contracts/hyperliquid-999/0x05db07299ee752aef6aa1b3e895c973a6007dbc0/); hyperliquid `0x2ea324...17c068` | ⚠️ Unaudited |
| QuoterV2 | periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x8cd6ac...91e4e2`](./contracts/hyperliquid-999/0x8cd6acff822ee9e3240501b3ceda64364791e4e2/); hyperliquid `0xf5fcff...29a3e6` | ⚠️ Unaudited |
| RewardHYBR | unknown | hyperliquid | n/a | [`0x6879db...f4bc98`](./contracts/hyperliquid-999/0x6879db7e84c38e5f580b464d2f19e91e09f4bc98/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | hyperliquid | n/a | [`0x04fcae...8739a9`](./contracts/hyperliquid-999/0x04fcae9af38e79b7bb96d4f2ef0f020e9c8739a9/) | ⚠️ Unaudited |
| SwapRouter | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0384c7...8304b7`](./contracts/hyperliquid-999/0x0384c767774a51e395f913c64d744dd00a8304b7/); hyperliquid `0xbec2bf...806426` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (66)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BribeFactoryV3 | unknown | hyperliquid | n/a | `0x2555f7...5fc82f` | ❓ Unverified |
| GaugeFactory | unknown | hyperliquid | n/a | `0xb4892c...aa5a46` | ❓ Unverified |
| GaugeFactoryCL | unknown | hyperliquid | n/a | `0xeb6088...63e4f9` | ❓ Unverified |
| MinterUpgradeable | unknown | hyperliquid | n/a | `0xa8265e...3e149b` | ❓ Unverified |
| Proxy (impl: 0x3cda22a593b35a3554300b8968d20b9fc15bab8c) | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0x218e66...0f73e6`; hyperliquid `0x3cda22...5bab8c` | ❓ Unverified |
| Proxy (impl: 0x5faebfc659fe95a49f536d8e8ba6ab9dbede7d9a) | proxy | hyperliquid | n/a | `0x110e1c...a41525` | ❓ Unverified |
| Proxy (impl: 0xb761a187808fbb307cb5c5e01c01b729da432471) | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0x45ea86...ecd316`; hyperliquid `0xb761a1...432471` | ❓ Unverified |
| Proxy (impl: 0xcd5f4e4cf2dcd7d9d72ef997ebd5f57bc0443988) | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0x742caa...b65d5e`; hyperliquid `0xcd5f4e...443988` | ❓ Unverified |
| Proxy (impl: 0xdcb84d0b4036a2467ca01e0e5adf0a0d078eb78c) | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0x9c4bcf...6233e2`; hyperliquid `0xdcb84d...8eb78c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x020351...31228b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x067440...802aff` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x088d2c...d3b76d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x08e95b...7953f4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0deade...f96570` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2caf27...d93cb4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x37ed68...70d36e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3a14a5...4c1e93` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3c9c60...6d73fa` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3dcfa0...900f58` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4992d9...134ab7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x51ac83...c0fded` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x54dc14...247369` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x57952b...ec1f16` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5acb02...a6d6f0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5b3443...c087f0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5c981f...6f0836` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5e33a1...ac3dcc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5fbb1a...03b793` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0x69edd0...10647b`; hyperliquid `0x775e40...350197` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6aeb86...cc0e79` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6d1d4a...fd58fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6f1bf1...154d53` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7babb7...9a1931` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7cda9f...7c51b3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x814af8...528028` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x85046a...53cbe9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x85d0e9...6c1869` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x88374a...e742f3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9670a0...3cc624` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x976adf...846ed8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9e2b82...1f0efc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa2fc9b...82ba77` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa313d1...08f78b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xaae698...559d38` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xac256d...391f5f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb72e05...50907a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbac384...b9412d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbdf3b2...b56c67` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc03da9...8e4020` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc4ad2a...5ff021` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc6ac41...3d1853` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd0b902...f5aac1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd4d779...c93307` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd7ed77...87f4fd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd9df85...d0b396` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdbf13a...0fb78b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xeb109e...e5e939` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xed0ca8...778ca2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf00e3b...71de20` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf658fd...6cb978` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf722f4...dfc3b1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf7f86e...2acc52` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf9cbef...df93fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfda9fd...315865` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfe3390...f9f398` | ❓ Unverified |
| VoterV3 | unknown | hyperliquid | n/a | `0x5623f0...9e4fa3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [code4rena.com/reports/2025-10-hybra-finance](https://code4rena.com/reports/2025-10-hybra-finance) | Code4rena | Contest | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [code4rena.com/audits/2025-10-hybra-finance](https://code4rena.com/audits/2025-10-hybra-finance) | Code4rena | Contest | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [code4rena.com/audits/2025-11-hybra-finance-mitigation-review](https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review) | Code4rena | Contest | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [code4rena.com/audits/2025-11-hybra-finance-mitigation-review-round-2](https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review-round-2) | Code4rena | Contest | 2025-11 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 76 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20724] code4rena.com/reports/2025-10-hybra-finance
- [20725] code4rena.com/audits/2025-10-hybra-finance
- [20726] code4rena.com/audits/2025-11-hybra-finance-mitigation-review
- [20727] code4rena.com/audits/2025-11-hybra-finance-mitigation-review-round-2

Fork inheritance lineage and inherited audits are included when available.
