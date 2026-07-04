# Agentic Audit Brief: Cove Finance

## Project Overview

- Project: Cove Finance (`cove-finance`)
- Website: [https://www.cove.finance/](https://www.cove.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.554Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: base, ethereum
- Contract surface: 42 unique implementations (42 raw deployments)
- DeFi Llama TVL: $257,685.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 42 project-authored contract(s) across 2 chain(s); 7 ERC4626 vaults, 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 13 common project-authored base contract(s) (baseadapter, accesscontrolenumerable, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 42; live-surface contracts included: 42 (42 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 23/36 (63.9%)
- Deployed-live implementations: 42 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 25/42
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 42
- Raw deployments: 42
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 25 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 5.6% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 13 | 31.0% | 2025-04 |
| Zellic | Tier 2 | 10 | 23.8% | 2024-12 |
| Josselin Feist | Tier 2 | 8 | 19.0% | 2025-08 |
| Quantstamp | Tier 2 | 8 | 19.0% | 2024-03 |
| yAudit | Tier 2 | 6 | 14.3% | 2024-03 |
| Trail of Bits | Tier 1 | 2 | 4.8% | 2024-01 |
| unknown | Tier 2 | 1 | 2.4% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnchoredOracle | unknown | ethereum | n/a | [`0x00eb79...c933c1`](./contracts/ethereum-1/0x00eb79cf7917c3cdd30755a5f4bbf5a47bc933c1/) | ✅ Audited |
| AssetRegistry | unknown | ethereum | n/a | [`0x1d21dc...d473c9`](./contracts/ethereum-1/0x1d21dcf9787dfe268b76f0336d1bfb9a32d473c9/) | ✅ Audited |
| BasketManager | unknown | ethereum | n/a | [`0x39ef7c...34bd2e`](./contracts/ethereum-1/0x39ef7c7f18406485c550193bb1fff6883f34bd2e/) | ✅ Audited |
| BasketManagerUtils | unknown | ethereum | n/a | [`0x4cb99e...4aa280`](./contracts/ethereum-1/0x4cb99eb83a0abed477c4a99234bc58e0464aa280/) | ✅ Audited |
| BasketToken | unknown | ethereum | n/a | [`0x12ad42...b5aa0d`](./contracts/ethereum-1/0x12ad42b7a0788216d22082859c69cdecb1b5aa0d/) | ✅ Audited |
| ChainedERC4626Oracle | unknown | ethereum | n/a | [`0x38681b...8b1e21`](./contracts/ethereum-1/0x38681b1096f5a67286094deacbb112a0848b1e21/) | ✅ Audited |
| CoveToken | unknown | ethereum | n/a | [`0x32fb7d...7cbba8`](./contracts/ethereum-1/0x32fb7d6e0cbeb9433772689aa4647828cc7cbba8/) | ✅ Audited |
| CoveYearnGaugeFactory | unknown | ethereum | n/a | [`0x842b22...d15844`](./contracts/ethereum-1/0x842b22eb2a1c1c54344eddbe6959f787c2d15844/) | ✅ Audited |
| CoveYFI | unknown | ethereum | n/a | [`0xff7184...65c248`](./contracts/ethereum-1/0xff71841eefca78a64421db28060855036765c248/) | ✅ Audited |
| CoWSwapAdapter | unknown | ethereum | n/a | [`0x1db648...2da7ad`](./contracts/ethereum-1/0x1db6482f07b223fad08e8ec4648024601b2da7ad/) | ✅ Audited |
| CoWSwapClone | unknown | ethereum | n/a | [`0x3138f8...0c9a63`](./contracts/ethereum-1/0x3138f89ad108de04ba4edc925b4b07e4010c9a63/) | ✅ Audited |
| CrossAdapter | unknown | ethereum | n/a | [`0x07a573...feb7c3`](./contracts/ethereum-1/0x07a573bb8c5278d5cbea3ec04e316ca8c3feb7c3/) | ✅ Audited |
| CurveEMAOracleUnderlying | unknown | ethereum | n/a | [`0x2772a1...2966b9`](./contracts/ethereum-1/0x2772a1464024d6fcab5fc75d379eee928e2966b9/) | ✅ Audited |
| ERC20RewardsGauge | unknown | ethereum | n/a | [`0x093f4f...58d833`](./contracts/ethereum-1/0x093f4fca4b71912edb33b2d4bb92e5b85658d833/) | ✅ Audited |
| ERC4626Oracle | unknown | ethereum | n/a | [`0x01dc22...cc726e`](./contracts/ethereum-1/0x01dc22d46d8cf6100ab91fbb4e614c52f8cc726e/) | ✅ Audited |
| FarmingPlugin | unknown | ethereum | n/a | [`0x0894ce...6dd4c1`](./contracts/ethereum-1/0x0894ce556d81c7de6b373d91a0d691673d6dd4c1/) | ✅ Audited |
| FeeCollector | unknown | ethereum | n/a | [`0x3f0de0...6b0a61`](./contracts/ethereum-1/0x3f0de00c4332121764837c7bbd30bb9cb66b0a61/) | ✅ Audited |
| ManagedWeightStrategy | unknown | ethereum | n/a | [`0x118b21...ef7254`](./contracts/ethereum-1/0x118b214008d3c693f0fc3434ef24f28e23ef7254/) | ✅ Audited |
| MasterRegistry | unknown | base | n/a | [`0x2f507f...6efe0f`](./contracts/base-8453/0x2f507f98a22b5f5c17423aa8365eaef5bc6efe0f/) | ✅ Audited |
| MiniChefV3 | unknown | ethereum | n/a | [`0x53ead3...1f2e2d`](./contracts/ethereum-1/0x53ead38ca96d562433427f7bbfcac960cc1f2e2d/) | ✅ Audited |
| RewardForwarder | unknown | ethereum | n/a | [`0x3bdef8...1db9e8`](./contracts/ethereum-1/0x3bdef86a2e4c5c3661158017cb9bf78fd91db9e8/) | ✅ Audited |
| StrategyRegistry | unknown | ethereum | n/a | [`0x363c09...cc9a91`](./contracts/ethereum-1/0x363c096d630eb4c6186beb11bd53474b71cc9a91/) | ✅ Audited |
| SwapAndLock | unknown | ethereum | n/a | [`0x9dadf9...635cbb`](./contracts/ethereum-1/0x9dadf9487737de29ac685d231bb94348a2635cbb/) | ✅ Audited |
| Yearn4626RouterExt | unknown | ethereum | n/a | [`0x15633d...ce53e3`](./contracts/ethereum-1/0x15633dc0ce383babc96fdcdabf08a29e87ce53e3/) | ✅ Audited |
| YSDRewardsGauge | unknown | ethereum | n/a | [`0x15ddad...2d711b`](./contracts/ethereum-1/0x15ddad641337ce39e63f1e4f659b2a9c2c2d711b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BasicRetryOperator | unknown | ethereum | n/a | [`0x10fcf9...19345b`](./contracts/ethereum-1/0x10fcf995e7b32bb0d07bd84abedda09bd919345b/) | ⚠️ Unaudited |
| ChainlinkOracle | unknown | ethereum | n/a | [`0x087f2b...506c48`](./contracts/ethereum-1/0x087f2b76aedf6d7d103e780c31694641f2506c48/) | ⚠️ Unaudited |
| CoWSwapCloneWithAppData | unknown | ethereum | n/a | [`0x63a8b9...0451a7`](./contracts/ethereum-1/0x63a8b9d57227a1db1620f617964ba9ccab0451a7/) | ⚠️ Unaudited |
| DYFIRedeemer | unknown | ethereum | n/a | [`0x986f38...8b0706`](./contracts/ethereum-1/0x986f38b5b096070ee64b12da762468606c8b0706/) | ⚠️ Unaudited |
| DynamicSlippageChecker | unknown | ethereum | n/a | [`0x2c2f18...6cc919`](./contracts/ethereum-1/0x2c2f185593a57e0927c33dd983925874df6cc919/) | ⚠️ Unaudited |
| ERC20Mock | unknown | ethereum | n/a | [`0x062638...b9aba2`](./contracts/ethereum-1/0x062638326fd5efd369921d034664c9de20b9aba2/) | ⚠️ Unaudited |
| EulerRouter | unknown | ethereum | n/a | [`0x36959b...81056a`](./contracts/ethereum-1/0x36959be8a8eb65d5905d5e413a23e5592681056a/) | ⚠️ Unaudited |
| FarmingPluginFactory | unknown | ethereum | n/a | [`0x0747ca...d4148d`](./contracts/ethereum-1/0x0747ca5b8c22832a6812f8051d25757d05d4148d/) | ⚠️ Unaudited |
| GaugeRewardReceiver | unknown | ethereum | n/a | [`0x9aa729...3b74f0`](./contracts/ethereum-1/0x9aa729fa58e8298aaec4c4c33189ed137b3b74f0/) | ⚠️ Unaudited |
| PythOracle | unknown | ethereum | n/a | [`0x02c18a...9a6036`](./contracts/ethereum-1/0x02c18ab6164311a2c92e4e50dcaa052db39a6036/) | ⚠️ Unaudited |
| PythOracleMarketHours | unknown | ethereum | n/a | [`0x10f77d...91fede`](./contracts/ethereum-1/0x10f77d8cfcbb623b9abf57502c4da824eb91fede/) | ⚠️ Unaudited |
| RedstoneCoreOracle | unknown | ethereum | n/a | [`0x3052a9...3074a9`](./contracts/ethereum-1/0x3052a99326a54ceaf546f97dcabbac15cf3074a9/) | ⚠️ Unaudited |
| StakingDelegateRewards | unknown | ethereum | n/a | [`0xf91e84...4c06f0`](./contracts/ethereum-1/0xf91e84e2e4f692e6d8f7440639d5c2147f4c06f0/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x705f82...545cbc`](./contracts/ethereum-1/0x705f82bb431fada1a0f11d7b77b3f0586c545cbc/) | ⚠️ Unaudited |
| TokenizedStrategy | unknown | ethereum | n/a | [`0x120b12...96bd14`](./contracts/ethereum-1/0x120b128cf1a5117fe8e9e12b79b3437e7396bd14/) | ⚠️ Unaudited |
| UniV2ExpectedOutCalculator | unknown | ethereum | n/a | [`0xb418cd...8bb256`](./contracts/ethereum-1/0xb418cd485e6835af43c6583e80087564068bb256/) | ⚠️ Unaudited |
| YearnStakingDelegate | unknown | ethereum | n/a | [`0x05dcdb...1c152f`](./contracts/ethereum-1/0x05dcdbf02f29239d1f8d9797e22589a2de1c152f/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-01-25_Trail_of_Bits_Boosties.pdf](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2024-01-25_Trail_of_Bits_Boosties.pdf) | Trail of Bits | Audit | 2024-01 | stale | Direct | contract_name | 2 | high |
| [2024-03-08_Quantstamp_Boosties.pdf (also discovered via alternate URL)](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2024-03-08_Quantstamp_Boosties.pdf) | Quantstamp | Audit | 2024-03 | stale | Direct | contract_name | 6 | high |
| [2024-03-30_yAudit_Boosties.pdf (also discovered via alternate URL)](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2024-03-30_yAudit_Boosties.pdf) | yAudit | Audit | 2024-03 | stale | Direct | contract_name | 6 | high |
| [2024-12-23_Zellic_Cove.pdf (also discovered via alternate URL)](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2024-12-23_Zellic_Cove.pdf) | Zellic | Audit | 2024-12 | aging | Direct | contract_name | 10 | high |
| [2025-01-16_Pashov_Cove.pdf (also discovered via alternate URL)](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2025-01-16_Pashov_Cove.pdf) | Pashov Audit Group | Audit | 2025-01 | aging | Direct | contract_name | 10 | high |
| [2025-04-19_Pashov_Cove.pdf (also discovered via alternate URL)](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2025-04-19_Pashov_Cove.pdf) | Pashov Audit Group | Audit | 2025-04 | aging | Direct | contract_name | 13 | high |
| [2025-08-04_Josselin_Feist_Cove.pdf](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2025-08-04_Josselin_Feist_Cove.pdf) | Josselin Feist | Audit | 2025-08 | fresh | Direct | contract_name | 8 | high |
| [2025-06-12-farming-plugin-reentrancy.md](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/disclosures/2025-06-12-farming-plugin-reentrancy.md) | unknown | Audit | 2025-06 | aging | Direct | contract_name | 1 | medium |
| [Report](https://github.com/Storm-Labs-Inc/cove-audits/blob/master/2024-01-25%5FTrail%5Fof%5FBits%5FBoosties.pdf) | Quantstamp | Audit | 2024-01 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x10fcf9...19345b`](./contracts/ethereum-1/0x10fcf995e7b32bb0d07bd84abedda09bd919345b/) | BasicRetryOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63a8b9...0451a7`](./contracts/ethereum-1/0x63a8b9d57227a1db1620f617964ba9ccab0451a7/) | CoWSwapCloneWithAppData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x986f38...8b0706`](./contracts/ethereum-1/0x986f38b5b096070ee64b12da762468606c8b0706/) | DYFIRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c2f18...6cc919`](./contracts/ethereum-1/0x2c2f185593a57e0927c33dd983925874df6cc919/) | DynamicSlippageChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x062638...b9aba2`](./contracts/ethereum-1/0x062638326fd5efd369921d034664c9de20b9aba2/) | ERC20Mock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36959b...81056a`](./contracts/ethereum-1/0x36959be8a8eb65d5905d5e413a23e5592681056a/) | EulerRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0747ca...d4148d`](./contracts/ethereum-1/0x0747ca5b8c22832a6812f8051d25757d05d4148d/) | FarmingPluginFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9aa729...3b74f0`](./contracts/ethereum-1/0x9aa729fa58e8298aaec4c4c33189ed137b3b74f0/) | GaugeRewardReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02c18a...9a6036`](./contracts/ethereum-1/0x02c18ab6164311a2c92e4e50dcaa052db39a6036/) | PythOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f77d...91fede`](./contracts/ethereum-1/0x10f77d8cfcbb623b9abf57502c4da824eb91fede/) | PythOracleMarketHours | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf91e84...4c06f0`](./contracts/ethereum-1/0xf91e84e2e4f692e6d8f7440639d5c2147f4c06f0/) | StakingDelegateRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x120b12...96bd14`](./contracts/ethereum-1/0x120b128cf1a5117fe8e9e12b79b3437e7396bd14/) | TokenizedStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb418cd...8bb256`](./contracts/ethereum-1/0xb418cd485e6835af43c6583e80087564068bb256/) | UniV2ExpectedOutCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 5 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8, medium=1
- Match method counts: extraction_exact=103

Fork inheritance lineage and inherited audits are included when available.
