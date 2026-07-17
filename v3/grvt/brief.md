# Agentic Audit Brief: Grvt

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Grvt (`grvt`)
- Website: [https://grvt.io/](https://grvt.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: chain-326, chain-327, ethereum, grvt-exchange
- Contract surface: 31 unique implementations (36 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $43,740,313.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Grvt. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across chain-326, chain-327, ethereum, grvt-exchange. Structural roles: 4 unclassified, 2 supporting, 1 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: unclassified (4), supporting (2), core (1)
- Contract kinds: contract (6), abstract (1)
- Detected standards: erc1967proxy (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Exchange (`0x85dee82d32d78eaa59588b6574df420ef2a74098`, chain 325)
- TimelockController (`0x4e29715b7ca2569678027c01627d936235ea36de`, chain 1)
- TransparentUpgradeableProxy (`0xe17aed2fc55f4a876315376ffa49fe6358113a65`, chain 1)
- Vault ProxyAdmin (`0xf57be7cb5b1c5e37fdb19ddf8e5a359a5e381575`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (3 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 13 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 14 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 4 of 31 unique; 27 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/21
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 31
- Raw deployments: 36
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 33.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 1 | 4.8% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GRVTBridgeProxy | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-387139 | `0xe17aed2fc55f4a876315376ffa49fe6358113a65` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3Strategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-387145 | `0x1ff873538e62ba19cd36ce97e48f6fc84d07a5e4` | ⚠️ Unaudited |
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x23878914efe38d27c4d67ab83ed1b93a74d4086a` | ⚠️ Unaudited |
| Bridgehub | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x303a465b659cbb0ab36ee643ea362c509eeb5213` | ⚠️ Unaudited |
| ChainAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51a561962bcdd03644233562e7e7afa134be7c95` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe81d64195072e4d09639b31abb257d0096fea9d1` | ⚠️ Unaudited |
| GRVTBaseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x633040f0ae46f2e9759c33cc552cda73c52d3af8`; ethereum `0xab3b124052f0389d1cbed221d912026ac995bb95` | ⚠️ Unaudited |
| GRVTBridgeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7b67bddb74b5ed3de49e1a6da4d1d7460f00780` | ⚠️ Unaudited |
| GRVTL1TreasuryVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-387113 | `0x11f6ee88e10f3ac0c1560b5fd43300f6dda4ef2e` | ⚠️ Unaudited |
| GRVTL1TreasuryVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-387143 | `0xc95fedb8bdc763e4ef093d14e8196afafbb48f45` | ⚠️ Unaudited |
| GRVTTransactionFilterer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3cd52b238ac856600b22756133eeb31ecb25109a`; ethereum `0x8319fede99061c6723c86d366a903e8fa3a0f541` | ⚠️ Unaudited |
| L1NativeTokenVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-387141 | `0xbed1eb542f9a5aa6419ff3deb921a372681111f6` | ⚠️ Unaudited |
| NativeBridgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x17cbac7631063d8a79ddb5c3fc7c2336f0161915`; ethereum `0xf1d59a0d1ec7c0b66b9e04bcae0130302b3c599c` | ⚠️ Unaudited |
| NativeBridgeGateway | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6e93c940830df3ae9a82937b96a9bf7108864473`; ethereum `0xa0b497d5fe1635a1246273b75e5c34d1f2761f8d`; ethereum `0xa20697e4219884128e0c880825280a4d29aebf65` | ⚠️ Unaudited |
| NativeVaultGateway | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81ef29d82c5232627976d182c0a2be177412c7b9` | ⚠️ Unaudited |
| PoolInstance | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-387118 | `0x4e29715b7ca2569678027c01627d936235ea36de` | ⚠️ Unaudited |
| Vault ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387126 | `0xf57be7cb5b1c5e37fdb19ddf8e5a359a5e381575` | ⚠️ Unaudited |
| VaultBridgeLib | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff61d6c6e8334d8cf73011c1069b411f4789a915` | ⚠️ Unaudited |
| VaultStrategyOpsLib | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff41bb293a6eb4bda4f799137be5aa781dc8d86f` | ⚠️ Unaudited |
| WithdrawalFinalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc107ebafde048a6769aef78528f6779592421249` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Exchange | unknown | project_anchor | own_supporting | 0 | grvt-exchange | unit-387127 | `0x85dee82d32d78eaa59588b6574df420ef2a74098` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-387115 | `0x3a23919d4aa39e096e9d6420fd6a2861a20b19e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-387120 | `0x6e1b2a22f8f3768040cfb0b0997851ffb5971439` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-387122 | `0x7bc3485026ac48b6cf9baf0a377477fff5703af8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-387124 | `0x882285e62656b9623af136ce3078c6bdcc33f5e3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | grvt-exchange | unit-387130 | `0xb787151147a17a7d91ffab30a11b80b4868901d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-326 | unit-387132 | `0x3a435a467f19c24f3f867f6c40a7ea628c410998` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-326 | unit-387133 | `0x9faca433bc7723e056f7e88bbb464c7b0d894e93` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-327 | unit-387135 | `0x45ce10dd2014ad01027b745bf34eb12840bda881` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-327 | unit-387137 | `0xd53767fc3b7cc71d22bdecf6c9c8c6207cff11c9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit - Spearbit Report December 14 2025.pdf](https://github.com/gravity-technologies/exchange-contract/blob/main/docs/Audit%20-%20Spearbit%20Report%20December%2014%202025.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21266] Audit - Spearbit Report December 14 2025.pdf — matched: Extracted contract names from findings context; no explicit scope section found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit - Spearbit Report December 14 2025.pdf | FundingAndSettlement | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | TradeContract | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | LiquidationContract | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | DataStructure | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | RiskCheck | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | ConfigContract | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | OracleContract | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | TransferContract | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | AccountContract | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | SubAccountContract | unmatched — not counted | — | mentioned in findings context | no |
| Audit - Spearbit Report December 14 2025.pdf | GRVTBridgeProxy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe17aed2fc55f4a876315376ffa49fe6358113a65` — deployed 2024-12-02 11:46:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit - Spearbit Report December 14 2025.pdf | TradeSig | unmatched — not counted | — | mentioned in findings context | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 11 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
