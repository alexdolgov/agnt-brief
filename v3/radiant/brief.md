# Agentic Audit Brief: Radiant

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 7 (1 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Radiant (`radiant`)
- Website: [https://radiant.capital/#/markets](https://radiant.capital/#/markets)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 243 unique implementations (243 raw deployments)
- Coverage basis: 1/5 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,667,839.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Radiant. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 56 contract row(s) across arbitrum, base, bsc, ethereum. Structural roles: 30 core, 17 unclassified, 9 supporting. 11 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 56
- Structural roles: core (30), unclassified (17), supporting (9)
- Contract kinds: contract (55), unclassified (1)
- Detected standards: ownable (17), erc20 (5), erc165 (3), erc1967proxy (3), pausable (3), erc20permit (2)
- Frameworks: openzeppelin (22), openzeppelin-upgradeable (11), uniswap-v2 (8), layerzero (6), solmate (6)
- Upgradeable-pattern rows: 11

## Fork Analysis

1 of 15 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

**WeightedPool** (`0xcf7b51...a1d52a`, chain 1)
Origin: hinkal (`0x380aab...4d0fad`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7703f9...8fa4c4`, chain 8453)
- UnnamedContract (`0x878120...f4cfaf`, chain 8453)
- UnnamedContract (`0x897d57...213f5f`, chain 8453)
- UnnamedContract (`0x8a7663...328254`, chain 8453)
- UnnamedContract (`0x95f0d3...678548`, chain 8453)
- UnnamedContract (`0xb38f6e...310899`, chain 8453)
- UnnamedContract (`0xbffc0f...bbfa0a`, chain 8453)
- UnnamedContract (`0xe5980c...72879d`, chain 8453)
- UnnamedContract (`0xfcbd30...34dc3c`, chain 8453)
- PancakePair (`0x346575...5322e1`, chain 56)
- RadiantOFT (`0x137ddb...84f893`, chain 1)
- RadiantOFT (`0xf7de7e...1384df`, chain 56)
- RadiantOFT (`0xd722e5...3dc5d4`, chain 8453)
- WBNB (`0xbb4cdb...bc095c`, chain 56)

## Contract Surface Quality

- Indexed contracts: 56; live-surface contracts included: 56 (6 live, 50 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/268 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/5 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 227 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 15 of 243 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/5
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 243
- Raw deployments: 243
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 20.0% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RadiantOFT | unknown | project_anchor | own_supporting | 0 | bsc | unit-252441 | `0xf7de7e...1384df` | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdaptiveCurveIrm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252286 | `0x63c5d4...daccc1` | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252355 | `0x172e1f...c11b3f` | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252518 | `0xcd4b35...811b3a` | ⚠️ Unaudited |
| ChainlinkOracleV2Factory | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252253 | `0x043fff...5d6d39` | ⚠️ Unaudited |
| ChainlinkOracleV2Factory | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252386 | `0x735326...53816f` | ⚠️ Unaudited |
| ChainlinkOracleV2Factory | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252536 | `0xfa59e2...30747e` | ⚠️ Unaudited |
| Compounder | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-252543 | `0xb905f3...eabfb7` | ⚠️ Unaudited |
| FixedRateIrm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252282 | `0x533597...043b39` | ⚠️ Unaudited |
| FixedRateIrm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252391 | `0x784333...495174` | ⚠️ Unaudited |
| FixedRateIrm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252537 | `0xfb4c97...215fe3` | ⚠️ Unaudited |
| GnosisSafe | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-252541 | `0xcd264f...47a8fb` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252300 | `0x85f974...a9c9c7` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252302 | `0x8715d5...34cc3f` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252304 | `0x8bec00...7a8385` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252314 | `0xa9f391...719177` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252316 | `0xac1bbb...26ce98` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252317 | `0xb146da...00570e` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252318 | `0xb41bd9...8b657c` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252326 | `0xc8cbb4...b644a7` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252335 | `0xe491c1...730e5c` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252339 | `0xec8218...e052d9` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252378 | `0x5cc832...aecf22` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252388 | `0x7473d4...e3980f` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252389 | `0x75ccd6...6b5c55` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252405 | `0x94b6f7...496300` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252492 | `0x7a2d83...5ba28a` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252525 | `0xdd8ff0...42c4be` | ⚠️ Unaudited |
| Multicall3 | periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252517 | `0xca11bd...76ca11` | ⚠️ Unaudited |
| PancakePair | unknown | project_anchor | own_supporting | 0 | bsc | unit-252363 | `0x346575...5322e1` | ⚠️ Unaudited |
| RadiantLendingMarket | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252285 | `0x636563...f973aa` | ⚠️ Unaudited |
| RadiantLendingMarket | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252430 | `0xcdc0e0...8e645d` | ⚠️ Unaudited |
| RadiantLendingMarket | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252483 | `0x5d6492...93dd66` | ⚠️ Unaudited |
| RadiantOFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252257 | `0x137ddb...84f893` | ⚠️ Unaudited |
| RadiantOFT | unknown | project_anchor | own_supporting | 0 | base | unit-252522 | `0xd722e5...3dc5d4` | ⚠️ Unaudited |
| RizLendingPoolAddressesProvider | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252416 | `0xbe7c10...4c0482` | ⚠️ Unaudited |
| RizLendingPoolAddressesProvider | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252439 | `0xe986b0...0eeaef` | ⚠️ Unaudited |
| RizLendingPoolAddressesProvider | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252440 | `0xf2e9dd...0e36c2` | ⚠️ Unaudited |
| RizLendingPoolAddressesProvider | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252448 | `0x0496f4...e454ef` | ⚠️ Unaudited |
| RizLendingPoolAddressesProvider | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252484 | `0x61cbce...139feb` | ⚠️ Unaudited |
| RizLendingPoolAddressesProvider | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252497 | `0x88d875...4cef5b` | ⚠️ Unaudited |
| RizLendingPoolAddressesProvider | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252500 | `0x902a27...5ec2fe` | ⚠️ Unaudited |
| RizLendingPoolAddressesProvider | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252535 | `0xfa5841...36204f` | ⚠️ Unaudited |
| Router | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252303 | `0x8731d5...e01e98` | ⚠️ Unaudited |
| Router | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252372 | `0x4a364f...cf18d8` | ⚠️ Unaudited |
| Router | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252476 | `0x45f1a9...4d263b` | ⚠️ Unaudited |
| StargateBorrowV2 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-252540 | `0x07bac9...673712` | ⚠️ Unaudited |
| StargateBorrowV2 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-252542 | `0x68a703...69c03c` | ⚠️ Unaudited |
| WBNB | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252414 | `0xbb4cdb...bc095c` | ⚠️ Unaudited |
| WeightedPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-252329 | `0xcf7b51...a1d52a` | ⚠️ Unaudited |
| WETH9 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252324 | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| WETH9 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252472 | `0x420000...000006` | ⚠️ Unaudited |
| WETHGateway | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252341 | `0xf25103...250527` | ⚠️ Unaudited |
| WETHGateway | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252434 | `0xd0fc69...258ac9` | ⚠️ Unaudited |
| WETHGateway | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252454 | `0x18baa3...18900a` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252493 | `0x7bb8b0...8d6570` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (187)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252251 | `0x0184eb...cb73a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252252 | `0x03ab03...5bc906` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252254 | `0x0b87df...43d5e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252255 | `0x126bd0...b2784c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252256 | `0x135271...f06909` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252258 | `0x14b0a6...f30919` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252259 | `0x1d25bd...f8247c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252261 | `0x211dd8...cfb350` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252263 | `0x24378a...583456` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252265 | `0x25de46...64091c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252266 | `0x28e395...4e3797` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252267 | `0x2d4fc0...3abaa7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252269 | `0x362f3b...993813` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252270 | `0x37b64f...b23e34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252272 | `0x3c19d9...daf8b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252273 | `0x3eaf34...06b724` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252278 | `0x457885...4ad052` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252279 | `0x473693...fb50e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252281 | `0x490726...8a122f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252283 | `0x57edfe...ca7491` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252287 | `0x660fe1...b88375` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252288 | `0x6a0e8b...c23f03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252289 | `0x6dd414...8dabbd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252291 | `0x70e507...119b9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252293 | `0x73e408...93c2d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252294 | `0x77f6ab...ba605f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252297 | `0x82561c...5beeaf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252298 | `0x83b389...dd09b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252299 | `0x83f523...c8312e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878120...f4cfaf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252305 | `0x8dd4d3...4227d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252306 | `0x8e0268...8a5e3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252307 | `0x93ac0c...4f4bd6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252308 | `0x94ec38...db1f53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252309 | `0x9e85df...34bf1f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252311 | `0xa12059...0faab4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252312 | `0xa6ea75...26279b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252313 | `0xa95097...88ed07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252315 | `0xa9f92e...8a99d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252320 | `0xb7fa31...3121d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252322 | `0xba8318...2d3b33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252323 | `0xbd6029...c4a8f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252327 | `0xcde79c...4db707` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252330 | `0xd10c31...6aa992` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252331 | `0xdd4c49...e42e36` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252333 | `0xdf1e92...3bfc31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252334 | `0xe2a9e5...7066c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252336 | `0xe57538...f518e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252337 | `0xe7f252...a0c541` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252338 | `0xe96906...068ba2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252340 | `0xeda11a...299712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252343 | `0xf81ae7...75114b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-252344 | `0xfe6c43...5829e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252349 | `0x054321...a923bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252350 | `0x080995...6e836e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252351 | `0x0bb5c1...6f3782` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252352 | `0x1029a5...73a165` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252353 | `0x15cc62...520d57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252354 | `0x16cd51...a9b0ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252356 | `0x1e0629...2b30c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252357 | `0x1f0fa1...0b21d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252358 | `0x23a06b...c69aed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252359 | `0x279e50...ac47cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252360 | `0x2f9d57...5917e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252361 | `0x31d1e9...390598` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252362 | `0x339d7e...b3ff29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252364 | `0x35ac38...fda78c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252365 | `0x36594b...1e0359` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252366 | `0x3bb250...f6f973` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252367 | `0x3d0b0a...5371e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252368 | `0x3ef5d3...fe8c29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252369 | `0x403510...8f2c05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252370 | `0x44efc0...6b00dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252371 | `0x486a97...51b8a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252373 | `0x4d94a7...92ce3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252374 | `0x4fd9f7...dfcb5e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252375 | `0x55e367...dffa47` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252376 | `0x58bf13...e5f109` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252377 | `0x5aa499...64deb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252379 | `0x5da740...fd7a4d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252380 | `0x5e154d...51be19` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252382 | `0x64a59e...eee27c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252384 | `0x701810...954ec3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252393 | `0x7a84c8...ebb83d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252395 | `0x7b45bc...7fee6e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252397 | `0x7c16ab...229933` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252399 | `0x7d1568...bdde36` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252401 | `0x8e4660...a9abd1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252403 | `0x8fe962...04c367` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252407 | `0x9915a7...b12be4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252409 | `0x9dc7d0...2d5f11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252411 | `0xa04a72...b8891b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252412 | `0xb104e1...dd59af` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252418 | `0xc1e02d...7107b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252420 | `0xc4a09d...de23b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252422 | `0xc589b9...b2a278` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252424 | `0xcbb963...551bff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252426 | `0xcbbd19...442ac9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252428 | `0xccf31d...da032c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252432 | `0xcebdff...9dfed8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252433 | `0xd083fb...b3056b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252435 | `0xd319e0...70e4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252436 | `0xd456f6...ad8be8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252437 | `0xdf155a...4070e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252438 | `0xe534f7...545831` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252442 | `0xf8003e...205532` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252443 | `0xf81c76...d7b4c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252444 | `0xfb99b2...e612b6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252445 | `0xfba333...4ac855` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-252446 | `0xff20cd...83074f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252447 | `0x02694d...ce4cac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252449 | `0x07d2dc...1b9eaf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252450 | `0x0a81e4...2d0d5f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252451 | `0x0b831c...a4a2d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252452 | `0x0ff1a2...8d20b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252453 | `0x17042a...16ccaa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252455 | `0x19ae04...5cbe92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252456 | `0x1fe5c3...13ce77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252457 | `0x20508b...48786e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252458 | `0x211dd8...cfb350` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252459 | `0x223a40...c735da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252460 | `0x245548...1d659c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252461 | `0x260000...742b50` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252462 | `0x26e1f2...2c7212` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252463 | `0x2ab122...8a89ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252464 | `0x2eeedf...6223d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252465 | `0x30798c...bc492f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252466 | `0x376b59...1ed5a1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252467 | `0x392376...323b00` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252468 | `0x3c86f8...9be13f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252469 | `0x3eaf34...06b724` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252470 | `0x3ef3d8...0dd9ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252471 | `0x40eb2d...3dc2b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252473 | `0x424e60...5b51e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252474 | `0x43095e...7433fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252475 | `0x44db23...af03dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252477 | `0x47cefa...82a556` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252478 | `0x4b246d...07fc5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252479 | `0x4e8db0...6be2a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252480 | `0x520411...b1426f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252481 | `0x5555b6...d2f4d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252482 | `0x5cd382...77a56f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252485 | `0x630ac6...097d56` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252486 | `0x633ebd...7bcaa1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252487 | `0x64eb9a...6553b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252488 | `0x66c94f...6f5ec1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252489 | `0x6f77be...b2946a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252490 | `0x73a53a...ad7d22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-252491 | `0x7703f9...8fa4c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252494 | `0x809624...86fcff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252495 | `0x871515...b20121` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-252496 | `0x878120...f4cfaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-252498 | `0x897d57...213f5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-252499 | `0x8a7663...328254` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252501 | `0x94ec38...db1f53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-252502 | `0x95f0d3...678548` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252503 | `0x9b8761...6838e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252504 | `0x9ce33d...38d536` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252505 | `0xa044b4...415a97` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252506 | `0xabc44f...359d71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252507 | `0xad1640...412142` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252508 | `0xaec174...b74f0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252509 | `0xb1c3d2...87f86b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-252510 | `0xb38f6e...310899` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252511 | `0xb6bd10...71fee4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252512 | `0xb8eb47...0c61d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-252513 | `0xbffc0f...bbfa0a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252514 | `0xc2ddb8...919b14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252515 | `0xc49b4d...47e411` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252516 | `0xc98678...f12121` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252519 | `0xcf2170...96cf89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252520 | `0xd111c7...87cec9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252521 | `0xd3c1ac...0e1504` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252523 | `0xd87f8a...5a3741` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252524 | `0xd9e9fc...2eecb5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252526 | `0xe37374...922164` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252527 | `0xe3809a...f9996c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-252528 | `0xe5980c...72879d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252529 | `0xe7f252...a0c541` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252530 | `0xea0496...13e2dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252531 | `0xef54ae...c9f6fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252532 | `0xf34978...ed7fbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252533 | `0xf73aa4...bc25c3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252534 | `0xf82705...303bac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-252538 | `0xfcbd30...34dc3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-252539 | `0xfe6c43...5829e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x878120...f4cfaf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sourcehat.com/audits/RadiantProtocol](https://sourcehat.com/audits/RadiantProtocol) | SourceHat | Audit | 2022-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [www.openzeppelin.com/news/radiant-riz-audit](https://www.openzeppelin.com/news/radiant-riz-audit) | OpenZeppelin | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |
| [Radiant Capital audit report_06_March.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Radiant/Radiant%20Capital%20audit%20report_06_March.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |
| [blocksec_radiant_v2.0.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_radiant_v2.0.pdf) | OpenZeppelin | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [PeckShield-Audit-Report-Radiant-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Radiant-v1.0.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [PeckShield-Audit-Report-RadiantV2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-RadiantV2-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | n/a | matched | 1 | 0 | 0 | 10 | n/a |
| [blocksec_radiant_glp_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_radiant_glp_v1.0-signed.pdf) | BlockSec | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3727] sourcehat.com/audits/RadiantProtocol — no match: No reason recorded
- [3728] www.openzeppelin.com/news/radiant-riz-audit — no match: No reason recorded
- [3729] Radiant Capital audit report_06_March.pdf — no match: Extracted 22 contract names from the scope listing. No audit date found in the provided text.
- [3730] blocksec_radiant_v2.0.pdf — no match: No reason recorded
- [3731] PeckShield-Audit-Report-Radiant-v1.0.pdf — no match: No reason recorded
- [3732] PeckShield-Audit-Report-RadiantV2-v1.0.pdf — matched: No reason recorded
- [3733] blocksec_radiant_glp_v1.0-signed.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sourcehat.com/audits/RadiantProtocol | AToken | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | AaveOracle | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | ChefIncentivesController | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | GeistToken | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | LendingPool | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | LendingPoolAddressesProvider | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | LendingPoolAddressesProviderRegistry | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | LendingPoolCollateralManager | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | LendingPoolConfigurator | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | Leverager | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | MasterChef | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | MerkleDistributor | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | MultiFeeDistribution | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | QuickVestAndLock | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | StableDebtToken | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | StargateBorrow | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | TokenVesting | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | UiPoolDataProvider | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | UiPoolDataProviderV2V3 | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | VariableDebtToken | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | WETHGateway | unmatched — not counted | — | — | no |
| sourcehat.com/audits/RadiantProtocol | WalletBalanceProvider | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | BadDebtManager | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | BaseStrategy | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | DexSwapStrategy | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | EmergencyWithdraw | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | Errors | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | IAggregatorV2V3 | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | IBaseStrategy | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | IOracleRouter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | IPyth | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | IPythEvents | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | IRizAToken | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | IRizLendingPool | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | IRizLendingPoolAddressesProvider | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | ITokenizedStrategy | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | IYVaultFactory | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | IYVaultV3 | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | OracleRouter | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | PythStructs | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | RevenueManagement | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | RizAToken | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | RizLendingPool | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | RizLendingPoolAddressesProvider | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | RizLendingPoolConfigurator | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | RizLendingPoolStorage | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | RizLeverager | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | RizLockZap | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | RizRegistry | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | RizSafetyModule | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | TokenizedStrategy | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/radiant-riz-audit | YRizStrategy | unmatched — not counted | — | — | no |
| Radiant Capital audit report_06_March.pdf | AutoCompounder | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | Disqualifier | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | EligibilityDataProvider | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | Leverager | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | Migration | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | RadiantOFT | ambiguous — not counted | RadiantOFT (alternative) `0xf7de7e...1384df` — deployed 2023-03-27 18:38:55+03 — liveness: live (code_present_context)<br>RadiantOFT (alternative) `0x137ddb...84f893` — deployed 2023-10-31 02:53:59+03 — liveness: live (current_address_book_code)<br>RadiantOFT (alternative) `0xd722e5...3dc5d4` — deployed 2024-05-03 22:28:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Radiant Capital audit report_06_March.pdf | PriceProvider | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | ChefIncentivesController | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | MFDstats | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | MiddleFeeDistribution | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | MultiFeeDistribution | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | TokenVesting | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | StargateBorrow | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | BalancerPoolHelper | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | LiquidityZap | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | UniswapPoolHelper | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | LockZap | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | LendingPool | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | AToken | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| Radiant Capital audit report_06_March.pdf | BountyManager | unmatched — not counted | — | listed in scope | no |
| blocksec_radiant_v2.0.pdf | ATokensAndRatesHelper | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | AaveOracle | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | AaveProtocolDataProvider | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | AutoCompounder | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | BountyManager | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | ChefIncentivesController | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | ComboOracle | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | IncentivizedERC20 | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | LendingPool | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | Leverager | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | LiquidityZap | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | LockZap | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | MFDPlus | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | MiddleFeeDistribution | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | Migration | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | MultiFeeDistribution | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | StableAndVariableTokensHelper | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | StarBorrow | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | UiPoolDataProvider | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | UiPoolDataProviderV2V3 | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | UniV2TwapOracle | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | UniswapPoolHelper | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | UniswapV2Library | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | WETHGateway | unmatched — not counted | — | — | no |
| blocksec_radiant_v2.0.pdf | WalletBalanceProvider | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Radiant-v1.0.pdf | AToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Radiant-v1.0.pdf | ChefIncentivesController | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Radiant-v1.0.pdf | IncentivizedERC20 | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Radiant-v1.0.pdf | LendingPool | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Radiant-v1.0.pdf | LendingPoolAddressesProvider | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Radiant-v1.0.pdf | Leverager | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Radiant-v1.0.pdf | MultiFeeDistribution | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Radiant-v1.0.pdf | StableDebtToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Radiant-v1.0.pdf | ValidationLogic | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Radiant-v1.0.pdf | VariableDebtToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Radiant-v1.0.pdf | WETHGateway | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RadiantV2-v1.0.pdf | AutoCompounder | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RadiantV2-v1.0.pdf | BalancerPoolHelper | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RadiantV2-v1.0.pdf | ChefIncentivesController | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RadiantV2-v1.0.pdf | Disqualifier | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RadiantV2-v1.0.pdf | LendingPoolAddressesProvider | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RadiantV2-v1.0.pdf | LiquidityZap | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RadiantV2-v1.0.pdf | LzApp | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RadiantV2-v1.0.pdf | MultiFeeDistribution | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RadiantV2-v1.0.pdf | RadiantOFT | own contract | RadiantOFT (selected) `0xf7de7e...1384df` — deployed 2023-03-27 18:38:55+03 — liveness: live (code_present_context)<br>RadiantOFT (alternative) `0x137ddb...84f893` — deployed 2023-10-31 02:53:59+03 — liveness: live (current_address_book_code)<br>RadiantOFT (alternative) `0xd722e5...3dc5d4` — deployed 2024-05-03 22:28:27+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-03-27 was 26d from audit; next candidate 244d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-RadiantV2-v1.0.pdf | StargateBorrow | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RadiantV2-v1.0.pdf | UniswapPoolHelper | unmatched — not counted | — | — | no |
| blocksec_radiant_glp_v1.0-signed.pdf | BaseChainlinkAdapter | unmatched — not counted | — | — | no |
| blocksec_radiant_glp_v1.0-signed.pdf | GLPStrategy | unmatched — not counted | — | — | no |
| blocksec_radiant_glp_v1.0-signed.pdf | GLPVault | unmatched — not counted | — | — | no |
| blocksec_radiant_glp_v1.0-signed.pdf | OracleRouter | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x346575...5322e1` | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x137ddb...84f893` | RadiantOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd722e5...3dc5d4` | RadiantOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcf7b51...a1d52a` | WeightedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 7 |
| standard_library | 18 |
| needs_review | 187 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 123 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: temporal_name=1

Zero-match audit list:

- [3727] sourcehat.com/audits/RadiantProtocol
- [3728] www.openzeppelin.com/news/radiant-riz-audit
- [3729] Radiant Capital audit report_06_March.pdf
- [3730] blocksec_radiant_v2.0.pdf
- [3731] PeckShield-Audit-Report-Radiant-v1.0.pdf
- [3733] blocksec_radiant_glp_v1.0-signed.pdf

Fork inheritance lineage and inherited audits are included when available.
