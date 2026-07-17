# Agentic Audit Brief: Toucan Protocol

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

- Project: Toucan Protocol (`toucan-protocol`)
- Website: [https://toucan.earth](https://toucan.earth)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, celo, polygon
- Contract surface: 30 unique implementations (30 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $527,428.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Toucan Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across base, celo, polygon. Structural roles: 4 infra, 1 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: infra (4), core (1)
- Contract kinds: contract (5)
- Detected standards: erc1967proxy (4), ownable (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (3), prb-math (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x320d86e14a9c54e11d05e1e0d88e2c824504c108`, chain 8453)
- UnnamedContract (`0x5bcb07db6d3f55eef03ffdd14a571da35a9ca401`, chain 8453)
- UnnamedContract (`0x6bcad56fe6621d57c4254b70a6d057942842c9a0`, chain 8453)
- UnnamedContract (`0x7bc01aff86e64949f39de616c950a1f094695ec4`, chain 8453)
- UnnamedContract (`0x9ad2aa3c4a50c35d62b35718cd391c172d6659da`, chain 8453)
- UnnamedContract (`0xb8178d44a945a42644782d20cce59477897d0de1`, chain 8453)
- UnnamedContract (`0xd096b0271064dffcb7cde699b25850dddbfd71d1`, chain 8453)
- UnnamedContract (`0xdc2187ef2832a450bc06778cfc01028afb6397cc`, chain 8453)
- UnnamedContract (`0xf22929a43bff92e2303a55b2a88e3fcbc7b6b1ef`, chain 8453)
- UnnamedContract (`0xf49f899d70db6518e3d65eaf1c5d742c205eca83`, chain 8453)
- Biochar (`0x20b048fa035d5763685d695e66adf62c5d9f5055`, chain 8453)
- FeeCalculator (`0x6a4549759c475d845d4ae074b3656dc257490da5`, chain 8453)
- RetirementCertificates (`0x09da61144b05c4a80b2d3c67bd72d740922cb186`, chain 8453)
- ToucanCarbonOffsetsFactory (`0x20b00ac9c365b33b4d5ba5e7c075f2f94df11ca0`, chain 8453)
- UpgradeableBeacon (`0x3476bfb58a03cafb6f7b7b02c21fc6597e5e78ec`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 15 of 30 unique; 15 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 30
- Raw deployments: 30
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| Biochar | unknown | project_anchor | own_supporting | 1 | base | unit-394152 | `0x20b048fa035d5763685d695e66adf62c5d9f5055` | ⚠️ Unaudited |
| BiocharFilter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x21866905ae7da3769b96dcdd3506013a733884b9` | ⚠️ Unaudited |
| CarbonOffsetBatches | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66b1b59f9d59413ddc1539122d7d5f6b70869717` | ⚠️ Unaudited |
| CarbonProjectVintages | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x09d14737300a3dcaaa3c6e9aeb4e666122f5d345` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x0fead3f81b35e133f9d78f9029950cf1f6056ea1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | celo | n/a | `0x02de4766c272abc10bc88c220d214a26960a7e92` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | celo | n/a | `0x0ccb0071e8b8b716a2a5998ab4d97b83790873fe` | ⚠️ Unaudited |
| FeeCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-394143 | `0x6a4549759c475d845d4ae074b3656dc257490da5` | ⚠️ Unaudited |
| FxHashNFTCarbonExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d1cd730fcb1e89b387d67dbe48f5d5bbae6b083` | ⚠️ Unaudited |
| OffsetHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4242829d15434fea6606cf995f1bed68a18c37d1` | ⚠️ Unaudited |
| PuroToucanCarbonOffsets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05de010c6187a8bb3232176674f7492b5a7de399` | ⚠️ Unaudited |
| RetirementCertificates | unknown | project_anchor | own_supporting | 1 | base | unit-394154 | `0x09da61144b05c4a80b2d3c67bd72d740922cb186` | ⚠️ Unaudited |
| ToucanCarbonOffsets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1671a112fd50870b45d1d44f5aaff8de50229f44` | ⚠️ Unaudited |
| ToucanCarbonOffsetsEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x027553435c2373f49e9cdfe3b50a25326242792a` | ⚠️ Unaudited |
| ToucanCarbonOffsetsFactory | unknown | project_anchor | own_supporting | 1 | base | unit-394153 | `0x20b00ac9c365b33b4d5ba5e7c075f2f94df11ca0` | ⚠️ Unaudited |
| ToucanContractRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04a3f298e88e54d3672a94136886ff9cd285e59e` | ⚠️ Unaudited |
| ToucanCrosschainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x882adea1a3b875fc776cac94541ccb1275c38654` | ⚠️ Unaudited |
| ToucanRegenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35d7426fb9069b99bb36bad30eb804e8fd924056` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | project_anchor | own_supporting | 0 | base | unit-394141 | `0x3476bfb58a03cafb6f7b7b02c21fc6597e5e78ec` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x599a978c43f5cea1b26a399d28869ad4690dc07d` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394140 | `0x320d86e14a9c54e11d05e1e0d88e2c824504c108` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394142 | `0x5bcb07db6d3f55eef03ffdd14a571da35a9ca401` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394144 | `0x6bcad56fe6621d57c4254b70a6d057942842c9a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394145 | `0x7bc01aff86e64949f39de616c950a1f094695ec4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394146 | `0x9ad2aa3c4a50c35d62b35718cd391c172d6659da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394147 | `0xb8178d44a945a42644782d20cce59477897d0de1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394148 | `0xd096b0271064dffcb7cde699b25850dddbfd71d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394149 | `0xdc2187ef2832a450bc06778cfc01028afb6397cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394150 | `0xf22929a43bff92e2303a55b2a88e3fcbc7b6b1ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-394151 | `0xf49f899d70db6518e3d65eaf1c5d742c205eca83` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Cross-Chain Pool Bridge, Team Omega, July 2022](https://gateway.pinata.cloud/ipfs/QmYBKAjhcvuPKyxCnsmC2ArfXUkfHj8wT76wV8BuJP3E1Z) | Team Omega | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [28288] Cross-Chain Pool Bridge, Team Omega, July 2022 — no match: Audit report dated July 11, 2022. Scope explicitly lists four contracts: ToucanCrosschainMessenger, ToucanCrosschainMessengerStorage, BaseCarbonTonne, and NCT.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Cross-Chain Pool Bridge, Team Omega, July 2022 | ToucanCrosschainMessenger | unmatched — not counted | — | listed in scope | no |
| Cross-Chain Pool Bridge, Team Omega, July 2022 | ToucanCrosschainMessengerStorage | unmatched — not counted | — | listed in scope | no |
| Cross-Chain Pool Bridge, Team Omega, July 2022 | BaseCarbonTonne | unmatched — not counted | — | listed in scope | no |
| Cross-Chain Pool Bridge, Team Omega, July 2022 | NCT | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x20b048fa035d5763685d695e66adf62c5d9f5055` | Biochar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6a4549759c475d845d4ae074b3656dc257490da5` | FeeCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x09da61144b05c4a80b2d3c67bd72d740922cb186` | RetirementCertificates | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x20b00ac9c365b33b4d5ba5e7c075f2f94df11ca0` | ToucanCarbonOffsetsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [28288] Cross-Chain Pool Bridge, Team Omega, July 2022

Fork inheritance lineage and inherited audits are included when available.
