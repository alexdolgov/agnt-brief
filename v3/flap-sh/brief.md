# Agentic Audit Brief: Flap sh

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Flap sh (`flap-sh`)
- Website: [https://flap.sh/board](https://flap.sh/board)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum
- Contract surface: 63 unique implementations (63 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $739,083.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Flap sh. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across base, bsc, ethereum. Structural roles: 4 core, 1 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), supporting (1)
- Contract kinds: contract (4), abstract (1)
- Detected standards: erc20 (3), erc20permit (3), ownable (3), erc1967proxy (1)
- Frameworks: openzeppelin-upgradeable (4), openzeppelin (2), solady (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1ea172...3ba948`, chain 56)
- UnnamedContract (`0x29e638...332aa8`, chain 56)
- UnnamedContract (`0x4267f3...55e274`, chain 56)
- UnnamedContract (`0x53841c...fd8346`, chain 56)
- UnnamedContract (`0x6255fb...9414ee`, chain 56)
- UnnamedContract (`0x904974...f34c06`, chain 56)
- UnnamedContract (`0xa99185...89baf1`, chain 56)
- UnnamedContract (`0xae562c...7807ba`, chain 56)
- UnnamedContract (`0xb30d8c...808678`, chain 56)
- UnnamedContract (`0xb88189...994184`, chain 56)
- UnnamedContract (`0xcf4ee2...16a7f9`, chain 56)
- UnnamedContract (`0xe2ce6a...5c9de0`, chain 56)
- UnnamedContract (`0xf3c514...e40a0a`, chain 56)
- ConstantProductCurve (`0x2a770e...3a8271`, chain 56)
- FlapTaxTokenV3 (`0x024f18...156422`, chain 56)
- TokenV2 (`0x8b4329...e7d78d`, chain 56)
- TokenV3 (`0x88881b...b63333`, chain 56)
- TransparentUpgradeableProxy (`0x12dc83...38f8c9`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/31 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 18 of 63 unique; 45 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/47
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 63
- Raw deployments: 63
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6ef24...40871d` | ⚠️ Unaudited |
| ConstantProductCurve | unknown | project_anchor | own_supporting | 0 | bsc | unit-385895 | `0x2a770e...3a8271` | ⚠️ Unaudited |
| Dividend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bfa35...dfb56a` | ⚠️ Unaudited |
| FlapAIProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ba6c4...f8c057` | ⚠️ Unaudited |
| FlapGuardian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c146f...db7136` | ⚠️ Unaudited |
| FlapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x280e5e...1603f5` | ⚠️ Unaudited |
| FlapShuttle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f0825...b78f12` | ⚠️ Unaudited |
| FlapTaxToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05823d...346452` | ⚠️ Unaudited |
| FlapTaxTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a18f9...053904` | ⚠️ Unaudited |
| FlapTaxTokenV3 | unknown | project_anchor | own_supporting | 0 | bsc | unit-385881 | `0x024f18...156422` | ⚠️ Unaudited |
| FlapTriggerService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78e6c1...c0a2d1` | ⚠️ Unaudited |
| FlapXVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9d95f...2ab5eb` | ⚠️ Unaudited |
| FlapXVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x025549...66ab32` | ⚠️ Unaudited |
| MultiDexRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a858e...c5675f` | ⚠️ Unaudited |
| Portal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07a4c2...5dd2a7` | ⚠️ Unaudited |
| PortalGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x087251...12fd4a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60fc96...acf82c` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59763d...954226` | ⚠️ Unaudited |
| SaleForge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28f4c5...9091ec` | ⚠️ Unaudited |
| SaleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a1a9c...aff8bf` | ⚠️ Unaudited |
| SimpleAIConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7df9c8...cc5987` | ⚠️ Unaudited |
| SnowBall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x219554...f9ad62` | ⚠️ Unaudited |
| SnowBallAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c0eb2...7cb2d3` | ⚠️ Unaudited |
| SnowBallCommissionTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45ad90...b1a077` | ⚠️ Unaudited |
| SnowBallFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x036bea...9198b4` | ⚠️ Unaudited |
| SnowBallHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x726fa8...ea363f` | ⚠️ Unaudited |
| SnowBallVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x580532...0a2d69` | ⚠️ Unaudited |
| SplitVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6a92a...0c5d25` | ⚠️ Unaudited |
| TaxDistributionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56333a...49b4ae` | ⚠️ Unaudited |
| TaxHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d0249...15f93d` | ⚠️ Unaudited |
| TaxProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16ce34...13d145` | ⚠️ Unaudited |
| TaxProcessorUniV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b426b...1338d2` | ⚠️ Unaudited |
| TaxProcessorUniV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x143741...beb806` | ⚠️ Unaudited |
| TaxSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x988eb5...036f24` | ⚠️ Unaudited |
| TaxSplitterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x304443...6fb9ca` | ⚠️ Unaudited |
| TaxTokenBeneficiaryChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbad031...e60a29` | ⚠️ Unaudited |
| TaxTokenHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x039daa...54a5ef` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x524ea1...65c6c7` | ⚠️ Unaudited |
| TokenV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-385917 | `0x8b4329...e7d78d` | ⚠️ Unaudited |
| TokenV2BETATEST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x225894...f31d44` | ⚠️ Unaudited |
| TokenV3 | unknown | project_anchor | own_supporting | 0 | bsc | unit-385915 | `0x88881b...b63333` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-385885 | `0x12dc83...38f8c9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x134c6b...146921` | ⚠️ Unaudited |
| VaultBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa70024...373d04` | ⚠️ Unaudited |
| VaultPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x022448...88f259` | ⚠️ Unaudited |
| WorldCupViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2262f6...665bab` | ⚠️ Unaudited |
| WrappedX402 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dbb81...a5d184` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-385889 | `0x1ea172...3ba948` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-385893 | `0x29e638...332aa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-385899 | `0x4267f3...55e274` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-385902 | `0x53841c...fd8346` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-385909 | `0x6255fb...9414ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-385921 | `0x904974...f34c06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-385923 | `0xa99185...89baf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-385925 | `0xae562c...7807ba` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-385927 | `0xaee3a7...8b7e39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-385929 | `0xb30d8c...808678` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-385931 | `0xb88189...994184` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-385934 | `0xcf4ee2...16a7f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-385938 | `0xe2ce6a...5c9de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-385943 | `0xf3c514...e40a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ea172...3ba948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3c514...e40a0a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [* The Flap Launchpad Protocol V2, V4 and Flap Tax Token V1 were audited by Certik. Check the audit report on[ Certik Skynet]().](https://skynet.certik.com/projects/flap) | CertiK | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [blocksec_flap_tax_token_v1.0-signed.pdf](https://2671086575-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5KujUBwRoHVjn8OZEgtZ%2Fuploads%2FkhrpkMsQlhcrM9L5QDLS%2Fblocksec_flap_tax_token_v1.0-signed.pdf) | BlockSec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [blocksec_flap_protocol_v5_v1.0-signed.pdf](https://2671086575-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5KujUBwRoHVjn8OZEgtZ%2Fuploads%2FMLLrgVU4RSejW0xh7jLH%2Fblocksec_flap_protocol_v5_v1.0-signed.pdf) | BlockSec | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20296] * The Flap Launchpad Protocol V2, V4 and Flap Tax Token V1 were audited by Certik. Check the audit report on[ Certik Skynet](). — no match: Extracted from 'Audited Files/SHA256' section listing Farcaster.sol and Portal.sol. Audit date from 'Revised on 10/8/2025'.
- [20297] blocksec_flap_tax_token_v1.0-signed.pdf — no match: Only one contract in scope: FlapTaxToken. Other contracts mentioned (taxSplitter, PoolAddress) are dependencies or referenced but not in scope.
- [20298] blocksec_flap_protocol_v5_v1.0-signed.pdf — no match: Extracted contracts from scope description and findings. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| * The Flap Launchpad Protocol V2, V4 and Flap Tax Token V1 were audited by Certik. Check the audit report on[ Certik Skynet](). | Farcaster | unmatched — not counted | — | listed in audited files | no |
| * The Flap Launchpad Protocol V2, V4 and Flap Tax Token V1 were audited by Certik. Check the audit report on[ Certik Skynet](). | Portal | ambiguous — not counted | 0xb30d8c… (alternative) `0xb30d8c...808678` — liveness: live (current_address_book_code)<br>0x4267f3… (alternative) `0x4267f3...55e274` — liveness: live (current_address_book_code)<br>0xe2ce6a… (alternative) `0xe2ce6a...5c9de0` — liveness: live (current_address_book_code)<br>0x1ea172… (alternative) `0x1ea172...3ba948` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blocksec_flap_tax_token_v1.0-signed.pdf | FlapTaxToken | unmatched — not counted | — | listed in scope section 1.1 | no |
| blocksec_flap_protocol_v5_v1.0-signed.pdf | Portal | ambiguous — not counted | 0xb30d8c… (alternative) `0xb30d8c...808678` — liveness: live (current_address_book_code)<br>0x4267f3… (alternative) `0x4267f3...55e274` — liveness: live (current_address_book_code)<br>0xe2ce6a… (alternative) `0xe2ce6a...5c9de0` — liveness: live (current_address_book_code)<br>0x1ea172… (alternative) `0x1ea172...3ba948` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blocksec_flap_protocol_v5_v1.0-signed.pdf | PortalTokenLauncher | unmatched — not counted | — | mentioned as module in scope description | no |
| blocksec_flap_protocol_v5_v1.0-signed.pdf | PortalTradeV2 | unmatched — not counted | — | mentioned as module in scope description | no |
| blocksec_flap_protocol_v5_v1.0-signed.pdf | PortalUniV2Migrator | unmatched — not counted | — | mentioned as module in scope description | no |
| blocksec_flap_protocol_v5_v1.0-signed.pdf | PortalUniV3Migrator | unmatched — not counted | — | mentioned as module in scope description | no |
| blocksec_flap_protocol_v5_v1.0-signed.pdf | PortalBase | unmatched — not counted | — | mentioned as base contract in scope description | no |
| blocksec_flap_protocol_v5_v1.0-signed.pdf | SaleForge | unmatched — not counted | — | mentioned in findings and scope description | no |
| blocksec_flap_protocol_v5_v1.0-signed.pdf | FlapTaxTokenV2 | unmatched — not counted | — | mentioned in findings and scope description | no |
| blocksec_flap_protocol_v5_v1.0-signed.pdf | Dividend | unmatched — not counted | — | mentioned in findings | no |
| blocksec_flap_protocol_v5_v1.0-signed.pdf | TaxProcessor | unmatched — not counted | — | mentioned in findings | no |
| blocksec_flap_protocol_v5_v1.0-signed.pdf | MultiDexRouter | unmatched — not counted | — | mentioned in findings | no |
| blocksec_flap_protocol_v5_v1.0-signed.pdf | PermitHelper | unmatched — not counted | — | mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x2a770e...3a8271` | ConstantProductCurve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x024f18...156422` | FlapTaxTokenV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8b4329...e7d78d` | TokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x88881b...b63333` | TokenV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 13 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: n/a

Zero-match audit list:

- [20296] * The Flap Launchpad Protocol V2, V4 and Flap Tax Token V1 were audited by Certik. Check the audit report on[ Certik Skynet]().
- [20297] blocksec_flap_tax_token_v1.0-signed.pdf
- [20298] blocksec_flap_protocol_v5_v1.0-signed.pdf

Fork inheritance lineage and inherited audits are included when available.
