# Agentic Audit Brief: MVL Staking

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: MVL Staking (`mvl-staking`)
- Website: [https://mvlchain.io/](https://mvlchain.io/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-11T01:19:44.727Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-2b99
- Chains: ethereum
- Contract surface: 49 unique implementations (49 raw deployments)
- DeFi Llama TVL: $1,098,255.27
- On-chain TVL (included contracts): $38,089,085.81
- TVL by chain: Ethereum $38,089,085.81

## Project Description

MVL Staking/MVL Fi is the staking component of the MVL mobility ecosystem, spanning Ethereum and BNB/BSC deployments. It includes MVL single staking and LP/pool2 staking, with rewards tied to MVL ecosystem businesses and token incentives. The currently listed Ethereum MVLToken is token infrastructure, while the listed UniswapV2Pair should be treated as an external LP/pool2 asset or dependency rather than MVL-owned staking logic; the full staking, LP staking, BNB/BSC and bridge-related contract surface requires separate identification.

### Architecture

The MVL Staking family consists of a single product family where the MVLToken is the core asset staked, and the UniswapV2Pair provides liquidity. The unnamed supporting contracts likely handle staking logic, reward distribution, and access control, all sharing the MVL token as the central asset.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 47
- Unique implementations: 49
- Raw deployments: 49
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 50.0% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MVLToken | token | ethereum | [`0xa849ea...18dc71`](./contracts/ethereum-1/0xa849eaae994fb86afa73382e9bd88c2b6b18dc71/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TransparentUpgradeableProxy | proxy | ethereum | [`0x7f29fb...8f9fec`](./contracts/ethereum-1/0x7f29fba2e7543d7ad524e9c5db3522f6448f9fec/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (47)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x024cc7...8ca388` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0283c1...0b4f31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d9607...587ff6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x105323...fa1bad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1bdfaa...3adb1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d2084...6ce44b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x25ddd6...2106ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2918ef...58437d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x29d21e...445707` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2b116e...6792ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x34fda5...1434d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3fe455...fbbc78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4abc96...e06047` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5690a9...9327c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x590224...a7447d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x597369...9809c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5de946...a46b98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x612c7d...dadc6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6365d1...6b807b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x644353...bd7efc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x672397...239b31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6b6547...61bfc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x706b74...a6743b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x742ab0...f535cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x749fdc...cda2c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x791f3c...96d292` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x79a77d...984c15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x82bbdc...4c6459` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x879deb...1505aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8d5554...7a8051` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x909006...60ee42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x92ec27...6425df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa791ae...a402d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb56b01...e22d70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb87a16...d185ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb994f3...a8caa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbe8412...0680fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc0496c...d4abed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc1ac84...c2637f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd84f2...3a9306` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd3925b...4555b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd50090...5a4b7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe3c087...26360a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe700cc...2cda01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf608e5...878bdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7e591...b59153` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7eaec...9b6d80` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/ko/projects/mvl-mass-vehicle-ledger?utm_source=CMC&utm_campaign=AuditByCertiKLink) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://mvlchain.io/download.cm?tk=YToyOntpOjA7czoxMzoiNWViMWZlNmQ3MTliZSI7aToxO3M6MjI6ImYyMDIzMDYwMjNkOTVmZjE0MDdhZTciO30=) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [3212] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
