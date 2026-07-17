# Agentic Audit Brief: Cronos zkEVM Bridge

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

- Project: Cronos zkEVM Bridge (`cronos-zkevm-bridge`)
- Website: [https://zkevm.cronos.org/](https://zkevm.cronos.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 25 unique implementations (25 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $17,420,469.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cronos zkEVM Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across cronos, ethereum, sepolia. Structural roles: 2 infra, 1 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: infra (2), core (1)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (2), accesscontrol (1), erc165 (1), pausable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- UnnamedContract (`0x3766eb5f07dbc60d39a2059a9a29fd9b7d3c356d`, chain 1)
- UnnamedContract (`0x5d8ba173dc6c3c90c8f7c04c9288bef5fdbad06e`, chain 1)
- UnnamedContract (`0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb`, chain 1)
- UnnamedContract (`0xfa59075dfce274e028b58bddfcc3d709960f594a`, chain 1)
- ERC1967Proxy (`0x28ff2e4dd1b58efeb0fc138602a28d5ae81e44e2`, chain 1)
- ERC1967Proxy (`0x76bf2d1e6dfda645c0c17440b17eccc181dfc351`, chain 1)
- ZkCroMintAndBridge (`0xe69a535730858fd8dc386b448972a9f801ab4e12`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 9 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 10 of 25 unique; 15 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 16
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

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x248c731b155af4cae198af705fb803f087a0b01e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234579 | `0x28ff2e4dd1b58efeb0fc138602a28d5ae81e44e2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234580 | `0x76bf2d1e6dfda645c0c17440b17eccc181dfc351` | ⚠️ Unaudited |
| EthereumDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8dd4838c47ebf87d8fdb63e7f6dd02c7432d2ac` | ⚠️ Unaudited |
| YbEthBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd91629518a1ec964cfce27c2a939f689dcbdf73f` | ⚠️ Unaudited |
| YbEthNft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43df9d854d3fcb882847b9a638cabd06fe86d2c5` | ⚠️ Unaudited |
| YBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd501a4d2141799f3228c40af972df622c632b7ce` | ⚠️ Unaudited |
| YBUSDBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17dacad8aa962963830136422e2eaa8d27d014f8` | ⚠️ Unaudited |
| ZkCroMintAndBridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234560 | `0xe69a535730858fd8dc386b448972a9f801ab4e12` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234545 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234547 | `0x3766eb5f07dbc60d39a2059a9a29fd9b7d3c356d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234549 | `0x5d8ba173dc6c3c90c8f7c04c9288bef5fdbad06e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234552 | `0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234553 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234559 | `0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234562 | `0xfa59075dfce274e028b58bddfcc3d709960f594a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234565 | `0x35a54c8c757806eb6820629bc82d90e056394c92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234566 | `0x3e8b2fe58675126ed30d0d12dea2a9bda72d18ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234567 | `0x49ce7551514f3c2bf44b50442765bb112d0e8204` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234568 | `0x4f1cedf1be03f2100206af843851c9b14210118a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234569 | `0x68a9affe98aed0749351e63a9cf95969cb1eff08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234573 | `0xa3062ab8d613489d8ba5303123240f7e8e98483a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234574 | `0xd2b6865fd9811d00121f6678a78dbc1cd95b1ec8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234575 | `0xd3876643180a79d0a56d0900c060528395f34453` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-234577 | `0xf3dfc52db4604cbd6eda747a70c82d7be122b545` | ❓ Unverified |

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
| ethereum | `0xe69a535730858fd8dc386b448972a9f801ab4e12` | ZkCroMintAndBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 16 |

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
