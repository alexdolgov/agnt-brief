# Agentic Audit Brief: Aerodrome

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Aerodrome (`aerodrome`)
- Website: [https://aerodrome.finance/](https://aerodrome.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 74 unique implementations (74 raw deployments)
- Coverage basis: 0/28 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $310,170,753.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Aerodrome. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across base. Structural roles: 25 core, 5 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: core (25), supporting (5)
- Contract kinds: contract (30)
- Detected standards: erc165 (3), erc721 (2), multicall (2), ownable (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (19), permit2 (1), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

5 of 29 contracts are derived from known codebases. 24 contracts have no detected origin.

### Forked Contracts

**CLFactory** (`0x5e7bb1...06809a`, chain 8453)
Origin: arrakis-finance (`0x5e7bb1...06809a`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Minter** (`0xeb0183...a33fe5`, chain 8453)
Origin: 40-acres (`0xeb0183...a33fe5`)
Containment: 100.0% - 29 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Router** (`0xcf77a3...874e43`, chain 8453)
Origin: 40-acres (`0xcf77a3...874e43`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Voter** (`0x166135...c480a5`, chain 8453)
Origin: arcadia-finance (`0x166135...c480a5`)
Containment: 100.0% - 34 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VotingEscrow** (`0xebf418...67e6b4`, chain 8453)
Origin: iaero-protocol (`0xebf418...67e6b4`)
Containment: 100.0% - 50 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- Aero (`0x940181...d98631`, chain 8453)
- AirdropDistributor (`0xe4c69a...bc382f`, chain 8453)
- BasePrices (`0xee7174...eff166`, chain 8453)
- CustomUnstakedFeeModule (`0x0ad083...38ee68`, chain 8453)
- Emergency Council (`0x99249b...5c013d`, chain 8453)
- FactoryRegistry (`0x5c3f18...9e37c0`, chain 8453)
- Forwarder (`0x15e627...a05dcc`, chain 8453)
- GaugeFactory (`0x35f35c...5bbcb5`, chain 8453)
- ManagedRewardsFactory (`0xfda1fb...d2bdc3`, chain 8453)
- MixedRouteQuoterV1 (`0x0a5aa5...07d5c6`, chain 8453)
- NonfungibleTokenPositionDescriptor (`0x01b0ca...d53c55`, chain 8453)
- PoolFactory (`0x420dd3...ce40da`, chain 8453)
- QuoterV2 (`0x254cf9...ae15b0`, chain 8453)
- RewardsDistributor (`0x227f65...964c7d`, chain 8453)
- Slipstream GaugeFactory (`0xd30677...05fb08`, chain 8453)
- Slipstream GaugeImplementation (`0xf5601f...442d2d`, chain 8453)
- Slipstream NonfungiblePositionManager (`0x827922...485b72`, chain 8453)
- Slipstream PoolImplementation (`0xec8e53...315831`, chain 8453)
- Slipstream SwapFeeModule (`0xf4171b...69af00`, chain 8453)
- SugarHelper (`0x0ad09a...b6edd5`, chain 8453)
- SwapRouter (`0xbe6d8f...6d18a5`, chain 8453)
- UniversalRouter (`0x6cb442...00be3e`, chain 8453)
- VeArtProxy (`0xe99924...54643e`, chain 8453)
- VotingRewardsFactory (`0x45ca74...52b504`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 30 (29 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/31 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/28 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 28 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 43 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Deployed-live implementations: 29 of 74 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 74
- Raw deployments: 74
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

### ⚠️ Verified + Unaudited (73)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Aero | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-378536 | `0x940181...d98631` | ⚠️ Unaudited |
| AirdropDistributor | unknown | project_anchor | own_supporting | 0 | base | unit-378549 | `0xe4c69a...bc382f` | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e6341...53b648` | ⚠️ Unaudited |
| BaseBridgeHelperModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x362dbd...655b26` | ⚠️ Unaudited |
| BasePrices | unknown | project_anchor | own_supporting | 0 | base | unit-378558 | `0xee7174...eff166` | ⚠️ Unaudited |
| BridgedBaseWOETHProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xd87243...bbf839` | ⚠️ Unaudited |
| BridgedWOETHStrategyProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x80c864...acf835` | ⚠️ Unaudited |
| CCTPHookWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d04c7...f79670` | ⚠️ Unaudited |
| ClaimBribesSafeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26179a...28e759` | ⚠️ Unaudited |
| CLFactory | unknown | project_anchor | own_supporting | 0 | base | unit-378530 | `0x5e7bb1...06809a` | ⚠️ Unaudited |
| CLGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1296a1...6025b5` | ⚠️ Unaudited |
| CLGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e703f...9b6fbc` | ⚠️ Unaudited |
| CLPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88e336...a0471f` | ⚠️ Unaudited |
| Counter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x430d45...d75fb8` | ⚠️ Unaudited |
| CrossChainRemoteStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f81a5...e7a92d` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2dd416...1ca9d1` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | project_anchor | own_supporting | 0 | base | unit-378511 | `0x0ad083...38ee68` | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6e6d5...31d59f` | ⚠️ Unaudited |
| DirectStakingBaseHandlerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb282a...b4c1e3` | ⚠️ Unaudited |
| DirectStakingHandlerL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x851de5...37904b` | ⚠️ Unaudited |
| Emergency Council | unknown | project_anchor | own_supporting | 0 | base | unit-378539 | `0x99249b...5c013d` | ⚠️ Unaudited |
| FactoryRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-378528 | `0x5c3f18...9e37c0` | ⚠️ Unaudited |
| Forwarder | unknown | project_anchor | own_supporting | 0 | base | unit-378516 | `0x15e627...a05dcc` | ⚠️ Unaudited |
| GaugeFactory | unknown | project_anchor | own_supporting | 0 | base | unit-378524 | `0x35f35c...5bbcb5` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-378571 | `0x834c0d...2fda52` | ⚠️ Unaudited |
| ManagedRewardsFactory | unknown | project_anchor | own_supporting | 0 | base | unit-378565 | `0xfda1fb...d2bdc3` | ⚠️ Unaudited |
| Minter | unknown | project_anchor | own_supporting | 0 | base | unit-378552 | `0xeb0183...a33fe5` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | project_anchor | own_supporting | 0 | base | unit-378509 | `0x0a5aa5...07d5c6` | ⚠️ Unaudited |
| MixedRouteQuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x495406...5b4f4f` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0681d1...4ec818` | ⚠️ Unaudited |
| NFTSVG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x212665...f4dc52` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c3141...5bbde3` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | project_anchor | own_supporting | 0 | base | unit-378507 | `0x01b0ca...d53c55` | ⚠️ Unaudited |
| OETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10b342...439989` | ⚠️ Unaudited |
| OETHBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c62a3...b82be9` | ⚠️ Unaudited |
| OETHBaseDripperProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x02f2c6...d7f8d6` | ⚠️ Unaudited |
| OETHBaseHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa50fd5...5ffad8` | ⚠️ Unaudited |
| OETHBaseHarvesterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x0cbeac...54c22e` | ⚠️ Unaudited |
| OETHBaseOracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc80da...97c75b` | ⚠️ Unaudited |
| OETHBaseVaultAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd50f7d...70d1a7` | ⚠️ Unaudited |
| OETHBaseVaultCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a759f...6caaab` | ⚠️ Unaudited |
| OETHBaseVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x98a0cb...38cc93` | ⚠️ Unaudited |
| OETHBaseZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b56c0...4d2bc1` | ⚠️ Unaudited |
| OETHbHydrexAMOProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe6bebe...08d9c3` | ⚠️ Unaudited |
| OETHbHydrexAMOStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5d369...4f38e0` | ⚠️ Unaudited |
| OETHDripper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0030c7...e6b16a` | ⚠️ Unaudited |
| OETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9f783...92fd66` | ⚠️ Unaudited |
| OETHVaultValueChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d98cf...7bcf6a` | ⚠️ Unaudited |
| OUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa96fd1...3820f9` | ⚠️ Unaudited |
| PatchedManagedRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ab1a1...1be23d` | ⚠️ Unaudited |
| PerlinNoise | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b3a74...d9990e` | ⚠️ Unaudited |
| PermissionedRebaseModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf63398...9d4a37` | ⚠️ Unaudited |
| PoolFactory | unknown | project_anchor | own_supporting | 1 | base | unit-378567 | `0x420dd3...ce40da` | ⚠️ Unaudited |
| ProtocolGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94c012...33f410` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | base | unit-378522 | `0x254cf9...ae15b0` | ⚠️ Unaudited |
| RewardsDistributor | unknown | project_anchor | own_supporting | 0 | base | unit-378520 | `0x227f65...964c7d` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 0 | base | unit-378545 | `0xcf77a3...874e43` | ⚠️ Unaudited |
| Slipstream GaugeFactory | unknown | project_anchor | own_supporting | 0 | base | unit-378547 | `0xd30677...05fb08` | ⚠️ Unaudited |
| Slipstream GaugeImplementation | unknown | project_anchor | own_supporting | 0 | base | unit-378562 | `0xf5601f...442d2d` | ⚠️ Unaudited |
| Slipstream NonfungiblePositionManager | unknown | project_anchor | own_supporting | 0 | base | unit-378534 | `0x827922...485b72` | ⚠️ Unaudited |
| Slipstream PoolImplementation | unknown | project_anchor | own_supporting | 0 | base | unit-378556 | `0xec8e53...315831` | ⚠️ Unaudited |
| Slipstream SwapFeeModule | unknown | project_anchor | own_supporting | 0 | base | unit-378560 | `0xf4171b...69af00` | ⚠️ Unaudited |
| SugarHelper | unknown | project_anchor | own_supporting | 0 | base | unit-378513 | `0x0ad09a...b6edd5` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 1 | base | unit-378569 | `0xbe6d8f...6d18a5` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf817cb...61464f` | ⚠️ Unaudited |
| Trig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d75c4...1a216f` | ⚠️ Unaudited |
| UniversalRouter | unknown | project_anchor | own_supporting | 0 | base | unit-378532 | `0x6cb442...00be3e` | ⚠️ Unaudited |
| VeArtProxy | unknown | project_anchor | own_supporting | 0 | base | unit-378550 | `0xe99924...54643e` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 0 | base | unit-378518 | `0x166135...c480a5` | ⚠️ Unaudited |
| VotingEscrow | unknown | project_anchor | own_supporting | 0 | base | unit-378554 | `0xebf418...67e6b4` | ⚠️ Unaudited |
| VotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | base | unit-378526 | `0x45ca74...52b504` | ⚠️ Unaudited |
| WOETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9745a0...52d478` | ⚠️ Unaudited |
| WOETHBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e1826...583408` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-378543 | `0xbde0c7...49ea5a` | ❓ Unverified |

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
| base | `0xe4c69a...bc382f` | AirdropDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xee7174...eff166` | BasePrices | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5e7bb1...06809a` | CLFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0ad083...38ee68` | CustomUnstakedFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5c3f18...9e37c0` | FactoryRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x15e627...a05dcc` | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x35f35c...5bbcb5` | GaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfda1fb...d2bdc3` | ManagedRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xeb0183...a33fe5` | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0a5aa5...07d5c6` | MixedRouteQuoterV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x01b0ca...d53c55` | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x420dd3...ce40da` | PoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x254cf9...ae15b0` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x227f65...964c7d` | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcf77a3...874e43` | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0ad09a...b6edd5` | SugarHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbe6d8f...6d18a5` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6cb442...00be3e` | UniversalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe99924...54643e` | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x166135...c480a5` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xebf418...67e6b4` | VotingEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x45ca74...52b504` | VotingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 7 |

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
