# Agentic Audit Brief: Flux Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Flux Finance (`flux-finance`)
- Website: [https://fluxfinance.com](https://fluxfinance.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 44 unique implementations (44 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $112,592,808.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Flux Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across ethereum. Structural roles: 4 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: accesscontrol (1), erc165 (1), erc20 (1)
- Frameworks: openzeppelin (3), chainlink (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1dd7950c266fb1be96180a8fdb0591f70200e018`, chain 1)
- UnnamedContract (`0x336505ec1bcc1a020eede459f57581725d23465a`, chain 1)
- UnnamedContract (`0x465a5a630482f3abd6d3b84b39b29b07214d19e5`, chain 1)
- UnnamedContract (`0x81994b9607e06ab3d5cf3afff9a67374f05f27d7`, chain 1)
- UnnamedContract (`0x95af143a021df745bc78e845b54591c53a8b3a51`, chain 1)
- UnnamedContract (`0xe2ba8693ce7474900a045757fe0efca900f6530b`, chain 1)
- CompoundLens (`0xca83471ce9b0e7e6f628fa2a95ae97198780acf8`, chain 1)
- CTokenDelegate (`0x1c9a2d6b33b4826757273d47ebee0e2dddcd978b`, chain 1)
- RWAOracleExternalComparisonCheck (`0x0502c5ae08e7cd64fe1aeda7d6e229413ecc6abe`, chain 1)
- Timelock (`0x2c5898da4df1d45eab2b7b192a361c3b9eb18d9c`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 34 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 10 of 44 unique; 34 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 44
- Raw deployments: 44
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/fluxfinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AllowlistFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ed7968f45cba8b8a76b014531435737e98ac988` | ⚠️ Unaudited |
| AllPairVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bb8de958134afd7543d4063cafad0b7c6de08bc` | ⚠️ Unaudited |
| Blocklist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89cb664b5d11078afa20f0fa55a0ddf971ef4342` | ⚠️ Unaudited |
| BondStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1c12131b5fd306279fc5bc571bd81049ee31154` | ⚠️ Unaudited |
| CashKYCSenderReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e1220b51f58813fad3db66b1eeaf295bce2e4b` | ⚠️ Unaudited |
| CashKYCSenderReceiverFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf5d0b946ba15a0914d39c3e13c3c489d09b4a8` | ⚠️ Unaudited |
| CashManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3501883a646f1f8417bcb62162372550954d618f` | ⚠️ Unaudited |
| CCashDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159d359b55a6d0cbe9b306862d13515fa1992d0a` | ⚠️ Unaudited |
| CDaiDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e1e54ee9516c40650d7bbee0c53aca9f95db18d` | ⚠️ Unaudited |
| CErc20DelegatorKYC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x049e2aab49813c7a34656a193777019ed74651a9` | ⚠️ Unaudited |
| CompoundLens | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386542 | `0xca83471ce9b0e7e6f628fa2a95ae97198780acf8` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076c8405d6e2ecb84ebe265b255519e0f0d527e0` | ⚠️ Unaudited |
| CTokenDelegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386546 | `0x1c9a2d6b33b4826757273d47ebee0e2dddcd978b` | ⚠️ Unaudited |
| DestinationBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd8fb563a325dc853741907ae06e5f3c02c9235c` | ⚠️ Unaudited |
| FluxOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c1f01765e60f3e695b3bba902e64daecc2280c5` | ⚠️ Unaudited |
| FTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8edee4244c4befd6d05d6b3273c399485cf3a52` | ⚠️ Unaudited |
| GovernerAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7554815084eb70e8de277141650fad7e3d50673f` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20bd72c3ab333399a85da76bcc2784a2a0970a13` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15adf6047845348317771288736514778c2076bf` | ⚠️ Unaudited |
| KYCRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71923a93a1f4837e931d888c90a10de4e3678336` | ⚠️ Unaudited |
| OMMFFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40f1ea5256fddf049d9a46a96ff82766ea80e793` | ⚠️ Unaudited |
| OMMFManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d01be0296b99aadee94116e285cdb2c40be7929` | ⚠️ Unaudited |
| OMMFRebaseSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x463efa052e662c6272e8aef5e4492d99f088afa7` | ⚠️ Unaudited |
| Ondo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d72c761180781d86ed5f631aeb51231d0f462df` | ⚠️ Unaudited |
| OndoCoinlistDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14efbbe9f0bbae2bea83570f4fcd590c59eb1e54` | ⚠️ Unaudited |
| OndoPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x526a13df3594637c08bc964ad1980181f2753c8e` | ⚠️ Unaudited |
| OndoPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba9b10f90b0ef26711373a0d8b6e7741866a7ef2` | ⚠️ Unaudited |
| Pricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d269194548c874ec1ac7a6beb2a82bf7b78a07e` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a05f3ef99e89caa2eea361fc3fae21fc60720ac` | ⚠️ Unaudited |
| RWAOracleExternalComparisonCheck | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386526 | `0x0502c5ae08e7cd64fe1aeda7d6e229413ecc6abe` | ⚠️ Unaudited |
| RWAOracleRateCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0576f565bdd00199b8e353f569ce903bb2eccc22` | ⚠️ Unaudited |
| SourceBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd89655ecf4800251880f8f6ba9038970ad9813db` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386530 | `0x2c5898da4df1d45eab2b7b192a361c3b9eb18d9c` | ⚠️ Unaudited |
| TrancheToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc75c52c66960a70e4d94452f21037cd68839a1` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a5fa0e21517d13e532904cfb1868d9d164659f4` | ⚠️ Unaudited |
| USDYFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478681587af321e6b055d3b08caf17140b138557` | ⚠️ Unaudited |
| USDYManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5577cf81459b742dbfe757f98cb3ed4ed8e7df30` | ⚠️ Unaudited |
| WOMMFFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02d77d39c3889bf1da64c96f6f3b9a22aee2b51d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386528 | `0x1dd7950c266fb1be96180a8fdb0591f70200e018` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386533 | `0x336505ec1bcc1a020eede459f57581725d23465a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386536 | `0x465a5a630482f3abd6d3b84b39b29b07214d19e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386538 | `0x81994b9607e06ab3d5cf3afff9a67374f05f27d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386540 | `0x95af143a021df745bc78e845b54591c53a8b3a51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386544 | `0xe2ba8693ce7474900a045757fe0efca900f6530b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/fluxfinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20331] Active Bug Bounty Program — no match: The document is a bug bounty program description, not an audit report. No specific contracts are listed in scope; only general references to forked CompoundV2 contracts.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1c9a2d6b33b4826757273d47ebee0e2dddcd978b` | CTokenDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0502c5ae08e7cd64fe1aeda7d6e229413ecc6abe` | RWAOracleExternalComparisonCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c5898da4df1d45eab2b7b192a361c3b9eb18d9c` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
