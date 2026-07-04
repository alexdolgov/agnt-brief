# Agentic Audit Brief: DTX

## Project Overview

- Project: DTX (`dtx`)
- Website: [https://dtx.trade/](https://dtx.trade/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.283Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: blast
- Contract surface: 50 unique implementations (50 raw deployments)
- DeFi Llama TVL: $5,181.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DTX is a decentralized derivatives and spot trading protocol on Blast, enabling users to trade perpetual futures and swap tokens through a unified liquidity and risk engine.

### Architecture

All contracts belong to a single product family, DTX Derivatives, with core contracts handling trading, liquidity, and risk, while supporting contracts likely provide auxiliary services such as configuration or access control, all deployed by two distinct deployer clusters.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 50 (0 live, 50 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 50 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 50
- Raw deployments: 50
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | blast | n/a | `0x037a16...7726db` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x045eca...ae2cff` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0a08d6...94597c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0d862c...816736` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0e5b7d...a7828f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x11f2ab...8be145` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x123b93...e0b21d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x151f1b...b69cf9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x19d12a...015ae8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1efc0f...673539` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x22fd96...3d46e6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x296711...379b27` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x33f8da...fcd383` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x34b686...eab0e8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x38822f...940d30` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3a730e...ee0e70` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3d4621...f239db` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3d9379...a71f07` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4baaae...7dcb36` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4dd3c4...5f44d7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5069fc...b6c026` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x56e0f6...9c420e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5f6293...4481cf` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x60ad78...a2f152` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x642b83...7d4ca5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x65621a...dd200a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x69633b...9414c2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7016c6...bbcb79` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x71704e...d6d03f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7e3b1f...8bfb02` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x802b1f...ca450f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x940e31...789cf0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9adf2b...46d1d8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa020c5...716f14` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa75e60...e97904` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xabcc05...f73c7c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb18443...39a48e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb82506...58709d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xba95fc...605801` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbaa961...03c265` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc30508...6b301c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xca7525...b8d94b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd108fd...a6b18d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd49b76...833a2a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd5b12c...55f884` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xde0eec...0e8d27` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe97d34...362d8f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf9ee6d...5712d5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfbc414...e56ad9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xff64d8...5c8ec0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SlowMist Audit Report - DTX Protocol_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20DTX%20Protocol_en-us.pdf) | SlowMist | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13051] SlowMist Audit Report - DTX Protocol_en-us.pdf

Fork inheritance lineage and inherited audits are included when available.
