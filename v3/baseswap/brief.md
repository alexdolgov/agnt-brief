# Agentic Audit Brief: BaseSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: BaseSwap (`baseswap`)
- Website: [https://baseswap.fi/](https://baseswap.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 32 unique implementations (32 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $492,331.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for BaseSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x647fc2d8b7587b036a93a98d6612a9ecefd3cb88`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 31 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 32 unique; 31 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/31
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 32
- Raw deployments: 32
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

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BPLPManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5e73f436a676c649f186dfe6fcbf1bacff958aa` | ⚠️ Unaudited |
| BswapToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78a087d713be963bf307b18f2ff8122ef9a63ae9` | ⚠️ Unaudited |
| FastPriceEvents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xffba6f02ae140d8ec2fc7798b5ab60e85bc62c78` | ⚠️ Unaudited |
| FastPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1691559e2cdd440fc40997978eedd63bf76c0641` | ⚠️ Unaudited |
| MasterChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b0a43dccbd7d42c18f6a83f86d1a19fa58d541a` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb7971adc396d7ed3953e9542a8d4baec914b772` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20c51b3da2e7821ef62d63a447ac9e5f8a503065` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4df850b99cf6dae86c2ceca7782ac81a5d5b688` | ⚠️ Unaudited |
| OrderBookReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1a8d93eebf7a32ad6bc1f8674082ab2f0e89493` | ⚠️ Unaudited |
| OrderExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa64db2c205fdc3fd930dcb6e3e1f9510ca51f146` | ⚠️ Unaudited |
| PancakeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f1a2f63ea06b475edbf2e6393406058c12a7910` | ⚠️ Unaudited |
| PancakeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x327df1e6de05895d2ab08513aadd9313fe505d86` | ⚠️ Unaudited |
| PositionUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a180411a88525d872793342ba8b09ab635568a7` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2918e366d059733fe12a2a9c18e7f6fea01fb13c` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d7cbf8104aea85d8c76d5eeb397441a59b24187` | ⚠️ Unaudited |
| ReferralReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa88ad234a374989d46a854337e315bcf70020fc` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xab2b07da4710bcd8f2d610ca4420e632b994ac55` | ⚠️ Unaudited |
| RewardReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x67965f5126103abbd49ba912d46bf3afb37730df` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6699ca490855082a67429b712f96a9a68a1cd15e` | ⚠️ Unaudited |
| ShortsTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x54ee88d2094ecd5b1472c11a604478feda42e2cc` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc9ee54147445f1c1c23f52183c95456e69a92989` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14963869592e41a2ecd7524bd213cfc3044adf75` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49a3a5cf91de1b78c43dc1add03e8a71f1ea2e30` | ⚠️ Unaudited |
| UniswapV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f6533d37d7623bf7a396730637ce0f52bf27781` | ⚠️ Unaudited |
| USBS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda55eb290d30203a0a30e0411153c4667021cd57` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4710b12426270d17936ea61d8314e099062a2c6a` | ⚠️ Unaudited |
| V3PrepToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07de0511cb0d7af0b63a1a63b2a575b8ec35f089` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd29ceab5e7c902806f5de29305e45b772ef544ae` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88f1a478d86239f0929c984431281b8a1ca4ca3c` | ⚠️ Unaudited |
| VaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c09876676bc0225d94757f78bde48708f0014ec` | ⚠️ Unaudited |
| VaultUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3371da2b01ca2e31bb230582aede3e7cf5ecbcc3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-380132 | `0x647fc2d8b7587b036a93a98d6612a9ecefd3cb88` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [***https://gopluslabs.io/token-security/8453/0x647FC2d8B7587B036A93A98D6612a9EcEFd3cb88***](https://console.gopluslabs.io/token-security/8453/0x647FC2d8B7587B036A93A98D6612a9EcEFd3cb88) | GoPlus Labs | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [- [AUDIT]()](https://baseswap.gitbook.io/baseswap/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19518] ***https://gopluslabs.io/token-security/8453/0x647FC2d8B7587B036A93A98D6612a9EcEFd3cb88*** — no match: The provided text only contains 'GoPlus Dashboard' which is not a contract name and no audit report content was provided.
- [19519] - [AUDIT]() — no match: The provided text is a single line with a link to a token security check on GoPlusLabs, not an audit report. No contract names, scope sections, or dates are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [19518] ***https://gopluslabs.io/token-security/8453/0x647FC2d8B7587B036A93A98D6612a9EcEFd3cb88***
- [19519] - [AUDIT]()

Fork inheritance lineage and inherited audits are included when available.
