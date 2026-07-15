# Agentic Audit Brief: SingularityDAO

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

- Project: SingularityDAO (`singularitydao`)
- Website: [https://singularitydao.ai](https://singularitydao.ai)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 78 unique implementations (79 raw deployments)
- Coverage basis: 0/8 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $634,043.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SingularityDAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across bsc, ethereum. Structural roles: 6 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (6), supporting (1)
- Contract kinds: contract (7)
- Detected standards: erc20 (6), accesscontrol (2), pausable (2), erc1967proxy (1), ownable (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Dynaset (`0x7bb1a6...e35203`, chain 1)
- Dynaset (`0xda49af...f8c87a`, chain 1)
- DynasetDydx (`0x976a95...2bf7b2`, chain 1)
- ForgeV1 (`0x5d94f2...c06e57`, chain 1)
- ForgeV1 (`0xa5a94d...69dd97`, chain 1)
- ForgeV1 (`0xe12504...8dd029`, chain 1)
- SingDao (`0x993864...5b875f`, chain 1)
- TransparentUpgradeableProxy (`0x90ed8f...f18240`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (3 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/8 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 67 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 8 of 78 unique; 70 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/78
- Verified + Unaudited implementations: 78
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 78
- Raw deployments: 79
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BasicLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ce970...e2d0dc` | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad6cae...6c6c18` | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22fbfb...d270e3` | ⚠️ Unaudited |
| BEP20Cardano | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ee220...435d47` | ⚠️ Unaudited |
| BEP20Cosmos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eb3a7...62f335` | ⚠️ Unaudited |
| BEP20DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1af3f3...b1dbc3` | ⚠️ Unaudited |
| BEP20EOS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b6fb...dccbd6` | ⚠️ Unaudited |
| BEP20Ethereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2170ed...f933f8` | ⚠️ Unaudited |
| BEP20Ontology | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd7b3a...850335` | ⚠️ Unaudited |
| BEP20Polkadot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x708360...873402` | ⚠️ Unaudited |
| BEP20Tezos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16939e...12623a` | ⚠️ Unaudited |
| BEP20XRP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d2f0d...c60dbe` | ⚠️ Unaudited |
| BEP20YFII | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f7064...53eda5` | ⚠️ Unaudited |
| BEP20Zcash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ba42e...ef8eeb` | ⚠️ Unaudited |
| BscDynaset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5569b4...9e5ab8` | ⚠️ Unaudited |
| BscDynasetFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ee2ba...db166e` | ⚠️ Unaudited |
| BscDynasetTvlOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5062f9...256b9a` | ⚠️ Unaudited |
| BscForgeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99bc2a...9e4d3f` | ⚠️ Unaudited |
| DynaLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7df0c0...948440` | ⚠️ Unaudited |
| DynaLiquidityFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe70d9e...d5e9c8` | ⚠️ Unaudited |
| DynaLiquidityProxyAssetManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5c9e6...27b591` | ⚠️ Unaudited |
| DynaLiquidityRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf137...9d9572` | ⚠️ Unaudited |
| DynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd90606...ebb1cc` | ⚠️ Unaudited |
| DynaRouterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x574b3d...3662b1` | ⚠️ Unaudited |
| Dynaset | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392573 | `0x7bb1a6...e35203` | ⚠️ Unaudited |
| Dynaset | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392577 | `0xda49af...f8c87a` | ⚠️ Unaudited |
| DynasetDydx | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392574 | `0x976a95...2bf7b2` | ⚠️ Unaudited |
| DynasetDydxFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec947...314d8a` | ⚠️ Unaudited |
| DynasetFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x329527...0677cf` | ⚠️ Unaudited |
| DynasetSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2557fe...20c2e7` | ⚠️ Unaudited |
| DynasetTvlOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x189e59...cb052e` | ⚠️ Unaudited |
| DynaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e31b8...154d85` | ⚠️ Unaudited |
| DynaVaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0b637...121cbc` | ⚠️ Unaudited |
| ForgeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07b3dd...fe2ee2` | ⚠️ Unaudited |
| ForgeV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392572 | `0x5d94f2...c06e57` | ⚠️ Unaudited |
| ForgeV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392576 | `0xa5a94d...69dd97` | ⚠️ Unaudited |
| ForgeV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392578 | `0xe12504...8dd029` | ⚠️ Unaudited |
| IndirectOFTV2WithFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07ba11...129682` | ⚠️ Unaudited |
| LiquidityArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4a7bb...7e60ae` | ⚠️ Unaudited |
| MetaDynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22b067...0f541a` | ⚠️ Unaudited |
| MinterBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x859cf2...6b9dc9` | ⚠️ Unaudited |
| MinterBurner2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bd31f...1299ba` | ⚠️ Unaudited |
| MultiPartyEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3113fc...b9056f` | ⚠️ Unaudited |
| NativeDynaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe7e9...e28b54` | ⚠️ Unaudited |
| NuNetToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-392579 | `0xf0d33b...0a7935` | ⚠️ Unaudited |
| NuNetUpgradeableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb920a5...c6b070` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d12e4...10b01e` | ⚠️ Unaudited |
| Pancakeswapv2Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77607a...3ddf65` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6297ab...dffb28` | ⚠️ Unaudited |
| ProxyOFTWithFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7df1b5...216d32` | ⚠️ Unaudited |
| ReferenceAssetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228107...a87ddc` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21e97a...94aeaa` | ⚠️ Unaudited |
| SDAOBondedTokenStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f581...1216f0` | ⚠️ Unaudited |
| SDAOClaimpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10c096...1f6260` | ⚠️ Unaudited |
| SDAOLaunchpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04b269...5e1840` | ⚠️ Unaudited |
| SDAOLinearSimpleReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x482eda...28a9f5` | ⚠️ Unaudited |
| SDAOLockedStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x234411...b4f5b6` | ⚠️ Unaudited |
| SDAORewardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44921e...5162c3` | ⚠️ Unaudited |
| SDAOTokenStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x158a1d...dc85f4` | ⚠️ Unaudited |
| SDAOUpgradeableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda9c20...b600f6` | ⚠️ Unaudited |
| SDAOUpgradeableTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32effe...fcf60e` | ⚠️ Unaudited |
| SDAOUpgradeableTokenV4 | unknown | project_anchor | own_supporting | 1 | bsc | unit-392580 | 2 deployments: bsc `0x5cda57...be5513`; bsc `0x90ed8f...f18240` | ⚠️ Unaudited |
| SingDao | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392575 | `0x993864...5b875f` | ⚠️ Unaudited |
| SingularityAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x076c54...34890a` | ⚠️ Unaudited |
| SingularityLaunchpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40f67f...d7e96b` | ⚠️ Unaudited |
| SingularityNetToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-392571 | `0x5b7533...81b542` | ⚠️ Unaudited |
| TokenConversionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x611192...dd7be4` | ⚠️ Unaudited |
| TokenLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0292bb...74578a` | ⚠️ Unaudited |
| TokenMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb80195...62b0a3` | ⚠️ Unaudited |
| TokenStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13e136...05ad46` | ⚠️ Unaudited |
| TokenWhitelistRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84b71...52788c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | unit-392581 | `0x5c4bcc...ebad87` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x82f542...e66d59` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a9255...9b6acb` | ⚠️ Unaudited |
| UsdcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2989d5...851981` | ⚠️ Unaudited |
| VaultDynaZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f85dd...046194` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x877e91...6c4bf4` | ⚠️ Unaudited |
| VaultRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x139e5f...4c4083` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/singularitydao) | CertiK | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18383] DL audit link — no match: Extracted from the 'Audited Files' section of the CertiK Skynet page for SingularityDAO. Only two contracts are explicitly listed as audited files. The audit date is the 'Last Audit was delivered on 8/15/2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | SDAOBondedTokenStaking | unmatched — not counted | — | listed in Audited Files section | no |
| DL audit link | SDAOTokenStaking | unmatched — not counted | — | listed in Audited Files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7bb1a6...e35203` | Dynaset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x976a95...2bf7b2` | DynasetDydx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5cda57...be5513` | SDAOUpgradeableTokenV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x993864...5b875f` | SingDao | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [18383] DL audit link

Fork inheritance lineage and inherited audits are included when available.
