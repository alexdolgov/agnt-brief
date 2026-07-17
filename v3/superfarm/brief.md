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

- UnnamedContract (`0x9ab0db9c2096830d9cb447179ead9bfd40cdfd1b`, chain 56)
- UnnamedContract (`0xa1428174f516f527fafdd146b883bb4428682737`, chain 137)
- UnnamedContract (`0x391359ab0ccef572dcac78f74e47d7c06db0b982`, chain 8453)
- UnnamedContract (`0x09fa58228bb791ea355c90da1e4783452b9bd8c3`, chain 43114)
- RewardStaker (`0xba48bcc66b6665495ec643ece7811db5723aaf91`, chain 1)
- SuperVerseStaker (`0x8c96edc82d111e3c5686f5abe738a82d54d0b887`, chain 1)
- Token (`0xe53ec727dbdeb9e2d5456c3be40cff031ab40a55`, chain 1)

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
| AltcoinsPurchaseProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde486e214cb0fb4a36cc4b0aea48379c66e0bc8f` | ⚠️ Unaudited |
| CrateKeyFullSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf309e609e6b65913be7f77763152871bc3c9bd0` | ⚠️ Unaudited |
| CrateKeySale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ee19055be98395933ff60b0f263e21e5f4d74fb` | ⚠️ Unaudited |
| Crates2020Locksmith | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93c2bad041fa79b4026654667dcb61e9fee04250` | ⚠️ Unaudited |
| DeltaTimeInventory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d72d4746647b7fe84e2bcdefd96c119fb9cb0f0`; ethereum `0x2af75676692817d85121353f0d6e8e9ae6ad5576` | ⚠️ Unaudited |
| DeltaTimeNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c62e8de798721963b439868d3ce22a5252a7e03` | ⚠️ Unaudited |
| DeltaTimeStaking2021 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x410ef532c1e4957806508d2b3928aad73f3caa71` | ⚠️ Unaudited |
| DeltaTimeStakingBeta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8204894c8ab1b3a322f2dae576cf9cbb3efde63b`; ethereum `0xfacbd97da672fb9883b420e77cd73b64ca775368` | ⚠️ Unaudited |
| ERC20EscrowPredicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ada4d8a799c4b0adf100eb597a6f1321bcd3e4` | ⚠️ Unaudited |
| ERC20FixedSupply | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cb7a4ef0cae65b07362bc679a0b874041e3da53` | ⚠️ Unaudited |
| F1DTCrateKey | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x012408dd7d43a6b3949bdaa281c123b19652a0dc`; ethereum `0x17acddb7053be19e852e64dc5a344b599756f557`; ethereum `0x5694bce5b6f06dcd69028d40ab856efc295a524b`; ethereum `0x7e439a012e06b9bd4a9a08a0a945b46bea3a215b` | ⚠️ Unaudited |
| FixedOrderSandNftSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec21427cc1deb6fd0727d7a777dda9a9f5540b3c` | ⚠️ Unaudited |
| FixedOrderTrackSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0eb72c624ce15958b79a6f3b06f0877f4cc57645`; ethereum `0x463db36d94232d3266560340ceb903f0d8e69695` | ⚠️ Unaudited |
| FixedSupplyCratesSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e61c63e045a978b51c6517c79c2592fcfbc82cd` | ⚠️ Unaudited |
| GameeVouchers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe114bce907a86d81f321c6fd8d8c51d542022c92` | ⚠️ Unaudited |
| InjectiveToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe28b3b32b6c345a34ff64674606124dd5aceca30` | ⚠️ Unaudited |
| LP_REVV_SAND_Unipool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da2a5836f2f292fb65537a1c2610655089c1fe0` | ⚠️ Unaudited |
| MintShop1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x681a4241c73037928838efde2fb5af401aa51824`; ethereum `0xcf4286db00f43f52a3f1188e61dd4581a30f3bd3` | ⚠️ Unaudited |
| MultiSigWallet | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x4289f116fbd3d861ca9001f4974f8fc7d17f91d2`; ethereum `0x47c9ba1475109b391cd9dae6b51b02a8f9753b28`; ethereum `0x8179d22607b64fd23b9ef818b3009e101edbb4fc`; ethereum `0xeb55451173b3efb3950129e7f344d81da3814edf`; ethereum `0xebaabac3e56e06d4ce4056593f98599d316557e6`; ethereum `0xfc45041d88ef70f87e7bbe4092f0f9471bf25197` | ⚠️ Unaudited |
| MyOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87964551caf340e17b7b00dfc1db2f6b67b4d5b1` | ⚠️ Unaudited |
| NFTRepairCentre | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4f3c9b9058d4b88f3c551c64e26e99a25d63996` | ⚠️ Unaudited |
| OFTAdapterFixedSupply | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea614f1d42af662199b0aac8e70ddabb7863b793` | ⚠️ Unaudited |
| PolygonERC20MintBurnPredicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x436f5ba0dcf22f991475fc7a6de75daae2f40cb5` | ⚠️ Unaudited |
| PrePaid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x590df9dc51ea5e1c7a93e61f1a973cea1fc730b8` | ⚠️ Unaudited |
| REDP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2840a0844310fc22292fe336e96ab1884bc1e6d0` | ⚠️ Unaudited |
| REVV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x557b933a7c2c45672b610f8954a3deb39a51a8ca` | ⚠️ Unaudited |
| REVVInventory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7a05e655cbed5356d2fa851e96f7f68e4a6f954` | ⚠️ Unaudited |
| REVVMotorsportShard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x69a3244fd4d81c800021f80127add5a684bc92a1`; ethereum `0x6d4a51c0ddfe6baeb7e233d6df5ae38a81f55c4b` | ⚠️ Unaudited |
| REVVRacingCatalyst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe33a010e8ed8093ae496bb26449533d6b18e3283` | ⚠️ Unaudited |
| REVVSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb9ffbb289f3f261c16ca24eafbad4e9fe466e27` | ⚠️ Unaudited |
| RewardStaker | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-257242 | `0xba48bcc66b6665495ec643ece7811db5723aaf91` | ⚠️ Unaudited |
| SimpleSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83bbca966537302f6c5cd903ed0f7e614b2f0f9b` | ⚠️ Unaudited |
| Staker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4391940003ee5d7502c41c539aa12d3f2aed4430`; ethereum `0x8e586d927ace36a3ef7bddf9f899d2e385d5fc9b`; ethereum `0xb3ea98747440addc6a262735e71b5a5cb29edd80`; ethereum `0xf35a92585ceee7251388e14f268d9065f5206207` | ⚠️ Unaudited |
| Super1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6110dd87b7a6fbbebb0ea0f0dffb59ae59009af2` | ⚠️ Unaudited |
| SuperStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5304334ac100a6576ac3c15e8fca41e18386d03b` | ⚠️ Unaudited |
| SuperVerseStaker | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-257241 | `0x8c96edc82d111e3c5686f5abe738a82d54d0b887` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0167eed0dd3e644fa06e6de44bf65503b37a7e47`; ethereum `0x0afa5db1438f82bc143fb6e1f07f0bbd433c0123`; ethereum `0x399a14c051de50cfed6a806da1e6c27d6448aa60`; ethereum `0x6a67809acfc114aa691c8d60f5963807dc8fc2e6`; ethereum `0x7456d1194444d1cf40fb2854ec686fa356f66769`; ethereum `0x9935a89fa42dc280c29b8f069779043b95b6362b` | ⚠️ Unaudited |
| TimeTrialEliteLeague | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x654291175cdedc48679f290c318949d9b6b6cead`; ethereum `0x736a68f4149a0a73fb869917cb13b7707925a393`; ethereum `0x9d5919e2ec96d02008ba9bb56c45fabe1652c91e` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | ethereum | unit-257243 | `0xe53ec727dbdeb9e2d5456c3be40cff031ab40a55` | ⚠️ Unaudited |
| TokenLaunchpadVoucherPacksSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58ce6caa5b3c25804d9ebe59c1803f213a54575b` | ⚠️ Unaudited |
| TokenLaunchpadVouchers | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87a3747c9942d8351cc85aac2f94807b27a37c0d` | ⚠️ Unaudited |
| TokenLaunchpadVouchersSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70ff3c8a979b7f4e6b8100da78a1b2ea9af591ad` | ⚠️ Unaudited |
| TokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x23a1fd006d151e1d920d5de860e82c697e73fbcf`; ethereum `0x701354d1f4a808318327bdfb4a938edd0bf66da7`; ethereum `0x7080f65abb8834259668900de238fcfb73ac3f2c`; ethereum `0x72267d7090dcab8cb832fc77048f47333c250cb1`; ethereum `0xbda122ff9d13e7b5baee2502fa35f8ceb23a4700`; ethereum `0xf6e4795173cafa138c76df176dde7c3bda2e14ca` | ⚠️ Unaudited |
| Unipool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ef6394d1a857a7825ab51d6c482f1a5471575f0` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25647e01bd0967c1b9599fa3521939871d1d0888` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038b0a47712e27fc3194781ba0393d8a6797e26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d592a6b40cb7ff7656f62e386e39886c4313921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x581d18911344f02b38b55c4fafdfaaa808bd2954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f698bd4502d6b214520a644d661231f0c3cfc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9748c651c8af8d6c94160f83e61905fa7035b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34bf59caf10df69af433cc4b49e956b4d9c31d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe17baefc002f5922dc04ac837a1b6ebb9ead52ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-257246 | `0x9ab0db9c2096830d9cb447179ead9bfd40cdfd1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257244 | `0xa1428174f516f527fafdd146b883bb4428682737` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257247 | `0x391359ab0ccef572dcac78f74e47d7c06db0b982` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-257245 | `0x09fa58228bb791ea355c90da1e4783452b9bd8c3` | ❓ Unverified |

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
| ethereum | `0xba48bcc66b6665495ec643ece7811db5723aaf91` | RewardStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8c96edc82d111e3c5686f5abe738a82d54d0b887` | SuperVerseStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe53ec727dbdeb9e2d5456c3be40cff031ab40a55` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
