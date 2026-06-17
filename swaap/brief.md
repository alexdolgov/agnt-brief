# Agentic Audit Brief: Swaap

⚠️ Lifecycle status: DECLINING - TVL dropped 57.3% over 90 days

## Project Overview

- Project: Swaap (`swaap`)
- Website: [https://www.swaap.finance](https://www.swaap.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:01:00.706Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, mode, optimism, polygon
- Contract surface: 74 unique implementations (108 raw deployments)
- DeFi Llama TVL: $4,088,117.00
- On-chain TVL (included contracts): $3,809,615.57
- TVL by chain: Ethereum $3,350,078.07 | Base $398,761.58 | Bsc $36,855.69 | Optimism $23,919.12 | Linea $1.12

## Project Description

Swaap is an onchain trading and market-neutral AMM protocol. Its contract surface includes Vault contracts, SafeguardFactory registry/deployment contracts, SafeguardPool core logic, and related operational periphery such as oracle or adapter components where applicable. Claims that Swaap primarily operates yield-generation vault strategies should be removed or explicitly qualified unless supported by current documentation or audit scope.

### Architecture

The Swaap family consists of Vault contracts that hold user funds and execute strategies, and SafeguardFactory contracts that deploy and manage these vaults. Both contract types are deployed by two main deployer clusters and share the same infrastructure across multiple chains.

## Contract Surface Quality

- Indexed contracts: 177; live-surface contracts included: 108 (25 live, 83 unknown).
- Excluded by liveness: 45 inactive, 24 singleton, 0 uninitialized.
- Deployment units: 0/12 live.
- Detected codebases: balancer-v2
- Unverified dependencies: 1/1.

## Audit Coverage Summary

- Verified implementations audited: 2/6 (33.3%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 1
- Unverified implementations: 68
- Unique implementations: 74
- Raw deployments: 108
- Audits discovered: 7
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $3,809,615.57
- Latest audit: 2023-07 (stale)
- Staleness: 0 fresh, 0 aging, 6 stale, 1 unknown
- Tier 1 coverage: 33.3% (ChainSecurity)
- Note: This protocol is classified as [declining]. ASD of $3,809,615.57 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 2 | 33.3% | 2023-06 |
| Quantstamp | Tier 2 | 2 | 33.3% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SafeguardFactory | registry | ethereum | n/a | 12 deployments: ethereum [`0x03c01a...153b06`](./contracts/ethereum-1/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); ethereum `0xcc74bd...3369b8`; bsc `0x3f255a...13e3e2`; polygon [`0x03c01a...153b06`](./contracts/polygon-137/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); polygon `0xcc74bd...3369b8`; base `0xcc74bd...3369b8`; mode [`0x03c01a...153b06`](./contracts/mode-34443/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); mode `0x33ddf3...a86b16`; mode `0xcc74bd...3369b8`; arbitrum [`0x03c01a...153b06`](./contracts/arbitrum-42161/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); arbitrum `0xcc74bd...3369b8`; linea `0xcc74bd...3369b8` | ✅ Audited |
| SafeguardPool | core_logic | arbitrum | n/a | 5 deployments: arbitrum [`0x309854...4b8b39`](./contracts/arbitrum-42161/0x30985450cb225ec53fffb013171cadf6264b8b39/); arbitrum `0x46d0c6...d32796`; arbitrum `0x55e569...d1ca56`; arbitrum `0x981348...60137a`; arbitrum `0xbc0cb9...599c1d` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | bsc | n/a | 10 deployments: ethereum `0xd315a9...c76293`; optimism `0xd315a9...c76293`; bsc [`0x03c01a...153b06`](./contracts/bsc-56/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); bsc `0xd315a9...c76293`; polygon `0xd315a9...c76293`; base [`0x03c01a...153b06`](./contracts/base-8453/0x03c01acae3d0173a93d819efdc832c7c4f153b06/); mode `0xd315a9...c76293`; arbitrum `0xd315a9...c76293`; avalanche `0xd315a9...c76293`; linea `0xd315a9...c76293` | ⚠️ Unaudited |
| Authorizer | unknown | bsc | n/a | 6 deployments: bsc [`0xca19ed...cc123c`](./contracts/bsc-56/0xca19ed3182e6e591207e959de633a14825cc123c/); polygon [`0xca19ed...cc123c`](./contracts/polygon-137/0xca19ed3182e6e591207e959de633a14825cc123c/); base `0xd315a9...c76293`; mode [`0xca19ed...cc123c`](./contracts/mode-34443/0xca19ed3182e6e591207e959de633a14825cc123c/); arbitrum [`0xca19ed...cc123c`](./contracts/arbitrum-42161/0xca19ed3182e6e591207e959de633a14825cc123c/); linea [`0xca19ed...cc123c`](./contracts/linea-59144/0xca19ed3182e6e591207e959de633a14825cc123c/) | ⚠️ Unaudited |
| ProxyJoinViaAggregator | unknown | arbitrum | n/a | 4 deployments: ethereum `0x9574c8...e88067`; polygon `0x9574c8...e88067`; mode `0xbc0cb9...599c1d`; arbitrum [`0x53675f...438ad3`](./contracts/arbitrum-42161/0x53675f3072b97ef652651d863b1cef5203438ad3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConstantPriceOracle | unknown | bsc | n/a | 3 deployments: bsc [`0x11683b...27b703`](./contracts/bsc-56/0x11683b8d9123dbb319333fac25167da43c27b703/); base `0x943c89...d19d88`; arbitrum `0x5dd640...efdbd3` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (68)

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
| UnnamedContract | unknown | bsc | n/a | `0x08920a...2c7104` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c8b5f...9a4442` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54985c...9c0afd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dd640...efdbd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x825c9b...840f2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x916f00...cb96e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x943c89...d19d88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x962ed2...d69257` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4a42e...d50003` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8519b...5e1053` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8a5ff...0e8378` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6ee0f...ff5506` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x16e13f...0dc2c7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x37ae22...5149d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x441dee...ddc9bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb02415...02dbbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe18072...a4b1ce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf383ca...809564` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf496fa...b7491a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x022aa4...551132` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x11683b...27b703` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x142e5f...e4dedb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e6354...30d2e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x252571...95f32a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29fbaf...f8108b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x307d2a...8b0080` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34ab4d...344607` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x372861...1c1e87` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x48b8ae...eb6180` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5258de...6a04ae` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60abcc...d353ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x971c6a...777918` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x973105...50186c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3c636...56e548` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb20026...5acffa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb45f9e...8674d5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec580d...7ab4cf` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xbc40a1...83263a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11683b...27b703` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19cd92...f661d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x252571...95f32a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x307d2a...8b0080` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x372995...4d3205` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42fff9...4df59b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x441dee...ddc9bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7162ae...cd068f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78993f...6c4679` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad1051...ae4fc4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb62286...75cd39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbd561...8df14b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd180b...3cb9b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe331b9...d702dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7a039a...077e5f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc74bd...3369b8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x69dbe8...543c4b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.pdf](https://github.com/swaap-labs/swaap-core-v1/blob/main/audits/chainsecurity/audit.pdf) | ChainSecurity | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [audit.pdf](https://github.com/swaap-labs/swaap-core-v1/blob/main/audits/runtime-verification/audit.pdf) | Runtime Verification | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://www.chainsecurity.com/security-audit/swaap-finance-safeguardpool) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 5 | low |
| [download report](https://reports.chainsecurity.com/Swaap/ChainSecurity_Swaap_SafeguardPool_Audit.pdf) | ChainSecurity | Audit | 2023-06 | stale | Direct | contract_name | 17 | high |
| [DL audit link](https://runtimeverification.com/blog/runtime-verification-audits-swaap-s-pool-smart-contracts) | unknown | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [detailed report](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/swaap-audit-report.pdf) | Runtime Verification | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [quantstamp_SafeguardPool_audit.pdf](https://github.com/swaap-labs/swaap-v2-monorepo/blob/main/audits/quantstamp/quantstamp_SafeguardPool_audit.pdf) | Quantstamp | Audit | 2023-07 | stale | Direct | contract_name | 17 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x03c01a...153b06`](./contracts/bsc-56/0x03c01acae3d0173a93d819efdc832c7c4f153b06/) | Vault | core_logic | $3,809,615.57 | Verified native implementation with $3,809,615.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xca19ed...cc123c`](./contracts/bsc-56/0xca19ed3182e6e591207e959de633a14825cc123c/) | Authorizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x53675f...438ad3`](./contracts/arbitrum-42161/0x53675f3072b97ef652651d863b1cef5203438ad3/) | ProxyJoinViaAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, low=1
- Match method counts: extraction_exact=45

Zero-match audit list:

- [2587] audit.pdf
- [2588] audit.pdf
- [2591] DL audit link
- [2592] detailed report

Fork inheritance lineage and inherited audits are included when available.
