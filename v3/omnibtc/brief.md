# Agentic Audit Brief: OmniBTC

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: OmniBTC (`omnibtc`)
- Website: [https://www.omnibtc.finance](https://www.omnibtc.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 91 unique implementations (110 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $1,856,125.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for OmniBTC in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 30 contracts are derived from known codebases. 30 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x01c49c...a8bddb`, chain 1)
- UnnamedContract (`0x03af06...e287c7`, chain 1)
- UnnamedContract (`0x091792...bb889c`, chain 1)
- UnnamedContract (`0x1056a9...fb792e`, chain 1)
- UnnamedContract (`0x1f33a9...fb386e`, chain 1)
- UnnamedContract (`0x2967e7...9b3820`, chain 1)
- UnnamedContract (`0x3462f4...d0895a`, chain 1)
- UnnamedContract (`0x34bdbe...5657a1`, chain 1)
- UnnamedContract (`0x361c07...0c9b49`, chain 1)
- UnnamedContract (`0x4af9be...3e7449`, chain 1)
- UnnamedContract (`0x66f440...e7d8e2`, chain 1)
- UnnamedContract (`0x681bc5...982c24`, chain 1)
- UnnamedContract (`0x718348...b46cc2`, chain 1)
- UnnamedContract (`0x72335f...9f3cf2`, chain 1)
- UnnamedContract (`0x76acfa...fc819c`, chain 1)
- UnnamedContract (`0x7857e0...492096`, chain 1)
- UnnamedContract (`0x7c9bcc...a23acc`, chain 1)
- UnnamedContract (`0x9c2d75...5d3d14`, chain 1)
- UnnamedContract (`0xa7487a...e2fb04`, chain 1)
- UnnamedContract (`0xad8542...f0e8a9`, chain 1)
- UnnamedContract (`0xb3a814...badb10`, chain 1)
- UnnamedContract (`0xba661e...373ea5`, chain 1)
- UnnamedContract (`0xbb6670...1d3e96`, chain 1)
- UnnamedContract (`0xc8df06...0446ac`, chain 1)
- UnnamedContract (`0xd4756d...f2ddb7`, chain 1)
- UnnamedContract (`0xda7bc7...f5193b`, chain 1)
- UnnamedContract (`0xdae4db...b3cead`, chain 1)
- UnnamedContract (`0xe4d1eb...113d37`, chain 1)
- UnnamedContract (`0xec098c...f04331`, chain 1)
- UnnamedContract (`0xf5110f...63a99d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 30/206 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 30 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 61 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 30 of 91 unique; 61 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 91
- Raw deployments: 110
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BoolFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x206b70...ff435c`; arbitrum `0x254333...72a5a5`; arbitrum `0xeb3f7d...b2ba36` | ⚠️ Unaudited |
| CCTPFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x452b5f...0d343c` | ⚠️ Unaudited |
| CelerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x930b39...ee004e` | ⚠️ Unaudited |
| Claim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x26a5fe...d702f4`; arbitrum `0x88f453...6be397`; arbitrum `0x941ecf...38acde`; arbitrum `0xee2174...ab0d37` | ⚠️ Unaudited |
| ConnextFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xec098c...f04331`; arbitrum `0xf2fe7c...2a11dc` | ⚠️ Unaudited |
| DexManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x091792...bb889c`; arbitrum `0x869da7...e74321` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x4ac443...aff9e8`; arbitrum `0xdae4db...b3cead`; arbitrum `0xf9d44c...cfab1a` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x66e96a...aa56e7`; arbitrum `0xe4d1eb...113d37` | ⚠️ Unaudited |
| GenericSwapFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x01c49c...a8bddb`; arbitrum `0x595000...c9a86e`; arbitrum `0x6aa49f...3338be`; arbitrum `0x9c79ad...b65496`; arbitrum `0xd79171...e1e19c`; arbitrum `0xf90292...9f0bdc` | ⚠️ Unaudited |
| LendingPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78e540...6a6968` | ⚠️ Unaudited |
| LibCorrectSwapV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x0faae7...2f8f51`; arbitrum `0xa19d57...bde405`; arbitrum `0xedc628...dd66f3` | ⚠️ Unaudited |
| LibSoFeeCelerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x937afc...e5961f` | ⚠️ Unaudited |
| LibSoFeeConnextV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f33a9...fb386e` | ⚠️ Unaudited |
| LibSoFeeV01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4af9be...3e7449` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3b0180...890fe5`; arbitrum `0xad8542...f0e8a9` | ⚠️ Unaudited |
| SerdeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x780e93...f2329e` | ⚠️ Unaudited |
| SoDiamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d18df...39c4eb` | ⚠️ Unaudited |
| StargateFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x2967e7...9b3820` | ⚠️ Unaudited |
| StargateFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x96568b...1db303` | ⚠️ Unaudited |
| SystemPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ab575...4753a5` | ⚠️ Unaudited |
| WithdrawFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5ab267...135e62`; arbitrum `0xa7487a...e2fb04` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390228 | `0x01c49c...a8bddb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390229 | `0x03af06...e287c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390231 | `0x091792...bb889c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390239 | `0x1056a9...fb792e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390257 | `0x1f33a9...fb386e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390267 | `0x2967e7...9b3820` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390272 | `0x3462f4...d0895a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390273 | `0x34bdbe...5657a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390276 | `0x361c07...0c9b49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390289 | `0x4af9be...3e7449` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390306 | `0x66f440...e7d8e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390308 | `0x681bc5...982c24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390315 | `0x718348...b46cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390317 | `0x72335f...9f3cf2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390323 | `0x76acfa...fc819c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390324 | `0x7857e0...492096` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390327 | `0x7c9bcc...a23acc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390353 | `0x9c2d75...5d3d14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390357 | `0xa7487a...e2fb04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa8b23...05b6fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390365 | `0xad8542...f0e8a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390369 | `0xb3a814...badb10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390380 | `0xba661e...373ea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390382 | `0xbb6670...1d3e96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390391 | `0xc8df06...0446ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390398 | `0xd4756d...f2ddb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390406 | `0xda7bc7...f5193b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390407 | `0xdae4db...b3cead` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390411 | `0xe4d1eb...113d37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390415 | `0xec098c...f04331` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390421 | `0xf5110f...63a99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x233dde...a28975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x051914...618f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3eb69...4798c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x689530...329dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01ebb2...eea607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x041fb4...a97048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x098d26...af9cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0de3b6...32f2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x135557...9d3824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13ee92...674aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14bd8e...b2ebcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ec3c0...8f18e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ff10d...c8fa08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26bda6...7c107c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c71e7...fbaf4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3177d2...b7a973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37c150...79bf49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d6cab...a11ce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ddc3b...dac84b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fbc3b...ccfef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53ecc0...4c7935` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5af12a...2d4f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66f440...e7d8e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a8181...2fe9be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f5b4b...5d2bac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76376c...75de3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0bfaa...88b477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa4c264...d7d210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb647e0...ff39db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba661e...373ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbca5b6...918fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd43e7d...1674a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7026d...f18505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe37890...df8c39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe44341...7dd771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5d17c...71288f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9c847...903c1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebb6a1...2df737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc44c29...f3c554` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Sui-AMM-swap_Contracts_Audit_Report.pdf](https://github.com/OmniBTC/Sui-AMM-swap/blob/main/Sui-AMM-swap_Contracts_Audit_Report.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [audit-reports (GitHub directory)](https://github.com/GEBcore/audit-reports) | unknown | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audit-Report-BEVM-v1.0.pdf](https://github.com/btclayer2/audit-reports/blob/main/Audit-Report-BEVM-v1.0.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20905] Sui-AMM-swap_Contracts_Audit_Report.pdf — no match: Extracted contract names from Appendix 1 - Files in Scope. Audit timeline ends 2022-11-30.
- [20906] audit-reports (GitHub directory) — no match: The provided text is a GitHub repository README, not an audit report. It mentions a project name 'BEVM Chain' and an auditor 'SUPREMACY' with date 'Mar 2024', but no contracts or scope details are present.
- [20907] Audit-Report-BEVM-v1.0.pdf — no match: The audit scope only lists a repository and commit hash, not specific contract files. The report mentions Rust language and blockchain type, but no Solidity or smart contract names are explicitly listed. The findings reference files like 'weights.rs' and 'lib.rs' but these are not smart contracts in the traditional sense. No contract names could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Sui-AMM-swap_Contracts_Audit_Report.pdf | beneficiary | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Sui-AMM-swap_Contracts_Audit_Report.pdf | interface | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Sui-AMM-swap_Contracts_Audit_Report.pdf | math | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Sui-AMM-swap_Contracts_Audit_Report.pdf | comparator | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Sui-AMM-swap_Contracts_Audit_Report.pdf | event | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Sui-AMM-swap_Contracts_Audit_Report.pdf | controller | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Sui-AMM-swap_Contracts_Audit_Report.pdf | implements | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Sui-AMM-swap_Contracts_Audit_Report.pdf | faucet | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Sui-AMM-swap_Contracts_Audit_Report.pdf | coins | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 70 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: n/a

Zero-match audit list:

- [20905] Sui-AMM-swap_Contracts_Audit_Report.pdf
- [20906] audit-reports (GitHub directory)
- [20907] Audit-Report-BEVM-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
