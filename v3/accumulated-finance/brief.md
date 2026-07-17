# Agentic Audit Brief: Accumulated Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 43.7% over 90 days

## Project Overview

- Project: Accumulated Finance (`accumulated-finance`)
- Website: [https://accumulated.finance](https://accumulated.finance)
- Lifecycle: unknown (Tier 0, 84.2% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, manta-pacific, sei
- Contract surface: 49 unique implementations (59 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $978,025.00
- On-chain TVL (included contracts): $12,187.76
- TVL by chain: Ethereum $12,187.76

## Project Description

This brief describes the observed EVM deployment and audit surface for Accumulated Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, bsc, ethereum, manta-pacific, sei. Structural roles: 7 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (7)
- Contract kinds: contract (7)
- Detected standards: erc20 (6), ownable (6), pausable (6), erc20permit (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Manta (`0x95cef13441be50d20ca4558cc0a27b601ac544e5`, chain 169)
- rstETH (`0x684d7fd1067ed8e9686e6fd764d048b9bf92dfa9`, chain 1)
- StakedACME (`0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547`, chain 1)
- stVLX (`0xcba2aeec821b0b119857a9ab39e09b034249681a`, chain 56)
- stZETA (`0xf38feedb0c85c1e1d6864c7513ac646d28bb0cfc`, chain 1)
- stZETA (`0xcf123d8638266629fb02fc415ad47bd47de01a6b`, chain 56)
- WrappedToken (`0xdf4ef6ee483953fe3b84abd08c6a060445c01170`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 43 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 6 of 49 unique; 43 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/37
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 49
- Raw deployments: 59
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $12,187.76
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $12,187.76 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| WrappedToken | token | project_anchor | own_supporting | 0 | ethereum | unit-225531 | `0xdf4ef6ee483953fe3b84abd08c6a060445c01170` | ⚠️ Unaudited |
| AccumulateBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xba050938970c8eaeda3e970b571a6fe463db7d0e`; arbitrum `0xba050938970c8eaeda3e970b571a6fe463db7d0e` | ⚠️ Unaudited |
| ACMELiquidStaking | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217`; arbitrum `0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217` | ⚠️ Unaudited |
| ERC20MinterRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x050ae6734f7eab5fd3f10bba937a009de5ced081` | ⚠️ Unaudited |
| eSEI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xcba2aeec821b0b119857a9ab39e09b034249681a` | ⚠️ Unaudited |
| eSEIMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217` | ⚠️ Unaudited |
| eSEIMinterWithdrawal | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 2 deployments: sei `0x6626bc5f5ce20790ba25594b785a71252e861ced`; sei `0xf854342c70fe4b2a340451d76858fde34eb116dd` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd22f2de31ba14917ccd7c6b8a52fee6be893a17e` | ⚠️ Unaudited |
| Manta | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-225533 | `0x95cef13441be50d20ca4558cc0a27b601ac544e5` | ⚠️ Unaudited |
| rstETH | token | project_anchor | own_supporting | 0 | ethereum | unit-225529 | `0x684d7fd1067ed8e9686e6fd764d048b9bf92dfa9` | ⚠️ Unaudited |
| rstETHMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76cefc49c460cd37d9653feaffcffc6ade7dad3a` | ⚠️ Unaudited |
| stACMEMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xdde19cf8bec23c2103f5ada61c83d5fd79e9714f`; arbitrum `0xe54fb84a61583a4cc80878c396ebec588f84ff5d` | ⚠️ Unaudited |
| StakedACME | token | project_anchor | own_supporting | 0 | ethereum | unit-225530 | `0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547` | ⚠️ Unaudited |
| StakedACME | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xe194d30afdbae89b3118b8b7bc7b331cc3333b88`; arbitrum `0x8f0ecda9679ad16e30be3d83d183c482821f5325` | ⚠️ Unaudited |
| stARB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xedd7083eb44e8cc4e734e57e0032451a04bae625` | ⚠️ Unaudited |
| stARBMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa3d5398f0258b766f1bb7025f252dc57cabbb86` | ⚠️ Unaudited |
| stMANTA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xcba2aeec821b0b119857a9ab39e09b034249681a` | ⚠️ Unaudited |
| stMANTAMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217` | ⚠️ Unaudited |
| stMANTAMinterV203 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x1103a4761294012fa9276b62935ab626f82cf662` | ⚠️ Unaudited |
| stMANTAMinterWithdrawal | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 2 deployments: manta-pacific `0x27741d007358eb6c1924bf459cd7e06e60c8c1de`; manta-pacific `0xe2cf4ec0360386876bda3a919a50c79f094b01a5` | ⚠️ Unaudited |
| stVLX | unknown | project_anchor | own_supporting | 0 | bsc | unit-225535 | `0xcba2aeec821b0b119857a9ab39e09b034249681a` | ⚠️ Unaudited |
| stVLXMinterBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5452f159b48d14a22cbf1988038c41dfec5a0fe8` | ⚠️ Unaudited |
| stVLXMinterBSCV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5683e8e927d35c7a2fc83c40ddeebb7e47a58652` | ⚠️ Unaudited |
| stZETA | unknown | project_anchor | own_supporting | 0 | bsc | unit-225536 | 2 deployments: ethereum `0xf38feedb0c85c1e1d6864c7513ac646d28bb0cfc`; bsc `0xcf123d8638266629fb02fc415ad47bd47de01a6b` | ⚠️ Unaudited |
| stZETAMinterERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0a2fe6291e5dc0a38fd5b1c961f3b23a955138c0`; bsc `0xeed543b40c7fe37b330824dfc8800a4f9caaf0ff` | ⚠️ Unaudited |
| WACME | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf4ef6ee483953fe3b84abd08c6a060445c01170` | ⚠️ Unaudited |
| weSEI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547` | ⚠️ Unaudited |
| weSEILendingV100 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x39d805cd239b1c69beb4293df86c4353fa60085b` | ⚠️ Unaudited |
| wrstETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36329065407eb354709454baf693070f931b84dc` | ⚠️ Unaudited |
| wstACME | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xa5e0163f778b05a522df8fe374f15d4ffbe54c2a`; arbitrum `0xa1372eae7acdeaac3aa9b4ab57d5451a83328080` | ⚠️ Unaudited |
| wstARB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02175c12d20665f162384344bda8e24ea5820071` | ⚠️ Unaudited |
| wstMANTA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547` | ⚠️ Unaudited |
| wstMANTALendingV102 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x66bf6995af268b90d934f2678a34ecaa53bba6b8` | ⚠️ Unaudited |
| wstVLX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547` | ⚠️ Unaudited |
| wstZETA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4742ba1631d01ed681baf7db180cea5ec626884d`; bsc `0xfdb7d8c703c1b6aaac21a9b063110b76dca127ea` | ⚠️ Unaudited |
| Zeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf091867ec603a6628ed83d274e835539d82e9cc8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4781f0c82dc3ab55d79bd3956689d1b65fbd23ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1641194a8a7ea9c19db00cd568f428f3e331740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c1347c92e093bdfe500e4d43f3c4c0829f8e49c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5408ed89fdd3a6dad70a250d4493e3ca7cb5769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd702d7ce5d07c1c54828321789ed33e797e06f81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf091867ec603a6628ed83d274e835539d82e9cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xf091867ec603a6628ed83d274e835539d82e9cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xddb3422497e61e13543bea06989c0789117555c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xed57966f1566de1a90042d07403021ea52ad4724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3557371afed82dd683de278924bd0e1a790a3c49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4781f0c82dc3ab55d79bd3956689d1b65fbd23ad` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [HatsFinance-Audit.md](https://github.com/AccumulatedFinance/contracts-v2/blob/master/audits/HatsFinance-Audit.md) | HatsFinance | Contest | n/a | unknown | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [Nethermind-AuditAgent-Audit.md](https://github.com/AccumulatedFinance/contracts-v2/blob/master/audits/Nethermind-AuditAgent-Audit.md) | Nethermind | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [audit-metatrust-2024-06-29.pdf](https://github.com/AccumulatedFinance/contracts-v2/blob/master/audits/audit-metatrust-2024-06-29.pdf) | MetaTrust | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14545] HatsFinance-Audit.md — no match: Scope explicitly lists Minter.sol and stROSEMinter.sol. No audit date found in the report.
- [14546] Nethermind-AuditAgent-Audit.md — no match: The report does not have a dedicated scope section; contract names were extracted from the introduction and findings. No audit date found.
- [14547] audit-metatrust-2024-06-29.pdf — no match: The report explicitly lists Minter as audited contract and mentions stToken and wstToken as other contracts in Accumulated Finance. Multiple derived contracts (BaseMinter, NativeMinter, etc.) are referenced in findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| HatsFinance-Audit.md | Minter | unmatched — not counted | — | listed in scope | no |
| HatsFinance-Audit.md | stROSEMinter | unmatched — not counted | — | listed in scope | no |
| Nethermind-AuditAgent-Audit.md | NativeLending | unmatched — not counted | — | mentioned as contract implementation for borrowing native tokens | no |
| Nethermind-AuditAgent-Audit.md | ERC20Lending | unmatched — not counted | — | mentioned as contract implementation for borrowing ERC20 tokens | no |
| Nethermind-AuditAgent-Audit.md | BaseLending | unmatched — not counted | — | mentioned as abstract contract providing core lending functionality | no |
| audit-metatrust-2024-06-29.pdf | Minter | unmatched — not counted | — | listed in scope and findings | no |
| audit-metatrust-2024-06-29.pdf | BaseMinter | unmatched — not counted | — | mentioned in findings | no |
| audit-metatrust-2024-06-29.pdf | NativeMinter | unmatched — not counted | — | mentioned in findings | no |
| audit-metatrust-2024-06-29.pdf | ERC20Minter | unmatched — not counted | — | mentioned in findings | no |
| audit-metatrust-2024-06-29.pdf | BaseMinterRedeem | unmatched — not counted | — | mentioned in findings | no |
| audit-metatrust-2024-06-29.pdf | BaseMinterWithdrawal | unmatched — not counted | — | mentioned in findings | no |
| audit-metatrust-2024-06-29.pdf | NativeMinterWithdrawal | unmatched — not counted | — | mentioned in findings | no |
| audit-metatrust-2024-06-29.pdf | ERC20MinterWithdrawal | unmatched — not counted | — | mentioned in findings | no |
| audit-metatrust-2024-06-29.pdf | stToken | unmatched — not counted | — | explicitly listed as contract in scope | no |
| audit-metatrust-2024-06-29.pdf | wstToken | unmatched — not counted | — | explicitly listed as contract in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xdf4ef6ee483953fe3b84abd08c6a060445c01170` | WrappedToken | token | $12,187.76 | Verified native implementation with $12,187.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x684d7fd1067ed8e9686e6fd764d048b9bf92dfa9` | rstETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547` | StakedACME | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcba2aeec821b0b119857a9ab39e09b034249681a` | stVLX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcf123d8638266629fb02fc415ad47bd47de01a6b` | stZETA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: n/a

Zero-match audit list:

- [14545] HatsFinance-Audit.md
- [14546] Nethermind-AuditAgent-Audit.md
- [14547] audit-metatrust-2024-06-29.pdf

Fork inheritance lineage and inherited audits are included when available.
