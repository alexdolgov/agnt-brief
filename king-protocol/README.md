# Agentic Audit Brief: King Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: King Protocol (`king-protocol`)
- Website: [https://kingprotocol.org/](https://kingprotocol.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, mantle, swellchain
- Contract surface: 30 unique implementations (44 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,181,064.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for King Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across arbitrum, base, ethereum, mantle, swellchain. Structural roles: 4 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: unclassified (4)
- Contract kinds: contract (4)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x747cac75776b3a0bba3de3e61ec12a6a7f52232e`, chain 1)
- UnnamedContract (`0x8f08b70456eb22f6109f57b8fafe862ed28e6040`, chain 1)
- UnnamedContract (`0x2e412435928efe43b156caa8f4b1068729fee275`, chain 42161)
- UnnamedContract (`0xc2606aade4bdd978a4fa5a6edb3b66657acee6f8`, chain 1923)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 6 of 30 unique; 24 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 30
- Raw deployments: 44
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 0 stale, 0 unknown
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
| ArbitrageFoundation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x11721202e81eb2f7445bac9f9bf11f0b87546dc2`; base `0x2e7a789893e96ee2aea8d5404cedfbf7b9d4eab1`; base `0x44d021961cd51152b24f4782cb22b64c739b42fd`; base `0x5061315ef94788a482aae586d5f93cd6c555dac7`; base `0x64f5824d1eed1234138462824e4dc74022d7eae2`; base `0xb2bad500860c1efcef22f15f3f82f656853a18fe`; base `0xe5bb8ef2d356cc54791396eaa979328f826e29fb`; base `0xe92e65ba68e39774722678103ebcfc97a747cedb` | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3253c8105e8e70ae6abaf2fd21c703d8729e0886` | ⚠️ Unaudited |
| KingOFTL2 | unknown | project_anchor | own_supporting | 1 | mantle | unit-244213 | 2 deployments: mantle `0x548c4116a97e0138f78000088ea3f155717b98ed`; mantle `0x5a57ebb2c25eb64f05ebb4e07d9de8b3b67a7ab0` | ⚠️ Unaudited |
| KingOFTL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2a57db06506ab9764db8dcf06ac17a5fed9bb283`; base `0x6d04314fb449e020bd70ac701dfe0f13b591570d` | ⚠️ Unaudited |
| KingOFTL2 | unknown | project_anchor | own_supporting | 1 | base | unit-244214 | 2 deployments: base `0x4d6a22986acca58aa890fbb233f3b4563251beab`; base `0xe22c243c7559c667a1eb94b593369d192c5fbac0` | ⚠️ Unaudited |
| KingOFTL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xcc011273240610838aea80b485fbdff2b2e852a9`; base `0xf25768f2ac3a4c349be98c46ee97f59a9b1d689d` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc5f7c7916c7792603fdc17f05f7929b423015ac` | ⚠️ Unaudited |
| RamsesBeaconProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93e6e571d04848de3ba31525fca36f1e4f7bc942` | ⚠️ Unaudited |
| UniswapV3Plugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x409994fd2fdcfccddea418b7f203b4db51200ec2`; base `0x84acc48d3c96728f9572a4f1b8819317de983af0`; base `0x8bd78cc193c01573d4e464e2c3d1514dade4a459`; base `0xa12772103af37270b4a6e68865463ff6ee675ef7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b90103cdc9bba6c0dbcaaf961f0b5b1920f19e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244209 | `0x747cac75776b3a0bba3de3e61ec12a6a7f52232e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244210 | `0x8f08b70456eb22f6109f57b8fafe862ed28e6040` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-244211 | `0xc2606aade4bdd978a4fa5a6edb3b66657acee6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x63f23727af926604016ed0856a2390a1e4077c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe63ba626494f88d5a269b435213f2e8803cce318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e9315a7868608e6efc309575fe9fcdc756aca5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15593877afb1d5ee4b1ea7b31f540e88bda33ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34b17b0eaa06bb0f5d3c711627121da747fc1dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x644403bf932e142b45ca35bdf33d2c45d7436763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7e2a99a7bd0b27945c838ba702342a7acc025844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaeab5e4d4a8ffc01807c1ec3aa11eedfebd12dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7161279dc98a3f09f46c42a77fecc8eafe228e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd2e14734ab6634ed91f37dca9b3169b5627586b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe592f9af23a0c51ff59f611698da3833bd3421b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a57db06506ab9764db8dcf06ac17a5fed9bb283` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244212 | `0x2e412435928efe43b156caa8f4b1068729fee275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5df256caca241adb47c35b16baf3b71109e931c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb57d208661adfa911a40ee5a0de6ee0f056d127f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb866024867479b6fe97558abd0d12a9a05329bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf25768f2ac3a4c349be98c46ee97f59a9b1d689d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 25
- Live contracts: 4
- Unknown liveness contracts: 21
- Source-verified contracts: 20
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=20, unverified unclassified=5

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2a57db06506ab9764db8dcf06ac17a5fed9bb283` | non_address_book | unknown | unknown | unverified | n/a | `0x1841e5af06176725910988205cd03ad0621b903a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5df256caca241adb47c35b16baf3b71109e931c3` | non_address_book | unknown | unknown | unverified | n/a | `0x1841e5af06176725910988205cd03ad0621b903a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb57d208661adfa911a40ee5a0de6ee0f056d127f` | non_address_book | unknown | unknown | unverified | n/a | `0x1841e5af06176725910988205cd03ad0621b903a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbb866024867479b6fe97558abd0d12a9a05329bb` | non_address_book | unknown | unknown | unverified | n/a | `0x1841e5af06176725910988205cd03ad0621b903a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf25768f2ac3a4c349be98c46ee97f59a9b1d689d` | non_address_book | unknown | unknown | unverified | n/a | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | ArbitrageFoundation<br>`0x11721202e81eb2f7445bac9f9bf11f0b87546dc2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | ArbitrageFoundation<br>`0x2e7a789893e96ee2aea8d5404cedfbf7b9d4eab1` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | ArbitrageFoundation<br>`0x44d021961cd51152b24f4782cb22b64c739b42fd` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | ArbitrageFoundation<br>`0x5061315ef94788a482aae586d5f93cd6c555dac7` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | ArbitrageFoundation<br>`0x64f5824d1eed1234138462824e4dc74022d7eae2` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | ArbitrageFoundation<br>`0xb2bad500860c1efcef22f15f3f82f656853a18fe` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | ArbitrageFoundation<br>`0xe5bb8ef2d356cc54791396eaa979328f826e29fb` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | ArbitrageFoundation<br>`0xe92e65ba68e39774722678103ebcfc97a747cedb` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | KingOFTL2<br>`0x2a57db06506ab9764db8dcf06ac17a5fed9bb283` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | KingOFTL2<br>`0x4d6a22986acca58aa890fbb233f3b4563251beab` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | KingOFTL2<br>`0xf25768f2ac3a4c349be98c46ee97f59a9b1d689d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | UniswapV3Plugin<br>`0x409994fd2fdcfccddea418b7f203b4db51200ec2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | UniswapV3Plugin<br>`0x84acc48d3c96728f9572a4f1b8819317de983af0` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | UniswapV3Plugin<br>`0x8bd78cc193c01573d4e464e2c3d1514dade4a459` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | UniswapV3Plugin<br>`0xa12772103af37270b4a6e68865463ff6ee675ef7` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | UUPS<br>`0x6d04314fb449e020bd70ac701dfe0f13b591570d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | UUPS<br>`0xcc011273240610838aea80b485fbdff2b2e852a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1841e5af06176725910988205cd03ad0621b903a` |
| base | candidate review | UUPS<br>`0xe22c243c7559c667a1eb94b593369d192c5fbac0` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x1841e5af06176725910988205cd03ad0621b903a` |
| mantle | candidate review | ERC1967Proxy<br>`0x548c4116a97e0138f78000088ea3f155717b98ed` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x44102929b2248b1cefe2e65e9d580893b6d6823a` |
| mantle | candidate review | KingOFTL2<br>`0x5a57ebb2c25eb64f05ebb4e07d9de8b3b67a7ab0` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x44102929b2248b1cefe2e65e9d580893b6d6823a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [NM_0452_King_Cross_Chain_FINAL.pdf](https://github.com/King-Protocol/king-cross-chain/blob/master/audit/NM_0452_King_Cross_Chain_FINAL.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [NM_0314_EtherFi_LRT_2.pdf](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/NM_0314_EtherFi_LRT_2.pdf) | NM | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [NM_0390_LRT_Square_Strategies_DRAFT.pdf](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/NM_0390_LRT_Square_Strategies_DRAFT.pdf) | NM | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf](https://github.com/LRT2-protocol/lrt-square-sc/blob/master/audits/Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf) | Ether_Fi | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf](https://github.com/King-Protocol/king-protocol-sc/blob/master/audits/Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf) | Ether Fi | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3122] NM_0452_King_Cross_Chain_FINAL.pdf — no match: All four contracts listed in the Audited Files section are in scope. The audit date is the final report date (Feb 14, 2025).
- [3126] NM_0314_EtherFi_LRT_2.pdf — no match: All contracts listed in the 'Audited Files' section (Part I and Part II) are included. The audit date is the final report date (September 23, 2024).
- [3127] NM_0390_LRT_Square_Strategies_DRAFT.pdf — no match: All contracts listed in the Audited Files table (Section 2) are in scope. The audit date is from the cover page and executive summary.
- [3128] Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf — no match: Two contracts in scope: CumulativeMerkleCodec and CumulativeMerkleDrop. Audit date from 'Last Updated 03/12/2025' and engagement end date March 12, 2025.
- [14854] Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf — no match: Scope section explicitly lists two contracts: CumulativeMerkleCodec and CumulativeMerkleDrop. Audit date is the end date of the engagement (March 11, 2025).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| NM_0452_King_Cross_Chain_FINAL.pdf | KingOFTAdapterUpgradeable | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0452_King_Cross_Chain_FINAL.pdf | KingOFTAdapter | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0452_King_Cross_Chain_FINAL.pdf | PairwiseRateLimiter | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0452_King_Cross_Chain_FINAL.pdf | KingOFTUpgradeable | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0314_EtherFi_LRT_2.pdf | UUPSProxy | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0314_EtherFi_LRT_2.pdf | LrtSquare | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0314_EtherFi_LRT_2.pdf | Swapper1InchV6 | unmatched — not counted | — | Listed in audited files table (Part I and Part II) | no |
| NM_0314_EtherFi_LRT_2.pdf | PriceProvider | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0314_EtherFi_LRT_2.pdf | BucketLimiter | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0314_EtherFi_LRT_2.pdf | IAggregatorV3 | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0314_EtherFi_LRT_2.pdf | IPriceProvider | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0314_EtherFi_LRT_2.pdf | IOneInch | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0314_EtherFi_LRT_2.pdf | ISwapper | unmatched — not counted | — | Listed in audited files table (Part I) | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | BoringVaultPriceProvider | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | PriceProvider | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | SEthFiStrategy | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | BaseStrategy | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | EEigenStrategy | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | LRTSquaredAdmin | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | LRTSquaredCore | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | LRTSquaredStorage | unmatched — not counted | — | listed in Audited Files table | no |
| NM_0390_LRT_Square_Strategies_DRAFT.pdf | LRTSquaredInitializer | unmatched — not counted | — | listed in Audited Files table | no |
| Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf | CumulativeMerkleCodec | unmatched — not counted | — | listed in scope | no |
| Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf | CumulativeMerkleDrop | unmatched — not counted | — | listed in scope | no |
| Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf | CumulativeMerkleCodec | unmatched — not counted | — | listed in scope section | no |
| Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf | CumulativeMerkleDrop | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | `0x548c4116a97e0138f78000088ea3f155717b98ed` | KingOFTL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4d6a22986acca58aa890fbb233f3b4563251beab` | KingOFTL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [3122] NM_0452_King_Cross_Chain_FINAL.pdf
- [3126] NM_0314_EtherFi_LRT_2.pdf
- [3127] NM_0390_LRT_Square_Strategies_DRAFT.pdf
- [3128] Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf
- [14854] Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf

Fork inheritance lineage and inherited audits are included when available.
