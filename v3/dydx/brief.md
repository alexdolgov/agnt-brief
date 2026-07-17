# Agentic Audit Brief: dYdX

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

- Project: dYdX (`dydx`)
- Website: [https://dydx.trade/](https://dydx.trade/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 43 unique implementations (44 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $130,451,940.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for dYdX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across ethereum. Structural roles: 12 core, 2 supporting. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: core (12), supporting (2)
- Contract kinds: contract (14)
- Detected standards: erc1967proxy (6), ownable (3), erc20 (2), erc20permit (2)
- Frameworks: openzeppelin (14)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- DydxToken (`0x92d6c1e31e14520e676a687f0a93788b716beff5`, chain 1)
- WrappedEthereumDydxToken (wethDYDX) (`0x46b2deae6eff3011008ea27ea36b7c27255ddfa9`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (2 live, 12 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 35 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 2 of 43 unique; 41 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 43
- Raw deployments: 44
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

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ClaimsProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384101 | `0x0fd829c3365a225fb9226e75c97c3a114bd3199e` | ⚠️ Unaudited |
| DydxGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb3b545adbe9dbc601eda8ff36f1c866d0ba812` | ⚠️ Unaudited |
| DydxToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384115 | `0x92d6c1e31e14520e676a687f0a93788b716beff5` | ⚠️ Unaudited |
| Executor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384110 | `0x64c7d40c07efabec2aafdc243bf59eaf2195c6dc` | ⚠️ Unaudited |
| GovernanceStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90dfd35f4a0bb2d30cdf66508085e33c353475d9` | ⚠️ Unaudited |
| LiquidityStakingV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-384133 | `0x5aa653a076c1dbb47cec8c1b4d152444cad91941` | ⚠️ Unaudited |
| MerkleDistributorV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-384135 | `0x01d3348601968ab85b4bb028979006eac235a588` | ⚠️ Unaudited |
| PriorityExecutor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384119 | `0xa306989ba6bcacdeccf3c0614fff2b8c668e3cae` | ⚠️ Unaudited |
| ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384102 | `0x15774d4555fefd57c9fc8b11c8beba993eafcc13` | ⚠️ Unaudited |
| SafetyModuleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd249ad8fa4646c303028a8d29cf8568a38897c55` | ⚠️ Unaudited |
| SafetyModuleV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-384131 | `0x65f7ba4ec257af7c55fd5854e5f6356bbd0fb8ec` | ⚠️ Unaudited |
| StarkExHelperGovernor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384100 | `0x0db9b3f7dd83e29c9bece8e5e1089ba4369e694a` | ⚠️ Unaudited |
| StarkExRemoverGovernorV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384130 | `0xfcaac0f14dea11ede11afcb875f29130e1ad5ec0` | ⚠️ Unaudited |
| StarkProxyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x820ced132f703a53c72c0e78641509c68fe2be34` | ⚠️ Unaudited |
| StarkProxyV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-384134 | `0x0b2b08ac98a1568a34208121c26f4f41a9e0fbb6` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ada60e07717ab19e4a466f5f0ac68a66e3995ce` | ⚠️ Unaudited |
| TreasuryBridge | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-384132 | 2 deployments: ethereum `0x639192d54431f8c816368d3fb4107bc168d0e871`; ethereum `0x8d0051943d4c72af12d638c6b7253c71929a910a` | ⚠️ Unaudited |
| TreasuryMerkleClaimProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95eabb0248d013b9f59c5d5256ce11b0a8140b54` | ⚠️ Unaudited |
| TreasuryVester | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384099 | `0x08a90fe0741b7def03fb290cc7b273f1855767d8` | ⚠️ Unaudited |
| WrappedEthereumDydxToken (wethDYDX) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384106 | `0x46b2deae6eff3011008ea27ea36b7c27255ddfa9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384103 | `0x16bec2d9a010e7d8b2d576d17893c52ddbfe4c06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384104 | `0x3e6e9efb0a677a24f47093a22044dc5451a028cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384105 | `0x40d6992cbd03e0dc1c2de9606d29cb245e737a5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384107 | `0x4d9460e5c958f46a1fe129954a069a37972f16ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384108 | `0x531f3be462f10386d01fbed7fad1d20a61ce7874` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384109 | `0x5d8541e3078be7c2d773185ad8c8b9ed5105e08c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384111 | `0x6aad0bcfbd91963cf2c8fb042091fd411fb05b3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384112 | `0x6c5cd3ad7a16ae207d221908e6b997d9b0dcd7b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384113 | `0x78e899e576c3565c3219dbc9ea5042a9dbed36d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384114 | `0x7e9b1672616ff6d6629ef2879419aae79a9018d2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-384116 | `0x99b0599952a4fd2d1a1561fa4c010827ead30354` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384117 | `0x9d51599a6b10f562619d8ef2efdca1b68ae80d03` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-384118 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384120 | `0xac5d8bcd13da463bea96c75f9085c4e40037f790` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384121 | `0xb9431e19b29b952d9358025f680077c3fd37292f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384122 | `0xc2f5f3505910da80f0592a3cc023881c50b16505` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384123 | `0xcb7fa3a2f47b62293cc2e1a4c7752fc72e49fce2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-384124 | `0xd54f502e184b6b739d7d27a6410a67dc462d69c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384125 | `0xd98e7a71bacb6f11438a8271ddb2efd7f9361f52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384126 | `0xe16718eace44e0cb06b9cd164490a69a6425d1e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384127 | `0xe710ced57456d3a16152c32835b5fb4e72d9ea5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384128 | `0xecae9bf44a21d00e2350a42127a377bf5856d84b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384129 | `0xfa45dcdbec82c94082d283b62506320db8632054` | ❓ Unverified |

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
| ethereum | `0x92d6c1e31e14520e676a687f0a93788b716beff5` | DydxToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 24 |

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
