# Agentic Audit Brief: GAIB

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

- Project: GAIB (`gaib`)
- Website: [https://aid.gaib.ai](https://aid.gaib.ai)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, sei
- Contract surface: 47 unique implementations (47 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $20,855,599.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for GAIB. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, base, bsc, ethereum, sei. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x52323f33551188f170d8de14fe8d8423a839629d`, chain 1)
- UnnamedContract (`0xb3b3c527ba57cd61648e2ec2f5e006a0b390a9f8`, chain 1)
- UnnamedContract (`0xe2e1424687eb676b3807693cbb439362b8ea908e`, chain 1)
- UnnamedContract (`0x81c1fba2c7df54ac76de5ebe373e89bcad3b8632`, chain 8453)
- UnnamedContract (`0x04dfa27c7d1ade09ddfccfa233fb3c8490ca2b18`, chain 42161)
- ERC1967Proxy (`0x18f52b3fb465118731d9e0d276d4eb3599d57596`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 41 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 10 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 6 of 47 unique; 41 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 47
- Raw deployments: 47
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

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressesWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d00499079d7145163a213ab1443056cce6b0f77` | ⚠️ Unaudited |
| AIDAlphaMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x410c19f3f80b64c7486ae34890ee9251d0696433` | ⚠️ Unaudited |
| AIDollarAlphaCUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d02bca29bd9e8cf4a39b25c9c902e6bf00aa54` | ⚠️ Unaudited |
| AIDollarAlphaUSBD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34713d215b51325188fe1e4d4128be6e8aaa87ce` | ⚠️ Unaudited |
| AIDollarAlphaUSD1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5255cc08ebaf6d54ac9448822a18d8a3da29a42` | ⚠️ Unaudited |
| AIDollarAlphaUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eceb13815b0363398e5e863363c55b84c036402` | ⚠️ Unaudited |
| AIDollarAlphaUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a7f9c47092d09583f6ef0cefe8b146c93b29c9` | ⚠️ Unaudited |
| AIDollarAlphaUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc45e7027a0489fe6c2e4a0735097d8e6952a340` | ⚠️ Unaudited |
| AIDollarAlphaUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d976f56343e33a6a4d6e26af7d59358d1359dd4` | ⚠️ Unaudited |
| cUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3e55e2c23ab6adc12accf1075b91c174ee0102` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386684 | `0x18f52b3fb465118731d9e0d276d4eb3599d57596` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8238884ec9668ef77b90c6dff4d1a9f4f4823bfe` | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36c9b5e8f039381d1da79b94a206af8bc076c043` | ⚠️ Unaudited |
| ExternalRequestsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f4d4ead6bcd4de7849898403d88528e3dfc872` | ⚠️ Unaudited |
| ExternalRequestsManagerBetaV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052b1cacbdea7b4d711c6f428a20618ef60fda1b` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | `0xe15fc38f6d8c56af07bbcbe3baf5708a2bf42392` | ⚠️ Unaudited |
| GAIBVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2511dcaa7073c4057a5eea4286c3883198cde60f` | ⚠️ Unaudited |
| Multicall | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xba610d8c8c93580c19fb8800fc406227de8df947` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sei | n/a | `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a` | ⚠️ Unaudited |
| RlpPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14219845c6b7984aa5ec0a39754dcc327169de32` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35533f54740f1f1aa4179e57ba37039dfa16868b` | ⚠️ Unaudited |
| StakedTokenDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c5b703465234f97c5a7b17b602c6224a08031e` | ⚠️ Unaudited |
| TheCounter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa27a69ae180e202fde5d38189a3f24fe24e55861` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290d9544669c9c7a64f6899a0a3b28d563f6ebee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x093285c34515c01a55e15a25812bcf87e7ab0dc6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0da21d330f3f75d730a1b5f1535ca75061cabf61` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x75ec066efb238cf211baa73b28db539541493c70` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7f45180d6ffd0435d8dd695fd01320e6999c261c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x91eda28735ce089a8b5133476263c3fb8303c8ca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xacb7027f271b03b502d65feba617a0d817d62b8e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | sei | n/a | `0x9151434b16b9763660705744891fa906f660ecc5` | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6` | ⚠️ Unaudited |
| UsrExternalRequestsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac85ef29192487e0a109b7f9e40c267a9ea95f2e` | ⚠️ Unaudited |
| USRPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a93414f88f597922a9829df5f7c94b81bc46f64` | ⚠️ Unaudited |
| UsrRedemptionExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60a7b7915980ed34fde6e239618fadcf67897c37` | ⚠️ Unaudited |
| wUSDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82b09f8b6096039aa0d62a5cee8dff7f95791c04` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386679 | `0x52323f33551188f170d8de14fe8d8423a839629d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386680 | `0xb3b3c527ba57cd61648e2ec2f5e006a0b390a9f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386681 | `0xe2e1424687eb676b3807693cbb439362b8ea908e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386683 | `0x81c1fba2c7df54ac76de5ebe373e89bcad3b8632` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386682 | `0x04dfa27c7d1ade09ddfccfa233fb3c8490ca2b18` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audits](https://docs.gaib.ai/products/gaib-products/audit.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [Audit & compliance](https://gaib.gitbook.io/gaib-docs/track-record-and-pipeline/trust-and-compliance/audit-and-compliance.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17247] Audits — no match: Only contract names inferred from report titles; no explicit scope section or file paths found.
- [17248] Audit & compliance — no match: The document is a general compliance and underwriting process description for GAIB, not a smart contract audit report. No contracts, source files, or audit date were found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audits | AIDaVault | unmatched — not counted | — | mentioned in audit report title | no |
| Audits | AID | unmatched — not counted | — | mentioned in audit report title | no |
| Audits | sAID | unmatched — not counted | — | mentioned in audit report title | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [17247] Audits
- [17248] Audit & compliance

Fork inheritance lineage and inherited audits are included when available.
