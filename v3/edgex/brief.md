# Agentic Audit Brief: edgeX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 7 (1 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: edgeX (`edgex`)
- Website: [https://edgex.exchange/](https://edgex.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, edge, ethereum, optimism, polygon
- Contract surface: 49 unique implementations (50 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $94,542,388.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for edgeX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across arbitrum, base, bsc, edge, ethereum, optimism, polygon. Structural roles: 2 core, 2 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (2), unclassified (2)
- Contract kinds: contract (3), abstract (1)
- Detected standards: accesscontrol (1), erc165 (1), erc1967proxy (1), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CCTP Vault Relayer (`0x449ab3b7aac57c2695e359f422365c726ed1ed0a`, chain 3343)
- EDGE token proxy (`0xb0076de78dc50581770bba1d211ddc0ad4f2a241`, chain 1)
- Edge Vault (`0x4b1e12fbee329d462efcae43e3fe52110c923717`, chain 3343)
- EdgeToken (`0x9406dd76452c172b3cc77092b42398e87dab3161`, chain 1)
- edgeX Spot Claim Contract (`0x7f861a7db997b4f6e5ef9954a3b5d5b29c463cb2`, chain 1)
- Perpetual Vault (`0x48fc02c5bd34af7086a5c70d4c59d18d10a557b5`, chain 3343)
- Spot Vault (`0x87e11a60e6fdde29d86ce446ae06ddbc19d78e53`, chain 3343)
- V2 Perpetual contract (`0xeeb3fb05cca17745cbdf193a9b16537efb68fac8`, chain 3343)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (3 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/42 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 33 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (18 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 8 of 49 unique; 41 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/12
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 49
- Raw deployments: 50
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 5 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 33.3% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 1 | 8.3% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EdgeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384231 | `0x9406dd76452c172b3cc77092b42398e87dab3161` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EDGE token proxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384234 | `0xb0076de78dc50581770bba1d211ddc0ad4f2a241` | ⚠️ Unaudited |
| edgeX Spot Claim Contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384229 | `0x7f861a7db997b4f6e5ef9954a3b5d5b29c463cb2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xce306644d20ab523636f2121952fc6222623d551` | ⚠️ Unaudited |
| FinalizableCommittee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23bf3dcc14680162b7f5355aabb56d31823c946e` | ⚠️ Unaudited |
| FinalizableGpsFactAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4abbc1826389ac0feaa49e70c30a041b665e8562` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x23878914efe38d27c4d67ab83ed1b93a74d4086a` | ⚠️ Unaudited |
| MultiSigPoolV5WithPermit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x166b5369f043474412408c8aba0d084e9cae0eb6` | ⚠️ Unaudited |
| SpotVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x238e0edeb0e217fecd9e1ca98efa1219fc841487` | ⚠️ Unaudited |
| StarkPerpetual | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-384265 | 2 deployments: ethereum `0x8c43c9bec15d82d153c52518030e0a9590abd35d`; ethereum `0xfaae2946e846133af314d1df13684c89fa7d83dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x107695630130919cb040b095b9b20511d6e211bb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x6f4836afd5e21edcee9b838c5a4125829ec198d0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CCTP Vault Relayer | unknown | project_anchor | own_supporting | 0 | edge | unit-384247 | `0x449ab3b7aac57c2695e359f422365c726ed1ed0a` | ❓ Unverified |
| Edge Vault | unknown | project_anchor | own_supporting | 0 | edge | unit-384249 | `0x4b1e12fbee329d462efcae43e3fe52110c923717` | ❓ Unverified |
| Perpetual Vault | unknown | project_anchor | own_supporting | 0 | edge | unit-384248 | `0x48fc02c5bd34af7086a5c70d4c59d18d10a557b5` | ❓ Unverified |
| Spot Vault | unknown | project_anchor | own_supporting | 0 | edge | unit-384252 | `0x87e11a60e6fdde29d86ce446ae06ddbc19d78e53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384224 | `0x12f2375dc85aaf8b76e8c9411855915ca25dffad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384225 | `0x221e7fca09589ab2d7dc552ee72acf1a2ff10048` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-384226 | `0x28b5a0e9c621a5badaa536219b3a228c8168cf5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384227 | `0x5cbe2dda520e744c87a080b01394f57f7d29cc3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384228 | `0x6973b640a1d6a1f57640db4084c6c4b45c8a0698` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-384230 | `0x81d40f21f12a8f0e3252bccb954d722d4c464b64` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-384232 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384233 | `0xa13cc6db0a4eca6a9c099e0d12c7369b9fec89a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384235 | `0xb3118e9a5b68413f85a2fe66a36237362f9d16e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384236 | `0xb40022e0d472412abbd67b89df106c2f26d39d9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384237 | `0xbe9a129909ebcb954bc065536d2bfafbd170d27a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384238 | `0xc0a1a1e4af873e9a37a0cac37f3ab81152432cc5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-384239 | `0xf0da8b0071270e25ce7e63276f1f0ad2d5a09d1d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-384240 | `0x0b2c639c533813f4aa9d7837caf62653d097ff85` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-384241 | `0x28b5a0e9c621a5badaa536219b3a228c8168cf5d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-384242 | `0x81d40f21f12a8f0e3252bccb954d722d4c464b64` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-384261 | `0x3eedb0d9c95263778a62081f2a62fc77a392116d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-384243 | `0x28b5a0e9c621a5badaa536219b3a228c8168cf5d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-384244 | `0x3c499c542cef5e3811e1192ce70d8cc03d5c3359` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-384245 | `0x81d40f21f12a8f0e3252bccb954d722d4c464b64` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-384246 | `0xad825544c91964a8d209f97fa360a7db718b77b8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | edge | unit-384250 | `0x5b61381fc9e58e70efc13a4a97516997019198ee` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | edge | unit-384253 | `0x98706a006bc632df31cadfcbd43f38887ce2ca5c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | edge | unit-384254 | `0x98d2919b9a214e6fa5384ac81e6864ba686ad74c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-384262 | `0x28b5a0e9c621a5badaa536219b3a228c8168cf5d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-384263 | `0x81d40f21f12a8f0e3252bccb954d722d4c464b64` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-384264 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-384256 | `0x28b5a0e9c621a5badaa536219b3a228c8168cf5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-384257 | `0x81144d6e7084928830f9694a201e8c1ce6ed0cb2` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-384258 | `0x81d40f21f12a8f0e3252bccb954d722d4c464b64` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-384259 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-384260 | `0xceeed84620e5eb9ab1d6dfc316867d2cda332e41` | ❓ Unverified |
| V2 Perpetual contract | unknown | project_anchor | own_supporting | 0 | edge | unit-384255 | `0xeeb3fb05cca17745cbdf193a9b16537efb68fac8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [report-binenet-vault-cctp-integration.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-binenet-vault-cctp-integration.pdf) | Binenet | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [report-halborn-edgex-v2.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-halborn-edgex-v2.pdf) | Halborn | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 45 | high |
| [report-rigsec-edgex-v1.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-rigsec-edgex-v1.pdf) | RigSec | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [report-slowmist-edgedistributor.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-slowmist-edgedistributor.pdf) | SlowMist | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [report-slowmist-edgetoken.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-slowmist-edgetoken.pdf) | SlowMist | Audit | 2026-03 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [report-slowmist-edgex-v1.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-slowmist-edgex-v1.pdf) | SlowMist | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [report-spearbit-edgex-v2.pdf](https://github.com/edgex-Tech/audit-reports/blob/main/report-spearbit-edgex-v2.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 47 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19725] report-binenet-vault-cctp-integration.pdf — no match: Extracted 9 contract names from the scope table in Section 2.2. Audit date from Section 2.3: Mar 14, 2026 — Mar 20, 2026, using end date.
- [19726] report-halborn-edgex-v2.pdf — no match: All contracts listed in the Scope section of the report were extracted. The audit date is the end date of the engagement: December 25, 2025.
- [19727] report-rigsec-edgex-v1.pdf — no match: Scope section lists only addresses, not contract names. The only contract name explicitly mentioned in the report is MultiSigPoolV5WithPermit.
- [19728] report-slowmist-edgedistributor.pdf — no match: Only one contract, EdgeDistributor, is in scope. The audit date is explicitly given as 2026.03.30 in the executive summary and audit result table.
- [19729] report-slowmist-edgetoken.pdf — matched: Only one contract (EdgeToken) is audited. The report mentions proxy and implementation addresses but those are deployment instances, not separate contracts in scope.
- [19730] report-slowmist-edgex-v1.pdf — no match: Extracted contract names from visibility description and findings. Audit date from audit result section: 2025.06.16 - 2025.06.18, using end date.
- [19731] report-spearbit-edgex-v2.pdf — no match: All contracts listed in the scope section (Section 2.1) were extracted. The audit date is from the cover page: March 9, 2026.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| report-binenet-vault-cctp-integration.pdf | EdgexVault | unmatched — not counted | — | listed in scope table (Section 2.2) | no |
| report-binenet-vault-cctp-integration.pdf | EdgexVaultStorage | unmatched — not counted | — | listed in scope table (Section 2.2) | no |
| report-binenet-vault-cctp-integration.pdf | FrontContract | unmatched — not counted | — | listed in scope table (Section 2.2) | no |
| report-binenet-vault-cctp-integration.pdf | CCTPVaultRelayer | unmatched — not counted | — | listed in scope table (Section 2.2) | no |
| report-binenet-vault-cctp-integration.pdf | BurnMessageV2 | unmatched — not counted | — | listed in scope table (Section 2.2) | no |
| report-binenet-vault-cctp-integration.pdf | MessageV2 | unmatched — not counted | — | listed in scope table (Section 2.2) | no |
| report-binenet-vault-cctp-integration.pdf | BurnMessage | unmatched — not counted | — | listed in scope table (Section 2.2) | no |
| report-binenet-vault-cctp-integration.pdf | SpotVault | unmatched — not counted | — | listed in scope table (Section 2.2) | no |
| report-binenet-vault-cctp-integration.pdf | IVaultRelayer | unmatched — not counted | — | listed in scope table (Section 2.2) | no |
| report-halborn-edgex-v2.pdf | AccountManager | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | IAccountManager | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | RegisterAccount | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | GeneralConfig | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | Create2Factory | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | ILoadingZone | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | LoadingZone | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | Funding | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | FundingLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | IFunding | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | IOracle | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | IOrderManager | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | ITwapOrder | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | LimitOrder | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | LimitOrderLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | OrderManager | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | TwapOrder | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | TwapOrderManager | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | IPositionManager | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | PositionAssetLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | ISignerManager | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | SignerManager | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | SignerPermissions | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | DeleverageTransLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | DepositTransLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | FundingTickTransLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | IsolatedMarginTransLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | LiquidateTransLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | OraclePriceTickTransLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | PermissionsTransLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | RegisterAccountTransLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | SetMarginPreferenceTransLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | TradeTransLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | TransferTransLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | TwapTransLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | WithdrawalTransLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | EIP712Lib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | EIP712VerificationLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | SignaturesLib | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | Uint64Set | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | MultiTransactionProcessor | unmatched — not counted | — | listed in scope | no |
| report-halborn-edgex-v2.pdf | TransactionProcessor | unmatched — not counted | — | listed in scope | no |
| report-rigsec-edgex-v1.pdf | MultiSigPoolV5WithPermit | unmatched — not counted | — | mentioned in findings as the contract containing the functions deposit, depositWithPermit, withdrawETH, withdrawErc20, withdrawERC20Mpc, factTransferErc20 | no |
| report-slowmist-edgedistributor.pdf | EdgeDistributor | unmatched — not counted | — | listed in scope and code overview | no |
| report-slowmist-edgetoken.pdf | EdgeToken | own contract | EdgeToken (selected) `0x9406dd76452c172b3cc77092b42398e87dab3161` — deployed 2026-02-19 08:30:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-slowmist-edgex-v1.pdf | MultiSigPoolV5WithPermit | unmatched — not counted | — | listed in scope and findings | no |
| report-slowmist-edgex-v1.pdf | StarkPerpetual | unmatched — not counted | — | mentioned in project overview and visibility description | no |
| report-slowmist-edgex-v1.pdf | Proxy | unmatched — not counted | — | listed in visibility description and finding N5 | no |
| report-slowmist-edgex-v1.pdf | MainDispatcher | unmatched — not counted | — | listed in visibility description | no |
| report-slowmist-edgex-v1.pdf | MainDispatcherBase | unmatched — not counted | — | listed in visibility description | no |
| report-slowmist-edgex-v1.pdf | BlockDirectCall | unmatched — not counted | — | listed in visibility description | no |
| report-slowmist-edgex-v1.pdf | Governance | unmatched — not counted | — | listed in visibility description | no |
| report-spearbit-edgex-v2.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | MultiTransactionProcessor | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | TransactionProcessor | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | AccountManager | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | IAccountManager | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | RegisterAccount | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | GeneralConfig | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | Create2Factory | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | IEdgexVault | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | ILoadingZone | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | LoadingZone | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | Funding | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | FundingLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | IFunding | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | IOracle | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | IOrderManager | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | ITwapOrder | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | LimitOrder | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | LimitOrderLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | OrderManager | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | TwapOrder | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | TwapOrderManager | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | IPositionManager | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | PositionAssetLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | ISignerManager | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | SignerManager | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | SignerPermissions | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | DeleverageTransLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | DelistSettleTransLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | DepositTransLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | FundingTickTransLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | IsolatedMarginTransLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | LiquidateTransLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | OraclePriceTickTransLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | PermissionsTransLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | RegisterAccountTransLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | SetMarginPreferenceTransLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | TradeTransLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | TransferTransLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | TwapTransLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | WithdrawalTransLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | EIP712Lib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | EIP712VerificationLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | SignaturesLib | unmatched — not counted | — | listed in scope | no |
| report-spearbit-edgex-v2.pdf | Uint64Set | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 40 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 110 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, medium=1
- Match method counts: unique_name=1

Zero-match audit list:

- [19725] report-binenet-vault-cctp-integration.pdf
- [19726] report-halborn-edgex-v2.pdf
- [19727] report-rigsec-edgex-v1.pdf
- [19728] report-slowmist-edgedistributor.pdf
- [19730] report-slowmist-edgex-v1.pdf
- [19731] report-spearbit-edgex-v2.pdf

Fork inheritance lineage and inherited audits are included when available.
