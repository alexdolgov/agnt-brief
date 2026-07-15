# Agentic Audit Brief: SuperFarm

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

- Project: SuperFarm (`superfarm`)
- Website: [https://superverse.co/](https://superverse.co/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, bsc, ethereum, polygon
- Contract surface: 56 unique implementations (84 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $847,836.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SuperFarm. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across avalanche, base, bsc, ethereum, polygon. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: ownable (3), erc20 (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9ab0db...cdfd1b`, chain 56)
- UnnamedContract (`0xa14281...682737`, chain 137)
- UnnamedContract (`0x391359...b0b982`, chain 8453)
- UnnamedContract (`0x09fa58...9bd8c3`, chain 43114)
- RewardStaker (`0xba48bc...3aaf91`, chain 1)
- SuperVerseStaker (`0x8c96ed...d0b887`, chain 1)
- Token (`0xe53ec7...b40a55`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 49 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 7 of 56 unique; 49 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/45
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 56
- Raw deployments: 84
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

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AltcoinsPurchaseProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde486e...e0bc8f` | ⚠️ Unaudited |
| CrateKeyFullSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf309e...3c9bd0` | ⚠️ Unaudited |
| CrateKeySale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ee190...4d74fb` | ⚠️ Unaudited |
| Crates2020Locksmith | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93c2ba...e04250` | ⚠️ Unaudited |
| DeltaTimeInventory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d72d4...9cb0f0`; ethereum `0x2af756...ad5576` | ⚠️ Unaudited |
| DeltaTimeNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c62e8...2a7e03` | ⚠️ Unaudited |
| DeltaTimeStaking2021 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x410ef5...3caa71` | ⚠️ Unaudited |
| DeltaTimeStakingBeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x820489...fde63b`; ethereum `0xfacbd9...775368` | ⚠️ Unaudited |
| ERC20EscrowPredicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ada4...bcd3e4` | ⚠️ Unaudited |
| ERC20FixedSupply | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cb7a4...e3da53` | ⚠️ Unaudited |
| F1DTCrateKey | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x012408...52a0dc`; ethereum `0x17acdd...56f557`; ethereum `0x5694bc...5a524b`; ethereum `0x7e439a...3a215b` | ⚠️ Unaudited |
| FixedOrderSandNftSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec2142...540b3c` | ⚠️ Unaudited |
| FixedOrderTrackSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0eb72c...c57645`; ethereum `0x463db3...e69695` | ⚠️ Unaudited |
| FixedSupplyCratesSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e61c6...bc82cd` | ⚠️ Unaudited |
| GameeVouchers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe114bc...022c92` | ⚠️ Unaudited |
| InjectiveToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe28b3b...ceca30` | ⚠️ Unaudited |
| LP_REVV_SAND_Unipool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da2a5...9c1fe0` | ⚠️ Unaudited |
| MintShop1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x681a42...a51824`; ethereum `0xcf4286...0f3bd3` | ⚠️ Unaudited |
| MultiSigWallet | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x4289f1...7f91d2`; ethereum `0x47c9ba...753b28`; ethereum `0x8179d2...dbb4fc`; ethereum `0xeb5545...814edf`; ethereum `0xebaaba...6557e6`; ethereum `0xfc4504...f25197` | ⚠️ Unaudited |
| MyOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x879645...b4d5b1` | ⚠️ Unaudited |
| NFTRepairCentre | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4f3c9...d63996` | ⚠️ Unaudited |
| OFTAdapterFixedSupply | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea614f...63b793` | ⚠️ Unaudited |
| PolygonERC20MintBurnPredicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x436f5b...f40cb5` | ⚠️ Unaudited |
| PrePaid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x590df9...c730b8` | ⚠️ Unaudited |
| REDP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2840a0...c1e6d0` | ⚠️ Unaudited |
| REVV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x557b93...51a8ca` | ⚠️ Unaudited |
| REVVInventory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7a05e...a6f954` | ⚠️ Unaudited |
| REVVMotorsportShard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x69a324...bc92a1`; ethereum `0x6d4a51...f55c4b` | ⚠️ Unaudited |
| REVVRacingCatalyst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe33a01...8e3283` | ⚠️ Unaudited |
| REVVSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb9ffb...466e27` | ⚠️ Unaudited |
| RewardStaker | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-257242 | `0xba48bc...3aaf91` | ⚠️ Unaudited |
| SimpleSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83bbca...2f0f9b` | ⚠️ Unaudited |
| Staker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x439194...ed4430`; ethereum `0x8e586d...d5fc9b`; ethereum `0xb3ea98...9edd80`; ethereum `0xf35a92...206207` | ⚠️ Unaudited |
| Super1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6110dd...009af2` | ⚠️ Unaudited |
| SuperStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x530433...86d03b` | ⚠️ Unaudited |
| SuperVerseStaker | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-257241 | `0x8c96ed...d0b887` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0167ee...7a7e47`; ethereum `0x0afa5d...3c0123`; ethereum `0x399a14...48aa60`; ethereum `0x6a6780...8fc2e6`; ethereum `0x7456d1...f66769`; ethereum `0x9935a8...b6362b` | ⚠️ Unaudited |
| TimeTrialEliteLeague | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x654291...b6cead`; ethereum `0x736a68...25a393`; ethereum `0x9d5919...52c91e` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | ethereum | unit-257243 | `0xe53ec7...b40a55` | ⚠️ Unaudited |
| TokenLaunchpadVoucherPacksSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58ce6c...54575b` | ⚠️ Unaudited |
| TokenLaunchpadVouchers | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87a374...a37c0d` | ⚠️ Unaudited |
| TokenLaunchpadVouchersSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70ff3c...f591ad` | ⚠️ Unaudited |
| TokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x23a1fd...73fbcf`; ethereum `0x701354...f66da7`; ethereum `0x7080f6...ac3f2c`; ethereum `0x72267d...250cb1`; ethereum `0xbda122...3a4700`; ethereum `0xf6e479...2e14ca` | ⚠️ Unaudited |
| Unipool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ef639...1575f0` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25647e...1d0888` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038b0a...97e26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d592a...313921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x581d18...bd2954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f698b...3cfc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9748c...035b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34bf5...9c31d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe17bae...ad52ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-257246 | `0x9ab0db...cdfd1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257244 | `0xa14281...682737` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257247 | `0x391359...b0b982` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-257245 | `0x09fa58...9bd8c3` | ❓ Unverified |

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
| ethereum | `0xba48bc...3aaf91` | RewardStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8c96ed...d0b887` | SuperVerseStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe53ec7...b40a55` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 11 |

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
