# Agentic Audit Brief: gooddollar

## Project Overview

- Project: gooddollar (`gooddollar`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.885Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: celo, ethereum
- Contract surface: 85 unique implementations (85 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 85 project-authored contract(s) across 2 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 34 common project-authored base contract(s) (tokenhandler, contractregistryclient, owned). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Bancor** (`bancor`) in the BancorFormula, LiquidTokenConverter, LiquidTokenConverterFactory, LiquidityPoolV1Converter, LiquidityPoolV1ConverterFactory, LiquidityPoolV2Converter, … subsystem.
8 audits inherited from `bancor`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 85; live-surface contracts included: 85 (85 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 14/79 (17.7%)
- Deployed-live implementations: 85 of 85 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 16/85
- Verified + Unaudited implementations: 69
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 85
- Raw deployments: 85
- Audits discovered: 8 (0 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 2 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 17.7% (ChainSecurity, ConsenSys Diligence, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 16 | 18.8% | 2022-09 |
| Consensys Diligence | Tier 1 | 16 | 18.8% | 2017-05 |
| Halborn | Tier 2 | 16 | 18.8% | 2020-08 |
| OpenZeppelin | Tier 1 | 16 | 18.8% | 2022-08 |
| PeckShield | Tier 2 | 16 | 18.8% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveStakingFactory | unknown | ethereum | n/a | [`0xf4411c...b51153`](./contracts/ethereum-1/0xf4411c22766947db2da39ad534a040b770b51153/) | ✅ Audited |
| BancorFormula | unknown | ethereum | n/a | [`0x31af42...669724`](./contracts/ethereum-1/0x31af420bb0323e8fae30803d49125923f7669724/) | ✅ Audited |
| CompoundStakingFactory | unknown | ethereum | n/a | [`0x78cc5a...534aeb`](./contracts/ethereum-1/0x78cc5ab2f0990b5fe58f95baebf8f37879534aeb/) | ✅ Audited |
| ExchangeHelper | unknown | ethereum | n/a | [`0x24614a...e73e9d`](./contracts/ethereum-1/0x24614ad257f4d09fccaec024c65c40c060e73e9d/) | ✅ Audited |
| GoodMarketMaker | unknown | ethereum | n/a | [`0x852063...b99bd0`](./contracts/ethereum-1/0x8520633e40574e9550f6a0436b0f8d56f3b99bd0/) | ✅ Audited |
| GoodReserveCDai | unknown | ethereum | n/a | [`0x109b4e...77caed`](./contracts/ethereum-1/0x109b4e43c032641e765d2b709b2361983777caed/) | ✅ Audited |
| LiquidityPoolV1Converter | unknown | ethereum | n/a | [`0x1c378a...d38d1a`](./contracts/ethereum-1/0x1c378a82064799444b14b3b10fc5c4d5e3d38d1a/) | ✅ Audited |
| LiquidityPoolV1ConverterFactory | unknown | ethereum | n/a | [`0x363923...8f664c`](./contracts/ethereum-1/0x36392326878d038b3cc8a1cb9e0dab27c68f664c/) | ✅ Audited |
| LiquidityPoolV2Converter | unknown | ethereum | n/a | [`0x0c06d6...2ea2af`](./contracts/ethereum-1/0x0c06d629e02ddafeb276ce04e910fedc292ea2af/) | ✅ Audited |
| LiquidityPoolV2ConverterFactory | unknown | ethereum | n/a | [`0x0d2d64...4b868a`](./contracts/ethereum-1/0x0d2d6404d67355199033ac6ce0af0f31144b868a/) | ✅ Audited |
| LiquidTokenConverter | unknown | ethereum | n/a | [`0x1b5ef5...3e27fe`](./contracts/ethereum-1/0x1b5ef5c0b42f8bef27d9f0fee21f28a7763e27fe/) | ✅ Audited |
| LiquidTokenConverterFactory | unknown | ethereum | n/a | [`0x2358ae...f46144`](./contracts/ethereum-1/0x2358ae98efc851954a19fe8b80d14a2f6cf46144/) | ✅ Audited |
| StakersDistribution | unknown | ethereum | n/a | [`0x2bae84...2796cf`](./contracts/ethereum-1/0x2bae8468aac9f76b5f6be9f477c4acea5f2796cf/) | ✅ Audited |
| StakingRewards | unknown | ethereum | n/a | [`0x457fe4...36859f`](./contracts/ethereum-1/0x457fe44e832181e1d3ecee0fc5be72cd9b36859f/) | ✅ Audited |
| StandardPoolConverter | unknown | ethereum | n/a | [`0x55069d...27f6e6`](./contracts/ethereum-1/0x55069dd523b39933eb872f6a34307e71ae27f6e6/) | ✅ Audited |
| StandardPoolConverterFactory | unknown | ethereum | n/a | [`0xdbc3c6...8fa9f2`](./contracts/ethereum-1/0xdbc3c64508e3fae19b0bcc2472f8811b9d8fa9f2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (69)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AToken | unknown | ethereum | n/a | [`0xbcca60...96263c`](./contracts/ethereum-1/0xbcca60bb61934080951369a648fb03df4f96263c/) | ⚠️ Unaudited |
| Avatar | unknown | ethereum | n/a | [`0x1ecfd1...9b6817`](./contracts/ethereum-1/0x1ecfd1afb601c406ff0e13c3485f2d75699b6817/) | ⚠️ Unaudited |
| BridgeValidators | unknown | ethereum | n/a | [`0x25e821...875d39`](./contracts/ethereum-1/0x25e821d01daca2978d44e2ff627aa07d5b875d39/) | ⚠️ Unaudited |
| CErc20 | unknown | ethereum | n/a | [`0x158079...ac95c1`](./contracts/ethereum-1/0x158079ee67fce2f58472a96584a73c7ab9ac95c1/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | ⚠️ Unaudited |
| CheckpointStore | unknown | ethereum | n/a | [`0xf8a2fb...b87b32`](./contracts/ethereum-1/0xf8a2fb650e25a26ce839d64be8a0abbcb0b87b32/) | ⚠️ Unaudited |
| CompoundVotingMachine | unknown | ethereum | n/a | [`0x57ee6c...bec1e9`](./contracts/ethereum-1/0x57ee6ceff51cb30ecb1245934a882c500fbec1e9/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x178053...63df29`](./contracts/ethereum-1/0x178053c06006e67e09879c09ff012ff9d263df29/) | ⚠️ Unaudited |
| ContributionCalculation | unknown | ethereum | n/a | [`0x8eec64...565e5c`](./contracts/ethereum-1/0x8eec64bb6807c0178f96277cce6a334b4e565e5c/) | ⚠️ Unaudited |
| Controller | unknown | celo | n/a | [`0x0be7c5...caec6e`](./contracts/celo-42220/0x0be7c592374ee0bd0ccbfc76be758a138bcaec6e/) | ⚠️ Unaudited |
| ConversionPathFinder | unknown | ethereum | n/a | [`0x3663d6...51fcc3`](./contracts/ethereum-1/0x3663d67236503c41193c9272eb16b4b22f51fcc3/) | ⚠️ Unaudited |
| ConverterFactory | unknown | ethereum | n/a | [`0x4ade0e...8ea269`](./contracts/ethereum-1/0x4ade0e57bc2e129f62547af4d620fb40d28ea269/) | ⚠️ Unaudited |
| ConverterRegistry | unknown | ethereum | n/a | [`0xc0205e...a60f19`](./contracts/ethereum-1/0xc0205e203f423bcd8b2a4d6f8c8a154b0aa60f19/) | ⚠️ Unaudited |
| ConverterUpgrader | unknown | ethereum | n/a | [`0x92f18a...67d724`](./contracts/ethereum-1/0x92f18a07808b4e05dd4786955f3a69957a67d724/) | ⚠️ Unaudited |
| DaoCreatorGoodDollar | unknown | ethereum | n/a | [`0x02e147...d88d64`](./contracts/ethereum-1/0x02e147ecf933c1ffd163e43b052133445fd88d64/) | ⚠️ Unaudited |
| DistributionHelper | unknown | ethereum | n/a | [`0x16171d...10daef`](./contracts/ethereum-1/0x16171d113d9592b77cec52b8cc4bdd6f5810daef/) | ⚠️ Unaudited |
| DonationsStaking | unknown | ethereum | n/a | [`0x51aa3f...8d75ce`](./contracts/ethereum-1/0x51aa3f4b67d8fe4137640417341e92ff338d75ce/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | [`0x247a30...06aeee`](./contracts/ethereum-1/0x247a30f60a3566385919f1be65935a301006aeee/) | ⚠️ Unaudited |
| ERC677BridgeToken | unknown | ethereum | n/a | [`0x970b9b...caf84d`](./contracts/ethereum-1/0x970b9bb2c0444f5e81e9d0efb84c8ccdcdcaf84d/) | ⚠️ Unaudited |
| EternalStorageProxy | unknown | ethereum | n/a | [`0xd047c6...85c1d8`](./contracts/ethereum-1/0xd047c66c583488462dbe76d0f9652ec8fd85c1d8/) | ⚠️ Unaudited |
| Faucet | unknown | celo | n/a | [`0x4f93fa...dfab84`](./contracts/celo-42220/0x4f93fa058b03953c851efaa2e4fc5c34afdfab84/) | ⚠️ Unaudited |
| FeeFormula | unknown | ethereum | n/a | [`0x51a073...01d81f`](./contracts/ethereum-1/0x51a073a0f910b3902a98a584397101211f01d81f/) | ⚠️ Unaudited |
| ForeignAMBErc677ToErc677 | unknown | ethereum | n/a | [`0x57699d...790efc`](./contracts/ethereum-1/0x57699d3d5f2cb50d63ff1e42f6779709a6790efc/) | ⚠️ Unaudited |
| ForeignBridgeNativeToErc | unknown | ethereum | n/a | [`0x0e05cb...8bdf22`](./contracts/ethereum-1/0x0e05cbc2584ffac9ecc91564f18912c0958bdf22/) | ⚠️ Unaudited |
| ForeignBridgeValidators | unknown | ethereum | n/a | [`0x2b59a9...56fbed`](./contracts/ethereum-1/0x2b59a9ed4955ed22a7609d1bb2f0c7321a56fbed/) | ⚠️ Unaudited |
| GoodAaveStakingV2 | unknown | ethereum | n/a | [`0x3ff2d8...b17f4f`](./contracts/ethereum-1/0x3ff2d8eb2573819a9ef7167d2ba6fd6d31b17f4f/) | ⚠️ Unaudited |
| GoodCompoundStaking | unknown | ethereum | n/a | [`0xd33ba1...6f3bfd`](./contracts/ethereum-1/0xd33ba17c8a644c585089145e86e282fada6f3bfd/) | ⚠️ Unaudited |
| GoodCompoundStakingV2 | unknown | ethereum | n/a | [`0x7b7246...a10754`](./contracts/ethereum-1/0x7b7246c78e2f900d17646ff0cb2ec47d6ba10754/) | ⚠️ Unaudited |
| GoodDollar | unknown | ethereum | n/a | [`0x67c587...3e094b`](./contracts/ethereum-1/0x67c5870b4a41d4ebef24d2456547a03f1f3e094b/) | ⚠️ Unaudited |
| GoodFundManager | unknown | ethereum | n/a | [`0x0c6c80...ea0a5a`](./contracts/ethereum-1/0x0c6c80d2061afa35e160f3799411d83bdeea0a5a/) | ⚠️ Unaudited |
| GReputation | unknown | ethereum | n/a | [`0x0a5dcf...9cc788`](./contracts/ethereum-1/0x0a5dcf330ba39434dbda59b982a3dd09759cc788/) | ⚠️ Unaudited |
| HomeMultiAMBErc20ToErc677 | unknown | ethereum | n/a | [`0xd1c451...4c7509`](./contracts/ethereum-1/0xd1c45150ff843402f7413fdeef65c5ac384c7509/) | ⚠️ Unaudited |
| Identity | unknown | ethereum | n/a | [`0x76e76e...1f288b`](./contracts/ethereum-1/0x76e76e10ac308a1d54a00f9df27edce4801f288b/) | ⚠️ Unaudited |
| IdentityV4 | unknown | celo | n/a | [`0xc361a6...d62f42`](./contracts/celo-42220/0xc361a6e67822a0edc17d899227dd9fc50bd62f42/) | ⚠️ Unaudited |
| JumpRateModel | unknown | ethereum | n/a | [`0x556202...7b57e7`](./contracts/ethereum-1/0x5562024784cc914069d67d89a28e3201bf7b57e7/) | ⚠️ Unaudited |
| LiquidityPoolV2ConverterAnchorFactory | unknown | ethereum | n/a | [`0x5e37e1...6a12ec`](./contracts/ethereum-1/0x5e37e1e55bbe2a7c4f77c97da0a8e261e36a12ec/) | ⚠️ Unaudited |
| LiquidityPoolV2ConverterCustomFactory | unknown | ethereum | n/a | [`0xcbefd9...c7b098`](./contracts/ethereum-1/0xcbefd93a4a405a13f7ebfa1796c91d677dc7b098/) | ⚠️ Unaudited |
| LiquidityProtection | unknown | ethereum | n/a | [`0x086e10...0ecdd6`](./contracts/ethereum-1/0x086e10c99c1226623a317fdd22cf3c43a10ecdd6/) | ⚠️ Unaudited |
| LiquidityProtectionSettings | unknown | ethereum | n/a | [`0xd444ec...1d7da9`](./contracts/ethereum-1/0xd444ec18952c7caf09636f21807683dacc1d7da9/) | ⚠️ Unaudited |
| LiquidityProtectionStore | unknown | ethereum | n/a | [`0xf5fab5...3cfb55`](./contracts/ethereum-1/0xf5fab5dbd2f3bf675de4cb76517d4767013cfb55/) | ⚠️ Unaudited |
| LiquidityProtectionSystemStore | unknown | ethereum | n/a | [`0xc4c563...b87131`](./contracts/ethereum-1/0xc4c5634de585d43daec8fa2a6fb6286cd9b87131/) | ⚠️ Unaudited |
| Maximillion | unknown | ethereum | n/a | [`0xf859a1...174088`](./contracts/ethereum-1/0xf859a1ad94bcf445a406b892ef0d3082f4174088/) | ⚠️ Unaudited |
| MessagePassingBridge | unknown | ethereum | n/a | [`0xa32472...ecf4a5`](./contracts/ethereum-1/0xa3247276dbcc76dd7705273f766eb3e8a5ecf4a5/) | ⚠️ Unaudited |
| NameService | unknown | celo | n/a | [`0x0f5db7...94ff4e`](./contracts/celo-42220/0x0f5db7a64a6a64052693676ca898ec7f7a94ff4e/) | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | ethereum | n/a | [`0x645e75...231f4c`](./contracts/ethereum-1/0x645e758796408efdd65bbbd877e8ebceeb231f4c/) | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | ethereum | n/a | [`0x18b5b6...5d14a7`](./contracts/ethereum-1/0x18b5b6696e6569f437f48b111734d72b225d14a7/) | ⚠️ Unaudited |
| OneTimePayments | unknown | celo | n/a | [`0xb27d24...47e97d`](./contracts/celo-42220/0xb27d247f5c2a61d2cb6b6e67fee51d839447e97d/) | ⚠️ Unaudited |
| PermittableToken | unknown | ethereum | n/a | [`0x694bdd...bb01f7`](./contracts/ethereum-1/0x694bdda69335f2d84e540a3fbccaca539fbb01f7/) | ⚠️ Unaudited |
| PoolTokensContainer | unknown | ethereum | n/a | [`0x0bfa9a...325630`](./contracts/ethereum-1/0x0bfa9a42e1a86bbb9e0bc43e394b880416325630/) | ⚠️ Unaudited |
| PriceOracle | unknown | ethereum | n/a | [`0xd32c9a...29f8a1`](./contracts/ethereum-1/0xd32c9af1587e2fc89498fd3c5e303fec9b29f8a1/) | ⚠️ Unaudited |
| PriceOracleProxy | unknown | ethereum | n/a | [`0x1653c0...e53ba1`](./contracts/ethereum-1/0x1653c07fa6ce103b43925dddb5e31ca568e53ba1/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x8a6739...576816`](./contracts/ethereum-1/0x8a67396cfab0fd32257e6f840e58b5421f576816/) | ⚠️ Unaudited |
| ProxyFactory1967 | unknown | ethereum | n/a | [`0x465917...f52057`](./contracts/ethereum-1/0x4659176e962763e7c8a4ef965ecfd0fdf9f52057/) | ⚠️ Unaudited |
| Reserve | unknown | celo | n/a | [`0x94a324...09463b`](./contracts/celo-42220/0x94a3240f484a04f5e3d524f528d02694c109463b/) | ⚠️ Unaudited |
| SimpleDAIStaking | unknown | ethereum | n/a | [`0xea12bb...26d41f`](./contracts/ethereum-1/0xea12bb3917cf6ae2fde97ce4756177703426d41f/) | ⚠️ Unaudited |
| SmartToken | unknown | ethereum | n/a | [`0x1b51a2...2ba7c7`](./contracts/ethereum-1/0x1b51a2b74de5cfb40a99d84bc027819ad02ba7c7/) | ⚠️ Unaudited |
| StakingRewardsStore | unknown | ethereum | n/a | [`0x6b0f32...0f9614`](./contracts/ethereum-1/0x6b0f323c752a96fb1def915bc963ed6d5b0f9614/) | ⚠️ Unaudited |
| SuperGoodDollar | unknown | celo | n/a | [`0x62b8b1...2a9c7a`](./contracts/celo-42220/0x62b8b11039fcfe5ab0c56e502b1c372a3d2a9c7a/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x6d903f...c33925`](./contracts/ethereum-1/0x6d903f6003cca6255d85cca4d3b5e5146dc33925/) | ⚠️ Unaudited |
| TokenFactory | unknown | ethereum | n/a | [`0xb21009...c87432`](./contracts/ethereum-1/0xb2100946628d3e45ff94971b35508afcbbc87432/) | ⚠️ Unaudited |
| TokenGovernance | unknown | ethereum | n/a | [`0x0887ae...f20113`](./contracts/ethereum-1/0x0887ae1251e180d7d453aedebee26e1639f20113/) | ⚠️ Unaudited |
| TokenHolder | unknown | ethereum | n/a | [`0xd1d846...6b9b55`](./contracts/ethereum-1/0xd1d846312b819743974786050848d9b3d06b9b55/) | ⚠️ Unaudited |
| TradeGD | unknown | ethereum | n/a | [`0x8b9af0...ae9294`](./contracts/ethereum-1/0x8b9af0d4b03fcd9a154a86906dadc78485ae9294/) | ⚠️ Unaudited |
| TransferManager | unknown | ethereum | n/a | [`0x00c332...7b7b48`](./contracts/ethereum-1/0x00c33285b764f8b7ad6f053bdf6978b25d7b7b48/) | ⚠️ Unaudited |
| UBISchemeV2 | unknown | celo | n/a | [`0x43d72f...0ea4a1`](./contracts/celo-42220/0x43d72ff17701b2da814620735c39c620ce0ea4a1/) | ⚠️ Unaudited |
| UniswapV2SwapHelper | unknown | ethereum | n/a | [`0x623056...92d710`](./contracts/ethereum-1/0x62305662fa7c4bc442803b940d9192dbdc92d710/) | ⚠️ Unaudited |
| Whitelist | unknown | ethereum | n/a | [`0xc5b87c...3124fe`](./contracts/ethereum-1/0xc5b87c4b8e25f863935722a9767658102d3124fe/) | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | ethereum | n/a | [`0x8c159c...986069`](./contracts/ethereum-1/0x8c159cfd11677a4f2fe4fd0278dd37a95b986069/) | ⚠️ Unaudited |

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
| [ChainSecurity-V3-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/ChainSecurity-V3-Audit-Report.pdf) | ChainSecurity | Audit | 2022-09 | stale | Inherited from Bancor — forked code, scoped to BancorFormula, LiquidityPoolV1Converter, LiquidityPoolV1ConverterFactory, LiquidityPoolV2Converter, +6 more | inherited | 16 | n/a |
| [OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf) | OpenZeppelin | Audit | 2022-08 | stale | Inherited from Bancor — forked code, scoped to BancorFormula, LiquidityPoolV1Converter, LiquidityPoolV1ConverterFactory, LiquidityPoolV2Converter, +6 more | inherited | 16 | n/a |
| [OpenZeppelin-V3-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-V3-Audit-Report.pdf) | OpenZeppelin | Audit | 2022-06 | stale | Inherited from Bancor — forked code, scoped to BancorFormula, LiquidityPoolV1Converter, LiquidityPoolV1ConverterFactory, LiquidityPoolV2Converter, +6 more | inherited | 16 | n/a |
| [PeckShield-Audit-Report-BancorV3-v1.0.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/PeckShield-Audit-Report-BancorV3-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Inherited from Bancor — forked code, scoped to BancorFormula, LiquidityPoolV1Converter, LiquidityPoolV1ConverterFactory, LiquidityPoolV2Converter, +6 more | inherited | 16 | n/a |
| [Bancor_smartcontract_halborn_report_V1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Bancor_smartcontract_halborn_report_V1.pdf) | Halborn | Audit | 2020-08 | stale | Inherited from Bancor — forked code, scoped to BancorFormula, LiquidityPoolV1Converter, LiquidityPoolV1ConverterFactory, LiquidityPoolV2Converter, +6 more | inherited | 16 | n/a |
| [c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory)](https://gist.github.com/Arachnid/c65fd1bd61a8e0294aef95a4808edc78) | Consensys Diligence | Audit | 2017-05 | stale | Inherited from Bancor — forked code, scoped to BancorFormula, LiquidityPoolV1Converter, LiquidityPoolV1ConverterFactory, LiquidityPoolV2Converter, +6 more | inherited | 16 | n/a |
| [drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view](https://drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view?usp=sharing) | PeckShield | Audit | n/a | unknown | Inherited from Bancor — forked code, scoped to BancorFormula, LiquidityPoolV1Converter, LiquidityPoolV1ConverterFactory, LiquidityPoolV2Converter, +6 more | inherited | 16 | n/a |
| [drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view](https://drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view?usp=sharing) | PeckShield | Audit | n/a | unknown | Inherited from Bancor — forked code, scoped to BancorFormula, LiquidityPoolV1Converter, LiquidityPoolV1ConverterFactory, LiquidityPoolV2Converter, +6 more | inherited | 16 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbcca60...96263c`](./contracts/ethereum-1/0xbcca60bb61934080951369a648fb03df4f96263c/) | AToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ecfd1...9b6817`](./contracts/ethereum-1/0x1ecfd1afb601c406ff0e13c3485f2d75699b6817/) | Avatar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25e821...875d39`](./contracts/ethereum-1/0x25e821d01daca2978d44e2ff627aa07d5b875d39/) | BridgeValidators | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x158079...ac95c1`](./contracts/ethereum-1/0x158079ee67fce2f58472a96584a73c7ab9ac95c1/) | CErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | CErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8a2fb...b87b32`](./contracts/ethereum-1/0xf8a2fb650e25a26ce839d64be8a0abbcb0b87b32/) | CheckpointStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x178053...63df29`](./contracts/ethereum-1/0x178053c06006e67e09879c09ff012ff9d263df29/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8eec64...565e5c`](./contracts/ethereum-1/0x8eec64bb6807c0178f96277cce6a334b4e565e5c/) | ContributionCalculation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0be7c5...caec6e`](./contracts/celo-42220/0x0be7c592374ee0bd0ccbfc76be758a138bcaec6e/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3663d6...51fcc3`](./contracts/ethereum-1/0x3663d67236503c41193c9272eb16b4b22f51fcc3/) | ConversionPathFinder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ade0e...8ea269`](./contracts/ethereum-1/0x4ade0e57bc2e129f62547af4d620fb40d28ea269/) | ConverterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0205e...a60f19`](./contracts/ethereum-1/0xc0205e203f423bcd8b2a4d6f8c8a154b0aa60f19/) | ConverterRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92f18a...67d724`](./contracts/ethereum-1/0x92f18a07808b4e05dd4786955f3a69957a67d724/) | ConverterUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02e147...d88d64`](./contracts/ethereum-1/0x02e147ecf933c1ffd163e43b052133445fd88d64/) | DaoCreatorGoodDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16171d...10daef`](./contracts/ethereum-1/0x16171d113d9592b77cec52b8cc4bdd6f5810daef/) | DistributionHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51aa3f...8d75ce`](./contracts/ethereum-1/0x51aa3f4b67d8fe4137640417341e92ff338d75ce/) | DonationsStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x970b9b...caf84d`](./contracts/ethereum-1/0x970b9bb2c0444f5e81e9d0efb84c8ccdcdcaf84d/) | ERC677BridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd047c6...85c1d8`](./contracts/ethereum-1/0xd047c66c583488462dbe76d0f9652ec8fd85c1d8/) | EternalStorageProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x4f93fa...dfab84`](./contracts/celo-42220/0x4f93fa058b03953c851efaa2e4fc5c34afdfab84/) | Faucet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51a073...01d81f`](./contracts/ethereum-1/0x51a073a0f910b3902a98a584397101211f01d81f/) | FeeFormula | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57699d...790efc`](./contracts/ethereum-1/0x57699d3d5f2cb50d63ff1e42f6779709a6790efc/) | ForeignAMBErc677ToErc677 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e05cb...8bdf22`](./contracts/ethereum-1/0x0e05cbc2584ffac9ecc91564f18912c0958bdf22/) | ForeignBridgeNativeToErc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b59a9...56fbed`](./contracts/ethereum-1/0x2b59a9ed4955ed22a7609d1bb2f0c7321a56fbed/) | ForeignBridgeValidators | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ff2d8...b17f4f`](./contracts/ethereum-1/0x3ff2d8eb2573819a9ef7167d2ba6fd6d31b17f4f/) | GoodAaveStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd33ba1...6f3bfd`](./contracts/ethereum-1/0xd33ba17c8a644c585089145e86e282fada6f3bfd/) | GoodCompoundStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b7246...a10754`](./contracts/ethereum-1/0x7b7246c78e2f900d17646ff0cb2ec47d6ba10754/) | GoodCompoundStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67c587...3e094b`](./contracts/ethereum-1/0x67c5870b4a41d4ebef24d2456547a03f1f3e094b/) | GoodDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c6c80...ea0a5a`](./contracts/ethereum-1/0x0c6c80d2061afa35e160f3799411d83bdeea0a5a/) | GoodFundManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a5dcf...9cc788`](./contracts/ethereum-1/0x0a5dcf330ba39434dbda59b982a3dd09759cc788/) | GReputation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1c451...4c7509`](./contracts/ethereum-1/0xd1c45150ff843402f7413fdeef65c5ac384c7509/) | HomeMultiAMBErc20ToErc677 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76e76e...1f288b`](./contracts/ethereum-1/0x76e76e10ac308a1d54a00f9df27edce4801f288b/) | Identity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xc361a6...d62f42`](./contracts/celo-42220/0xc361a6e67822a0edc17d899227dd9fc50bd62f42/) | IdentityV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x556202...7b57e7`](./contracts/ethereum-1/0x5562024784cc914069d67d89a28e3201bf7b57e7/) | JumpRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e37e1...6a12ec`](./contracts/ethereum-1/0x5e37e1e55bbe2a7c4f77c97da0a8e261e36a12ec/) | LiquidityPoolV2ConverterAnchorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbefd9...c7b098`](./contracts/ethereum-1/0xcbefd93a4a405a13f7ebfa1796c91d677dc7b098/) | LiquidityPoolV2ConverterCustomFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x086e10...0ecdd6`](./contracts/ethereum-1/0x086e10c99c1226623a317fdd22cf3c43a10ecdd6/) | LiquidityProtection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd444ec...1d7da9`](./contracts/ethereum-1/0xd444ec18952c7caf09636f21807683dacc1d7da9/) | LiquidityProtectionSettings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5fab5...3cfb55`](./contracts/ethereum-1/0xf5fab5dbd2f3bf675de4cb76517d4767013cfb55/) | LiquidityProtectionStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4c563...b87131`](./contracts/ethereum-1/0xc4c5634de585d43daec8fa2a6fb6286cd9b87131/) | LiquidityProtectionSystemStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf859a1...174088`](./contracts/ethereum-1/0xf859a1ad94bcf445a406b892ef0d3082f4174088/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa32472...ecf4a5`](./contracts/ethereum-1/0xa3247276dbcc76dd7705273f766eb3e8a5ecf4a5/) | MessagePassingBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0f5db7...94ff4e`](./contracts/celo-42220/0x0f5db7a64a6a64052693676ca898ec7f7a94ff4e/) | NameService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x645e75...231f4c`](./contracts/ethereum-1/0x645e758796408efdd65bbbd877e8ebceeb231f4c/) | NCStableCoinInterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18b5b6...5d14a7`](./contracts/ethereum-1/0x18b5b6696e6569f437f48b111734d72b225d14a7/) | NCStandardInterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xb27d24...47e97d`](./contracts/celo-42220/0xb27d247f5c2a61d2cb6b6e67fee51d839447e97d/) | OneTimePayments | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x694bdd...bb01f7`](./contracts/ethereum-1/0x694bdda69335f2d84e540a3fbccaca539fbb01f7/) | PermittableToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bfa9a...325630`](./contracts/ethereum-1/0x0bfa9a42e1a86bbb9e0bc43e394b880416325630/) | PoolTokensContainer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd32c9a...29f8a1`](./contracts/ethereum-1/0xd32c9af1587e2fc89498fd3c5e303fec9b29f8a1/) | PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1653c0...e53ba1`](./contracts/ethereum-1/0x1653c07fa6ce103b43925dddb5e31ca568e53ba1/) | PriceOracleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x465917...f52057`](./contracts/ethereum-1/0x4659176e962763e7c8a4ef965ecfd0fdf9f52057/) | ProxyFactory1967 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x94a324...09463b`](./contracts/celo-42220/0x94a3240f484a04f5e3d524f528d02694c109463b/) | Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea12bb...26d41f`](./contracts/ethereum-1/0xea12bb3917cf6ae2fde97ce4756177703426d41f/) | SimpleDAIStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b51a2...2ba7c7`](./contracts/ethereum-1/0x1b51a2b74de5cfb40a99d84bc027819ad02ba7c7/) | SmartToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b0f32...0f9614`](./contracts/ethereum-1/0x6b0f323c752a96fb1def915bc963ed6d5b0f9614/) | StakingRewardsStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x62b8b1...2a9c7a`](./contracts/celo-42220/0x62b8b11039fcfe5ab0c56e502b1c372a3d2a9c7a/) | SuperGoodDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d903f...c33925`](./contracts/ethereum-1/0x6d903f6003cca6255d85cca4d3b5e5146dc33925/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb21009...c87432`](./contracts/ethereum-1/0xb2100946628d3e45ff94971b35508afcbbc87432/) | TokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0887ae...f20113`](./contracts/ethereum-1/0x0887ae1251e180d7d453aedebee26e1639f20113/) | TokenGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1d846...6b9b55`](./contracts/ethereum-1/0xd1d846312b819743974786050848d9b3d06b9b55/) | TokenHolder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b9af0...ae9294`](./contracts/ethereum-1/0x8b9af0d4b03fcd9a154a86906dadc78485ae9294/) | TradeGD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00c332...7b7b48`](./contracts/ethereum-1/0x00c33285b764f8b7ad6f053bdf6978b25d7b7b48/) | TransferManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x43d72f...0ea4a1`](./contracts/celo-42220/0x43d72ff17701b2da814620735c39c620ce0ea4a1/) | UBISchemeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5b87c...3124fe`](./contracts/ethereum-1/0xc5b87c4b8e25f863935722a9767658102d3124fe/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c159c...986069`](./contracts/ethereum-1/0x8c159cfd11677a4f2fe4fd0278dd37a95b986069/) | WhitePaperInterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 79 |
| upstream | 5 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=128

Fork inheritance lineage and inherited audits are included when available.
