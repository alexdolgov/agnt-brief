# Agentic Audit Brief: MochiFi

## Project Overview

- Project: MochiFi (`mochifi`)
- Website: [https://mochi.fi](https://mochi.fi)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:28.210Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: ethereum
- Contract surface: 26 unique implementations (26 raw deployments)
- DeFi Llama TVL: $391,973.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 26 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 21 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 26 (26 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/26 (0.0%)
- Deployed-live implementations: 26 of 26 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/26
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 26
- Raw deployments: 26
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DutchAuctionLiquidator | unknown | ethereum | n/a | [`0x39ad80...617ff6`](./contracts/ethereum-1/0x39ad803d61ecabc64f32edaae97c2fffb0617ff6/) | ⚠️ Unaudited |
| FixedPriceAdapter | unknown | ethereum | n/a | [`0x0e0f43...3081f3`](./contracts/ethereum-1/0x0e0f438482ce5ee70d859d1f463c9b4d323081f3/) | ⚠️ Unaudited |
| gCRV | unknown | ethereum | n/a | [`0x06f05a...6c9ad6`](./contracts/ethereum-1/0x06f05a658b88d6d324d84a5da13d549ea06c9ad6/) | ⚠️ Unaudited |
| MinterV0 | unknown | ethereum | n/a | [`0x595df7...85ebda`](./contracts/ethereum-1/0x595df7d8f414f485303c4913947686117185ebda/) | ⚠️ Unaudited |
| MinterV1 | unknown | ethereum | n/a | [`0x9cadb2...7dd6b4`](./contracts/ethereum-1/0x9cadb2c8735a120c4d3292dca2b7f03d5f7dd6b4/) | ⚠️ Unaudited |
| MochiCSSRv0 | unknown | ethereum | n/a | [`0x766f7f...dad836`](./contracts/ethereum-1/0x766f7f7e249dbd0003916f52b2efe1ac44dad836/) | ⚠️ Unaudited |
| MochiEngine | unknown | ethereum | n/a | [`0x860e47...55be2f`](./contracts/ethereum-1/0x860e47e6d6f4a6bcaaddfc7f17f772d2ab55be2f/) | ⚠️ Unaudited |
| MochiInu | unknown | ethereum | n/a | [`0x60ef10...605fe5`](./contracts/ethereum-1/0x60ef10edff6d600cd91caeca04caed2a2e605fe5/) | ⚠️ Unaudited |
| MochiNFT | unknown | ethereum | n/a | [`0x734b12...39ee69`](./contracts/ethereum-1/0x734b12847980580037b6cca8ee0a6c5da339ee69/) | ⚠️ Unaudited |
| MochiNFTEngine | unknown | ethereum | n/a | [`0x091a84...d24115`](./contracts/ethereum-1/0x091a8460e20761bb3ced9bc3a0de62aab3d24115/) | ⚠️ Unaudited |
| MochiNFTVault | unknown | ethereum | n/a | [`0xaaf613...068774`](./contracts/ethereum-1/0xaaf6138073e93c18a190295916f38b6197068774/) | ⚠️ Unaudited |
| MochiNFTVaultFactory | unknown | ethereum | n/a | [`0x9cc1f0...a656f0`](./contracts/ethereum-1/0x9cc1f0b9c4ce1b72a2581fd4ea3b71a9a2a656f0/) | ⚠️ Unaudited |
| MochiPositionNFT | unknown | ethereum | n/a | [`0x6f90fe...cc35c3`](./contracts/ethereum-1/0x6f90fea999b0b823bacfc57bbf47477638cc35c3/) | ⚠️ Unaudited |
| MochiProfileV0 | unknown | ethereum | n/a | [`0x083c0c...2f457c`](./contracts/ethereum-1/0x083c0c100426ab4758435180c836ca11be2f457c/) | ⚠️ Unaudited |
| MochiStaking | unknown | ethereum | n/a | [`0x0722ac...4526f2`](./contracts/ethereum-1/0x0722aca64623633924b35b96ce6d8548fe4526f2/) | ⚠️ Unaudited |
| MochiVault | unknown | ethereum | n/a | [`0x3e9950...4b6f8d`](./contracts/ethereum-1/0x3e99506fa2643368943065aac0495437834b6f8d/) | ⚠️ Unaudited |
| MochiVaultFactory | unknown | ethereum | n/a | [`0x960760...0367ef`](./contracts/ethereum-1/0x96076026ae262f1d6a9b88be49bba0e8a80367ef/) | ⚠️ Unaudited |
| NoDiscountProfile | unknown | ethereum | n/a | [`0x5005bd...5dcb34`](./contracts/ethereum-1/0x5005bd0fe21d2ed57df4dbbbc159a6734d5dcb34/) | ⚠️ Unaudited |
| NoMochiFeePool | unknown | ethereum | n/a | [`0x5721cb...298bfe`](./contracts/ethereum-1/0x5721cbae26de32c2fe9b729f32762c6ef4298bfe/) | ⚠️ Unaudited |
| NoMochiReferralFeePool | unknown | ethereum | n/a | [`0x727f41...486546`](./contracts/ethereum-1/0x727f413331c6841458ba27c4a27c74bc40486546/) | ⚠️ Unaudited |
| Pauser | unknown | ethereum | n/a | [`0x5f362c...a02cf8`](./contracts/ethereum-1/0x5f362c05ef7f631d99e81e72cec917e86ca02cf8/) | ⚠️ Unaudited |
| PegRecoveryModule | unknown | ethereum | n/a | [`0x3084ba...0976da`](./contracts/ethereum-1/0x3084ba03b49a912b40fa0ec8e20b777a430976da/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x9aeb81...4c3d47`](./contracts/ethereum-1/0x9aeb811b63a58e85e7b88d52013726bab04c3d47/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x9be3e3...ca5dce`](./contracts/ethereum-1/0x9be3e334582466d378f3268f60689c26c3ca5dce/) | ⚠️ Unaudited |
| USDM | unknown | ethereum | n/a | [`0x31d4eb...6f0ba9`](./contracts/ethereum-1/0x31d4eb09a216e181ec8a43ce79226a487d6f0ba9/) | ⚠️ Unaudited |
| wsOHMAdapter | unknown | ethereum | n/a | [`0x7d3d4c...05f81a`](./contracts/ethereum-1/0x7d3d4c0dac3ce8d41b909b13919638f89505f81a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Mochi Audit.pdf](https://2168743637-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MVHdpDdG_VbukdOb9DJ%2F-MhTlDaFRcJAtXOad6tq%2F-MhTlcFC40_BApv4BanQ%2FMochi%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Mochi CSSR Audit.pdf](https://2168743637-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MVHdpDdG_VbukdOb9DJ%2F-MhTlDaFRcJAtXOad6tq%2F-MhTleNOhp_qgDkXO7Xs%2FMochi%20CSSR%20Audit.pdf) | CSSR | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24139] Mochi Audit.pdf
- [24140] Mochi CSSR Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
