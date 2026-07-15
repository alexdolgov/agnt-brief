# Agentic Audit Brief: Scroll Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 73 across 11 audit(s)
- Eligible audit results: 42 (11 matched; 31 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Scroll Bridge (`scroll-bridge`)
- Website: [https://portal.scroll.io/bridge](https://portal.scroll.io/bridge)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, scroll, sepolia
- Contract surface: 56 unique implementations (56 raw deployments)
- Coverage basis: 8/9 confirmed own live verified implementations (88.9%); conservative 88.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $34,190,403.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Scroll Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across ethereum, scroll, sepolia. Structural roles: 20 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: unclassified (20)
- Contract kinds: contract (20)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d7e90...39af9b`, chain 534352)
- UnnamedContract (`0x13fbe0...55998a`, chain 534352)
- UnnamedContract (`0x247969...bde548`, chain 534352)
- UnnamedContract (`0x31c994...5bbb37`, chain 534352)
- UnnamedContract (`0x3da0bf...211695`, chain 534352)
- UnnamedContract (`0x4c0926...a19d79`, chain 534352)
- UnnamedContract (`0x50c7d3...cbb16a`, chain 534352)
- UnnamedContract (`0x62597c...263bcc`, chain 534352)
- UnnamedContract (`0x6260af...21554b`, chain 534352)
- UnnamedContract (`0x64ccbe...067988`, chain 534352)
- UnnamedContract (`0x65d123...e88a13`, chain 534352)
- UnnamedContract (`0x6774bc...d8b367`, chain 534352)
- UnnamedContract (`0x6ea73e...dacdf0`, chain 534352)
- UnnamedContract (`0x7003e7...391cf9`, chain 534352)
- UnnamedContract (`0x781e90...969cbc`, chain 534352)
- UnnamedContract (`0x7ac440...a9d4fe`, chain 534352)
- UnnamedContract (`0x7bc08e...e80582`, chain 534352)
- UnnamedContract (`0x7f2b8c...e3e905`, chain 534352)
- UnnamedContract (`0x8a54a2...e9866d`, chain 534352)
- UnnamedContract (`0xa5df85...c83146`, chain 534352)
- UnnamedContract (`0xb2b10a...04b6ff`, chain 534352)
- UnnamedContract (`0xb94f7f...d975b6`, chain 534352)
- UnnamedContract (`0xd8a791...b3f8f9`, chain 534352)
- UnnamedContract (`0xe2b479...8f447a`, chain 534352)
- UnnamedContract (`0xef27a5...ba77ac`, chain 534352)
- UnnamedContract (`0xf0b229...2de763`, chain 534352)
- UnnamedContract (`0xf8b137...e41fd6`, chain 534352)

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (10 live, 10 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 37/66 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/9 (88.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 36 own, 20 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Deployed-live implementations: 37 of 56 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 8/9
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 56
- Raw deployments: 56
- Audits discovered: 41 (41 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 6 aging, 33 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 88.9% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 8 | 88.9% | 2024-05 |
| unknown | Tier 2 | 8 | 88.9% | 2025-11 |
| Zellic | Tier 2 | 8 | 88.9% | 2024-01 |
| Trails of Bits | Tier 2 | 1 | 11.1% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1CustomERC20Gateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392394 | `0xb2b10a...04b6ff` | ✅ Audited |
| L1ERC1155Gateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392398 | `0xb94f7f...d975b6` | ✅ Audited |
| L1ERC721Gateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392396 | `0x6260af...21554b` | ✅ Audited |
| L1ETHGateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392392 | `0x7f2b8c...e3e905` | ✅ Audited |
| L1GatewayRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392397 | `0xf8b137...e41fd6` | ✅ Audited |
| L1ScrollMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392395 | `0x6774bc...d8b367` | ✅ Audited |
| L1StandardERC20Gateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392400 | `0xd8a791...b3f8f9` | ✅ Audited |
| L1WETHGateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392399 | `0x7ac440...a9d4fe` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1MessageQueueV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392393 | `0x56971d...c2d18a` | ⚠️ Unaudited |
| L1MessageQueueWithGasPriceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-392391 | `0x0d7e90...39af9b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (46)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392354 | `0x0d7e90...39af9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392355 | `0x13fbe0...55998a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392357 | `0x247969...bde548` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392358 | `0x31c994...5bbb37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392359 | `0x3da0bf...211695` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392361 | `0x4c0926...a19d79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392362 | `0x50c7d3...cbb16a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392364 | `0x62597c...263bcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392365 | `0x6260af...21554b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392366 | `0x64ccbe...067988` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392367 | `0x65d123...e88a13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392368 | `0x6774bc...d8b367` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392369 | `0x6ea73e...dacdf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392370 | `0x7003e7...391cf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392371 | `0x781e90...969cbc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392372 | `0x7ac440...a9d4fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392373 | `0x7bc08e...e80582` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392374 | `0x7f2b8c...e3e905` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392375 | `0x8a54a2...e9866d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392379 | `0xa5df85...c83146` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392381 | `0xb2b10a...04b6ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392383 | `0xb94f7f...d975b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392385 | `0xd8a791...b3f8f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392387 | `0xe2b479...8f447a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392388 | `0xef27a5...ba77ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392389 | `0xf0b229...2de763` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392390 | `0xf8b137...e41fd6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392334 | `0x058dec...f3eacf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392335 | `0x13fbe0...55998a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392336 | `0x179b94...785c97` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sepolia | unit-392337 | `0x247969...bde548` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392338 | `0x31c994...5bbb37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392339 | `0x3da0bf...211695` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392340 | `0x481b20...81ea27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392341 | `0x50c7d3...cbb16a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392342 | `0x65d123...e88a13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392343 | `0x8a54a2...e9866d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392344 | `0x91e8ad...c1101c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392345 | `0x9ad3c5...171230` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392346 | `0xa0673e...c5f19f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392347 | `0xa5df85...c83146` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392348 | `0xadca91...ef9582` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392349 | `0xba50f5...6e603d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392350 | `0xe17c9b...4612a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392351 | `0xef27a5...ba77ac` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-392352 | `0xf0b229...2de763` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [202307 Scroll Layer 1 Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202307%20Scroll%20Layer%201%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-07 | stale | Direct | contract_name | matched | 8 | 8 | 0 | 41 | high |
| [202307 Scroll Layer 2 Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202307%20Scroll%20Layer%202%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf (also discovered via alternate URL)](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202308%20Scroll%20GasSwap,%20Multiple%20Verifier,%20Wrapped%20Ether%20and%20Diff%20Final%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-08 | stale | Direct | contract_name | matched | 8 | 8 | 0 | 37 | high |
| [202309 ScrollOwner and Rate Limiter Audit.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202309%20ScrollOwner%20and%20Rate%20Limiter%20Audit.pdf) | OpenZeppelin | Audit | 2023-09 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 14 | high |
| [202309 Scroll USDC Gateway Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202309%20Scroll%20USDC%20Gateway%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [202309 Scroll Diff Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202309%20Scroll%20Diff%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20-%20Bridge%20Gas%20Optimizations%20Audit%20Report%20(Feb%202024).pdf) | OpenZeppelin | Audit | 2024-02 | stale | Direct | contract_name | matched | 8 | 8 | 0 | 23 | high |
| [blog.openzeppelin.com/scroll-batch-token-bridge-audit](https://blog.openzeppelin.com/scroll-batch-token-bridge-audit) | OpenZeppelin | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [blog.openzeppelin.com/scroll-eip-4844-support-audit](https://blog.openzeppelin.com/scroll-eip-4844-support-audit) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Scroll - 05.26.23 Zellic Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20-%2005.26.23%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | contract_name | matched | 8 | 8 | 0 | 40 | high |
| [Scroll - 09.27.23 Zellic Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20-%2009.27.23%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-09 | stale | Direct | contract_name | matched | 6 | 6 | 0 | 16 | high |
| [Scroll Lido Gateway - Zellic Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20Lido%20Gateway%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Manual audit seed](https://docs.scroll.io/en/technology/security/audits-and-bug-bounty) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2023-04-scroll-zkEVM-wave1-securityreview (1).pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2023-04-scroll-zkEVM-wave1-securityreview%20(1).pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 40 | high |
| [2023-08-scroll-zkEVM-wave2-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2023-08-scroll-zkEVM-wave2-securityreview.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [2023-09-scroll-zkEVM-wave3-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2023-09-scroll-zkEVM-wave3-securityreview.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2024-04-scroll-4844-blob-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2024-04-scroll-4844-blob-securityreview.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Scroll zkEVM - Part 1 - Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/Scroll%20zkEVM%20-%20Part%201%20-%20Audit%20Report.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Scroll zkEVM - Part 2 - Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/Scroll%20zkEVM%20-%20Part%202%20-%20Audit%20Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [2023-07-scroll-zktrie-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Node%20implementation/2023-07-scroll-zktrie-securityreview.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2023-08-scrollL2geth-initial-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Node%20implementation/2023-08-scrollL2geth-initial-securityreview.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2023-08-scrollL2geth-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Node%20implementation/2023-08-scrollL2geth-securityreview.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Manual audit seed](https://www.openzeppelin.com/news/scroll-eip-4844-support-audit) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Manual audit seed](https://www.openzeppelin.com/news/scroll-batch-token-bridge-audit) | OpenZeppelin | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [OpenZeppelin](https://www.openzeppelin.com/news/scroll-zktrieverifier-audit) | OpenZeppelin | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2025-04-scroll-euclid-phase1-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-04-scroll-euclid-phase1-securityreview.pdf) | Scroll (internal) | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2025-04-scroll-euclid-phase2-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-04-scroll-euclid-phase2-securityreview.pdf) | Scroll (internal) | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Feynman-Upgrade-Trails-of-Bits.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Feynman%20Upgrade/Feynman-Upgrade-Trails-of-Bits.pdf) | Trails of Bits | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 6 | high |
| [Internal-Audit-Scroll-Final-Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Feynman%20Upgrade/Internal-Audit-Scroll-Final-Report.pdf) | Scroll (Internal) | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [202402 Bridge Gas Optimizations Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202402%20Bridge%20Gas%20Optimizations%20Audit%20Report.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | matched | 8 | 8 | 0 | 23 | high |
| [Batch Token Bridge Audit-open-access.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Batch%20Token%20Bridge%20Audit-open-access.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [EIP-4844 Support Audit-open-access.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/EIP-4844%20Support%20Audit-open-access.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Scroll ZKTrieVerifier Audit-open-access.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20ZKTrieVerifier%20Audit-open-access.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2025-03-trailofbits-euclid-phase1-letter-of-attestation.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-03-trailofbits-euclid-phase1-letter-of-attestation.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-03-trailofbits-euclid-phase2-letter-of-attestation.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-03-trailofbits-euclid-phase2-letter-of-attestation.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Galileo_Final_Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Galileo%20Upgrade/Galileo_Final_Report.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [1](https://www.openzeppelin.com/news/scroll-phase-1-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | matched | 8 | 8 | 0 | 41 | high |
| [2](https://www.openzeppelin.com/news/scroll-phase-2-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [3](https://www.openzeppelin.com/news/scroll-gasswap-multiple-verifier-wrapped-ether-and-diff-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | matched | 8 | 8 | 0 | 37 | high |
| [4](https://www.openzeppelin.com/news/scrollowner-and-rate-limiter-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [5](https://www.openzeppelin.com/news/scroll-usdc-gateway-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21267] 202307 Scroll Layer 1 Audit Report.pdf — matched: Extracted all contracts from the scope section and file tree listing. Audit date from cover page: 'July 18, 2023'.
- [21268] 202307 Scroll Layer 2 Audit Report.pdf — no match: Extracted all contracts from the Scope section file listing. Audit date from cover page: July 21, 2023.
- [21269] 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf — matched: Extracted contract names from the Scope section and diff audit file listings. The audit date is from the header: 'August 31, 2023'.
- [21270] 202309 ScrollOwner and Rate Limiter Audit.pdf — matched: Scope section lists 5 contracts for main audit and 11 contracts for diff audit. All extracted.
- [21271] 202309 Scroll USDC Gateway Audit Report.pdf — no match: Extracted 9 contracts from scope section and file paths. Audit date from title.
- [21272] 202309 Scroll Diff Audit Report.pdf — no match: Extracted 5 contracts from the scope section. Audit date from cover page.
- [21273] Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf — matched: All contracts listed in the Scope section of the audit report.
- [21274] blog.openzeppelin.com/scroll-batch-token-bridge-audit — no match: Scope section explicitly lists three files in contracts/src/batch-bridge/ directory. Audit date is May 28, 2024 from the title area.
- [21275] blog.openzeppelin.com/scroll-eip-4844-support-audit — no match: All contracts explicitly listed in scope section of the audit report.
- [21276] Scroll - 05.26.23 Zellic Audit Report.pdf — matched: All contracts listed in the scope section of the report. Audit date from cover page: May 26, 2023.
- [21277] Scroll - 09.27.23 Zellic Audit Report.pdf — matched: All contracts listed in the scope table on page 7 of the report.
- [21278] Scroll Lido Gateway - Zellic Audit Report.pdf — no match: All six contracts listed in the 'Programs' list under Scope section (page 9) are extracted. Audit date is from the cover page: January 23, 2024.
- [24406] Manual audit seed — no match: The document is a general overview page listing audit firms and report categories (e.g., 'Bridge and rollup contract', 'zkEVM circuits') but does not provide specific contract names, file paths, or a detailed scope table. No individual contract names are identifiable.
- [24407] 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf — no match: Extracted contract names from Project Targets section and detailed findings. Audit date from report delivery date on cover and executive summary.
- [24408] 2023-08-scroll-zkEVM-wave2-securityreview.pdf — no match: Extracted contract names from findings targets and file paths. Audit date from cover page and delivery date.
- [24409] 2023-09-scroll-zkEVM-wave3-securityreview.pdf — no match: Extracted from Project Targets section listing repositories and versions. The audit date is from the cover page and delivery date.
- [24410] 2024-04-scroll-4844-blob-securityreview.pdf — no match: Extracted contract names from project targets and detailed findings. The audit report covers circuits in the zkevm-circuits repository, specifically the aggregation circuit, public input circuit, and transaction circuit. The main contracts are BarycentricEvaluationConfig, BlobDataConfig, pi_circuit, tx_circuit, barycentric, and blob.
- [24411] Scroll zkEVM - Part 1 - Audit Report.pdf — no match: Extracted contract names from 'Target' lines in findings. No explicit scope section found; date from cover page.
- [24412] Scroll zkEVM - Part 2 - Audit Report.pdf — no match: Extracted contract names from 'Target' lines in findings and from file paths mentioned. Audit date from cover page: 'Jul 31, 2023'.
- [24413] 2023-07-scroll-zktrie-securityreview.pdf — no match: Extracted contract names from Project Targets and Detailed Findings sections. Audit date from cover page and delivery date.
- [24414] 2023-08-scrollL2geth-initial-securityreview.pdf — no match: The audit report focuses on Scroll's l2geth, a fork of go-ethereum. No individual smart contracts are listed; the entire codebase is the target.
- [24415] 2023-08-scrollL2geth-securityreview.pdf — no match: The report does not contain a dedicated scope section or table listing contracts in scope. The only named target is 'l2geth', which is a fork of go-ethereum. No specific contract names or file paths are provided. The audit date is taken from the cover page: 'October 6, 2023'.
- [24423] Manual audit seed — no match: All contracts explicitly listed in the Scope section of the audit report.
- [24424] Manual audit seed — no match: Scope explicitly lists three files in contracts/src/batch-bridge/ directory. Audit date is May 28, 2024 from the title area.
- [24428] OpenZeppelin — no match: Two contracts in scope: ScrollChainCommitmentVerifier and ZkTrieVerifier. Audit date from title: March 11, 2024.
- [24429] 2025-04-scroll-euclid-phase1-securityreview.pdf — no match: Extracted contract names from project targets and code quality findings. The audit report does not list individual smart contract names in a scope table; instead, it references repositories and specific files. The contracts BatchHeaderV3Codec and ScrollChain are mentioned in code quality findings as part of the scroll-contracts repository. The migration-checker is a Go command-line tool. No other contract names were explicitly listed as in scope.
- [24430] 2025-04-scroll-euclid-phase2-securityreview.pdf — no match: The report does not list specific contract names in scope; it only references repositories (zkvm-prover, scroll-contracts) and general areas (chunk/batch circuits, rollup contract, message queue). No individual contract or file names are explicitly listed as in-scope targets.
- [24431] Feynman-Upgrade-Trails-of-Bits.pdf — matched: Contracts extracted from Executive Summary and Detailed Findings. The report covers the Scroll Feynman Upgrade smart contract changes.
- [24432] Internal-Audit-Scroll-Final-Report.pdf — no match: Scope section lists two codebases: ScrollREVM and zkVM Guest Program Changes (precompiles). No individual contract names extracted as the scope is at repository/commit level.
- [24434] 202402 Bridge Gas Optimizations Audit Report.pdf — matched: All contracts listed in the Scope section of the audit report.
- [24435] Batch Token Bridge Audit-open-access.pdf — no match: Scope section explicitly lists three files in contracts/src/batch-bridge directory. Audit date is from the title line 'Batch Token Bridge Audit | security May 17, 2024'.
- [24436] EIP-4844 Support Audit-open-access.pdf — no match: All contracts explicitly listed in Scope section (page 4) as modified or newly added files.
- [24437] Scroll ZKTrieVerifier Audit-open-access.pdf — no match: Two contracts in scope: ScrollChainCommitmentVerifier and ZkTrieVerifier. Audit date from cover page.
- [24438] 2025-03-trailofbits-euclid-phase1-letter-of-attestation.pdf — no match: The report does not list specific contract names in scope; it mentions 'Scroll smart contracts' and 'Euclid finalization function' but no explicit contract names or file paths.
- [24439] 2025-03-trailofbits-euclid-phase2-letter-of-attestation.pdf — no match: The report does not list specific contract names in scope; it only mentions general components like chunk/batch circuits and rollup contract without naming specific files or contracts.
- [24440] Galileo_Final_Report.pdf — no match: The scope section explicitly lists two repositories: Stateless Block Verifier and Scroll REVM. No individual contract files are listed; the scope is at the repository level.
- [24441] 1 — matched: All contracts listed in the scope section of the audit report were extracted. The audit date is from the report header.
- [24442] 2 — no match: Extracted all contracts from the scope section of the audit report. The audit date is explicitly stated as October 16, 2023.
- [24443] 3 — matched: Extracted contract names from the Scope section and diff audit file listings. Audit date from the document header: 'October 16, 2023'.
- [24444] 4 — no match: Audit report for ScrollOwner and Rate Limiter contracts. Scope explicitly lists 5 contracts in the src directory. Audit date is October 16, 2023 from the report header.
- [24445] 5 — no match: Scope section lists files under contracts/src. Contract names extracted from file paths. Audit date from title: October 16, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 202307 Scroll Layer 1 Audit Report.pdf | External | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IL1ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bc...d8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | EnforcedTxGateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a...04b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | L1ERC1155Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb94f7f...d975b6` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af...21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c...e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b137...e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791...b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440...a9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | IL1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IL2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollChain | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | L1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | L2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | ScrollChain | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IL2ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IL2ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IL2ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IL2ETHGateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IL2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IERC20Metadata | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | FeeVault | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | ScrollMessengerBase | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IERC677Receiver | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollGatewayCallback | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | BatchHeaderV0Codec | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | ChunkCodec | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | AddressAliasHelper | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IWhitelist | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | ScrollConstants | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollGateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | ScrollGatewayBase | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IGasOracle | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | SimpleGasOracle | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollERC1155 | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollERC20 | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollERC20Upgradeable | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollERC721 | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollStandardERC20Factory | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | ScrollStandardERC20 | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | ScrollStandardERC20Factory | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IRollupVerifier | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | PatriciaMerkleTrieVerifier | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | WithdrawTrieVerifier | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL1ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL1ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL1ETHGateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL1GatewayRouter | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2CustomERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2ETHGateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2StandardERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2WETHGateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL1BlockContainer | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL1GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L1BlockContainer | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L1GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2MessageQueue | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2TxFeeVault | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | WETH9 | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | Whitelist | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL2ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | AppendOnlyMerkleTree | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | OwnableBase | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | ScrollPredeploy | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IScrollERC1155 | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IScrollERC721 | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | FeeVault | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1USDCGateway | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | MultipleVersionRollupVerifier | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L2USDCGateway | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | WrappedEther | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | GasSwap | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IFiatToken | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IMessageDropCallback | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IScrollERC1155Extension | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IScrollERC20Extension | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IScrollERC721Extension | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IZkEvmVerifier | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | ScrollMessengerBase | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | Fallback | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | External | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | EnforcedTxGateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL1ERC1155Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL1ERC20Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL1ERC721Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL1ETHGateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL1GatewayRouter | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a...04b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1ERC1155Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb94f7f...d975b6` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1ERC20Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af...21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c...e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b137...e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791...b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440...a9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL1MessageQueue | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1MessageQueue | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | ScrollChain | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL1ScrollMessenger | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bc...d8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L2ERC1155Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L2ERC721Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L2ETHGateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1GasPriceOracle | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL2ScrollMessenger | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L2ScrollMessenger | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | ScrollConstants | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | ScrollGatewayBase | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IScrollERC1155 | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IScrollERC20 | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IScrollERC721 | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IRollupVerifier | unmatched — not counted | — | listed in diff audit scope | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | ScrollOwner | unmatched — not counted | — | listed in scope | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | ETHRateLimiter | unmatched — not counted | — | listed in scope | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | IETHRateLimiter | unmatched — not counted | — | listed in scope | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | ITokenRateLimiter | unmatched — not counted | — | listed in scope | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | TokenRateLimiter | unmatched — not counted | — | listed in scope | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L1ERC20Gateway | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c...e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bc...d8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L2CustomERC20Gateway | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L2StandardERC20Gateway | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L2WETHGateway | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L2ETHGateway | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L2ScrollMessenger | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | GasSwap | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | ScrollGatewayBase | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | ScrollMessengerBase | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | L1USDCGateway | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | L2USDCGateway | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | ITokenMessenger | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | IMessangerTransmitter | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | IUSDCBurnableSourceBrdge | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | IUSDCDestinationBridge | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | CCTPGatewayBase | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll Diff Audit Report.pdf | IL1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll Diff Audit Report.pdf | L1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll Diff Audit Report.pdf | ScrollChain | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll Diff Audit Report.pdf | L2TxFeeVaults | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll Diff Audit Report.pdf | FeeVault | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a...04b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1ERC1155Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb94f7f...d975b6` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af...21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c...e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b137...e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791...b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440...a9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1USDCGateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bc...d8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | IL1MessageQueue | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | IL1MessageQueueWithGasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | IL2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | IScrollChain | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1MessageQueue | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1MessageQueueWithGasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | ScrollChain | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2CustomERC20Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2ETHGateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2StandardERC20Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2WETHGateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2USDCGateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | IScrollGateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | ScrollGatewayBase | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | IScrollMessenger | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | ScrollMessengerBase | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | EmptyContract | unmatched — not counted | — | listed in scope | no |
| blog.openzeppelin.com/scroll-batch-token-bridge-audit | BatchBridgeCodec | unmatched — not counted | — | listed in scope | no |
| blog.openzeppelin.com/scroll-batch-token-bridge-audit | L1BatchBridgeGateway | unmatched — not counted | — | listed in scope | no |
| blog.openzeppelin.com/scroll-batch-token-bridge-audit | L2BatchBridgeGateway | unmatched — not counted | — | listed in scope | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | IScrollChain | unmatched — not counted | — | listed in scope as modified file | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | MultipleVersionRollupVerifier | unmatched — not counted | — | listed in scope as modified file | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | ScrollChain | unmatched — not counted | — | listed in scope as modified file | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | IRollupVerifier | unmatched — not counted | — | listed in scope as modified file | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | BatchHeaderV0Codec | unmatched — not counted | — | listed in scope as modified file | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | ChunkCodecV0 | unmatched — not counted | — | listed in scope as modified file | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | BatchHeaderV1Codec | unmatched — not counted | — | listed in scope as newly added file | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | ChunkCodecV1 | unmatched — not counted | — | listed in scope as newly added file | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | External | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bc...d8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a...04b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1ERC1155Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb94f7f...d975b6` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af...21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c...e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b137...e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791...b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440...a9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1MessageQueue | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollChainCommitmentVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollChain | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2CustomERC20Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2ETHGateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2StandardERC20Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2WETHGateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1BlockContainer | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2MessageQueue | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | WETH9 | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollMessengerBase | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | AddressAliasHelper | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | AppendOnlyMerkleTree | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | OwnableBase | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollConstants | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollPredeploy | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollGatewayBase | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | SimpleGasOracle | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollStandardERC20Factory | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollStandardERC20 | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | PatriciaMerkleTrieVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | RollupVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | WithdrawTrieVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ZkTrieVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | MockERC20 | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | MockPatriciaMerkleTrieVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | MockZkTrieVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | MockScrollChain | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | MockScrollMessenger | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | FeeOnTransferToken | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | TransferReentrantToken | unmatched — not counted | — | listed in scope | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | GasSwap | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bc...d8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 09.27.23 Zellic Audit Report.pdf | EnforcedTxGateway | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a...04b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1ERC20Gateway | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af...21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b137...e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791...b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1USDCGateway | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440...a9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1MessageQueue | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L2GasPriceOracle | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | MultipleVersionRollupVerifier | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | ScrollChain | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L2ScrollMessenger | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L2StandardERC20Gateway | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L2USDCGateway | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | BatchHeaderV0Codec | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | ChunkCodec | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | ScrollGatewayBase | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | RollupVerifier | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | WithdrawTrieVerifier | unmatched — not counted | — | listed in scope table | no |
| Scroll Lido Gateway - Zellic Audit Report.pdf | L1LidoGateway | unmatched — not counted | — | Listed in scope section (Programs) and threat model module 5.1 | no |
| Scroll Lido Gateway - Zellic Audit Report.pdf | L2LidoGateway | unmatched — not counted | — | Listed in scope section (Programs) and threat model module 5.2 | no |
| Scroll Lido Gateway - Zellic Audit Report.pdf | L2WstETHToken | unmatched — not counted | — | Listed in scope section (Programs) and threat model module 5.3 | no |
| Scroll Lido Gateway - Zellic Audit Report.pdf | LidoBridgeableTokens | unmatched — not counted | — | Listed in scope section (Programs) | no |
| Scroll Lido Gateway - Zellic Audit Report.pdf | LidoGatewayManager | unmatched — not counted | — | Listed in scope section (Programs) and threat model module 5.4 | no |
| Scroll Lido Gateway - Zellic Audit Report.pdf | ScrollBridgeExecutor | unmatched — not counted | — | Listed in scope section (Programs) and threat model module 5.5 | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ModGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | RlpU64Gadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | BlockHashGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ConstantDivisionGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | LtGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | CallOpGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ReturnRevertGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorCodeStoreGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorPrecompileFailedGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorInvalidCreationCodeGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ReturnDataCopyGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorReturnDataOutOfBoundGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorOOGSloadSstoreGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorOOGLogGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | AddSubGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | CommonErrorGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | RestoreContextGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | CreateGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | SignVerifyChip | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | SameContextGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | MemoryExpansionGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | MemoryCopierGasGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | MemoryAddressGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | IsZeroGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | IsEqualGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | LtWordGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | MulAddWordsGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | MulAddWords512Gadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | WordByteCapGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | PairSelectGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | AddWordsGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | RangeCheckGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorInvalidOpcodeGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorWriteProtectionGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | State circuit | unmatched — not counted | — | listed in scope | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | Bytecode circuit | unmatched — not counted | — | listed in scope | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | Keccak circuit | unmatched — not counted | — | listed in scope | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | modexp precompile circuit | unmatched — not counted | — | listed in scope | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | halo2-lib | unmatched — not counted | — | listed in scope | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | snark-verifier | unmatched — not counted | — | listed in scope | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | PoseidonLookup | unmatched — not counted | — | Target in finding TOB-SCROLL2-1 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | PoseidonTable | unmatched — not counted | — | Testing-only implementation mentioned in finding TOB-SCROLL2-1 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | IsZeroGadget | unmatched — not counted | — | Target in finding TOB-SCROLL2-2 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | MptUpdateConfig | unmatched — not counted | — | Target in findings TOB-SCROLL2-6 and TOB-SCROLL2-10 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | WordRLC | unmatched — not counted | — | Target in finding TOB-SCROLL2-5 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | NonceChanged | unmatched — not counted | — | Configuration circuit mentioned in finding TOB-SCROLL2-6 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | CopyCircuit | unmatched — not counted | — | Target in finding TOB-SCROLL2-7 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | ErrorInvalidCreationCodeGadget | unmatched — not counted | — | Target in finding TOB-SCROLL2-8 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | OneHot | unmatched — not counted | — | Target in finding TOB-SCROLL2-9 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | BinaryColumn | unmatched — not counted | — | Target in finding TOB-SCROLL2-9 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | MemoryMask | unmatched — not counted | — | Mentioned in fix review for TOB-SCROLL2-8 | no |
| 2023-09-scroll-zkEVM-wave3-securityreview.pdf | mpt-circuit | unmatched — not counted | — | listed in Project Targets | no |
| 2023-09-scroll-zkEVM-wave3-securityreview.pdf | aggregator | unmatched — not counted | — | listed in Project Targets | no |
| 2023-09-scroll-zkEVM-wave3-securityreview.pdf | precompiles | unmatched — not counted | — | listed in Project Targets | no |
| 2023-09-scroll-zkEVM-wave3-securityreview.pdf | snark-verifier | unmatched — not counted | — | listed as dependency reviewed | no |
| 2024-04-scroll-4844-blob-securityreview.pdf | BarycentricEvaluationConfig | unmatched — not counted | — | Listed as target in findings TOB-SCRL-BLOB-1 and TOB-SCRL-BLOB-7 | no |
| 2024-04-scroll-4844-blob-securityreview.pdf | BlobDataConfig | unmatched — not counted | — | Referenced in findings TOB-SCRL-BLOB-1 and TOB-SCRL-BLOB-6 | no |
| 2024-04-scroll-4844-blob-securityreview.pdf | pi_circuit | unmatched — not counted | — | Listed as target in findings TOB-SCRL-BLOB-4, TOB-SCRL-BLOB-5, and TOB-SCRL-BLOB-6 | no |
| 2024-04-scroll-4844-blob-securityreview.pdf | tx_circuit | unmatched — not counted | — | Listed as target in finding TOB-SCRL-BLOB-6 | no |
| 2024-04-scroll-4844-blob-securityreview.pdf | barycentric | unmatched — not counted | — | File path from findings | no |
| 2024-04-scroll-4844-blob-securityreview.pdf | blob | unmatched — not counted | — | Listed as target in findings TOB-SCRL-BLOB-2, TOB-SCRL-BLOB-3, and TOB-SCRL-BLOB-6 | no |
| Scroll zkEVM - Part 1 - Audit Report.pdf | Poseidon Circuit | unmatched — not counted | — | Target: Poseidon Circuit, src/hash.rs | no |
| Scroll zkEVM - Part 1 - Audit Report.pdf | Bytecode Circuit | unmatched — not counted | — | Target: Bytecode Circuit, zkevm-circuits/src/bytecode_circuit/to_poseidon_hash.rs | no |
| Scroll zkEVM - Part 1 - Audit Report.pdf | ExpCircuit | unmatched — not counted | — | Target: ExpCircuit, zkevm-circuits/src/exp-circuit.rs | no |
| Scroll zkEVM - Part 1 - Audit Report.pdf | MulAdd Chip | unmatched — not counted | — | Target: MulAdd Chip, gadgets/src/mul_add.rs | no |
| Scroll zkEVM - Part 1 - Audit Report.pdf | BatchedIsZero Chip | unmatched — not counted | — | Target: BatchedIsZero Chip, gadgets/src/batched_is_zero.rs | no |
| Scroll zkEVM - Part 1 - Audit Report.pdf | ComparatorChip | unmatched — not counted | — | Target: gadgets/src/comparator.rs | no |
| Scroll zkEVM - Part 1 - Audit Report.pdf | LtChip | unmatched — not counted | — | Target: gadgets/src/less_than.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | RlpFsmDataTable | unmatched — not counted | — | Target: RLP Circuit, rlp_circuit_fsm.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | LtConfig | unmatched — not counted | — | Target: RLP Circuit, rlp_circuit_fsm.rs, Tx Circuit, tx_circuit.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | ComparatorConfig | unmatched — not counted | — | mentioned in Tx Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | OneHot | unmatched — not counted | — | Target: MPT Circuit, gadgets/one_hot.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | BinaryColumn | unmatched — not counted | — | Target: MPT Circuit, constraint_builder/binary_column.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | MptUpdateConfig | unmatched — not counted | — | Target: MPT Circuit, gadgets/mpt_update.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | ByteRepresentationConfig | unmatched — not counted | — | Target: MPT Circuit, gadgets/byte_representation.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | CanonicalRepresentationConfig | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | BlockTable | unmatched — not counted | — | Target: PI Circuit, pi_circuit.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | AccountProof | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | AccountData | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | SMTTrace | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | TrieRows | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | ClaimKind | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | Proof | unmatched — not counted | — | Target: MPT Circuit, types.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | RlcLookup | unmatched — not counted | — | Target: MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | BytesLookup | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | IsZeroGadget | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | TxCircuit | unmatched — not counted | — | Target: Tx Circuit, tx_circuit.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | RlpCircuit | unmatched — not counted | — | Target: RLP Circuit, rlp_circuit_fsm.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | PiCircuit | unmatched — not counted | — | Target: PI Circuit, pi_circuit.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | MptCircuit | unmatched — not counted | — | Target: MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | SigCircuit | unmatched — not counted | — | mentioned in Tx Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | EvmCircuit | unmatched — not counted | — | mentioned in Tx Circuit | no |
| 2023-07-scroll-zktrie-securityreview.pdf | zkTrie | unmatched — not counted | — | Detailed Findings target: trie/zk_trie.go | no |
| 2023-07-scroll-zktrie-securityreview.pdf | Node | unmatched — not counted | — | Detailed Findings target: trie/zk_trie_node.go | no |
| 2023-07-scroll-zktrie-securityreview.pdf | Proof | unmatched — not counted | — | Detailed Findings target: trie/zk_trie_impl.go | no |
| 2023-07-scroll-zktrie-securityreview.pdf | NodeAux | unmatched — not counted | — | Detailed Findings target: trie/zk_trie_impl.go | no |
| 2023-07-scroll-zktrie-securityreview.pdf | Database | unmatched — not counted | — | Detailed Findings target: trie/zk_trie_database.go | no |
| 2023-07-scroll-zktrie-securityreview.pdf | ZkTrieNode | unmatched — not counted | — | Detailed Findings target: src/lib.rs | no |
| 2023-07-scroll-zktrie-securityreview.pdf | ZkMemoryDb | unmatched — not counted | — | Detailed Findings target: src/lib.rs | no |
| 2023-07-scroll-zktrie-securityreview.pdf | ZkTrieImpl | unmatched — not counted | — | Detailed Findings target: trie/zk_trie_impl.go | no |
| 2023-08-scrollL2geth-initial-securityreview.pdf | l2geth | unmatched — not counted | — | listed as project target and throughout report | no |
| 2023-08-scrollL2geth-securityreview.pdf | l2geth | unmatched — not counted | — | The report title and executive summary state that Scroll engaged Trail of Bits to review the security of its l2geth implementation. | no |
| Manual audit seed | IScrollChain | unmatched — not counted | — | listed in scope as modified file | no |
| Manual audit seed | MultipleVersionRollupVerifier | unmatched — not counted | — | listed in scope as modified file | no |
| Manual audit seed | ScrollChain | unmatched — not counted | — | listed in scope as modified file | no |
| Manual audit seed | IRollupVerifier | unmatched — not counted | — | listed in scope as modified file | no |
| Manual audit seed | BatchHeaderV0Codec | unmatched — not counted | — | listed in scope as modified file | no |
| Manual audit seed | ChunkCodecV0 | unmatched — not counted | — | listed in scope as modified file | no |
| Manual audit seed | BatchHeaderV1Codec | unmatched — not counted | — | listed in scope as newly added file | no |
| Manual audit seed | ChunkCodecV1 | unmatched — not counted | — | listed in scope as newly added file | no |
| Manual audit seed | BatchBridgeCodec | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | L1BatchBridgeGateway | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | L2BatchBridgeGateway | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin | ScrollChainCommitmentVerifier | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin | ZkTrieVerifier | unmatched — not counted | — | listed in scope | no |
| 2025-04-scroll-euclid-phase1-securityreview.pdf | BatchHeaderV3Codec | unmatched — not counted | — | mentioned in code quality findings as a contract in scope | no |
| 2025-04-scroll-euclid-phase1-securityreview.pdf | ScrollChain | unmatched — not counted | — | mentioned in code quality findings as a contract in scope | no |
| 2025-04-scroll-euclid-phase1-securityreview.pdf | migration-checker | unmatched — not counted | — | listed as target in project targets and findings | no |
| Feynman-Upgrade-Trails-of-Bits.pdf | PauseController | unmatched — not counted | — | mentioned in Executive Summary as a new contract | no |
| Feynman-Upgrade-Trails-of-Bits.pdf | L2SystemConfig | unmatched — not counted | — | mentioned in Executive Summary as a new contract | no |
| Feynman-Upgrade-Trails-of-Bits.pdf | L1GasPriceOracle | unmatched — not counted | — | mentioned in Executive Summary as contract with changes | no |
| Feynman-Upgrade-Trails-of-Bits.pdf | ZkEvmVerifierPostFeynman | unmatched — not counted | — | mentioned in Executive Summary as a new verifier contract | no |
| Feynman-Upgrade-Trails-of-Bits.pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bc...d8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Feynman-Upgrade-Trails-of-Bits.pdf | L2ScrollMessenger | unmatched — not counted | — | mentioned in Executive Summary as contract with changes | no |
| Feynman-Upgrade-Trails-of-Bits.pdf | ScrollChain | unmatched — not counted | — | target of finding TOB-SCRFMSC-2 | no |
| Internal-Audit-Scroll-Final-Report.pdf | ScrollREVM | unmatched — not counted | — | listed in scope | no |
| Internal-Audit-Scroll-Final-Report.pdf | zkVM Guest Program Changes | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a...04b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1ERC1155Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb94f7f...d975b6` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af...21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c...e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b137...e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791...b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440...a9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1USDCGateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bc...d8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | IL1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | IL1MessageQueueWithGasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | IL2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | IScrollChain | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1MessageQueueWithGasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | ScrollChain | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2CustomERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2ETHGateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2StandardERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2WETHGateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2USDCGateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | IScrollGateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | ScrollGatewayBase | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | IScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | ScrollMessengerBase | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | EmptyContract | unmatched — not counted | — | listed in scope | no |
| Batch Token Bridge Audit-open-access.pdf | BatchBridgeCodec | unmatched — not counted | — | listed in scope | no |
| Batch Token Bridge Audit-open-access.pdf | L1BatchBridgeGateway | unmatched — not counted | — | listed in scope | no |
| Batch Token Bridge Audit-open-access.pdf | L2BatchBridgeGateway | unmatched — not counted | — | listed in scope | no |
| EIP-4844 Support Audit-open-access.pdf | IScrollChain | unmatched — not counted | — | listed in scope as modified file | no |
| EIP-4844 Support Audit-open-access.pdf | MultipleVersionRollupVerifier | unmatched — not counted | — | listed in scope as modified file | no |
| EIP-4844 Support Audit-open-access.pdf | ScrollChain | unmatched — not counted | — | listed in scope as modified file | no |
| EIP-4844 Support Audit-open-access.pdf | IRollupVerifier | unmatched — not counted | — | listed in scope as modified file | no |
| EIP-4844 Support Audit-open-access.pdf | BatchHeaderV0Codec | unmatched — not counted | — | listed in scope as modified file | no |
| EIP-4844 Support Audit-open-access.pdf | ChunkCodecV0 | unmatched — not counted | — | listed in scope as modified file | no |
| EIP-4844 Support Audit-open-access.pdf | BatchHeaderV1Codec | unmatched — not counted | — | listed in scope as newly added file | no |
| EIP-4844 Support Audit-open-access.pdf | ChunkCodecV1 | unmatched — not counted | — | listed in scope as newly added file | no |
| Scroll ZKTrieVerifier Audit-open-access.pdf | ScrollChainCommitmentVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll ZKTrieVerifier Audit-open-access.pdf | ZkTrieVerifier | unmatched — not counted | — | listed in scope | no |
| Galileo_Final_Report.pdf | StatelessBlockVerifier | unmatched — not counted | — | Scope section lists 'Stateless Block Verifier' with repository URL | no |
| Galileo_Final_Report.pdf | ScrollREVM | unmatched — not counted | — | Scope section lists 'Scroll REVM' with repository URL | no |
| 1 | External | unmatched — not counted | — | listed in scope | no |
| 1 | IL1ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 1 | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bc...d8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | EnforcedTxGateway | unmatched — not counted | — | listed in scope | no |
| 1 | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a...04b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | L1ERC1155Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb94f7f...d975b6` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 1 | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af...21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c...e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b137...e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791...b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440...a9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | IL1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 1 | IL2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollChain | unmatched — not counted | — | listed in scope | no |
| 1 | L1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 1 | L2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 1 | ScrollChain | unmatched — not counted | — | listed in scope | no |
| 1 | IL2ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| 1 | IL2ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 1 | IL2ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| 1 | IL2ETHGateway | unmatched — not counted | — | listed in scope | no |
| 1 | IL2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| 1 | IERC20Metadata | unmatched — not counted | — | listed in scope | no |
| 1 | IWETH | unmatched — not counted | — | listed in scope | no |
| 1 | FeeVault | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 1 | ScrollMessengerBase | unmatched — not counted | — | listed in scope | no |
| 1 | IERC677Receiver | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollGatewayCallback | unmatched — not counted | — | listed in scope | no |
| 1 | BatchHeaderV0Codec | unmatched — not counted | — | listed in scope | no |
| 1 | ChunkCodec | unmatched — not counted | — | listed in scope | no |
| 1 | AddressAliasHelper | unmatched — not counted | — | listed in scope | no |
| 1 | IWhitelist | unmatched — not counted | — | listed in scope | no |
| 1 | ScrollConstants | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollGateway | unmatched — not counted | — | listed in scope | no |
| 1 | ScrollGatewayBase | unmatched — not counted | — | listed in scope | no |
| 1 | IGasOracle | unmatched — not counted | — | listed in scope | no |
| 1 | SimpleGasOracle | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollERC1155 | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollERC20 | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollERC20Upgradeable | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollERC721 | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollStandardERC20Factory | unmatched — not counted | — | listed in scope | no |
| 1 | ScrollStandardERC20 | unmatched — not counted | — | listed in scope | no |
| 1 | ScrollStandardERC20Factory | unmatched — not counted | — | listed in scope | no |
| 1 | IRollupVerifier | unmatched — not counted | — | listed in scope | no |
| 1 | PatriciaMerkleTrieVerifier | unmatched — not counted | — | listed in scope | no |
| 1 | WithdrawTrieVerifier | unmatched — not counted | — | listed in scope | no |
| 2 | IL1ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | IL1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | IL1ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | IL1ETHGateway | unmatched — not counted | — | listed in scope | no |
| 2 | IL1GatewayRouter | unmatched — not counted | — | listed in scope | no |
| 2 | L2CustomERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | L2ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | L2ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | L2ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | L2ETHGateway | unmatched — not counted | — | listed in scope | no |
| 2 | L2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| 2 | L2StandardERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | L2WETHGateway | unmatched — not counted | — | listed in scope | no |
| 2 | IL1BlockContainer | unmatched — not counted | — | listed in scope | no |
| 2 | IL1GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 2 | L1BlockContainer | unmatched — not counted | — | listed in scope | no |
| 2 | L1GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 2 | L2MessageQueue | unmatched — not counted | — | listed in scope | no |
| 2 | L2TxFeeVault | unmatched — not counted | — | listed in scope | no |
| 2 | WETH9 | unmatched — not counted | — | listed in scope | no |
| 2 | Whitelist | unmatched — not counted | — | listed in scope | no |
| 2 | IL2ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 2 | L2ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 2 | AppendOnlyMerkleTree | unmatched — not counted | — | listed in scope | no |
| 2 | OwnableBase | unmatched — not counted | — | listed in scope | no |
| 2 | ScrollPredeploy | unmatched — not counted | — | listed in scope | no |
| 2 | IScrollERC1155 | unmatched — not counted | — | listed in scope | no |
| 2 | IScrollERC721 | unmatched — not counted | — | listed in scope | no |
| 2 | FeeVault | unmatched — not counted | — | listed in scope | no |
| 3 | L1USDCGateway | unmatched — not counted | — | listed in scope | no |
| 3 | MultipleVersionRollupVerifier | unmatched — not counted | — | listed in scope | no |
| 3 | L2USDCGateway | unmatched — not counted | — | listed in scope | no |
| 3 | WrappedEther | unmatched — not counted | — | listed in scope | no |
| 3 | GasSwap | unmatched — not counted | — | listed in scope | no |
| 3 | IFiatToken | unmatched — not counted | — | listed in scope | no |
| 3 | IMessageDropCallback | unmatched — not counted | — | listed in scope | no |
| 3 | IScrollERC1155Extension | unmatched — not counted | — | listed in scope | no |
| 3 | IScrollERC20Extension | unmatched — not counted | — | listed in scope | no |
| 3 | IScrollERC721Extension | unmatched — not counted | — | listed in scope | no |
| 3 | IZkEvmVerifier | unmatched — not counted | — | listed in scope | no |
| 3 | ScrollMessengerBase | unmatched — not counted | — | listed in scope | no |
| 3 | Fallback | unmatched — not counted | — | listed in scope | no |
| 3 | External | unmatched — not counted | — | listed in scope | no |
| 3 | EnforcedTxGateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IL1ERC1155Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IL1ERC20Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IL1ERC721Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IL1ETHGateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IL1GatewayRouter | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a...04b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | L1ERC1155Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb94f7f...d975b6` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | L1ERC20Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af...21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c...e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b137...e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791...b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440...a9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | IL1MessageQueue | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L1MessageQueue | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | ScrollChain | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IL1ScrollMessenger | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bc...d8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | L2ERC1155Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L2ERC721Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L2ETHGateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L1GasPriceOracle | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IL2ScrollMessenger | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L2ScrollMessenger | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | ScrollConstants | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | ScrollGatewayBase | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IScrollERC1155 | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IScrollERC20 | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IScrollERC721 | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IRollupVerifier | unmatched — not counted | — | listed in diff audit scope | no |
| 4 | ScrollOwner | unmatched — not counted | — | listed in scope | no |
| 4 | ETHRateLimiter | unmatched — not counted | — | listed in scope | no |
| 4 | IETHRateLimiter | unmatched — not counted | — | listed in scope | no |
| 4 | ITokenRateLimiter | unmatched — not counted | — | listed in scope | no |
| 4 | TokenRateLimiter | unmatched — not counted | — | listed in scope | no |
| 5 | L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 5 | L1USDCGateway | unmatched — not counted | — | listed in scope | no |
| 5 | L2USDCGateway | unmatched — not counted | — | listed in scope | no |
| 5 | CCTPGatewayBase | unmatched — not counted | — | listed in scope | no |
| 5 | ITokenMessenger | unmatched — not counted | — | listed in scope | no |
| 5 | IMessangerTransmitter | unmatched — not counted | — | listed in scope | no |
| 5 | IUSDCBurnableSourceBrdge | unmatched — not counted | — | listed in scope | no |
| 5 | IUSDCDestinationBridge | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x56971d...c2d18a` | L1MessageQueueV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 31
- Inherited remapped matches: 0
- Address-book scope dispositions: 65 own (65 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 514 unmatched
- Matched-own operational status: 65 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=36, low=5
- Match method counts: unique_name=73

Zero-match audit list:

- [21268] 202307 Scroll Layer 2 Audit Report.pdf
- [21271] 202309 Scroll USDC Gateway Audit Report.pdf
- [21272] 202309 Scroll Diff Audit Report.pdf
- [21274] blog.openzeppelin.com/scroll-batch-token-bridge-audit
- [21275] blog.openzeppelin.com/scroll-eip-4844-support-audit
- [21278] Scroll Lido Gateway - Zellic Audit Report.pdf
- [24406] Manual audit seed
- [24407] 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf
- [24408] 2023-08-scroll-zkEVM-wave2-securityreview.pdf
- [24409] 2023-09-scroll-zkEVM-wave3-securityreview.pdf
- [24410] 2024-04-scroll-4844-blob-securityreview.pdf
- [24411] Scroll zkEVM - Part 1 - Audit Report.pdf
- [24412] Scroll zkEVM - Part 2 - Audit Report.pdf
- [24413] 2023-07-scroll-zktrie-securityreview.pdf
- [24414] 2023-08-scrollL2geth-initial-securityreview.pdf
- [24415] 2023-08-scrollL2geth-securityreview.pdf
- [24423] Manual audit seed
- [24424] Manual audit seed
- [24428] OpenZeppelin
- [24429] 2025-04-scroll-euclid-phase1-securityreview.pdf
- [24430] 2025-04-scroll-euclid-phase2-securityreview.pdf
- [24432] Internal-Audit-Scroll-Final-Report.pdf
- [24435] Batch Token Bridge Audit-open-access.pdf
- [24436] EIP-4844 Support Audit-open-access.pdf
- [24437] Scroll ZKTrieVerifier Audit-open-access.pdf
- [24438] 2025-03-trailofbits-euclid-phase1-letter-of-attestation.pdf
- [24439] 2025-03-trailofbits-euclid-phase2-letter-of-attestation.pdf
- [24440] Galileo_Final_Report.pdf
- [24442] 2
- [24444] 4
- [24445] 5

Fork inheritance lineage and inherited audits are included when available.
