# Agentic Audit Brief: Chainflip

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Chainflip (`chainflip`)
- Website: [https://chainflip.io/](https://chainflip.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 20 unique implementations (117 raw deployments)
- Coverage basis: 1/11 confirmed own live verified implementations (9.1%); conservative 9.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $33,405,700.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Chainflip. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across arbitrum, ethereum. Structural roles: 7 core, 2 supporting, 2 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (7), supporting (2), unclassified (2)
- Contract kinds: contract (11)
- Detected standards: erc1967proxy (2), erc20 (2)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2260fa...c2c599`, chain 1)
- UnnamedContract (`0xfd086b...9fcbb9`, chain 42161)
- AddressChecker (`0x79001a...498920`, chain 1)
- AddressChecker (`0xc1b129...3d5481`, chain 42161)
- FiatTokenProxy (`0xa0b869...06eb48`, chain 1)
- FiatTokenProxy (`0xaf88d0...8e5831`, chain 42161)
- FLIP (`0x826180...22678a`, chain 1)
- KeyManager (`0xcd351d...bf08be`, chain 1)
- KeyManager (`0xbfe612...000275`, chain 42161)
- StateChainGateway (`0x6995ab...621dbd`, chain 1)
- TetherToken (`0xdac17f...831ec7`, chain 1)
- Vault (`0xf5e103...f62bcc`, chain 1)
- Vault (`0x79001a...498920`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/11 (9.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 7 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 13 of 20 unique; 7 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/17
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 20
- Raw deployments: 117
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 9.1% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 1 | 5.9% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FLIP | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231754 | `0x826180...22678a` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1562ad...155611`; arbitrum `0x69c700...3c9892` | ⚠️ Unaudited |
| AddressChecker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231753 | `0x79001a...498920` | ⚠️ Unaudited |
| AddressChecker | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231768 | `0xc1b129...3d5481` | ⚠️ Unaudited |
| AddressHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3797a...7d2136` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f4ec3...5b8419` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | ethereum | unit-231770 | `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | arbitrum | unit-231771 | `0xaf88d0...8e5831` | ⚠️ Unaudited |
| KeyManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-231757 | `0xcd351d...bf08be` | ⚠️ Unaudited |
| KeyManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-231767 | `0xbfe612...000275` | ⚠️ Unaudited |
| ScUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13ad79...301380` | ⚠️ Unaudited |
| StateChainGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231752 | `0x6995ab...621dbd` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 0 | ethereum | unit-231758 | `0xdac17f...831ec7` | ⚠️ Unaudited |
| TokenVestingNoStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 58 deployments: ethereum `0x0300a7...57b03f`; ethereum `0x04c0b1...0f4df9`; ethereum `0x0c3593...b2de29`; ethereum `0x0e7975...a4a2b1`; ethereum `0x1037ea...559541`; ethereum `0x120aa7...a963fd`; ethereum `0x18151c...cae943`; ethereum `0x1917fd...129982`; ethereum `0x1aaa03...43e887`; ethereum `0x231863...c199d2`; ethereum `0x2d1fab...3d7c55`; ethereum `0x2d3b1b...85b367`; ethereum `0x319925...dc8a93`; ethereum `0x34d473...63d7d9`; ethereum `0x387859...387e58`; ethereum `0x393c7c...cd2196`; ethereum `0x3aca5e...5cc966`; ethereum `0x3eedae...b05ca7`; ethereum `0x3f495f...35bb6d`; ethereum `0x4003c0...e9fa66`; ethereum `0x453ace...1acfba`; ethereum `0x4a1a42...ffe979`; ethereum `0x4ce026...65de53`; ethereum `0x4dd609...e39956`; ethereum `0x55ec5c...dd29e9`; ethereum `0x5df5e9...2b3773`; ethereum `0x5eb308...2f2bdc`; ethereum `0x63d481...1aa4dd`; ethereum `0x695eb6...808161`; ethereum `0x6a52a4...43e66a`; ethereum `0x71b7a8...2fc71b`; ethereum `0x766ece...5ffad8`; ethereum `0x7a5068...f69ebf`; ethereum `0x7eb1b8...4b7e75`; ethereum `0x838e97...b5aed4`; ethereum `0x84bc95...ba74be`; ethereum `0x867fe8...8ce7bf`; ethereum `0x87aba8...0eeb05`; ethereum `0x87fa98...db26c2`; ethereum `0x8b5aaa...dc06d5`; ethereum `0x8b8af7...015a73`; ethereum `0x8d1ecf...736e3a`; ethereum `0x9abdbf...5ffa4c`; ethereum `0x9efca9...db677f`; ethereum `0xa1dd67...e53a44`; ethereum `0xacddca...f4f998`; ethereum `0xb409e9...63ec00`; ethereum `0xb994e4...a94ae0`; ethereum `0xbb634e...1a5d00`; ethereum `0xbcc69b...9090a3`; ethereum `0xce35e9...355f0e`; ethereum `0xd80a4a...828f10`; ethereum `0xe2cfdb...929f4f`; ethereum `0xe7a906...530774`; ethereum `0xe904d4...e0b08e`; ethereum `0xead5f6...cf8c70`; ethereum `0xeddd18...7cd668`; ethereum `0xfa7431...361507` | ⚠️ Unaudited |
| TokenVestingStaking | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 40 deployments: ethereum `0x00b284...2830b9`; ethereum `0x048052...454d27`; ethereum `0x05f739...aaf65e`; ethereum `0x08f097...95e31e`; ethereum `0x0ba803...412293`; ethereum `0x0e04c6...2c1125`; ethereum `0x159cd1...8699ed`; ethereum `0x1728e5...bc0861`; ethereum `0x27689e...aa0e7d`; ethereum `0x2cd644...df2b33`; ethereum `0x2f0a87...3f9f0f`; ethereum `0x302a35...f1eb9e`; ethereum `0x3426ed...682afb`; ethereum `0x36541c...e2ba8e`; ethereum `0x365609...a59cb5`; ethereum `0x3bfe74...5bf858`; ethereum `0x3c463c...18e014`; ethereum `0x49d9c4...0fef37`; ethereum `0x4c1b4e...c3de23`; ethereum `0x634683...391d49`; ethereum `0x751a73...3e85cc`; ethereum `0x7e6259...97df95`; ethereum `0x7fe0eb...0bee7c`; ethereum `0x835012...2d5145`; ethereum `0x83c385...2d1234`; ethereum `0x884f1b...d4db35`; ethereum `0x8c3c5f...d46c4d`; ethereum `0x8f0f6e...c05218`; ethereum `0x8f9fec...e9164d`; ethereum `0xbdefa5...3c2f45`; ethereum `0xc19185...e90dda`; ethereum `0xc1f8d8...f4c20a`; ethereum `0xc73e1d...920d32`; ethereum `0xc9b4a2...74948d`; ethereum `0xda6746...59a86e`; ethereum `0xde4c12...c67d38`; ethereum `0xe05254...24707e`; ethereum `0xf361c4...4fe474`; ethereum `0xf38039...6d2a08`; ethereum `0xf7fb8e...be8813` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-231760 | `0xf5e103...f62bcc` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-231766 | `0x79001a...498920` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231747 | `0x2260fa...c2c599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfe612...000275` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231769 | `0xfd086b...9fcbb9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023-04-TrailOfBits-securityreview.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/2023-04-TrailOfBits-securityreview.pdf) | Trail of Bits | Audit | 2023-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 16 | high |
| [Chainflip_Backend_-_Zellic_Audit_Report.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/Chainflip_Backend_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Multisig-Kudelski-Q1-2022.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/Multisig-Kudelski-Q1-2022.pdf) | Kudelski Security | Audit | 2022-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2023-04-chainflip-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-04-chainflip-securityreview.pdf) | Trail of Bits | Audit | 2023-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3973] 2023-04-TrailOfBits-securityreview.pdf — matched: Extracted contract names from Project Targets section and coverage descriptions. Audit date from final report delivery date.
- [3974] Chainflip_Backend_-_Zellic_Audit_Report.pdf — no match: Extracted 5 pallets/components from scope section. Audit date from cover page.
- [3975] Multisig-Kudelski-Q1-2022.pdf — no match: The audit report is for a Rust implementation of the FROST cryptographic protocol, not for smart contracts. No smart contract names were found in scope.
- [14744] 2023-04-chainflip-securityreview.pdf — matched: Extracted contract names from Project Targets and Project Coverage sections. Audit date from cover page and final report delivery date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-04-TrailOfBits-securityreview.pdf | StakeManager | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | FLIP | own contract | FLIP (selected) `0x826180...22678a` — deployed 2023-10-04 15:13:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-04-TrailOfBits-securityreview.pdf | TokenVesting | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | Vault | ambiguous — not counted | Vault (alternative) `0x79001a...498920` — deployed 2024-05-06 17:25:38+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0xf5e103...f62bcc` — deployed 2023-10-04 15:13:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-04-TrailOfBits-securityreview.pdf | Deposit | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | KeyManager | ambiguous — not counted | KeyManager (alternative) `0xcd351d...bf08be` — deployed 2023-10-04 15:13:23+03 — liveness: live (current_address_book_code)<br>KeyManager (alternative) `0xbfe612...000275` — deployed 2024-05-06 17:25:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-04-TrailOfBits-securityreview.pdf | GovernanceCommunityGuarded | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-witnesser | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-staking | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-governance | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-threshold-signature | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-broadcast | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-validator | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-vaults | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-ingress-egress | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-lp | unmatched — not counted | — | listed in scope | no |
| 2023-04-TrailOfBits-securityreview.pdf | cf-tokenholder-governance | unmatched — not counted | — | listed in scope | no |
| Chainflip_Backend_-_Zellic_Audit_Report.pdf | cf-lp | unmatched — not counted | — | listed in scope | no |
| Chainflip_Backend_-_Zellic_Audit_Report.pdf | cf-pools | unmatched — not counted | — | listed in scope | no |
| Chainflip_Backend_-_Zellic_Audit_Report.pdf | cf-swapping | unmatched — not counted | — | listed in scope | no |
| Chainflip_Backend_-_Zellic_Audit_Report.pdf | cf-witnesser | unmatched — not counted | — | listed in scope | no |
| Chainflip_Backend_-_Zellic_Audit_Report.pdf | Engine | unmatched — not counted | — | listed in scope | no |
| 2023-04-chainflip-securityreview.pdf | StakeManager | unmatched — not counted | — | listed in Project Coverage and Detailed Findings | no |
| 2023-04-chainflip-securityreview.pdf | FLIP | own contract | FLIP (selected) `0x826180...22678a` — deployed 2023-10-04 15:13:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-04-chainflip-securityreview.pdf | TokenVesting | unmatched — not counted | — | listed in Project Coverage | no |
| 2023-04-chainflip-securityreview.pdf | Vault | ambiguous — not counted | Vault (alternative) `0x79001a...498920` — deployed 2024-05-06 17:25:38+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0xf5e103...f62bcc` — deployed 2023-10-04 15:13:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-04-chainflip-securityreview.pdf | Deposit | unmatched — not counted | — | listed in Project Coverage and Detailed Findings | no |
| 2023-04-chainflip-securityreview.pdf | KeyManager | ambiguous — not counted | KeyManager (alternative) `0xcd351d...bf08be` — deployed 2023-10-04 15:13:23+03 — liveness: live (current_address_book_code)<br>KeyManager (alternative) `0xbfe612...000275` — deployed 2024-05-06 17:25:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-04-chainflip-securityreview.pdf | GovernanceCommunityGuarded | unmatched — not counted | — | listed in Project Coverage | no |
| 2023-04-chainflip-securityreview.pdf | cf-witnesser | unmatched — not counted | — | listed in Project Coverage | no |
| 2023-04-chainflip-securityreview.pdf | cf-staking | unmatched — not counted | — | listed in Project Coverage and Detailed Findings | no |
| 2023-04-chainflip-securityreview.pdf | cf-governance | unmatched — not counted | — | listed in Project Coverage | no |
| 2023-04-chainflip-securityreview.pdf | cf-threshold-signature | unmatched — not counted | — | listed in Project Coverage and Detailed Findings | no |
| 2023-04-chainflip-securityreview.pdf | cf-broadcast | unmatched — not counted | — | listed in Project Coverage and Detailed Findings | no |
| 2023-04-chainflip-securityreview.pdf | cf-vaults | unmatched — not counted | — | listed in Project Coverage and Detailed Findings | no |
| 2023-04-chainflip-securityreview.pdf | cf-validator | unmatched — not counted | — | listed in Project Coverage | no |
| 2023-04-chainflip-securityreview.pdf | cf-ingress-egress | unmatched — not counted | — | listed in Project Coverage | no |
| 2023-04-chainflip-securityreview.pdf | cf-lp | unmatched — not counted | — | listed in Project Coverage | no |
| 2023-04-chainflip-securityreview.pdf | cf-tokenholder-governance | unmatched — not counted | — | listed in Project Coverage | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x79001a...498920` | AddressChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc1b129...3d5481` | AddressChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa0b869...06eb48` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xaf88d0...8e5831` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd351d...bf08be` | KeyManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbfe612...000275` | KeyManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6995ab...621dbd` | StateChainGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdac17f...831ec7` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf5e103...f62bcc` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x79001a...498920` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 33 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [3974] Chainflip_Backend_-_Zellic_Audit_Report.pdf
- [3975] Multisig-Kudelski-Q1-2022.pdf

Fork inheritance lineage and inherited audits are included when available.
