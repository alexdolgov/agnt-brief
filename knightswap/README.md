# Agentic Audit Brief: KnightSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: KnightSwap (`knightswap`)
- Website: [https://knightswap.financial](https://knightswap.financial)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, fantom
- Contract surface: 23 unique implementations (35 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $875,758.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for KnightSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across bsc, fantom. Structural roles: 2 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (2), supporting (2)
- Contract kinds: contract (4)
- Detected standards: ownable (2), erc20 (1)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- KnightFactory (`0xf0bc2e21a76513aa7cc2730c7a1d6dee0790751f`, chain 56)
- KnightRouter (`0x05e61e0cdcd2170a76f9568a110cee3afdd6c46f`, chain 56)
- KnightToken (`0xd23811058eb6e7967d9a00dc3886e75610c4abba`, chain 56)
- MasterChef (`0xe50cb76a71b0c52ab091860cd61b9ba2fa407414`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 4 of 23 unique; 19 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 23
- Raw deployments: 35
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Astroshot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x8b1e9a0f782d9e8fb964fcb3133ea1f2bac119df`; bsc `0xf219e74dbfe267e367aa7e5f00615d2676eea5b2` | ⚠️ Unaudited |
| BIGFOOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1326be0d18a9d3110501661decdb850aa6b210be` | ⚠️ Unaudited |
| Fantomnomics | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb56b90f623107a4047fdc4c237279f360dcd0cf8` | ⚠️ Unaudited |
| IterableMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x56876361f53c78ab3ca3b7f33d88a8bf2ce7900b`; bsc `0x8f3063be7c99f430d11fc0ef065638f35a28a9fd` | ⚠️ Unaudited |
| IWO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1bbee6b4cb56e7cc005e93e1ae4c57be2aa55dc6`; bsc `0x29c8d8a01bad3ba8ce33fde4a1ac0ae93ec42d2f`; bsc `0x4bb4e621b69dec94a2dfd78f37e06723989ea997`; bsc `0x597111f001bfaaff92fcf4efcb9f63668ab7c94b`; bsc `0x935c822aa2db55a068ebbae01849b5e342e0880a`; bsc `0x97936313a5c37f2c6c55f541c0e1837552890899` | ⚠️ Unaudited |
| KnightFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-388373 | `0xf0bc2e21a76513aa7cc2730c7a1d6dee0790751f` | ⚠️ Unaudited |
| KnightRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-388370 | `0x05e61e0cdcd2170a76f9568a110cee3afdd6c46f` | ⚠️ Unaudited |
| KnightToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30ee6741da7a447a2addd1db594f4af8dbc066bd` | ⚠️ Unaudited |
| KnightToken | token | project_anchor | own_supporting | 0 | bsc | unit-388371 | `0xd23811058eb6e7967d9a00dc3886e75610c4abba` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x246e3e02bd1fe4a82ef6e8a2c276ae01c59165a6`; bsc `0x6622154437586f1562c23d4641bd95efdb1a1cec`; bsc `0xa379f53003cbaa3d1d3a88e9a7b069a44b596863`; bsc `0xf5d8c52a6a3d487c783c570c362a9b006fbc1a49` | ⚠️ Unaudited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-388372 | `0xe50cb76a71b0c52ab091860cd61b9ba2fa407414` | ⚠️ Unaudited |
| NFTHELPER | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe186af8f9bfd6385df4340a87650c425506edc34` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x300206b75df4b8bd32c2317727fdae0273fa56ff` | ⚠️ Unaudited |
| Spartans | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xbcfe392e778dbb59dcad624f10f7fa8c4a910b1e`; bsc `0xd27fae23775993af58f84408b611f4ff9afd864c` | ⚠️ Unaudited |
| TOKEN2NFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63a6c517cdbb674d42931cc716236249e3bced67` | ⚠️ Unaudited |
| Wizshot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x551c61db482289994e7d426fc4db6493918bb81d`; bsc `0xa1cffafab3adf425ccc3708818cf0e5ed7ceee64` | ⚠️ Unaudited |
| Wizshot2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d82f56ea0820a9d42b01c3c28f1997721732218` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ea8fbd271d56db3d4e5e09c93365d0aa79d02b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77e6d5352d3de6aec92d3ab4b25f159cd98b3f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcaeb6e7d0d973c75cfe3e57b7ba546931dad8262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc84b344f36f2c77431cbb20c175d19a52f61620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff16d3aac139079ce9d6ebd56a93c5e3805ad8c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0x7d82f56ea0820a9d42b01c3c28f1997721732218` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 27
- Live contracts: 0
- Unknown liveness contracts: 27
- Source-verified contracts: 23
- Currently scope-matched contracts retained as-is: 0
- Classification counts: contamination review=4, source verified unclassified=19, unverified unclassified=4

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| contamination review | Astroshot<br>`0x8b1e9a0f782d9e8fb964fcb3133ea1f2bac119df` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| contamination review | IWO<br>`0x1bbee6b4cb56e7cc005e93e1ae4c57be2aa55dc6` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| contamination review | Wizshot<br>`0x551c61db482289994e7d426fc4db6493918bb81d` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| contamination review | Wizshot2<br>`0x7d82f56ea0820a9d42b01c3c28f1997721732218` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | Astroshot<br>`0xf219e74dbfe267e367aa7e5f00615d2676eea5b2` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | BIGFOOT<br>`0x1326be0d18a9d3110501661decdb850aa6b210be` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | Fantomnomics<br>`0xb56b90f623107a4047fdc4c237279f360dcd0cf8` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | IterableMapping<br>`0x56876361f53c78ab3ca3b7f33d88a8bf2ce7900b` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | IterableMapping<br>`0x8f3063be7c99f430d11fc0ef065638f35a28a9fd` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | IWO<br>`0x29c8d8a01bad3ba8ce33fde4a1ac0ae93ec42d2f` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | IWO<br>`0x4bb4e621b69dec94a2dfd78f37e06723989ea997` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | IWO<br>`0x597111f001bfaaff92fcf4efcb9f63668ab7c94b` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | IWO<br>`0x935c822aa2db55a068ebbae01849b5e342e0880a` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | IWO<br>`0x97936313a5c37f2c6c55f541c0e1837552890899` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | KnightToken<br>`0x30ee6741da7a447a2addd1db594f4af8dbc066bd` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | MasterChef<br>`0x246e3e02bd1fe4a82ef6e8a2c276ae01c59165a6` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | MasterChef<br>`0x6622154437586f1562c23d4641bd95efdb1a1cec` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | MasterChef<br>`0xa379f53003cbaa3d1d3a88e9a7b069a44b596863` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | SmartChefFactory<br>`0x300206b75df4b8bd32c2317727fdae0273fa56ff` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | Spartans<br>`0xbcfe392e778dbb59dcad624f10f7fa8c4a910b1e` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | Spartans<br>`0xd27fae23775993af58f84408b611f4ff9afd864c` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | TOKEN2NFT<br>`0x63a6c517cdbb674d42931cc716236249e3bced67` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| source verified unclassified | Wizshot<br>`0xa1cffafab3adf425ccc3708818cf0e5ed7ceee64` | non_address_book | unknown | unknown | verified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| unverified unclassified | UnnamedContract<br>`0x1ea8fbd271d56db3d4e5e09c93365d0aa79d02b9` | non_address_book | unknown | unknown | unverified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| unverified unclassified | UnnamedContract<br>`0x77e6d5352d3de6aec92d3ab4b25f159cd98b3f27` | non_address_book | unknown | unknown | unverified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| unverified unclassified | UnnamedContract<br>`0xcaeb6e7d0d973c75cfe3e57b7ba546931dad8262` | non_address_book | unknown | unknown | unverified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |
| unverified unclassified | UnnamedContract<br>`0xcc84b344f36f2c77431cbb20c175d19a52f61620` | non_address_book | unknown | unknown | unverified | n/a | `0x6ef78432f6ba7121d2891560c70a8d7c2dedfbf6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [KnightSwap.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/November/KnightSwap.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13350] KnightSwap.pdf — no match: The report lists BSC scan addresses but does not provide contract names or file paths. No contract names could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xf0bc2e21a76513aa7cc2730c7a1d6dee0790751f` | KnightFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x05e61e0cdcd2170a76f9568a110cee3afdd6c46f` | KnightRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd23811058eb6e7967d9a00dc3886e75610c4abba` | KnightToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe50cb76a71b0c52ab091860cd61b9ba2fa407414` | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [13350] KnightSwap.pdf

Fork inheritance lineage and inherited audits are included when available.
