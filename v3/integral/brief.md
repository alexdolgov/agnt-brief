# Agentic Audit Brief: Integral

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Integral (`integral`)
- Website: [https://integral.link/](https://integral.link/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 45 unique implementations (45 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $405,364.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Integral. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, ethereum. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x048f0e...486c46`, chain 1)
- UnnamedContract (`0x29b57d...70a300`, chain 1)
- UnnamedContract (`0x2fe16d...b026a2`, chain 1)
- UnnamedContract (`0x37f6df...df1ebf`, chain 1)
- UnnamedContract (`0x43f0e5...98d904`, chain 1)
- UnnamedContract (`0x61fa1c...5f7db2`, chain 1)
- UnnamedContract (`0x6ec472...567ea7`, chain 1)
- UnnamedContract (`0xbdbcdf...eb18cd`, chain 1)
- UnnamedContract (`0xbee7ef...27265f`, chain 1)
- UnnamedContract (`0xc480b3...0c56c6`, chain 1)
- UnnamedContract (`0xd17b3c...d81e2e`, chain 1)
- UnnamedContract (`0xd4d214...738c71`, chain 1)
- UnnamedContract (`0xd66f21...67c35e`, chain 1)
- UnnamedContract (`0x24e24a...2e9625`, chain 42161)
- UnnamedContract (`0x3c6951...4b5f42`, chain 42161)
- UnnamedContract (`0x4bca34...14913b`, chain 42161)
- UnnamedContract (`0x7a0f89...36e415`, chain 42161)
- UnnamedContract (`0x7b9666...59c973`, chain 42161)
- UnnamedContract (`0xf31778...9b6353`, chain 42161)
- UnnamedContract (`0xfa5aa5...b9a88a`, chain 42161)
- TwapFactory (`0x717ef1...9e516a`, chain 42161)
- TwapPair (`0x045950...4c7e27`, chain 1)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 22 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 23 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 22 of 45 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 45
- Raw deployments: 45
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/integral/information))
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

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09ca90...97d93d` | ⚠️ Unaudited |
| BuyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141252...33c6e5` | ⚠️ Unaudited |
| ExecutionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x057d2e...25afda` | ⚠️ Unaudited |
| IntegralDelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22812e...86606b` | ⚠️ Unaudited |
| IntegralMerkleTimeRelease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aa7aa...554e37` | ⚠️ Unaudited |
| IntegralOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dea32...2e14c1` | ⚠️ Unaudited |
| IntegralOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x289596...2fff16` | ⚠️ Unaudited |
| IntegralPriceReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75e495...c978af` | ⚠️ Unaudited |
| IntegralStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36bd66...9441ff` | ⚠️ Unaudited |
| IntegralTimeRelease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657dfb...d54538` | ⚠️ Unaudited |
| IntegralToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bc960...000da5` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaec732...2bb1f8` | ⚠️ Unaudited |
| Orders | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x033f27...650b08` | ⚠️ Unaudited |
| TokenShares | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1441f0...5b9d79` | ⚠️ Unaudited |
| TwapDelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x010876...9c436b` | ⚠️ Unaudited |
| TwapFactory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387584 | `0x717ef1...9e516a` | ⚠️ Unaudited |
| TwapFactoryGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0800fc...d78d91` | ⚠️ Unaudited |
| TwapLPTokenRewarderL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4b403...48714a` | ⚠️ Unaudited |
| TwapLPTokenRewarderTokenTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb8c9b...65d46c` | ⚠️ Unaudited |
| TwapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1addb9...b837ee` | ⚠️ Unaudited |
| TwapOracleV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9934...c62379` | ⚠️ Unaudited |
| TwapPair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387567 | `0x045950...4c7e27` | ⚠️ Unaudited |
| TwapReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5c082...095f7c` | ⚠️ Unaudited |
| TwapRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e83e4...82406c` | ⚠️ Unaudited |
| WithdrawHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19f6bc...8b9eaa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387568 | `0x048f0e...486c46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387569 | `0x29b57d...70a300` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387570 | `0x2fe16d...b026a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387571 | `0x37f6df...df1ebf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387572 | `0x43f0e5...98d904` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387573 | `0x61fa1c...5f7db2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387574 | `0x6ec472...567ea7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387575 | `0xbdbcdf...eb18cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387576 | `0xbee7ef...27265f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387577 | `0xc480b3...0c56c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387578 | `0xd17b3c...d81e2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387579 | `0xd4d214...738c71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387580 | `0xd66f21...67c35e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387581 | `0x24e24a...2e9625` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387582 | `0x3c6951...4b5f42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387583 | `0x4bca34...14913b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387585 | `0x7a0f89...36e415` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387586 | `0x7b9666...59c973` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387587 | `0xf31778...9b6353` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387588 | `0xfa5aa5...b9a88a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://assets.integral.link/Integral+Risk+Factor+Exhibit.pdf) | Immunefi | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/integral/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20588] Rendered PDF capture — no match: The document is a risk factor disclosure for Integral Tokens, not a smart contract audit report. No contracts, source files, or audit date are mentioned.
- [20589] Active Bug Bounty Program — no match: The document is a bug bounty program description, not an audit report. No contracts in scope are explicitly listed; only general categories like 'smart contracts' are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x717ef1...9e516a` | TwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x045950...4c7e27` | TwapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [20588] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
