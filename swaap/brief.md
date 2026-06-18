# Agentic Audit Brief: Swaap

⚠️ Lifecycle status: DECLINING - TVL dropped 57.3% over 90 days

## Project Overview

- Project: Swaap (`swaap`)
- Website: [https://www.swaap.finance](https://www.swaap.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T04:26:58.085Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-bcf3
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, mode, optimism, polygon
- Contract surface: 43 unique implementations (61 raw deployments)
- DeFi Llama TVL: $4,088,117.00
- On-chain TVL (included contracts): $3,809,615.57
- TVL by chain: Ethereum $3,350,078.07 | Base $398,761.58 | Bsc $36,855.69 | Optimism $23,919.12 | Linea $1.12

## Project Description

Swaap is an onchain trading and market-neutral AMM protocol. Its contract surface includes Vault contracts, SafeguardFactory registry/deployment contracts, SafeguardPool core logic, and related operational periphery such as oracle or adapter components where applicable. Claims that Swaap primarily operates yield-generation vault strategies should be removed or explicitly qualified unless supported by current documentation or audit scope.

### Architecture

The Swaap family consists of Vault contracts that hold user funds and execute strategies, and SafeguardFactory contracts that deploy and manage these vaults. Both contract types are deployed by two main deployer clusters and share the same infrastructure across multiple chains.

## Contract Surface Quality

- Indexed contracts: 174; live-surface contracts included: 61 (59 live, 2 unknown).
- Excluded by liveness: 89 inactive, 24 singleton, 0 uninitialized.
- Deployment units: 0/12 live.
- Detected codebases: balancer-v2
- Unverified dependencies: 1/1.

## Audit Coverage Summary

- Verified implementations audited: 1/4 (25.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 39
- Unique implementations: 43
- Raw deployments: 61
- Audits discovered: 7
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $3,809,615.57
- Latest audit: 2023-07 (stale)
- Staleness: 0 fresh, 0 aging, 6 stale, 1 unknown
- Tier 1 coverage: 25.0% (ChainSecurity)
- Note: This protocol is classified as [declining]. ASD of $3,809,615.57 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 25.0% | 2023-06 |
| Quantstamp | Tier 2 | 1 | 25.0% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SafeguardFactory | registry | ethereum | n/a | 7 deployments: ethereum [`0x03c01a...153b06`](./contracts/ethereum-1/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); ethereum `0xcc74bd...3369b8`; bsc `0xcc74bd...3369b8`; polygon `0xcc74bd...3369b8`; base `0xcc74bd...3369b8`; arbitrum `0xcc74bd...3369b8`; linea `0xcc74bd...3369b8` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | bsc | n/a | 9 deployments: ethereum `0xd315a9...c76293`; optimism `0xd315a9...c76293`; bsc [`0x03c01a...153b06`](./contracts/bsc-56/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); polygon `0xd315a9...c76293`; base [`0x03c01a...153b06`](./contracts/base-8453/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); mode `0xd315a9...c76293`; arbitrum `0xd315a9...c76293`; avalanche `0xd315a9...c76293`; linea `0xd315a9...c76293` | ⚠️ Unaudited |
| ProxyJoinViaAggregator | unknown | ethereum | n/a | [`0x9574c8...e88067`](./contracts/ethereum-1/0x9574c8a1653717d2da71269c17ac28e891e88067/) | ⚠️ Unaudited |
| SafeguardPool | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x4342b7...3c755b`](./contracts/ethereum-1/0x4342b77fe3417bcb09d0a4383301b0dc733c755b/); ethereum `0xa71f76...8e0b0b`; ethereum `0xfc57bc...b5e1b2`; base `0x7877b9...25e7da`; arbitrum `0xc54ba9...0084e6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (39)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x207063...073ebc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26ca21...e86c53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2768ba...252752` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33ddf3...a86b16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6330fd...3d1ad9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c759a...ca7a44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7646eb...498100` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8338ec...1b4be3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x890dd8...068210` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb02016...2f0f2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8fd1b...0e01a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb7eb3...1a5244` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7683a...9e01b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c8b5f...9a4442` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11683b...27b703` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54985c...9c0afd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dd640...efdbd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x962ed2...d69257` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4a42e...d50003` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8519b...5e1053` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8a5ff...0e8378` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x441dee...ddc9bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb02415...02dbbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe18072...a4b1ce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf496fa...b7491a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x022aa4...551132` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34ab4d...344607` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5258de...6a04ae` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x971c6a...777918` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3c636...56e548` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19cd92...f661d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x252571...95f32a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78993f...6c4679` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad1051...ae4fc4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbd561...8df14b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd180b...3cb9b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7a039a...077e5f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc74bd...3369b8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x69dbe8...543c4b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://www.chainsecurity.com/security-audit/swaap-finance-safeguardpool) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 0 | n/a |
| [download report](https://reports.chainsecurity.com/Swaap/ChainSecurity_Swaap_SafeguardPool_Audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | 6 | high |
| [DL audit link](https://runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts) | unknown | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [detailed report](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/swaap-audit-report.pdf) | Runtime Verification | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [quantstamp_SafeguardPool_audit.pdf](https://github.com/swaap-labs/swaap-v2-monorepo/blob/main/audits/quantstamp/quantstamp_SafeguardPool_audit.pdf) | Quantstamp | Audit | 2023-07 | stale | Direct | contract_name | 6 | high |
| [audit.pdf](https://github.com/swaap-labs/swaap-core-v1/blob/main/audits/chainsecurity/audit.pdf) | ChainSecurity | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [audit.pdf](https://github.com/swaap-labs/swaap-core-v1/blob/main/audits/runtime-verification/audit.pdf) | Runtime Verification | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x03c01a...153b06`](./contracts/bsc-56/0x03c01acae3d0173a93d819efdc832c7c4f153b06/) | Vault | core_logic | $3,809,615.57 | Verified native implementation with $3,809,615.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9574c8...e88067`](./contracts/ethereum-1/0x9574c8a1653717d2da71269c17ac28e891e88067/) | ProxyJoinViaAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4342b7...3c755b`](./contracts/ethereum-1/0x4342b77fe3417bcb09d0a4383301b0dc733c755b/) | SafeguardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=45

Zero-match audit list:

- [2589] DL audit link
- [2591] DL audit link
- [2592] detailed report
- [14916] audit.pdf
- [14917] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
