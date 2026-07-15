# Agentic Audit Brief: Cove Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 29 across 7 audit(s)
- Eligible audit results: 14 (7 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Cove Finance (`cove-finance`)
- Website: [https://www.cove.finance/](https://www.cove.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 150 unique implementations (150 raw deployments)
- Coverage basis: 3/5 confirmed own live verified implementations (60.0%); conservative 60.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $257,685.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cove Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across base, ethereum. Structural roles: 10 core, 2 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: core (10), supporting (2)
- Contract kinds: contract (12)
- Detected standards: erc165 (5), accesscontrol (4), multicall (3), erc20 (2), erc20permit (1), erc4626 (1)
- Frameworks: openzeppelin (10), foundry (8), solady (8), openzeppelin-upgradeable (3), permit2 (3), chainlink (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 35 contracts are derived from known codebases. 35 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0ef805...c663eb`, chain 1)
- UnnamedContract (`0x0ffcbf...78a82f`, chain 1)
- UnnamedContract (`0x233b7b...41bcc3`, chain 1)
- UnnamedContract (`0x4137ca...c2bab3`, chain 1)
- UnnamedContract (`0x44aa6f...79e7d2`, chain 1)
- UnnamedContract (`0x44bb20...3382cb`, chain 1)
- UnnamedContract (`0x4e1ac6...0a2c57`, chain 1)
- UnnamedContract (`0x60c151...d329fe`, chain 1)
- UnnamedContract (`0x60cf6c...a6679d`, chain 1)
- UnnamedContract (`0x6d0cec...cf42da`, chain 1)
- UnnamedContract (`0x7a82ce...ac4e9c`, chain 1)
- UnnamedContract (`0x80a42c...ef165f`, chain 1)
- UnnamedContract (`0x91cf20...34f772`, chain 1)
- UnnamedContract (`0x921940...3c7f7e`, chain 1)
- UnnamedContract (`0xa74e0b...cc701d`, chain 1)
- UnnamedContract (`0xaafa26...ba0987`, chain 1)
- UnnamedContract (`0xb97c12...f26f99`, chain 1)
- UnnamedContract (`0xc50dd2...b1d35b`, chain 1)
- UnnamedContract (`0xc87adb...423605`, chain 1)
- UnnamedContract (`0xcd5341...4c93a3`, chain 1)
- UnnamedContract (`0xd0b1d6...c2ce68`, chain 1)
- UnnamedContract (`0xd46d61...6df8f6`, chain 1)
- UnnamedContract (`0xe082a5...b0f6dc`, chain 1)
- UnnamedContract (`0xe2c384...d6afb0`, chain 1)
- UnnamedContract (`0xe501df...b70af5`, chain 1)
- UnnamedContract (`0xe73d40...6492a6`, chain 1)
- UnnamedContract (`0xecc955...b8aad7`, chain 1)
- UnnamedContract (`0xeea3ed...2cdf96`, chain 1)
- UnnamedContract (`0xf58cee...6b9ff6`, chain 1)
- UnnamedContract (`0xf5cc28...ee0221`, chain 1)
- BasketManagerUtils (`0x4cb99e...4aa280`, chain 1)
- ChainedERC4626Oracle (`0x38681b...8b1e21`, chain 1)
- CurveEMAOracleUnderlying (`0x2772a1...2966b9`, chain 1)
- MasterRegistry (`0x2f507f...6efe0f`, chain 8453)
- TimelockController (`0x705f82...545cbc`, chain 1)

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (5 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/85 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/5 (60.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 35 own, 49 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 66 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 35 of 150 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/5
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 30
- Unique implementations: 150
- Raw deployments: 150
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 3 | 60.0% | 2025-04 |
| Zellic | Tier 2 | 1 | 20.0% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BasketManagerUtils | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233464 | `0x4cb99e...4aa280` | ✅ Audited |
| ChainedERC4626Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233454 | `0x38681b...8b1e21` | ✅ Audited |
| CurveEMAOracleUnderlying | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233445 | `0x2772a1...2966b9` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnchoredOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233419 | `0x00eb79...c933c1` | ⚠️ Unaudited |
| AssetRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d21dc...d473c9` | ⚠️ Unaudited |
| BasicRetryOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fcf9...19345b` | ⚠️ Unaudited |
| BasketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39ef7c...34bd2e` | ⚠️ Unaudited |
| BasketToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12ad42...b5aa0d` | ⚠️ Unaudited |
| ChainlinkOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233426 | `0x087f2b...506c48` | ⚠️ Unaudited |
| CoveToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32fb7d...7cbba8` | ⚠️ Unaudited |
| CoveYearnGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842b22...d15844` | ⚠️ Unaudited |
| CoveYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7184...65c248` | ⚠️ Unaudited |
| CoWSwapAdapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233439 | `0x1db648...2da7ad` | ⚠️ Unaudited |
| CoWSwapClone | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3138f8...0c9a63` | ⚠️ Unaudited |
| CoWSwapCloneWithAppData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a8b9...0451a7` | ⚠️ Unaudited |
| CrossAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a573...feb7c3` | ⚠️ Unaudited |
| DYFIRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x986f38...8b0706` | ⚠️ Unaudited |
| DynamicSlippageChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c2f18...6cc919` | ⚠️ Unaudited |
| ERC20Mock | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233423 | `0x062638...b9aba2` | ⚠️ Unaudited |
| ERC20RewardsGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093f4f...58d833` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233421 | `0x01dc22...cc726e` | ⚠️ Unaudited |
| EulerRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36959b...81056a` | ⚠️ Unaudited |
| FarmingPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0894ce...6dd4c1` | ⚠️ Unaudited |
| FarmingPluginFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0747ca...d4148d` | ⚠️ Unaudited |
| FeeCollector | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233458 | `0x3f0de0...6b0a61` | ⚠️ Unaudited |
| GaugeRewardReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa729...3b74f0` | ⚠️ Unaudited |
| ManagedWeightStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233433 | `0x118b21...ef7254` | ⚠️ Unaudited |
| MasterRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-233582 | `0x2f507f...6efe0f` | ⚠️ Unaudited |
| MiniChefV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x53ead3...1f2e2d` | ⚠️ Unaudited |
| PythOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02c18a...9a6036` | ⚠️ Unaudited |
| PythOracleMarketHours | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f77d...91fede` | ⚠️ Unaudited |
| RedstoneCoreOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3052a9...3074a9` | ⚠️ Unaudited |
| RewardForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bdef8...1db9e8` | ⚠️ Unaudited |
| StakingDelegateRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf91e84...4c06f0` | ⚠️ Unaudited |
| StrategyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363c09...cc9a91` | ⚠️ Unaudited |
| SwapAndLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dadf9...635cbb` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233486 | `0x705f82...545cbc` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x120b12...96bd14` | ⚠️ Unaudited |
| UniV2ExpectedOutCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb418cd...8bb256` | ⚠️ Unaudited |
| Yearn4626RouterExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15633d...ce53e3` | ⚠️ Unaudited |
| YearnStakingDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05dcdb...1c152f` | ⚠️ Unaudited |
| YSDRewardsGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ddad...2d711b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (108)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233425 | `0x06faa7...b472dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233429 | `0x0ef805...c663eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233431 | `0x0ffcbf...78a82f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233435 | `0x11d92f...2ec09d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18f365...b93b91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233437 | `0x1a9d61...94c091` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233441 | `0x233b7b...41bcc3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233443 | `0x275423...1ab6c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233447 | `0x27bdaa...4d237e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28b2dc...089a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ee8c...210afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bcc06...40ff65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f507f...6efe0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233448 | `0x319805...b01567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x332774...f93df8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233450 | `0x36230d...d5022c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233452 | `0x3666f2...050396` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37bd27...b2b885` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233456 | `0x3ab782...e97612` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233459 | `0x4137ca...c2bab3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233461 | `0x428931...e3c239` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233462 | `0x44aa6f...79e7d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233463 | `0x44bb20...3382cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45380b...4eadcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48302b...a3be24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d8409...b1f4bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233465 | `0x4e1ac6...0a2c57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233467 | `0x4e4a22...e6a6d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e69d3...38d162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x552868...b3bfc9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233469 | `0x55ac02...5b5db2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233471 | `0x5877f2...4ff523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599c79...45653f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5caae6...1242e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233472 | `0x5eba4d...1caf11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233474 | `0x60c151...d329fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233476 | `0x60cf6c...a6679d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233478 | `0x62f56c...18c7ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233480 | `0x630101...669fee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64dc55...e6f4c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656892...ca83ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66afc1...1606fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233482 | `0x6715b6...422107` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233484 | `0x6d0cec...cf42da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x716c39...1912f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233488 | `0x766de2...7431a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233490 | `0x7a82ce...ac4e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c37d1...caf98b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233493 | `0x80a42c...ef165f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233495 | `0x811da0...6dee62` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233497 | `0x8127ff...077ea4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233498 | `0x818a26...cba040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81d402...53da99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81f78d...239d95` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233500 | `0x846601...0d1812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87588d...4a74a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b994e...35ff1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90b28a...19a245` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233503 | `0x91cf20...34f772` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233505 | `0x921940...3c7f7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233507 | `0x9523af...402b63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cb8c5...29e76b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233509 | `0x9d677e...788d0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233511 | `0x9f53da...1770d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233513 | `0xa55615...1bbf3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233515 | `0xa74e0b...cc701d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233517 | `0xaafa26...ba0987` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233518 | `0xb52dbe...798360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5907b...16768f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5ed89...543605` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233520 | `0xb97c12...f26f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb17be...e2ce64` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233522 | `0xbeccf8...a15da1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233524 | `0xbf1d5c...4cd95c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233526 | `0xc1be5c...7d78ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233529 | `0xc50dd2...b1d35b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc77e0e...13356f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233531 | `0xc79154...92deba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233535 | `0xc8570f...1d0190` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233537 | `0xc87adb...423605` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233540 | `0xc9bc30...f1fa97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233542 | `0xcd5341...4c93a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233544 | `0xd0012c...1ab41e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233546 | `0xd0b1d6...c2ce68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233548 | `0xd46d61...6df8f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57950...e317c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233550 | `0xd918e8...b796af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233552 | `0xe082a5...b0f6dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233554 | `0xe2c384...d6afb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233556 | `0xe501df...b70af5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233558 | `0xe73d40...6492a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233560 | `0xecc955...b8aad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed08b0...64992e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233562 | `0xed2df3...224696` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233564 | `0xeea3ed...2cdf96` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233566 | `0xefdbac...3820cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233568 | `0xf33958...3dd0ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233570 | `0xf39533...a956a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4e7ff...68082d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233572 | `0xf58cee...6b9ff6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233574 | `0xf5cc28...ee0221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf750c2...db0221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf96e4c...6798f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233576 | `0xf9a022...a5a8ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233578 | `0xfca447...d85e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe08fc...97c0cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233580 | `0xfe53c6...c07ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x44bb20...3382cb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024-01-25_Trail_of_Bits_Boosties.pdf](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2024-01-25_Trail_of_Bits_Boosties.pdf) | Trail of Bits | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [2024-03-08_Quantstamp_Boosties.pdf (also discovered via alternate URL)](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2024-03-08_Quantstamp_Boosties.pdf) | Quantstamp | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2024-03-30_yAudit_Boosties.pdf (also discovered via alternate URL)](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2024-03-30_yAudit_Boosties.pdf) | yAudit | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2024-12-23_Zellic_Cove.pdf (also discovered via alternate URL)](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2024-12-23_Zellic_Cove.pdf) | Zellic | Audit | 2024-12 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 11 | high |
| [2025-01-16_Pashov_Cove.pdf (also discovered via alternate URL)](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2025-01-16_Pashov_Cove.pdf) | Pashov Audit Group | Audit | 2025-01 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 15 | high |
| [2025-04-19_Pashov_Cove.pdf (also discovered via alternate URL)](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2025-04-19_Pashov_Cove.pdf) | Pashov Audit Group | Audit | 2025-04 | aging | Direct | contract_name | matched | 6 | 0 | 0 | 8 | high |
| [2025-08-04_Josselin_Feist_Cove.pdf](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2025-08-04_Josselin_Feist_Cove.pdf) | Josselin Feist | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [2025-06-12-farming-plugin-reentrancy.md](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/disclosures/2025-06-12-farming-plugin-reentrancy.md) | unknown | Audit | 2025-06 | aging | Direct | address | matched | 1 | 0 | 0 | 0 | medium |
| [Report](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2024-01-25%5FTrail%5Fof%5FBits%5FBoosties.pdf) | Quantstamp | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19658] 2024-01-25_Trail_of_Bits_Boosties.pdf — no match: No explicit scope table found; contract names inferred from report title and body. Audit date from cover page.
- [19659] 2024-03-08_Quantstamp_Boosties.pdf — no match: Extracted 8 contracts from the scope section and file paths. Audit date from changelog: '2024-03-08 - Final report'.
- [19660] 2024-03-30_yAudit_Boosties.pdf — no match: Scope section explicitly lists 7 contracts under src/rewards, src/governance, and src. Audit date inferred from review period March 11-19, 2024, using end date.
- [19661] 2024-12-23_Zellic_Cove.pdf — matched: All contracts listed in the scope table on page 9 are extracted. The audit date is December 23, 2024 from the cover page.
- [19662] 2025-01-16_Pashov_Cove.pdf — matched: Scope section explicitly lists 19 smart contracts. Audit date is the end date of the engagement period (January 16th 2025).
- [19663] 2025-04-19_Pashov_Cove.pdf — matched: All 14 contracts listed in the Scope section of the audit report.
- [19664] 2025-08-04_Josselin_Feist_Cove.pdf — no match: Extracted contract names from scope, file paths, and findings. Audit date from cover page.
- [19665] 2025-06-12-farming-plugin-reentrancy.md — matched: This is an incident disclosure, not a formal audit report. Only one contract is explicitly mentioned as affected.
- [19671] Report — no match: No explicit scope table found; contract names inferred from report text. Audit date from cover page: March 19, 2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024-01-25_Trail_of_Bits_Boosties.pdf | CoveBoosties | unmatched — not counted | — | mentioned in executive summary and throughout report as a target | no |
| 2024-01-25_Trail_of_Bits_Boosties.pdf | coveYFI | unmatched — not counted | — | referenced in fix review details as a contract with rescualbe function | no |
| 2024-03-08_Quantstamp_Boosties.pdf | Yearn4626RouterExt | unmatched — not counted | — | listed in scope | no |
| 2024-03-08_Quantstamp_Boosties.pdf | CoveToken | unmatched — not counted | — | listed in scope | no |
| 2024-03-08_Quantstamp_Boosties.pdf | CoveYearnGaugeFactory | unmatched — not counted | — | listed in scope | no |
| 2024-03-08_Quantstamp_Boosties.pdf | BaseRewardsGauge | unmatched — not counted | — | listed in scope | no |
| 2024-03-08_Quantstamp_Boosties.pdf | YSDRewardsGauge | unmatched — not counted | — | listed in scope | no |
| 2024-03-08_Quantstamp_Boosties.pdf | RewardForwarder | unmatched — not counted | — | listed in scope | no |
| 2024-03-08_Quantstamp_Boosties.pdf | MiniChefV3 | unmatched — not counted | — | listed in scope | no |
| 2024-03-08_Quantstamp_Boosties.pdf | Deployments | unmatched — not counted | — | listed in scope | no |
| 2024-03-30_yAudit_Boosties.pdf | BaseRewardsGauge | unmatched — not counted | — | listed in scope | no |
| 2024-03-30_yAudit_Boosties.pdf | ERC20RewardsGauge | unmatched — not counted | — | listed in scope | no |
| 2024-03-30_yAudit_Boosties.pdf | MiniChefV3 | unmatched — not counted | — | listed in scope | no |
| 2024-03-30_yAudit_Boosties.pdf | RewardForwarder | unmatched — not counted | — | listed in scope | no |
| 2024-03-30_yAudit_Boosties.pdf | YSDRewardsGauge | unmatched — not counted | — | listed in scope | no |
| 2024-03-30_yAudit_Boosties.pdf | CoveToken | unmatched — not counted | — | listed in scope | no |
| 2024-03-30_yAudit_Boosties.pdf | Yearn4626RouterExt | unmatched — not counted | — | listed in scope | no |
| 2024-12-23_Zellic_Cove.pdf | AnchoredOracle | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | AssetRegistry | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | BasketManager | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | BasketToken | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | FeeCollector | own contract | 0x921940… (selected) `0x921940...3c7f7e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-23_Zellic_Cove.pdf | BasketManagerUtils | own contract | BasketManagerUtils (selected) `0x4cb99e...4aa280` — deployed 2025-05-27 04:02:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-23_Zellic_Cove.pdf | BitFlag | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | AutomaticWeightStrategy | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | ManagedWeightStrategy | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | StrategyRegistry | own contract | 0xb97c12… (selected) `0xb97c12...f26f99` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-23_Zellic_Cove.pdf | WeightStrategy | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | CoWSwapAdapter | own contract | 0xc50dd2… (selected) `0xc50dd2...b1d35b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-23_Zellic_Cove.pdf | CoWSwapClone | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | TokenSwapAdapter | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | ERC20PluginsUpgradeable | unmatched — not counted | — | listed in scope table | no |
| 2025-01-16_Pashov_Cove.pdf | AnchoredOracle | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | BasketManager | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | BasketToken | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | FeeCollector | own contract | 0x921940… (selected) `0x921940...3c7f7e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-16_Pashov_Cove.pdf | Rescuable | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | BasketManagerStorage | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | Trades | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | CoWSwapAdapter | own contract | 0xc50dd2… (selected) `0xc50dd2...b1d35b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-16_Pashov_Cove.pdf | CoWSwapClone | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | TokenSwapAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | AutomaticWeightStrategy | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | ManagedWeightStrategy | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | StrategyRegistry | own contract | 0xb97c12… (selected) `0xb97c12...f26f99` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-16_Pashov_Cove.pdf | WeightStrategy | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | BasketManagerUtils | own contract | BasketManagerUtils (selected) `0x4cb99e...4aa280` — deployed 2025-05-27 04:02:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-16_Pashov_Cove.pdf | BitFlag | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | BasketManager | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | BasketToken | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | FeeCollector | own contract | 0x921940… (selected) `0x921940...3c7f7e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | BasketManagerUtils | own contract | BasketManagerUtils (selected) `0x4cb99e...4aa280` — deployed 2025-05-27 04:02:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | AnchoredOracle | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | ChainedERC4626Oracle | own contract | ChainedERC4626Oracle (selected) `0x38681b...8b1e21` — deployed 2025-05-27 04:02:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | CurveEMAOracleUnderlying | own contract | CurveEMAOracleUnderlying (selected) `0x2772a1...2966b9` — deployed 2025-05-27 04:02:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | ERC4626Oracle | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | ManagedWeightStrategy | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | StrategyRegistry | own contract | 0xb97c12… (selected) `0xb97c12...f26f99` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | CoWSwapAdapter | own contract | 0xc50dd2… (selected) `0xc50dd2...b1d35b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | CoWSwapClone | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | BasketManagerStorage | unmatched — not counted | — | listed in scope | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | BasketManager | unmatched — not counted | — | mentioned in scope and findings | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | BasketToken | unmatched — not counted | — | referenced in cove_bot.py | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | CoveState | unmatched — not counted | — | defined and used in bot state | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | MasterRegistry | ambiguous — not counted | MasterRegistry (alternative) `0x2f507f...6efe0f` — deployed 2025-10-03 01:12:35+03 — liveness: live (current_address_book_code)<br>0x44bb20… (alternative) `0x44bb20...3382cb` — liveness: live (current_address_book_code)<br>0x91cf20… (alternative) `0x91cf20...34f772` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | ERC4626Oracle | unmatched — not counted | — | detailed in Appendix D | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | CurveOracle | unmatched — not counted | — | detailed in Appendix D | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | CrossAdapter | unmatched — not counted | — | mentioned in Oracle risks evaluation | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | AnchoredOracle | unmatched — not counted | — | mentioned in Oracle risks evaluation | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | LogFilter | unmatched — not counted | — | used in event filtering | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | SilverbackBot | unmatched — not counted | — | used throughout bot code | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | Contract | unmatched — not counted | — | used to instantiate contracts | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | SimpleNamespace | unmatched — not counted | — | used in scripts | no |
| 2025-06-12-farming-plugin-reentrancy.md | FarmingPlugin | own contract | 0xa74e0b… (selected) `0xa74e0b...cc701d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Report | CoveBoosties | unmatched — not counted | — | mentioned in executive summary and throughout report | no |
| Report | coveYFI | unmatched — not counted | — | referenced in fix review details as CoveYFI.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x2f507f...6efe0f` | MasterRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 5 |
| standard_library | 1 |
| needs_review | 108 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 15 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 64 unmatched
- Matched-own operational status: 15 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, medium=3
- Match method counts: address=1, unique_name=28

Zero-match audit list:

- [19658] 2024-01-25_Trail_of_Bits_Boosties.pdf
- [19659] 2024-03-08_Quantstamp_Boosties.pdf
- [19660] 2024-03-30_yAudit_Boosties.pdf
- [19664] 2025-08-04_Josselin_Feist_Cove.pdf
- [19671] Report

Fork inheritance lineage and inherited audits are included when available.
