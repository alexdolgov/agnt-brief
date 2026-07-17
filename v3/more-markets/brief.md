# Agentic Audit Brief: MORE Markets

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: MORE Markets (`more-markets`)
- Website: [https://www.more.markets](https://www.more.markets)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, ethereum
- Contract surface: 25 unique implementations (25 raw deployments)
- Coverage basis: 0/22 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $9,829,470.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MORE Markets. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across arbitrum, avalanche, base, ethereum. Structural roles: 12 core, 10 supporting. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: core (12), supporting (10)
- Contract kinds: contract (22)
- Detected standards: erc1967proxy (3), ownable (3), pausable (3), erc165 (1), erc20 (1), erc4626 (1), ownable2step (1)
- Frameworks: openzeppelin (22), chainlink (18), openzeppelin-upgradeable (7), solady (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AaveV3Facet (`0x3172c30821d61b97ed0c9b21c0fe42ff0b362fbd`, chain 1)
- AccessControlFacet (`0xfdf1c242e8e9847f2edebab3c0f3be5f85eed38c`, chain 1)
- BridgeFacet (`0xd08cab25309dfea0a48db8e9ef3d5afa58cd37bb`, chain 1)
- ConfigurationFacet (`0x475d696b75fd49f48cd1d8a4389c7ad755891441`, chain 1)
- CurveFacet (`0x00f8abfe17b4c096440a647bb0549f326e08c897`, chain 1)
- CurveLiquidityGaugeV6Facet (`0x4fc8dfc9a4ace779e78591b17b83ea1988ff3aa1`, chain 1)
- DiamondCutFacet (`0x0629d67cba46438458e96e7fd7bd46afe6f38ee7`, chain 1)
- DiamondLoupeFacet (`0xbfb5bf7129d80c582681e5f59aa21ba23834e708`, chain 1)
- ERC4626Facet (`0xc5c6844fe3a550748caaeaf8592d68386ca1f1b5`, chain 1)
- ERC7540Facet (`0x5b49fb340ee2a92ac9b5ae9a6920a54911b5633b`, chain 1)
- LzAdapter (`0xc3268c843a7704cc7c476edb6b38480038297117`, chain 1)
- MoreLeverageFacet (`0x589ccdaf387e265423c1d2f95cdc903fdfda5fc3`, chain 1)
- MORELeverageFacet (`0xc04ea0b109bef3815232e9a78a7f56d7e8a6292a`, chain 1)
- MoreVaultsComposer (`0x8d8be034ecfd018d67f9a1a25e27f99f52cbdfc1`, chain 1)
- MulticallFacet (`0x4c25db05c999081cdb24adfdd9cd871f70d998e3`, chain 1)
- MultiRewardsFacet (`0x65c89a8aef485d3da46ed3ee20bf9d59e4d6cd0f`, chain 1)
- OFTAdapterFactory (`0xfa3f78123da6c25548ced8e2e194483a067ea659`, chain 1)
- TransparentUpgradeableProxy (`0x6a0b3724af49ce6f14669d07823650ec26553890`, chain 1)
- TransparentUpgradeableProxy (`0x7bdb8b17604b03125efaed33ca0c55fbf856bb0c`, chain 1)
- TransparentUpgradeableProxy (`0xa7b968ca75eb0224a396ca5cd482d18d4ca2041a`, chain 1)
- UniswapV3Facet (`0x3df5923afb843fdc530c144844c994db8e59b5ad`, chain 1)
- VaultFacet (`0xe405e2fec812bd73548e75c2544cfd176bdb8878`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 22; live-surface rows included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/22 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 22 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 22 of 25 unique; 3 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
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

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3Facet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400443 | `0x3172c30821d61b97ed0c9b21c0fe42ff0b362fbd` | ⚠️ Unaudited |
| AccessControlFacet | governance | project_anchor | own_supporting | 0 | ethereum | unit-400459 | `0xfdf1c242e8e9847f2edebab3c0f3be5f85eed38c` | ⚠️ Unaudited |
| BridgeFacet | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-400456 | `0xd08cab25309dfea0a48db8e9ef3d5afa58cd37bb` | ⚠️ Unaudited |
| ConfigurationFacet | governance | project_anchor | own_supporting | 0 | ethereum | unit-400445 | `0x475d696b75fd49f48cd1d8a4389c7ad755891441` | ⚠️ Unaudited |
| CurveFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400441 | `0x00f8abfe17b4c096440a647bb0549f326e08c897` | ⚠️ Unaudited |
| CurveLiquidityGaugeV6Facet | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-400447 | `0x4fc8dfc9a4ace779e78591b17b83ea1988ff3aa1` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400442 | `0x0629d67cba46438458e96e7fd7bd46afe6f38ee7` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400452 | `0xbfb5bf7129d80c582681e5f59aa21ba23834e708` | ⚠️ Unaudited |
| ERC4626Facet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400455 | `0xc5c6844fe3a550748caaeaf8592d68386ca1f1b5` | ⚠️ Unaudited |
| ERC7540Facet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400449 | `0x5b49fb340ee2a92ac9b5ae9a6920a54911b5633b` | ⚠️ Unaudited |
| LzAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-400454 | `0xc3268c843a7704cc7c476edb6b38480038297117` | ⚠️ Unaudited |
| MoreLeverageFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400448 | `0x589ccdaf387e265423c1d2f95cdc903fdfda5fc3` | ⚠️ Unaudited |
| MORELeverageFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400453 | `0xc04ea0b109bef3815232e9a78a7f56d7e8a6292a` | ⚠️ Unaudited |
| MoreVaultsComposer | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-400451 | `0x8d8be034ecfd018d67f9a1a25e27f99f52cbdfc1` | ⚠️ Unaudited |
| MulticallFacet | periphery | project_anchor | own_supporting | 0 | ethereum | unit-400446 | `0x4c25db05c999081cdb24adfdd9cd871f70d998e3` | ⚠️ Unaudited |
| MultiRewardsFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400450 | `0x65c89a8aef485d3da46ed3ee20bf9d59e4d6cd0f` | ⚠️ Unaudited |
| OFTAdapterFactory | adapter | project_anchor | own_supporting | 0 | ethereum | unit-400458 | `0xfa3f78123da6c25548ced8e2e194483a067ea659` | ⚠️ Unaudited |
| OracleRegistry | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-400462 | `0xa7b968ca75eb0224a396ca5cd482d18d4ca2041a` | ⚠️ Unaudited |
| UniswapV3Facet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400444 | `0x3df5923afb843fdc530c144844c994db8e59b5ad` | ⚠️ Unaudited |
| VaultFacet | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-400457 | `0xe405e2fec812bd73548e75c2544cfd176bdb8878` | ⚠️ Unaudited |
| VaultsFactory | registry | project_anchor | own_supporting | 1 | ethereum | unit-400461 | `0x7bdb8b17604b03125efaed33ca0c55fbf856bb0c` | ⚠️ Unaudited |
| VaultsRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-400460 | `0x6a0b3724af49ce6f14669d07823650ec26553890` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VaultsFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7bdb8b17604b03125efaed33ca0c55fbf856bb0c` | ❓ Unverified |
| VaultsFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x7bdb8b17604b03125efaed33ca0c55fbf856bb0c` | ❓ Unverified |
| VaultsFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x7bdb8b17604b03125efaed33ca0c55fbf856bb0c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xfdf1c242e8e9847f2edebab3c0f3be5f85eed38c` | AccessControlFacet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd08cab25309dfea0a48db8e9ef3d5afa58cd37bb` | BridgeFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x475d696b75fd49f48cd1d8a4389c7ad755891441` | ConfigurationFacet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0629d67cba46438458e96e7fd7bd46afe6f38ee7` | DiamondCutFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbfb5bf7129d80c582681e5f59aa21ba23834e708` | DiamondLoupeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc5c6844fe3a550748caaeaf8592d68386ca1f1b5` | ERC4626Facet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5b49fb340ee2a92ac9b5ae9a6920a54911b5633b` | ERC7540Facet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc3268c843a7704cc7c476edb6b38480038297117` | LzAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x589ccdaf387e265423c1d2f95cdc903fdfda5fc3` | MoreLeverageFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc04ea0b109bef3815232e9a78a7f56d7e8a6292a` | MORELeverageFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8d8be034ecfd018d67f9a1a25e27f99f52cbdfc1` | MoreVaultsComposer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c25db05c999081cdb24adfdd9cd871f70d998e3` | MulticallFacet | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x65c89a8aef485d3da46ed3ee20bf9d59e4d6cd0f` | MultiRewardsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfa3f78123da6c25548ced8e2e194483a067ea659` | OFTAdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa7b968ca75eb0224a396ca5cd482d18d4ca2041a` | OracleRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe405e2fec812bd73548e75c2544cfd176bdb8878` | VaultFacet | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7bdb8b17604b03125efaed33ca0c55fbf856bb0c` | VaultsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6a0b3724af49ce6f14669d07823650ec26553890` | VaultsRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
