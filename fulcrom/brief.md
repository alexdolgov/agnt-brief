# Agentic Audit Brief: Fulcrom

## Project Overview

- Project: Fulcrom (`fulcrom`)
- Website: [https://fulcrom.finance](https://fulcrom.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:17.212Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: cronos, zksync-era
- Contract surface: 19 unique implementations (56 raw deployments)
- DeFi Llama TVL: $10,216,452.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Fulcrom is a decentralized perpetual/leverage trading protocol with FUL and FLP staking and liquidity products. Its current chain presence includes Cronos, zkSync Era, and Cronos zkEVM; the indexed contract surface should be understood as covering only the listed contracts unless Cronos zkEVM contracts are added separately. Unsupported claims that Fulcrom provides general spot trading through a Fulcrom-owned AMM should be removed unless independently verified contracts and documentation are added.

### Architecture

The Fulcrom AMM and Perps families rely on the shared Fulcrom Core infrastructure for vaults, tokens, and oracles. The Cronos and zkSync Era families provide chain-specific adapters that integrate the core protocol with each blockchain.

## Contract Surface Quality

- Indexed contracts: 56; live-surface contracts included: 56 (0 live, 56 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 19
- Raw deployments: 56
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | 38 deployments: cronos `0x09d7c9...dfe20f`; cronos `0x115497...135e4c`; cronos `0x133b7f...657ae1`; cronos `0x1c29ae...3b0045`; cronos `0x1db915...876af7`; cronos `0x2275b5...f0691c`; cronos `0x257147...26ce8b`; cronos `0x27e51d...f023f6`; cronos `0x27fb69...c3f940`; cronos `0x2a6289...816652`; cronos `0x2c2e10...ee1bda`; cronos `0x3881df...2de177`; cronos `0x390340...51e0ef`; cronos `0x54a16d...c74e6e`; cronos `0x614810...83891f`; cronos `0x629a8d...22baaa`; cronos `0x68f8a5...3c9d40`; cronos `0x6fcfd3...52507e`; cronos `0x725c5a...3abccb`; cronos `0x8268fe...f77022`; cronos `0x83afb1...f0013a`; cronos `0x880a34...daf3ae`; cronos `0x8c7ef3...876098`; cronos `0x8fbd95...a7f6f7`; cronos `0x963c77...588c2e`; cronos `0xa461fa...98f2b0`; cronos `0xa8bea4...cd0446`; cronos `0xcc46b7...2e0c9a`; cronos `0xd2985b...ae13fd`; cronos `0xd565cb...069934`; cronos `0xd8ddc6...51bc4d`; cronos `0xd996be...63148a`; cronos `0xe00370...690567`; cronos `0xe006ab...59fa15`; cronos `0xe789d5...7ef92d`; cronos `0xf5027e...924050`; cronos `0xfc399d...60db16`; cronos `0xff7bba...4981f4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x022b94...a17e3e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x0cf436...105992` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x1886df...44b982` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x2fb401...6ef561` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4bb06e...8382ef` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4bc463...781e3f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4d9193...118a33` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x76df63...524c16` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x850fe8...5e3926` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x873534...38e89f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x88ca1f...19761b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x93140f...51b325` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x99819f...0243d6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xc1088d...698464` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xdddf22...162075` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe59385...097a6e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe6c1d5...d31e15` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf2220a...f2491f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SlowMist Audit Report - Fulcrom.pdf](https://1647136421-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FPkF01syfy7zFMzhDL9cH%2Fuploads%2FxWwYAjVNBOSkUS4qqV1u%2FSlowMist%20Audit%20Report%20-%20Fulcrom.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20333] SlowMist Audit Report - Fulcrom.pdf

Fork inheritance lineage and inherited audits are included when available.
