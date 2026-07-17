# Agentic Audit Brief: Cove Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 29 across 7 audit(s)
- Eligible audit results: 14 (7 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Cove Finance (`cove-finance`)
- Website: [https://www.cove.finance/](https://www.cove.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
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
- Outside the address book: 66 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 35 of 150 unique; 115 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/42
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 108
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

### ❓ Unverified (108)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233425 | `0x06faa7646ae8001097edffd2217c341a54b472dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233429 | `0x0ef805362304d1a1ef1444f5b411fe96dec663eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233431 | `0x0ffcbfe3034e9f7139c367d52f2668b6b878a82f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233435 | `0x11d92f0a6edfa9d577d88b32556864d8662ec09d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18f365ecce58fa865ec9fb027e9175125db93b91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233437 | `0x1a9d613a8793e03374215df039d234c0fb94c091` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233441 | `0x233b7b16278640c022cbc6f6fbf5d2daa741bcc3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233443 | `0x275423f55c872b53f9b0767d830f173fb11ab6c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233447 | `0x27bdaadfdc0c3e39ad38c86f2f1774b51e4d237e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28b2dc219c047b10f353caa2934ad8803e089a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ee8c3fb7ea0b52261b18782f1a060c2e210afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bcc065433c608b2e71ea80405e260ca9b40ff65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f507f98a22b5f5c17423aa8365eaef5bc6efe0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233448 | `0x319805e6350a8607098adec6aeedc1d54cb01567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3327744318b8b0ee79159b7f742fe0b378f93df8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233450 | `0x36230d01f8516cbbd3f787f319356c91b6d5022c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233452 | `0x3666f2c7273a3a0ced0f5ffc684c75e04b050396` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37bd278ce3f0025fc18086da11e4c5f8f8b2b885` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233456 | `0x3ab78218944cbdeb35c09e0e1b38f1120ce97612` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233459 | `0x4137cae916696eaa776443c8d4db832988c2bab3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233461 | `0x4289313f8d7d65f6c16830b2b4aa5cf868e3c239` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233462 | `0x44aa6fd2b4c6fe413bb1c11b9e94c8e80879e7d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233463 | `0x44bb20e5a3cc2cbdfb7520aa76281019723382cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45380b6249a1005bec67928af03b8aa8ec4eadcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48302ba7bcdf2bd59d20f8893c0f11b431a3be24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d840966887673132ec61ab4ffb5e3c26cb1f4bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233465 | `0x4e1ac601becc4f55d676357fedb759ec240a2c57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233467 | `0x4e4a2240ec517c45b44aab35bb3c343b22e6a6d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e69d3b01a5693dbff8dc0ad340ebf816b38d162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x552868611d2641144454140dded98e6160b3bfc9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233469 | `0x55ac02d9539e3a877e1245dc0de08ee2235b5db2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233471 | `0x5877f26793c44358b0757617f4e3380c344ff523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599c797e614a3ea6d7b63f9c67c49b239b45653f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5caae6658f16409e175d93554530d773b71242e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233472 | `0x5eba4d939902b9aec74668a6a06229a8731caf11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233474 | `0x60c15150f094840972269f2d758ffd9d82d329fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233476 | `0x60cf6c24ff5636b0b35e481cb91a57e9f8a6679d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233478 | `0x62f56c76fca998f6f7c798b31ef1e8968018c7ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233480 | `0x630101fb844d911e5c0239c28e17cebf3c669fee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64dc55d76d1541e0853cbd7cf6586615e9e6f4c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6568921f9059b6b8a3902651783a7a0e74ca83ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66afc16e2facf4eea0712edebe0b96c5f51606fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233482 | `0x6715b6efe1cad9a68821e42335911f717e422107` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233484 | `0x6d0cec5bd7d8a9292c9cbf9107664edc2acf42da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x716c39658ba56ce34bdecdc1426e8768e61912f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233488 | `0x766de20ac7e282a32f5fd37d64d055afca7431a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233490 | `0x7a82ced9334aec14304842fa758e8a9731ac4e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c37d1ca716c4519becc9bc0ceea065c88caf98b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233493 | `0x80a42c54d57654a4b3bb82281eed797419ef165f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233495 | `0x811da0c02713df17da35f0041c1ca7df016dee62` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233497 | `0x8127ff19fe0bf8bd450342b42ef2503747077ea4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233498 | `0x818a26d44bf9d3ec5f1a0f1d789cb1a1c7cba040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81d40243c649f7d6092295f50f4b1d3a8e53da99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81f78def7a3a8b0f6aaba69925efc69e70239d95` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233500 | `0x846601f1c6d11c90ffa72e40c21a28efc30d1812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87588d3fbcdff1bf84555f0a22056d94534a74a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b994ebcd44413ee84d2733750b2006a7635ff1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90b28aa7df2efaaad4582afaf4d2a1c61519a245` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233503 | `0x91cf20c03bec656bc008fb2a2177bc3caa34f772` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233505 | `0x9219401e7e2e473770e56203e4eeba85083c7f7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233507 | `0x9523afe79aa6a103f7cf9d4b869ad49504402b63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cb8c5136ad079d3311f5b766d6fc370bf29e76b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233509 | `0x9d677ed832d57588217593c8b4e3530825788d0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233511 | `0x9f53da1e245207e163e71dfc45dafab2d01770d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233513 | `0xa55615296dd227a8a90f6a6789feaf1e4f1bbf3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233515 | `0xa74e0b738b053d9083451bbab84c538ff2cc701d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233517 | `0xaafa26aa70e7e1119b32fdb2dfc07f8e3eba0987` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233518 | `0xb52dbe41edaaf39e67e0db65cd99b903b2798360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5907b7913f4dc10c5c0fc75c570c7d78d16768f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5ed89e400b1edae5a0a307e0c2196116f543605` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233520 | `0xb97c12781fb1de1f07b4735526db7b3420f26f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb17be6a283d7d18836a6f44dfb45f9d9ce2ce64` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233522 | `0xbeccf8486856476e9cd8ad6fad80fb7c17a15da1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233524 | `0xbf1d5c413e7430a71b552b3562f545d3a74cd95c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233526 | `0xc1be5ca2a39ecafb2d339e6e4927a35b5f7d78ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233529 | `0xc50dd21a8515cbfd597d65c8fe9f4653f1b1d35b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc77e0e5fd366f606bec809da0af3df364213356f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233531 | `0xc79154e5a656b33d35bd283701657a6c8592deba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233535 | `0xc8570fa08d87958c319212e5de2adedbc41d0190` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233537 | `0xc87adb71e67a03c4bb43f12eaba39ef1ba423605` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233540 | `0xc9bc3042701ebbacdb562c7928172f3235f1fa97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233542 | `0xcd534167ec52ba2f4d81915e5331e841074c93a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233544 | `0xd0012c0064059ba87cb754bd60794fc29e1ab41e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233546 | `0xd0b1d686f1ec4879add3bee2dd0f0befb0c2ce68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233548 | `0xd46d6161bbb2103da01987430de8b9c4756df8f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57950e8e9111ca49b1a041ed6c53a1355e317c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233550 | `0xd918e89c5d8abf185c4ba6c02603ac32c7b796af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233552 | `0xe082a5cc8eabbf57af5f286fa258aacd2ab0f6dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233554 | `0xe2c3844529c4f5b77fbc692fe1456136afd6afb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233556 | `0xe501dfec659da3a3bb5901634ebb34be10b70af5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233558 | `0xe73d409b0c91b8214eaf7fcf7521f0cca46492a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233560 | `0xecc9556f546950619e84c5c70fdf19d89db8aad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed08b03baeab9eef24f8aaa7c752f34a3264992e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233562 | `0xed2df346acf926dac0f15c47aa040ad4db224696` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233564 | `0xeea3edc017877c603e2f332fc1828a46432cdf96` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233566 | `0xefdbac6cb4bbc7b814ac15e2c1b3973e433820cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233568 | `0xf33958e73b8a1325af667598154948557c3dd0ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233570 | `0xf395339b12642ac27e08e72fe8abea0dc3a956a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4e7ff66fd3d1c33b3020ffa575c33cb2968082d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233572 | `0xf58cee791a1a752ee57b4d7df94083d0916b9ff6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-233574 | `0xf5cc28c0727473a9611d09654437474becee0221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf750c238ce033afc224c2e57d0fcb86e64db0221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf96e4c5eee8095f918ed3312b3de3d68156798f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233576 | `0xf9a022f25993f5e122b11cf836cbb7f2e1a5a8ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233578 | `0xfca447b7da9e3d66b6baa7a7d8effb78f4d85e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe08fc631be2da2b47aa6adba275adab2197c0cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-233580 | `0xfe53c6c84fd87adfd50c0392a5994239e0c07ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x44bb20e5a3cc2cbdfb7520aa76281019723382cb` | ❓ Unverified |

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
| 2024-12-23_Zellic_Cove.pdf | FeeCollector | own contract | 0x921940… (selected) `0x9219401e7e2e473770e56203e4eeba85083c7f7e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-23_Zellic_Cove.pdf | BasketManagerUtils | own contract | BasketManagerUtils (selected) `0x4cb99eb83a0abed477c4a99234bc58e0464aa280` — deployed 2025-05-27 04:02:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-23_Zellic_Cove.pdf | BitFlag | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | AutomaticWeightStrategy | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | ManagedWeightStrategy | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | StrategyRegistry | own contract | 0xb97c12… (selected) `0xb97c12781fb1de1f07b4735526db7b3420f26f99` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-23_Zellic_Cove.pdf | WeightStrategy | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | CoWSwapAdapter | own contract | 0xc50dd2… (selected) `0xc50dd21a8515cbfd597d65c8fe9f4653f1b1d35b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-23_Zellic_Cove.pdf | CoWSwapClone | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | TokenSwapAdapter | unmatched — not counted | — | listed in scope table | no |
| 2024-12-23_Zellic_Cove.pdf | ERC20PluginsUpgradeable | unmatched — not counted | — | listed in scope table | no |
| 2025-01-16_Pashov_Cove.pdf | AnchoredOracle | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | BasketManager | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | BasketToken | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | FeeCollector | own contract | 0x921940… (selected) `0x9219401e7e2e473770e56203e4eeba85083c7f7e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-16_Pashov_Cove.pdf | Rescuable | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | BasketManagerStorage | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | Trades | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | CoWSwapAdapter | own contract | 0xc50dd2… (selected) `0xc50dd21a8515cbfd597d65c8fe9f4653f1b1d35b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-16_Pashov_Cove.pdf | CoWSwapClone | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | TokenSwapAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | AutomaticWeightStrategy | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | ManagedWeightStrategy | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | StrategyRegistry | own contract | 0xb97c12… (selected) `0xb97c12781fb1de1f07b4735526db7b3420f26f99` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-16_Pashov_Cove.pdf | WeightStrategy | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | BasketManagerUtils | own contract | BasketManagerUtils (selected) `0x4cb99eb83a0abed477c4a99234bc58e0464aa280` — deployed 2025-05-27 04:02:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-16_Pashov_Cove.pdf | BitFlag | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2025-01-16_Pashov_Cove.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | AssetRegistry | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | BasketManager | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | BasketToken | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | FeeCollector | own contract | 0x921940… (selected) `0x9219401e7e2e473770e56203e4eeba85083c7f7e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | BasketManagerUtils | own contract | BasketManagerUtils (selected) `0x4cb99eb83a0abed477c4a99234bc58e0464aa280` — deployed 2025-05-27 04:02:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | AnchoredOracle | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | ChainedERC4626Oracle | own contract | ChainedERC4626Oracle (selected) `0x38681b1096f5a67286094deacbb112a0848b1e21` — deployed 2025-05-27 04:02:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | CurveEMAOracleUnderlying | own contract | CurveEMAOracleUnderlying (selected) `0x2772a1464024d6fcab5fc75d379eee928e2966b9` — deployed 2025-05-27 04:02:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | ERC4626Oracle | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | ManagedWeightStrategy | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | StrategyRegistry | own contract | 0xb97c12… (selected) `0xb97c12781fb1de1f07b4735526db7b3420f26f99` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | CoWSwapAdapter | own contract | 0xc50dd2… (selected) `0xc50dd21a8515cbfd597d65c8fe9f4653f1b1d35b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-19_Pashov_Cove.pdf | CoWSwapClone | unmatched — not counted | — | listed in scope | no |
| 2025-04-19_Pashov_Cove.pdf | BasketManagerStorage | unmatched — not counted | — | listed in scope | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | BasketManager | unmatched — not counted | — | mentioned in scope and findings | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | BasketToken | unmatched — not counted | — | referenced in cove_bot.py | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | CoveState | unmatched — not counted | — | defined and used in bot state | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | MasterRegistry | ambiguous — not counted | MasterRegistry (alternative) `0x2f507f98a22b5f5c17423aa8365eaef5bc6efe0f` — deployed 2025-10-03 01:12:35+03 — liveness: live (current_address_book_code)<br>0x44bb20… (alternative) `0x44bb20e5a3cc2cbdfb7520aa76281019723382cb` — liveness: live (current_address_book_code)<br>0x91cf20… (alternative) `0x91cf20c03bec656bc008fb2a2177bc3caa34f772` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | ERC4626Oracle | unmatched — not counted | — | detailed in Appendix D | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | CurveOracle | unmatched — not counted | — | detailed in Appendix D | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | CrossAdapter | unmatched — not counted | — | mentioned in Oracle risks evaluation | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | AnchoredOracle | unmatched — not counted | — | mentioned in Oracle risks evaluation | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | LogFilter | unmatched — not counted | — | used in event filtering | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | SilverbackBot | unmatched — not counted | — | used throughout bot code | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | Contract | unmatched — not counted | — | used to instantiate contracts | no |
| 2025-08-04_Josselin_Feist_Cove.pdf | SimpleNamespace | unmatched — not counted | — | used in scripts | no |
| 2025-06-12-farming-plugin-reentrancy.md | FarmingPlugin | own contract | 0xa74e0b… (selected) `0xa74e0b738b053d9083451bbab84c538ff2cc701d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
