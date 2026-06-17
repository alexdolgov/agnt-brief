# Agentic Audit Brief: MVL Staking

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: MVL Staking (`mvl-staking`)
- Website: [https://mvlchain.io/](https://mvlchain.io/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:40.214Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $863,711.08
- On-chain TVL (included contracts): $38,089,085.81
- TVL by chain: Ethereum $38,089,085.81

## Project Description

MVL Staking/MVL Fi is the staking component of the MVL mobility ecosystem, spanning Ethereum and BNB/BSC deployments. It includes MVL single staking and LP/pool2 staking, with rewards tied to MVL ecosystem businesses and token incentives. The currently listed Ethereum MVLToken is token infrastructure, while the listed UniswapV2Pair should be treated as an external LP/pool2 asset or dependency rather than MVL-owned staking logic; the full staking, LP staking, BNB/BSC and bridge-related contract surface requires separate identification.

### Architecture

The MVL Staking family consists of a single product family where the MVLToken is the core asset staked, and the UniswapV2Pair provides liquidity. The unnamed supporting contracts likely handle staking logic, reward distribution, and access control, all sharing the MVL token as the central asset.

## Contract Surface Quality

- Indexed contracts: 49; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 43 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 100.0% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MVLToken | token | ethereum | n/a | [`0xa849ea...18dc71`](./contracts/ethereum-1/0xa849eaae994fb86afa73382e9bd88c2b6b18dc71/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x742ab0...f535cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0496c...d4abed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7eaec...9b6d80` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/ko/projects/mvl-mass-vehicle-ledger?utm_source=CMC&utm_campaign=AuditByCertiKLink) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://mvlchain.io/download.cm?tk=YToyOntpOjA7czoxMzoiNWViMWZlNmQ3MTliZSI7aToxO3M6MjI6ImYyMDIzMDYwMjNkOTVmZjE0MDdhZTciO30=) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://dataseoul.s3.ap-northeast-2.amazonaws.com/upload/S20210416bccc442510498/59e51efffe348.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [3212] Rendered PDF capture
- [11971] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
