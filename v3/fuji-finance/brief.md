# Agentic Audit Brief: Fuji Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Fuji Finance (`fuji-finance`)
- Website: [https://fuji.finance/](https://fuji.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, fantom, gnosis, goerli, optimism, polygon
- Contract surface: 213 unique implementations (240 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $139,604.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Fuji Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 181 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 32 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 185
- Unique implementations: 213
- Raw deployments: 240
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddrMapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2430ab...4a881a` | ⚠️ Unaudited |
| AlphaWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a4488...ced83b` | ⚠️ Unaudited |
| ChainlinkComputedFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e06fc...ba8fe5`; ethereum `0x53c641...bebb60` | ⚠️ Unaudited |
| ChainlinkComputedFeedLido | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8601ff...a4d0a2` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x30c591...7a724a`; ethereum `0x3f3668...5f3736`; ethereum `0xb24f10...c3dab7` | ⚠️ Unaudited |
| Flasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x01267e...0cccae`; ethereum `0x15d2f1...9cb64e`; ethereum `0x3067fe...f9cfb1`; ethereum `0x54f721...f6d985`; ethereum `0x68c3df...84ed83`; ethereum `0x7b2871...a55947`; ethereum `0x845f59...ae62f5`; ethereum `0xd13e1d...25010a`; ethereum `0xf45f46...d3b9d3` | ⚠️ Unaudited |
| Fliquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x53032d...7d9cd2`; ethereum `0xd43e4b...ae6268`; ethereum `0xe3a2df...3b2be0` | ⚠️ Unaudited |
| FujiAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1eede4...e63e20`; ethereum `0x4cb460...a76ada` | ⚠️ Unaudited |
| FujiAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7d84e2...bb4dad`; ethereum `0x8a9680...cb80b2` | ⚠️ Unaudited |
| FujiERC1155 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cf24e...a95484` | ⚠️ Unaudited |
| FujiERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8779c0...21bcd7`; ethereum `0xa2d62f...4c692b` | ⚠️ Unaudited |
| FujiFlops | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x376c0a...6bef8f`; ethereum `0x528f3c...458f3c` | ⚠️ Unaudited |
| FujiMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x03bd58...1cd6c9`; ethereum `0x17525a...f3ad24` | ⚠️ Unaudited |
| FujiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadf849...7734a8` | ⚠️ Unaudited |
| FujiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x4f86e1...dd79e4`; ethereum `0x5bcadd...d75526`; ethereum `0x73af71...e78b80`; ethereum `0xf3caa2...489b67` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4186e7...bc4172`; ethereum `0x51407a...8221b8` | ⚠️ Unaudited |
| MockAddrMapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x529ee8...e6d0d2` | ⚠️ Unaudited |
| ProviderAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x10bd45...760c43`; ethereum `0xf7358a...e2cf7c` | ⚠️ Unaudited |
| ProviderCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63e978...09d681` | ⚠️ Unaudited |
| ProviderCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x6e1639...32a4f5`; ethereum `0xca26d9...547d67`; ethereum `0xd0dc4c...f097d3`; ethereum `0xdc6d91...568468` | ⚠️ Unaudited |
| ProviderDYDX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd5957...6c0ac9` | ⚠️ Unaudited |
| ProviderFuse18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17934d...55ccba` | ⚠️ Unaudited |
| ProviderFuse3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ecbcf...76899b` | ⚠️ Unaudited |
| ProviderFuse6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c71bd...57326e` | ⚠️ Unaudited |
| ProviderFuse7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfee7a1...c36ad8` | ⚠️ Unaudited |
| ProviderFuse8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfc244...4282ba` | ⚠️ Unaudited |
| ProviderIronBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc68e58...2cdc6a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8ae7bf...37cd4a`; ethereum `0xc528a2...d24d69` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (185)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x17744b...314e82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1aa960...dcdb72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x22b625...59b76a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x24e722...9b9221` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x26cb66...0a77e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x288465...e24498` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x314cfa...a232bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x333631...6b7b94` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x337688...8faa99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x479499...eb317f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x52b23b...dee0d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x62a790...279a37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x63d20c...8c5112` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x69612f...a0b4d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76e779...e3adf6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x77f535...20019a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x87874d...252563` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x88ed3b...e91922` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9907f3...21dec2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9a24df...9452ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9de0ce...30943b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e2b7c...f10951` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa2a7c7...52e6d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xad65e9...0908a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb2a57d...2730c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb2f151...ac835e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb71073...ff23d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbf2b58...a2a78e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc349fd...d8aa1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc5a93f...dfd25d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79fcb...c3de66` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc99ae2...4185aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xce9b49...400ef9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe70b3c...34ff86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xeacb50...db0344` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xed0a74...84ca93` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf58456...65b6a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf735ab...370ece` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf7a7cf...b3dc7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xfa16b6...4dd3f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xfceb53...e2bdb3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x01a120...d2f7e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x1f5e20...c3223c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x1fa4f8...521231` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x331cd3...3b415d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x368fba...7f86c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x3cad70...c247d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x3d063d...407d40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x4635f6...4fce0c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x584e83...3df05d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x68d20d...14a97f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x8799c1...4bb185` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x88ed3b...e91922` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0xa169a5...091272` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0xb2f151...ac835e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x00cd7c...ece01c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x04357b...c776ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0965d6...a41b0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0c6d8a...b87a07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0c7c32...9dee2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0d766a...f71340` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x1085ba...eae7a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x1cbf7f...130500` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x229195...3cb425` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x24b76c...6f71c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x26d44a...24a33a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x2fd8ee...a72a26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x389f17...cdfc85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x3ced83...27cba4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x3e7953...46b7d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x4158bb...855621` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x4a8b59...7c1e17` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x72bb87...e1b474` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x77f535...20019a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x82a264...789f85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x84cd74...bfc31c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x96fbde...777a92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xa367f4...f39045` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xb5becc...3b1498` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xb71073...ff23d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xc377e6...dcaba4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xcdc144...c3013e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xd15bc6...c4245d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xd1aa67...4f66e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xd21c55...1855b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xd33467...cdf36c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xd7ef0e...edf871` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xe8a2fc...489a72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xeaafbf...802cc9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xeabda5...c65ef8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x1e302d...e6542f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x2fd8ee...a72a26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x305f31...98b3ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x32ed93...74ab2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x4aef47...500de6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x63d20c...8c5112` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x655a93...9efa76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x7698b2...7673df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x7cdbec...4a6144` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x869656...54de67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x8bdde3...393000` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x8bfd43...3858eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x95964a...252369` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x990471...cc7d38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x9907f3...21dec2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x9f364a...379528` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xa55c01...0efab2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xa99f73...282c7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xac8b2e...4c4a71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xbeaa4b...6d1ad0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xc349fd...d8aa1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd4444b...526448` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xdb8419...1fbc5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xdbc890...01f820` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xeacb50...db0344` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xf3ac23...8b573c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xfa8138...e2963b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x157a03...2db1d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x1c539b...525bb1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x1cf617...49217d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x1e49ec...b6bd09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x28fbf8...604859` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x37f943...cd1b5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x3d140c...19111f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x4c56f5...448377` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x4d8faf...215332` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x4efd4a...f77fda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x645650...f50fd3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x656337...37d62f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x690975...b8d24a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x6ed242...cdeff8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x713342...966edc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x7c5f63...429fa0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x82a264...789f85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x8d4ff0...75587c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x973d29...e46aae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x9f76ad...84d20b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xa169a5...091272` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xaf82d9...965622` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xafc162...927a4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xb4bdb2...a5d977` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xbeaa4b...6d1ad0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xc214d5...3149ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xcc1cf8...077c59` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd0fe6f...d29f09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd33467...cdf36c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd8d9c3...24a4ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd8fe15...dec7b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xda247b...f4ab71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xf84a6a...21f11b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0xb4e2ec...721d70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x1cbf7f...130500` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x285566...cb67f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x2bb069...360e3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x30e214...8aef74` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x31f655...b8865c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x38cdf6...11861b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x3c4a35...4bb0f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x3dda51...d29421` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x43b007...bd90f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x4b62c0...ca4862` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x4db1d2...67c9ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x527b27...dc689a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x542cd4...ccdad7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x584e83...3df05d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x595d90...4d7bf1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x66211a...171521` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x78c5a2...12785b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x79cb8b...27a2ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x8755be...e4dd8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x8d2129...9f621d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9830d6...82436d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9e4147...762aee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xa34d2b...0a58e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xa49bb2...a378b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xbb52ea...69cc6d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xbe1a14...0fc5f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc0f505...9b7b72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xcbeed9...e91d8e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xcf6381...d4736b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xddadb5...928660` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xdffeaf...b2992e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xe671d6...262947` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xef754b...c9cceb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xf916c4...c34395` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Fuji_Securing_2021-07.pdf](https://github.com/Fujicracy/fuji-protocol/blob/main/audits/Fuji_Securing_2021-07.pdf) | unknown | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 33 | n/a |
| [Fuji_TrailOfBits_2021-11.pdf](https://github.com/Fujicracy/fuji-protocol/blob/main/audits/Fuji_TrailOfBits_2021-11.pdf) | Trail of Bits | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 19 | n/a |
| [2022_11_Fujidao_Labs_OU.pdf](https://github.com/ComposableSecurity/.github/blob/main/reports/2022_11_Fujidao_Labs_OU.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |
| [DL audit link](https://hatsfinance.medium.com/final-review-fuji-finance-audit-competition-and-winners-announcement-dac2f3b4743e) | unknown | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13141] Fuji_Securing_2021-07.pdf — no match: No reason recorded
- [13142] Fuji_TrailOfBits_2021-11.pdf — no match: No reason recorded
- [13143] 2022_11_Fujidao_Labs_OU.pdf — no match: Extracted all contracts from the 'Agreed scope of tests' section for both rounds, plus the report date from the cover page.
- [26852] DL audit link — no match: The document is a blog post summarizing an audit competition, not a formal audit report. It mentions contract names like BaseVault.sol, BorrowingVault.sol, BaseRouter.sol, ConnextRouter, BalanceFlasher, FujiOracle, but these are not explicitly listed in a scope section. The date is the publication date of the blog post.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Fuji_Securing_2021-07.pdf | AaveFlashLoans | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | AlphaWhitelist | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | Controller | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | CreamFlashLoans | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | DyDxFlashLoans | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | Errors | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | Flasher | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | Fliquidator | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | FujiAdmin | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | FujiBaseERC1155 | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | FujiERC1155 | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | FujiMapping | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | IAlphaWhiteList | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | IFujiAdmin | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | IFujiERC1155 | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | IProvider | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | IVault | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | LibFlashLoan | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | LibUniERC20 | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | LibUniversalERC20 | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | LibVault | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | MathUtils | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | ProviderAave | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | ProviderCompound | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | ProviderDYDX | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | ProviderIronBank | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | ProviderLQTY | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | VaultBase | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | VaultETHDAI | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | VaultETHUSDC | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | VaultETHUSDT | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | VaultHarvester | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | WadRayMath | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | Claimable | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | ClaimableUpgradeable | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | Controller | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | DyDxFlashLoans | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | DyDxFlashloanBase | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | F1155Manager | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | FLiquidator | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | Flasher | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | FujiAdmin | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | FujiBaseERC1155 | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | FujiERC1155 | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | FujiMapping | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | FujiOracle | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | FujiVault | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | Harvester | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | Proxy | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | Swapper | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | VaultBaseUpgradeable | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | VaultControlUpgradeable | unmatched — not counted | — | — | no |
| 2022_11_Fujidao_Labs_OU.pdf | BaseRouter | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | BaseVault | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | PausableVault | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | VaultDeployer | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | CoreRoles | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | SystemAccessControl | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | Chief | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | FujiOracle | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | AddrMapper | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | AaveV2 | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | CompoundV2 | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | CompoundV3 | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | BorrowingVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | BorrowingVault | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | VaultPermissions | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | YieldVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | YieldVault | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | RebalancerManager | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | BaseFlasher | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | EIP712 | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | FlasherAaveV3 | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | LibActionBundler | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | LibConnextBundler | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | ConnextRouter | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | SimpleRouter | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | UniswapV2Swapper | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 185 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 78 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [13141] Fuji_Securing_2021-07.pdf
- [13142] Fuji_TrailOfBits_2021-11.pdf
- [13143] 2022_11_Fujidao_Labs_OU.pdf
- [26852] DL audit link

Fork inheritance lineage and inherited audits are included when available.
