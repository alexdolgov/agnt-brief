# Agentic Audit Brief: Cove Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 29 across 7 audit(s)
- Eligible audit results: 14 (7 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Cove Finance (`cove-finance`)
- Website: [https://www.cove.finance/](https://www.cove.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum
- Contract surface: 278 unique implementations (278 raw deployments)
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

- UnnamedContract (`0x0ef805362304d1a1ef1444f5b411fe96dec663eb`, chain 1)
- UnnamedContract (`0x0ffcbfe3034e9f7139c367d52f2668b6b878a82f`, chain 1)
- UnnamedContract (`0x233b7b16278640c022cbc6f6fbf5d2daa741bcc3`, chain 1)
- UnnamedContract (`0x4137cae916696eaa776443c8d4db832988c2bab3`, chain 1)
- UnnamedContract (`0x44aa6fd2b4c6fe413bb1c11b9e94c8e80879e7d2`, chain 1)
- UnnamedContract (`0x44bb20e5a3cc2cbdfb7520aa76281019723382cb`, chain 1)
- UnnamedContract (`0x4e1ac601becc4f55d676357fedb759ec240a2c57`, chain 1)
- UnnamedContract (`0x60c15150f094840972269f2d758ffd9d82d329fe`, chain 1)
- UnnamedContract (`0x60cf6c24ff5636b0b35e481cb91a57e9f8a6679d`, chain 1)
- UnnamedContract (`0x6d0cec5bd7d8a9292c9cbf9107664edc2acf42da`, chain 1)
- UnnamedContract (`0x7a82ced9334aec14304842fa758e8a9731ac4e9c`, chain 1)
- UnnamedContract (`0x80a42c54d57654a4b3bb82281eed797419ef165f`, chain 1)
- UnnamedContract (`0x91cf20c03bec656bc008fb2a2177bc3caa34f772`, chain 1)
- UnnamedContract (`0x9219401e7e2e473770e56203e4eeba85083c7f7e`, chain 1)
- UnnamedContract (`0xa74e0b738b053d9083451bbab84c538ff2cc701d`, chain 1)
- UnnamedContract (`0xaafa26aa70e7e1119b32fdb2dfc07f8e3eba0987`, chain 1)
- UnnamedContract (`0xb97c12781fb1de1f07b4735526db7b3420f26f99`, chain 1)
- UnnamedContract (`0xc50dd21a8515cbfd597d65c8fe9f4653f1b1d35b`, chain 1)
- UnnamedContract (`0xc87adb71e67a03c4bb43f12eaba39ef1ba423605`, chain 1)
- UnnamedContract (`0xcd534167ec52ba2f4d81915e5331e841074c93a3`, chain 1)
- UnnamedContract (`0xd0b1d686f1ec4879add3bee2dd0f0befb0c2ce68`, chain 1)
- UnnamedContract (`0xd46d6161bbb2103da01987430de8b9c4756df8f6`, chain 1)
- UnnamedContract (`0xe082a5cc8eabbf57af5f286fa258aacd2ab0f6dc`, chain 1)
- UnnamedContract (`0xe2c3844529c4f5b77fbc692fe1456136afd6afb0`, chain 1)
- UnnamedContract (`0xe501dfec659da3a3bb5901634ebb34be10b70af5`, chain 1)
- UnnamedContract (`0xe73d409b0c91b8214eaf7fcf7521f0cca46492a6`, chain 1)
- UnnamedContract (`0xecc9556f546950619e84c5c70fdf19d89db8aad7`, chain 1)
- UnnamedContract (`0xeea3edc017877c603e2f332fc1828a46432cdf96`, chain 1)
- UnnamedContract (`0xf58cee791a1a752ee57b4d7df94083d0916b9ff6`, chain 1)
- UnnamedContract (`0xf5cc28c0727473a9611d09654437474becee0221`, chain 1)
- BasketManagerUtils (`0x4cb99eb83a0abed477c4a99234bc58e0464aa280`, chain 1)
- ChainedERC4626Oracle (`0x38681b1096f5a67286094deacbb112a0848b1e21`, chain 1)
- CurveEMAOracleUnderlying (`0x2772a1464024d6fcab5fc75d379eee928e2966b9`, chain 1)
- MasterRegistry (`0x2f507f98a22b5f5c17423aa8365eaef5bc6efe0f`, chain 8453)
- TimelockController (`0x705f82bb431fada1a0f11d7b77b3f0586c545cbc`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 12; live-surface rows included: 12 (5 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/85 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/5 (60.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 35 own, 49 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 194 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 35 of 278 unique; 243 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/42
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 236
- Unique implementations: 278
- Raw deployments: 278
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
| Pashov Audit Group | Tier 2 | 3 | 7.1% | 2025-04 |
| Zellic | Tier 2 | 1 | 2.4% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BasketManagerUtils | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233464 | `0x4cb99eb83a0abed477c4a99234bc58e0464aa280` | ✅ Audited |
| ChainedERC4626Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233454 | `0x38681b1096f5a67286094deacbb112a0848b1e21` | ✅ Audited |
| CurveEMAOracleUnderlying | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233445 | `0x2772a1464024d6fcab5fc75d379eee928e2966b9` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnchoredOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233419 | `0x00eb79cf7917c3cdd30755a5f4bbf5a47bc933c1` | ⚠️ Unaudited |
| AssetRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d21dcf9787dfe268b76f0336d1bfb9a32d473c9` | ⚠️ Unaudited |
| BasicRetryOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fcf995e7b32bb0d07bd84abedda09bd919345b` | ⚠️ Unaudited |
| BasketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39ef7c7f18406485c550193bb1fff6883f34bd2e` | ⚠️ Unaudited |
| BasketToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12ad42b7a0788216d22082859c69cdecb1b5aa0d` | ⚠️ Unaudited |
| ChainlinkOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233426 | `0x087f2b76aedf6d7d103e780c31694641f2506c48` | ⚠️ Unaudited |
| CoveToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32fb7d6e0cbeb9433772689aa4647828cc7cbba8` | ⚠️ Unaudited |
| CoveYearnGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842b22eb2a1c1c54344eddbe6959f787c2d15844` | ⚠️ Unaudited |
| CoveYFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff71841eefca78a64421db28060855036765c248` | ⚠️ Unaudited |
| CoWSwapAdapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233439 | `0x1db6482f07b223fad08e8ec4648024601b2da7ad` | ⚠️ Unaudited |
| CoWSwapClone | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3138f89ad108de04ba4edc925b4b07e4010c9a63` | ⚠️ Unaudited |
| CoWSwapCloneWithAppData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a8b9d57227a1db1620f617964ba9ccab0451a7` | ⚠️ Unaudited |
| CrossAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a573bb8c5278d5cbea3ec04e316ca8c3feb7c3` | ⚠️ Unaudited |
| DYFIRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x986f38b5b096070ee64b12da762468606c8b0706` | ⚠️ Unaudited |
| DynamicSlippageChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c2f185593a57e0927c33dd983925874df6cc919` | ⚠️ Unaudited |
| ERC20Mock | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233423 | `0x062638326fd5efd369921d034664c9de20b9aba2` | ⚠️ Unaudited |
| ERC20RewardsGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093f4fca4b71912edb33b2d4bb92e5b85658d833` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233421 | `0x01dc22d46d8cf6100ab91fbb4e614c52f8cc726e` | ⚠️ Unaudited |
| EulerRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36959be8a8eb65d5905d5e413a23e5592681056a` | ⚠️ Unaudited |
| FarmingPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0894ce556d81c7de6b373d91a0d691673d6dd4c1` | ⚠️ Unaudited |
| FarmingPluginFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0747ca5b8c22832a6812f8051d25757d05d4148d` | ⚠️ Unaudited |
| FeeCollector | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233458 | `0x3f0de00c4332121764837c7bbd30bb9cb66b0a61` | ⚠️ Unaudited |
| GaugeRewardReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa729fa58e8298aaec4c4c33189ed137b3b74f0` | ⚠️ Unaudited |
| ManagedWeightStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233433 | `0x118b214008d3c693f0fc3434ef24f28e23ef7254` | ⚠️ Unaudited |
| MasterRegistry | unknown | project_anchor | own_supporting | 0 | base | unit-233582 | `0x2f507f98a22b5f5c17423aa8365eaef5bc6efe0f` | ⚠️ Unaudited |
| MiniChefV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x53ead38ca96d562433427f7bbfcac960cc1f2e2d` | ⚠️ Unaudited |
| PythOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02c18ab6164311a2c92e4e50dcaa052db39a6036` | ⚠️ Unaudited |
| PythOracleMarketHours | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10f77d8cfcbb623b9abf57502c4da824eb91fede` | ⚠️ Unaudited |
| RedstoneCoreOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3052a99326a54ceaf546f97dcabbac15cf3074a9` | ⚠️ Unaudited |
| RewardForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bdef86a2e4c5c3661158017cb9bf78fd91db9e8` | ⚠️ Unaudited |
| StakingDelegateRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf91e84e2e4f692e6d8f7440639d5c2147f4c06f0` | ⚠️ Unaudited |
| StrategyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363c096d630eb4c6186beb11bd53474b71cc9a91` | ⚠️ Unaudited |
| SwapAndLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dadf9487737de29ac685d231bb94348a2635cbb` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233486 | `0x705f82bb431fada1a0f11d7b77b3f0586c545cbc` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x120b128cf1a5117fe8e9e12b79b3437e7396bd14` | ⚠️ Unaudited |
| UniV2ExpectedOutCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb418cd485e6835af43c6583e80087564068bb256` | ⚠️ Unaudited |
| Yearn4626RouterExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15633dc0ce383babc96fdcdabf08a29e87ce53e3` | ⚠️ Unaudited |
| YearnStakingDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05dcdbf02f29239d1f8d9797e22589a2de1c152f` | ⚠️ Unaudited |
| YSDRewardsGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ddad641337ce39e63f1e4f659b2a9c2c2d711b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (236)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233425 | `0x06faa7646ae8001097edffd2217c341a54b472dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07307c7706ecffd2748353bbc661207cb3a3c1ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c61277fd3878ca502e0d63f3e52ed56f1d96a07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233429 | `0x0ef805362304d1a1ef1444f5b411fe96dec663eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233431 | `0x0ffcbfe3034e9f7139c367d52f2668b6b878a82f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233435 | `0x11d92f0a6edfa9d577d88b32556864d8662ec09d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14746df7d102c274c70938dacf5356e9e7d7fd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x161fff89f78ee04913500880c1f603734d3cc4d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x186688a6e39be68d1840f553c7d1ac2fca3a2195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18f365ecce58fa865ec9fb027e9175125db93b91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a52fa88244e861914883c21577315e652f09c66` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233437 | `0x1a9d613a8793e03374215df039d234c0fb94c091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f8ffa682d43a8c07dbcfeaf9c6a48ae6cdd76b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x204fec4cfd324d260eb148cb6ca20d4f24d81d73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233441 | `0x233b7b16278640c022cbc6f6fbf5d2daa741bcc3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233443 | `0x275423f55c872b53f9b0767d830f173fb11ab6c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233447 | `0x27bdaadfdc0c3e39ad38c86f2f1774b51e4d237e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28b2dc219c047b10f353caa2934ad8803e089a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ee8c3fb7ea0b52261b18782f1a060c2e210afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a59feaf67fd0f1e003f09c5b2632d91e16ec754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bcc065433c608b2e71ea80405e260ca9b40ff65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c330c5dd20e85a2fa3b4b6c1e9f3e1221bfe540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e5be48c34c51374e3c37ea1e0d48453e9161da3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f507f98a22b5f5c17423aa8365eaef5bc6efe0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f8aa149589667e8015f4b73e16c8ae9aed8107f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233448 | `0x319805e6350a8607098adec6aeedc1d54cb01567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3327744318b8b0ee79159b7f742fe0b378f93df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x343d6e5fe9a267bf97c473bc25e33fc4a9af7ef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3456188654f2b65748ab12b6bcff38ef57081df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34b696cf8c086efa31d9c618c3b76a007f894dd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233450 | `0x36230d01f8516cbbd3f787f319356c91b6d5022c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233452 | `0x3666f2c7273a3a0ced0f5ffc684c75e04b050396` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37bd278ce3f0025fc18086da11e4c5f8f8b2b885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x382bbfdebf4949aec2ae3777503ce601eaab0c17` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233456 | `0x3ab78218944cbdeb35c09e0e1b38f1120ce97612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d5067b2c66eda56cf775d9b5db768c7e5698629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f8d969e3f265b7498b3f725f16cd7a3d89cd2e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233459 | `0x4137cae916696eaa776443c8d4db832988c2bab3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233461 | `0x4289313f8d7d65f6c16830b2b4aa5cf868e3c239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44a5e55623cbc575470873e8230a289d07730ff6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233462 | `0x44aa6fd2b4c6fe413bb1c11b9e94c8e80879e7d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233463 | `0x44bb20e5a3cc2cbdfb7520aa76281019723382cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45380b6249a1005bec67928af03b8aa8ec4eadcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45be69a22958aaeedd362073d1da1739e9f89a8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f84f1bf904de55efd8bc45f41a3581da733f7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48302ba7bcdf2bd59d20f8893c0f11b431a3be24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a70caf499ad2d3e435c29b4c761f68112a5fd76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bfcd8e5b4dbf835d13f697c59308bb4be1ae6ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d840966887673132ec61ab4ffb5e3c26cb1f4bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233465 | `0x4e1ac601becc4f55d676357fedb759ec240a2c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3d17c978ea70c4fc0cfa54fbbb04e0de5d3418` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233467 | `0x4e4a2240ec517c45b44aab35bb3c343b22e6a6d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e69d3b01a5693dbff8dc0ad340ebf816b38d162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52ab7a2d535bfbb116f6b83d642e2c1037114d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5517b0d32343071415ba3a840b753413e704dd7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x552868611d2641144454140dded98e6160b3bfc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x554960d3f442f0576ae216088be1c004c425ea6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x557f2bafc96eede7940bb72963a00f0325188f40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233469 | `0x55ac02d9539e3a877e1245dc0de08ee2235b5db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x563f5a6e5c1911fdce8cca5756505e7cea52e86a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56af8e4f2086a75a2b2ede9e92456d0fc0eaf533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56dfebf3057a6a9ebf414fe91693d2af4f25589c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57e0471ad005c1fd9e5c62035f2b01e31477ea2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233471 | `0x5877f26793c44358b0757617f4e3380c344ff523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599c797e614a3ea6d7b63f9c67c49b239b45653f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b61af0c5e51cd58017f1b145cf0ba7cc1da4874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5caae6658f16409e175d93554530d773b71242e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d6e0b2ff88f52ba8cc0085c2d92adf6f046b6e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d9eb99a658a08ca01a3fac00ecd69b70e81d56f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e2c8445ff2fa2f835e3190ce1d7face772469bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ea6d447acf3447d0dc71bc3a92468f922e3aeef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233472 | `0x5eba4d939902b9aec74668a6a06229a8731caf11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x605ffd8669794f3ce068cec49038cdb81ec5e326` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233474 | `0x60c15150f094840972269f2d758ffd9d82d329fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233476 | `0x60cf6c24ff5636b0b35e481cb91a57e9f8a6679d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233478 | `0x62f56c76fca998f6f7c798b31ef1e8968018c7ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233480 | `0x630101fb844d911e5c0239c28e17cebf3c669fee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63159a2f16c996ca87d7e777973529bced1197e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x633daed0f04f5ae544d937242d7677e98dd83091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63faca54f8827804a535e96d27ef640d408c40d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64dc55d76d1541e0853cbd7cf6586615e9e6f4c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x654bbb8fe2a2f5abd12fbaa9fc3b0bd19a778e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6568921f9059b6b8a3902651783a7a0e74ca83ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66afc16e2facf4eea0712edebe0b96c5f51606fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233482 | `0x6715b6efe1cad9a68821e42335911f717e422107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x679a1564423a52e4876981eeb833da1e341a2f37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67f36569da444c70ab58d420782246fa1b39a6b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x693cd123761a0b6d8a28b4794a4846f13aaeb27b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233484 | `0x6d0cec5bd7d8a9292c9cbf9107664edc2acf42da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x716c39658ba56ce34bdecdc1426e8768e61912f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75599fc5ed0186635647f91833f6bdf90602036c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7597cb35facfff30bee6622cf00d1ab7d31e7b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x763bcd985640e0fd5d1c89e6d167ad6500c09719` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233488 | `0x766de20ac7e282a32f5fd37d64d055afca7431a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77f4b459c0d3e910e46821f4347c688ece4d6922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7900a9134c0da73c857055c836ad68c55ce6e4c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a2c033bb7d47b01db91e213ba8585eb0f655189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a3fee7facc419fecd9f885008cb57efa2503555` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233490 | `0x7a82ced9334aec14304842fa758e8a9731ac4e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ace7d645d566666866b8b386e69d77a279c1b47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bec09fbef93303b3546858d844d6c565003e9c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c37d1ca716c4519becc9bc0ceea065c88caf98b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233493 | `0x80a42c54d57654a4b3bb82281eed797419ef165f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233495 | `0x811da0c02713df17da35f0041c1ca7df016dee62` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233497 | `0x8127ff19fe0bf8bd450342b42ef2503747077ea4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233498 | `0x818a26d44bf9d3ec5f1a0f1d789cb1a1c7cba040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8194dcd1232be0f259547b86bee14759bbfac12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81d40243c649f7d6092295f50f4b1d3a8e53da99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81f78def7a3a8b0f6aaba69925efc69e70239d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81ff06fd898db289b79d284946a187cc3baf22b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233500 | `0x846601f1c6d11c90ffa72e40c21a28efc30d1812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x861fd2c77eda8cbe2141dfea88fa986d8909568a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b59e29ffb108716e198c8323916d22a4b88fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87588d3fbcdff1bf84555f0a22056d94534a74a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87e8e0fbf018008ecb9e69da4dd205c89a9e92e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x883f96ca803514e684feca151336e6e277a43aad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ab57eb8bb14b5572f45e72c3cb2113e7c74ff23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ad54eac4da74e6db4ca68f32183633b12f3c04b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b994ebcd44413ee84d2733750b2006a7635ff1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d7099ba614df46cf49de4d664469908f82b2f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f82761de164e52ec4199e4a338a0090a1243a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90b28aa7df2efaaad4582afaf4d2a1c61519a245` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233503 | `0x91cf20c03bec656bc008fb2a2177bc3caa34f772` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233505 | `0x9219401e7e2e473770e56203e4eeba85083c7f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93b52f95bbf21f929c7fc11564dcbff74ca03553` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233507 | `0x9523afe79aa6a103f7cf9d4b869ad49504402b63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95452980854eed6475150fd5867095e7b19a3c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x983ebcb8f2a07575e17a5edb995a6b6bc6a34c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a3ddab2910fb96e26da26fc1cfcc787a3a06a48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a4cc33f91637b2cfc910979226db9a0a57794e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b9855c02add8e4c40f51a089bd75059c2c94d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bcb046b2b978f69086bc7e896b107ca3ccca3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cb8c5136ad079d3311f5b766d6fc370bf29e76b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d2077ce4e25234f74c41702e18d70d313d18725` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233509 | `0x9d677ed832d57588217593c8b4e3530825788d0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233511 | `0x9f53da1e245207e163e71dfc45dafab2d01770d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa104c0316bc51c087d96e7a25db042eb298c2a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa338ec76fd4dce2d1287ef2d9841b88ccdb6e024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa489642f5538b8fb8fa5eddc64da629197be1e26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233513 | `0xa55615296dd227a8a90f6a6789feaf1e4f1bbf3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6c420e8c06e8751daf5f31fee637dec74c08671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6c686ac87a1503509697fccb68af65874341dd4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233515 | `0xa74e0b738b053d9083451bbab84c538ff2cc701d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa79f91bad9b1c8d2307aa69e63024996e72c3ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7d6b0eaf949b34c33332889cd166b7bee4177f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa38a231f0f94fa4bcdbecfe7a65dcf34b69f297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa8039f98da65097491c73e3e24282d430946d59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233517 | `0xaafa26aa70e7e1119b32fdb2dfc07f8e3eba0987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafa96167ab56b149a8a24b9b6a09497db5c38dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb352f1143439dfd558e7637ee062519bfe1c3d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4fda7e510c67ec3264f5fac90b7e16ae94149d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233518 | `0xb52dbe41edaaf39e67e0db65cd99b903b2798360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57fa074d707cb0e38adcce8dcaa0e887a16ff61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5907b7913f4dc10c5c0fc75c570c7d78d16768f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5ed89e400b1edae5a0a307e0c2196116f543605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb81ba4afde4e4fb65d7413908980b38f39d60d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb87b81037957f421503565ef3c330423b8804246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb96e038998049ba86c220dda4048ac17e1109453` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233520 | `0xb97c12781fb1de1f07b4735526db7b3420f26f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaef711c057157f4300076e693dd73adf930da1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb17be6a283d7d18836a6f44dfb45f9d9ce2ce64` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233522 | `0xbeccf8486856476e9cd8ad6fad80fb7c17a15da1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233524 | `0xbf1d5c413e7430a71b552b3562f545d3a74cd95c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233526 | `0xc1be5ca2a39ecafb2d339e6e4927a35b5f7d78ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d14d8e2ae9d0fefdb00416f5f8b8d944e75f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3799012283fb43562bc490735976268ad0c8d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3e2e5154b1d337384f5b32713a6810822a64959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc40368e0218ccb8381432453fa11ef818d8b6ae5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233529 | `0xc50dd21a8515cbfd597d65c8fe9f4653f1b1d35b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc77e0e5fd366f606bec809da0af3df364213356f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233531 | `0xc79154e5a656b33d35bd283701657a6c8592deba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233535 | `0xc8570fa08d87958c319212e5de2adedbc41d0190` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233537 | `0xc87adb71e67a03c4bb43f12eaba39ef1ba423605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8a6bf5b31e3a6ef0040c52ec559f09f7d936150` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233540 | `0xc9bc3042701ebbacdb562c7928172f3235f1fa97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233542 | `0xcd534167ec52ba2f4d81915e5331e841074c93a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd738e638fed74d1f05d966f24374c16d075a568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf9b843e3ed936ddd879c58202b1bc1c4d0184c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233544 | `0xd0012c0064059ba87cb754bd60794fc29e1ab41e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233546 | `0xd0b1d686f1ec4879add3bee2dd0f0befb0c2ce68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2882ced9078054190b9977020e2de6321e8b2ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2dfc619906c5ec477c9a96221a43baeaed256ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3aa70fde6ea2649934e9a5b9ec659ccb5634a18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233548 | `0xd46d6161bbb2103da01987430de8b9c4756df8f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57950e8e9111ca49b1a041ed6c53a1355e317c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7da2d0c1a91c9e5eaf5b3de724104118cb9b95f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8e494cf47fc89f4fd99d23a7562ca467bbfb344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd911c8627669124e2b89f5f8ac172574d4cc798b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233550 | `0xd918e89c5d8abf185c4ba6c02603ac32c7b796af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda845ffb8203fd844a55911304f24fce5ccb62b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbd3267c0f9e675d433b59acc9db15382d93473c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc9fd0849bfdd56c465f412b8af4cb28a4a6db36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcc70a91476087c634bd6cc18d3f10718312c803` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd25fe102e87f6e936eb6c86a198d5f30be09fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddf682df176f64cae73803d37580b635e185d541` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233552 | `0xe082a5cc8eabbf57af5f286fa258aacd2ab0f6dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe25ccc4a97dc5f3aed558df01ba94ad026f8d269` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233554 | `0xe2c3844529c4f5b77fbc692fe1456136afd6afb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233556 | `0xe501dfec659da3a3bb5901634ebb34be10b70af5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233558 | `0xe73d409b0c91b8214eaf7fcf7521f0cca46492a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe815d63a5171b48dc745f2592b7df591b2f15abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8bf956e59b4b7289f46938dbcd9c31f28c24367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe92cd5626a0f86a5612680e0756e6e9d427d5326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebf5e92f75d079ba4bff172185ba737e6996a2e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233560 | `0xecc9556f546950619e84c5c70fdf19d89db8aad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed08b03baeab9eef24f8aaa7c752f34a3264992e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233562 | `0xed2df346acf926dac0f15c47aa040ad4db224696` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233564 | `0xeea3edc017877c603e2f332fc1828a46432cdf96` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233566 | `0xefdbac6cb4bbc7b814ac15e2c1b3973e433820cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf08c6758a6bc1b972fc593189872b3857e7f80df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf26ec041a0656365a275e51e169855849ee61e22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233568 | `0xf33958e73b8a1325af667598154948557c3dd0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf33e92c3bda8f4445ad81017f8c686854551da38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233570 | `0xf395339b12642ac27e08e72fe8abea0dc3a956a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4e7ff66fd3d1c33b3020ffa575c33cb2968082d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4f57a175a698f6de751425493873c7194b7a7e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233572 | `0xf58cee791a1a752ee57b4d7df94083d0916b9ff6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233574 | `0xf5cc28c0727473a9611d09654437474becee0221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf69100e4cdc3c09a53e7f9e550abea72ff1130d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6d93f221dd2f872b172a1d8c313392edbce19c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f664af135934d76d39049b24ea4f8b275e1340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf750c238ce033afc224c2e57d0fcb86e64db0221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7eb60c84f7f06571103d43557d6e30c4054e725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf83ddc78f4f0188a24f5b0adcee8aae4c575e00f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf868214291355d3e607aa2793f1b734bbf88ddb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf96e4c5eee8095f918ed3312b3de3d68156798f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233576 | `0xf9a022f25993f5e122b11cf836cbb7f2e1a5a8ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb8f044995655fef33a49f3ff39ca33e5eefc14a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbb3df5aaf8a2114febc462cd5d39193568316aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc7bd58a53d67d0c3a86c1424e1ee9c87bd81e4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233578 | `0xfca447b7da9e3d66b6baa7a7d8effb78f4d85e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe08fc631be2da2b47aa6adba275adab2197c0cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe50aff9ecaba2faa814e5c63606baea3123ce67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233580 | `0xfe53c6c84fd87adfd50c0392a5994239e0c07ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe8fce20627d9d5112ee65fbe451b8968b1ab596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x44bb20e5a3cc2cbdfb7520aa76281019723382cb` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 128
- Live contracts: 0
- Unknown liveness contracts: 128
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=128

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x07307c7706ecffd2748353bbc661207cb3a3c1ee` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0c61277fd3878ca502e0d63f3e52ed56f1d96a07` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x14746df7d102c274c70938dacf5356e9e7d7fd7b` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x161fff89f78ee04913500880c1f603734d3cc4d2` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x186688a6e39be68d1840f553c7d1ac2fca3a2195` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a52fa88244e861914883c21577315e652f09c66` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f8ffa682d43a8c07dbcfeaf9c6a48ae6cdd76b3` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x204fec4cfd324d260eb148cb6ca20d4f24d81d73` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a59feaf67fd0f1e003f09c5b2632d91e16ec754` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c330c5dd20e85a2fa3b4b6c1e9f3e1221bfe540` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2e5be48c34c51374e3c37ea1e0d48453e9161da3` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f8aa149589667e8015f4b73e16c8ae9aed8107f` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x343d6e5fe9a267bf97c473bc25e33fc4a9af7ef4` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3456188654f2b65748ab12b6bcff38ef57081df9` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34b696cf8c086efa31d9c618c3b76a007f894dd2` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x382bbfdebf4949aec2ae3777503ce601eaab0c17` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d5067b2c66eda56cf775d9b5db768c7e5698629` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f8d969e3f265b7498b3f725f16cd7a3d89cd2e0` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x44a5e55623cbc575470873e8230a289d07730ff6` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x45be69a22958aaeedd362073d1da1739e9f89a8a` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x45f84f1bf904de55efd8bc45f41a3581da733f7d` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a70caf499ad2d3e435c29b4c761f68112a5fd76` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4bfcd8e5b4dbf835d13f697c59308bb4be1ae6ca` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e3d17c978ea70c4fc0cfa54fbbb04e0de5d3418` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x52ab7a2d535bfbb116f6b83d642e2c1037114d3f` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5517b0d32343071415ba3a840b753413e704dd7a` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x554960d3f442f0576ae216088be1c004c425ea6f` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x557f2bafc96eede7940bb72963a00f0325188f40` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x563f5a6e5c1911fdce8cca5756505e7cea52e86a` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56af8e4f2086a75a2b2ede9e92456d0fc0eaf533` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56dfebf3057a6a9ebf414fe91693d2af4f25589c` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x57e0471ad005c1fd9e5c62035f2b01e31477ea2c` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b61af0c5e51cd58017f1b145cf0ba7cc1da4874` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d6e0b2ff88f52ba8cc0085c2d92adf6f046b6e0` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d9eb99a658a08ca01a3fac00ecd69b70e81d56f` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e2c8445ff2fa2f835e3190ce1d7face772469bf` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ea6d447acf3447d0dc71bc3a92468f922e3aeef` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x605ffd8669794f3ce068cec49038cdb81ec5e326` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63159a2f16c996ca87d7e777973529bced1197e6` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x633daed0f04f5ae544d937242d7677e98dd83091` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63faca54f8827804a535e96d27ef640d408c40d9` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x654bbb8fe2a2f5abd12fbaa9fc3b0bd19a778e1c` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x679a1564423a52e4876981eeb833da1e341a2f37` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67f36569da444c70ab58d420782246fa1b39a6b2` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x693cd123761a0b6d8a28b4794a4846f13aaeb27b` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75599fc5ed0186635647f91833f6bdf90602036c` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7597cb35facfff30bee6622cf00d1ab7d31e7b57` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x763bcd985640e0fd5d1c89e6d167ad6500c09719` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77f4b459c0d3e910e46821f4347c688ece4d6922` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7900a9134c0da73c857055c836ad68c55ce6e4c7` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a2c033bb7d47b01db91e213ba8585eb0f655189` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a3fee7facc419fecd9f885008cb57efa2503555` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ace7d645d566666866b8b386e69d77a279c1b47` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7bec09fbef93303b3546858d844d6c565003e9c7` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8194dcd1232be0f259547b86bee14759bbfac12d` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81ff06fd898db289b79d284946a187cc3baf22b8` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x861fd2c77eda8cbe2141dfea88fa986d8909568a` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86b59e29ffb108716e198c8323916d22a4b88fe5` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87e8e0fbf018008ecb9e69da4dd205c89a9e92e9` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x883f96ca803514e684feca151336e6e277a43aad` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8ab57eb8bb14b5572f45e72c3cb2113e7c74ff23` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8ad54eac4da74e6db4ca68f32183633b12f3c04b` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d7099ba614df46cf49de4d664469908f82b2f0c` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f82761de164e52ec4199e4a338a0090a1243a62` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x93b52f95bbf21f929c7fc11564dcbff74ca03553` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95452980854eed6475150fd5867095e7b19a3c7a` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x983ebcb8f2a07575e17a5edb995a6b6bc6a34c4f` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9a3ddab2910fb96e26da26fc1cfcc787a3a06a48` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9a4cc33f91637b2cfc910979226db9a0a57794e2` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b9855c02add8e4c40f51a089bd75059c2c94d2b` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9bcb046b2b978f69086bc7e896b107ca3ccca3fe` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9d2077ce4e25234f74c41702e18d70d313d18725` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa104c0316bc51c087d96e7a25db042eb298c2a2b` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa338ec76fd4dce2d1287ef2d9841b88ccdb6e024` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa489642f5538b8fb8fa5eddc64da629197be1e26` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6c420e8c06e8751daf5f31fee637dec74c08671` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6c686ac87a1503509697fccb68af65874341dd4` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa79f91bad9b1c8d2307aa69e63024996e72c3ea4` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa7d6b0eaf949b34c33332889cd166b7bee4177f5` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa38a231f0f94fa4bcdbecfe7a65dcf34b69f297` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa8039f98da65097491c73e3e24282d430946d59` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xafa96167ab56b149a8a24b9b6a09497db5c38dd9` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb352f1143439dfd558e7637ee062519bfe1c3d50` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4fda7e510c67ec3264f5fac90b7e16ae94149d7` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb57fa074d707cb0e38adcce8dcaa0e887a16ff61` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb81ba4afde4e4fb65d7413908980b38f39d60d48` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb87b81037957f421503565ef3c330423b8804246` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb96e038998049ba86c220dda4048ac17e1109453` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbaef711c057157f4300076e693dd73adf930da1a` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2d14d8e2ae9d0fefdb00416f5f8b8d944e75f42` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3799012283fb43562bc490735976268ad0c8d9b` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3e2e5154b1d337384f5b32713a6810822a64959` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc40368e0218ccb8381432453fa11ef818d8b6ae5` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8a6bf5b31e3a6ef0040c52ec559f09f7d936150` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd738e638fed74d1f05d966f24374c16d075a568` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf9b843e3ed936ddd879c58202b1bc1c4d0184c5` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2882ced9078054190b9977020e2de6321e8b2ff` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2dfc619906c5ec477c9a96221a43baeaed256ed` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3aa70fde6ea2649934e9a5b9ec659ccb5634a18` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd7da2d0c1a91c9e5eaf5b3de724104118cb9b95f` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8e494cf47fc89f4fd99d23a7562ca467bbfb344` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd911c8627669124e2b89f5f8ac172574d4cc798b` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda845ffb8203fd844a55911304f24fce5ccb62b4` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdbd3267c0f9e675d433b59acc9db15382d93473c` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc9fd0849bfdd56c465f412b8af4cb28a4a6db36` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdcc70a91476087c634bd6cc18d3f10718312c803` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdd25fe102e87f6e936eb6c86a198d5f30be09fd0` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xddf682df176f64cae73803d37580b635e185d541` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe25ccc4a97dc5f3aed558df01ba94ad026f8d269` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe815d63a5171b48dc745f2592b7df591b2f15abc` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe8bf956e59b4b7289f46938dbcd9c31f28c24367` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe92cd5626a0f86a5612680e0756e6e9d427d5326` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xebf5e92f75d079ba4bff172185ba737e6996a2e2` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf08c6758a6bc1b972fc593189872b3857e7f80df` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf26ec041a0656365a275e51e169855849ee61e22` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf33e92c3bda8f4445ad81017f8c686854551da38` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf4f57a175a698f6de751425493873c7194b7a7e7` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf69100e4cdc3c09a53e7f9e550abea72ff1130d6` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6d93f221dd2f872b172a1d8c313392edbce19c4` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6f664af135934d76d39049b24ea4f8b275e1340` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7eb60c84f7f06571103d43557d6e30c4054e725` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf83ddc78f4f0188a24f5b0adcee8aae4c575e00f` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf868214291355d3e607aa2793f1b734bbf88ddb7` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb8f044995655fef33a49f3ff39ca33e5eefc14a` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfbb3df5aaf8a2114febc462cd5d39193568316aa` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc7bd58a53d67d0c3a86c1424e1ee9c87bd81e4a` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe50aff9ecaba2faa814e5c63606baea3123ce67` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe8fce20627d9d5112ee65fbe451b8968b1ab596` | non_address_book | unknown | unknown | unverified | n/a | `0x8842fe65a7db9bb5de6d50e49af19496da09f9b5` |

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
| 2024-12-23_Zellic_Cove.pdf | FeeCollector | own contract | 0x921940… (selected) `0x9219401e7e2e473770e56203e4eeba85083c7f7e` — deployed 2025-05-27 04:42:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-23_Zellic_Cove.pdf | BasketManagerUtils | own contract | BasketManagerUtils (selected) `0x4cb99eb83a0abed477c4a99234bc58e0464aa280` — deployed 2025-05-27 04:02:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-23_Zellic_Cove.pdf | BitFlag | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | AutomaticWeightStrategy | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | ManagedWeightStrategy | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | StrategyRegistry | own contract | 0xb97c12… (selected) `0xb97c12781fb1de1f07b4735526db7b3420f26f99` — deployed 2025-05-27 04:42:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-23_Zellic_Cove.pdf | WeightStrategy | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | CoWSwapAdapter | own contract | 0xc50dd2… (selected) `0xc50dd21a8515cbfd597d65c8fe9f4653f1b1d35b` — deployed 2025-05-27 04:42:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-23_Zellic_Cove.pdf | CoWSwapClone | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | TokenSwapAdapter | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | ERC20PluginsUpgradeable | unmatched — not counted | — | listed in scope table | no |
| 2025-01-16_Pashov_Cove.pdf | AnchoredOracle | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | BasketManager | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | BasketToken | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | FeeCollector | own contract | 0x921940… (selected) `0x9219401e7e2e473770e56203e4eeba85083c7f7e` — deployed 2025-05-27 04:42:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-16_Pashov_Cove.pdf | Rescuable | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | BasketManagerStorage | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | Trades | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | CoWSwapAdapter | own contract | 0xc50dd2… (selected) `0xc50dd21a8515cbfd597d65c8fe9f4653f1b1d35b` — deployed 2025-05-27 04:42:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-16_Pashov_Cove.pdf | CoWSwapClone | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | TokenSwapAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | AutomaticWeightStrategy | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | ManagedWeightStrategy | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | StrategyRegistry | own contract | 0xb97c12… (selected) `0xb97c12781fb1de1f07b4735526db7b3420f26f99` — deployed 2025-05-27 04:42:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-16_Pashov_Cove.pdf | WeightStrategy | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | BasketManagerUtils | own contract | BasketManagerUtils (selected) `0x4cb99eb83a0abed477c4a99234bc58e0464aa280` — deployed 2025-05-27 04:02:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-16_Pashov_Cove.pdf | BitFlag | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | BasketManager | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | BasketToken | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | FeeCollector | own contract | 0x921940… (selected) `0x9219401e7e2e473770e56203e4eeba85083c7f7e` — deployed 2025-05-27 04:42:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | BasketManagerUtils | own contract | BasketManagerUtils (selected) `0x4cb99eb83a0abed477c4a99234bc58e0464aa280` — deployed 2025-05-27 04:02:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | AnchoredOracle | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | ChainedERC4626Oracle | own contract | ChainedERC4626Oracle (selected) `0x38681b1096f5a67286094deacbb112a0848b1e21` — deployed 2025-05-27 04:02:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | CurveEMAOracleUnderlying | own contract | CurveEMAOracleUnderlying (selected) `0x2772a1464024d6fcab5fc75d379eee928e2966b9` — deployed 2025-05-27 04:02:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | ERC4626Oracle | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | ManagedWeightStrategy | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | StrategyRegistry | own contract | 0xb97c12… (selected) `0xb97c12781fb1de1f07b4735526db7b3420f26f99` — deployed 2025-05-27 04:42:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | CoWSwapAdapter | own contract | 0xc50dd2… (selected) `0xc50dd21a8515cbfd597d65c8fe9f4653f1b1d35b` — deployed 2025-05-27 04:42:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | CoWSwapClone | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | BasketManagerStorage | unmatched — not counted | — | listed in scope | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | BasketManager | unmatched — not counted | — | mentioned in scope and findings | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | BasketToken | unmatched — not counted | — | referenced in cove_bot.py | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | CoveState | unmatched — not counted | — | defined and used in bot state | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | MasterRegistry | ambiguous — not counted | MasterRegistry (alternative) `0x2f507f98a22b5f5c17423aa8365eaef5bc6efe0f` — deployed 2025-10-03 01:12:35+03 — liveness: live (current_address_book_code)<br>0x44bb20… (alternative) `0x44bb20e5a3cc2cbdfb7520aa76281019723382cb` — deployed 2025-02-20 01:46:47+03 — liveness: live (current_address_book_code)<br>0x91cf20… (alternative) `0x91cf20c03bec656bc008fb2a2177bc3caa34f772` — deployed 2024-04-06 08:06:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | ERC4626Oracle | unmatched — not counted | — | detailed in Appendix D | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | CurveOracle | unmatched — not counted | — | detailed in Appendix D | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | CrossAdapter | unmatched — not counted | — | mentioned in Oracle risks evaluation | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | AnchoredOracle | unmatched — not counted | — | mentioned in Oracle risks evaluation | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | LogFilter | unmatched — not counted | — | used in event filtering | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | SilverbackBot | unmatched — not counted | — | used throughout bot code | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | Contract | unmatched — not counted | — | used to instantiate contracts | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | SimpleNamespace | unmatched — not counted | — | used in scripts | no |
| 2025-06-12-farming-plugin-reentrancy.md | FarmingPlugin | own contract | 0xa74e0b… (selected) `0xa74e0b738b053d9083451bbab84c538ff2cc701d` — deployed 2025-05-27 04:42:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Report | CoveBoosties | unmatched — not counted | — | mentioned in executive summary and throughout report | no |
| Report | coveYFI | unmatched — not counted | — | referenced in fix review details as CoveYFI.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x2f507f98a22b5f5c17423aa8365eaef5bc6efe0f` | MasterRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 5 |
| standard_library | 1 |
| needs_review | 236 |

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
