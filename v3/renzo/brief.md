# Agentic Audit Brief: Renzo

## Project Overview

- Project: Renzo (`renzo`)
- Website: [https://app.renzoprotocol.com/restake](https://app.renzoprotocol.com/restake)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:44.296Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, blast, bsc, ethereum, linea, mode
- Contract surface: 88 unique implementations (88 raw deployments)
- DeFi Llama TVL: $88,294,760.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Restaking. Structurally: 79 project-authored contract(s) across 7 chain(s); 1 ERC4626 vault, 6 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 8 common project-authored base contract(s) (proxy, erc1967upgrade, ownableupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 88; live-surface contracts included: 88 (87 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 31/87 (35.6%)
- Deployed-live implementations: 87 of 88 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 31/88
- Verified + Unaudited implementations: 57
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 88
- Raw deployments: 88
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 3 fresh, 4 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 31 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 20 | 22.7% | 2024-09 |
| Sigma Prime | Tier 2 | 16 | 18.2% | 2024-06 |
| Nethermind | Tier 2 | 8 | 9.1% | 2025-05 |
| NM (likely) | Tier 2 | 7 | 8.0% | 2025-05 |
| Unknown | Tier 2 | 6 | 6.8% | 2025-10 |
| SSC (likely) | Tier 2 | 1 | 1.1% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConnextReceiver | unknown | mode | n/a | [`0x3ea4d0...fd0930`](./contracts/mode-34443/0x3ea4d0467c976e9877adb96869fdeb0551fd0930/) | ✅ Audited |
| DepositQueue | unknown | ethereum | n/a | [`0x24aa95...7377ae`](./contracts/ethereum-1/0x24aa958c90b7973dc16c63c9992f69e1767377ae/) | ✅ Audited |
| EthArbValueTransfer | unknown | arbitrum | n/a | [`0x41255f...50ae44`](./contracts/arbitrum-42161/0x41255f463796e0852982783666751694bb50ae44/) | ✅ Audited |
| EthOPValueTransfer | unknown | base | n/a | [`0x4807e1...cded62`](./contracts/base-8453/0x4807e102fe87d8d8d16691d38e41e3aec5cded62/) | ✅ Audited |
| EulerSwapEzEthDelegateStrategy | unknown | ethereum | n/a | [`0x0d0226...23dd89`](./contracts/ethereum-1/0x0d02267b9529ba1ee284e73e107feaf91e23dd89/) | ✅ Audited |
| EzEthToken | unknown | ethereum | n/a | [`0x1e756b...bbacb0`](./contracts/ethereum-1/0x1e756b7bcca7b26fb9d85344b3525f5559bbacb0/) | ✅ Audited |
| EzRVault | unknown | ethereum | n/a | [`0x04fc0e...957d73`](./contracts/ethereum-1/0x04fc0eec2f93b94781e89fcab192613c48957d73/) | ✅ Audited |
| EzRVaultsFactory | unknown | ethereum | n/a | [`0x02e976...b0727f`](./contracts/ethereum-1/0x02e976adf6d27ec622b00a0125e3c52e32b0727f/) | ✅ Audited |
| HyperlaneReceiver | unknown | bsc | n/a | [`0x3bedea...8b2cd2`](./contracts/bsc-56/0x3bedea15ab20d75aa858d42771f3ec09638b2cd2/) | ✅ Audited |
| HyperlaneSender | unknown | arbitrum | n/a | [`0x1120ea...b17fb4`](./contracts/arbitrum-42161/0x1120ea466b51e86be7cacc0ed5b0d7021eb17fb4/) | ✅ Audited |
| LEZyVault | unknown | ethereum | n/a | [`0x00aa80...0496ac`](./contracts/ethereum-1/0x00aa8017206206dd43a2dd3679e890f9b50496ac/) | ✅ Audited |
| LEZyVaultFactory | unknown | base | n/a | [`0x10586b...3c3011`](./contracts/base-8453/0x10586b9b7ff0f842913a57539f8167ce143c3011/) | ✅ Audited |
| OperatorDelegator | unknown | ethereum | n/a | [`0x0683c3...7e34ca`](./contracts/ethereum-1/0x0683c3cc018fb76874fdcc8620d15c4e467e34ca/) | ✅ Audited |
| OptimismMintableXERC20 | unknown | blast | n/a | [`0x241609...cceea5`](./contracts/blast-81457/0x2416092f143378750bb29b79ed961ab195cceea5/) | ✅ Audited |
| Renzo | unknown | ethereum | n/a | [`0x3b5080...3fa6f9`](./contracts/ethereum-1/0x3b50805453023a91a8bf641e279401a0b23fa6f9/) | ✅ Audited |
| RenzoOracle | unknown | ethereum | n/a | [`0x19cbe4...108607`](./contracts/ethereum-1/0x19cbe4d482831a087a8eef108a33422445108607/) | ✅ Audited |
| RenzoOracleL2 | unknown | arbitrum | n/a | [`0x3bedea...8b2cd2`](./contracts/arbitrum-42161/0x3bedea15ab20d75aa858d42771f3ec09638b2cd2/) | ✅ Audited |
| RestakeManager | unknown | ethereum | n/a | [`0x18ac4d...1a042a`](./contracts/ethereum-1/0x18ac4d26acd4c5c4fe98c9098d2e5e1e501a042a/) | ✅ Audited |
| RewardHandler | unknown | ethereum | n/a | [`0x174a0e...478efe`](./contracts/ethereum-1/0x174a0ed7c1989fa693b2cf93c5162e07d9478efe/) | ✅ Audited |
| RoleManager | unknown | base | n/a | [`0x041e34...260343`](./contracts/base-8453/0x041e34f9b697c36e2ec56b8d8b4ada1769260343/) | ✅ Audited |
| STETHShim | unknown | base | n/a | [`0x0683c3...7e34ca`](./contracts/base-8453/0x0683c3cc018fb76874fdcc8620d15c4e467e34ca/) | ✅ Audited |
| TimelockController | unknown | bsc | n/a | [`0x3e0053...f7550b`](./contracts/bsc-56/0x3e0053d211b501732e999d6399b7e79610f7550b/) | ✅ Audited |
| UsccDepositStrategy | unknown | ethereum | n/a | [`0x7c4564...760395`](./contracts/ethereum-1/0x7c4564bd54da474314f715b19d7d8c7671760395/) | ✅ Audited |
| WithdrawQueue | unknown | ethereum | n/a | [`0x02ac87...e2ba0b`](./contracts/ethereum-1/0x02ac87c747f5b74d3d290adcf83bb2b694e2ba0b/) | ✅ Audited |
| XERC20 | unknown | ethereum | n/a | [`0x241609...cceea5`](./contracts/ethereum-1/0x2416092f143378750bb29b79ed961ab195cceea5/) | ✅ Audited |
| XERC20Factory | unknown | ethereum | n/a | [`0x86e532...deb9cf`](./contracts/ethereum-1/0x86e532b66872dc801d737276fc1d2ff425deb9cf/) | ✅ Audited |
| XERC20Lockbox | unknown | ethereum | n/a | [`0xc8140d...3c2059`](./contracts/ethereum-1/0xc8140da31e6bca19b287cc35531c2212763c2059/) | ✅ Audited |
| xRenzoBridge | unknown | ethereum | n/a | [`0x34a8bc...cc67f6`](./contracts/ethereum-1/0x34a8bcbbbb6265435fb5a44e71d67c899ccc67f6/) | ✅ Audited |
| xRenzoBridgeReceiver | unknown | ethereum | n/a | [`0x21e4bd...7495fb`](./contracts/ethereum-1/0x21e4bd82f889cb1b9353ce12f4896b8dcb7495fb/) | ✅ Audited |
| xRenzoDeposit | unknown | bsc | n/a | [`0x0c1b9b...a80f1d`](./contracts/bsc-56/0x0c1b9b3da7345f6fd5c9d8ecf7464b45e4a80f1d/) | ✅ Audited |
| xRenzoDepositNativeBridge | unknown | arbitrum | n/a | [`0x2efa12...b4ff33`](./contracts/arbitrum-42161/0x2efa125b4fcd5b082a4233ba55b53feb2fb4ff33/) | ✅ Audited |

### ⚠️ Verified + Unaudited (57)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AerodromeRouterDecoderAndSanitizer | unknown | base | n/a | [`0x060ab3...d7d2d0`](./contracts/base-8453/0x060ab33ea78c527bbaea7f633fb5ebf22ed7d2d0/) | ⚠️ Unaudited |
| CachedRateProvider | unknown | ethereum | n/a | [`0x4709ab...404fc7`](./contracts/ethereum-1/0x4709ab91123f7dbb4b6c4a02c94e855678404fc7/) | ⚠️ Unaudited |
| CowSwapPresignDecoderAndSanitizer | unknown | base | n/a | [`0x227d21...d6b3e4`](./contracts/base-8453/0x227d2155fc4f893e095e8de24118baca0fd6b3e4/) | ⚠️ Unaudited |
| Dapp | unknown | blast | n/a | [`0xe65843...c19a75`](./contracts/blast-81457/0xe65843850106421eab49dd43d19fa2d75fc19a75/) | ⚠️ Unaudited |
| DelayedWithdrawalRouter | unknown | ethereum | n/a | [`0x44bcb0...83e2af`](./contracts/ethereum-1/0x44bcb0e01cd0c5060d4bb1a07b42580ef983e2af/) | ⚠️ Unaudited |
| DelegationManager | unknown | ethereum | n/a | [`0x39053d...8ef37a`](./contracts/ethereum-1/0x39053d51b77dc0d36036fc1fcc8cb819df8ef37a/) | ⚠️ Unaudited |
| EigenPod | unknown | ethereum | n/a | [`0x5a2a4f...909073`](./contracts/ethereum-1/0x5a2a4f2f3c18f09179b6703e63d9edd165909073/) | ⚠️ Unaudited |
| EigenPodManager | unknown | ethereum | n/a | [`0x91e677...d3a338`](./contracts/ethereum-1/0x91e677b07f7af907ec9a428aafa9fc14a0d3a338/) | ⚠️ Unaudited |
| EmptyContract | unknown | ethereum | n/a | [`0x179f00...eb55ba`](./contracts/ethereum-1/0x179f0063d87bb7ca4f75ca693566018ca9eb55ba/) | ⚠️ Unaudited |
| ERC20DecoderAndSanitizer | unknown | base | n/a | [`0x062e9f...de6d33`](./contracts/base-8453/0x062e9f976539f3b0378788f4c0c1846753de6d33/) | ⚠️ Unaudited |
| ERC20PaymentReceiverEzRVault | unknown | ethereum | n/a | [`0x24c28e...5d65af`](./contracts/ethereum-1/0x24c28e5ea9960dff3c00c02790d1aec21b5d65af/) | ⚠️ Unaudited |
| EthDepositor | unknown | ethereum | n/a | [`0x45fed8...19cccd`](./contracts/ethereum-1/0x45fed80345757ce3b530effa4b8022df3419cccd/) | ⚠️ Unaudited |
| EthLineaValueTransfer | unknown | linea | n/a | [`0x174a0e...478efe`](./contracts/linea-59144/0x174a0ed7c1989fa693b2cf93c5162e07d9478efe/) | ⚠️ Unaudited |
| EulerEzEthLoopStrategy | unknown | ethereum | n/a | [`0xbe97c9...9b5fe6`](./contracts/ethereum-1/0xbe97c9410ac4cf12966c31e70d748b5c889b5fe6/) | ⚠️ Unaudited |
| EzAdminL1 | unknown | ethereum | n/a | [`0x762571...a24718`](./contracts/ethereum-1/0x7625716271e5dd3896cf5336a1ea62fae9a24718/) | ⚠️ Unaudited |
| EzAdminL2 | unknown | mode | n/a | [`0x1120ea...b17fb4`](./contracts/mode-34443/0x1120ea466b51e86be7cacc0ed5b0d7021eb17fb4/) | ⚠️ Unaudited |
| EzAuction | unknown | ethereum | n/a | [`0x5ab40d...1ba29f`](./contracts/ethereum-1/0x5ab40d79d1c85670a10803853a307c862c1ba29f/) | ⚠️ Unaudited |
| ezETHConversionStrategy | unknown | ethereum | n/a | [`0xebb77a...bbd86a`](./contracts/ethereum-1/0xebb77a6a553646f81eaf57429c8fc004f9bbd86a/) | ⚠️ Unaudited |
| ezETHValueStrategy | unknown | ethereum | n/a | [`0x35b5eb...b0bd9e`](./contracts/ethereum-1/0x35b5ebe66dd7ef372f5c36b25a297863e1b0bd9e/) | ⚠️ Unaudited |
| EzRVaultLib | unknown | ethereum | n/a | [`0x47fbab...5158e2`](./contracts/ethereum-1/0x47fbab3dbaebfcf6173b9637bb020c0ca05158e2/) | ⚠️ Unaudited |
| FlashAuctionBuyer | unknown | ethereum | n/a | [`0x39e2a9...e1a521`](./contracts/ethereum-1/0x39e2a9eb9d8d9cc30fe096b5a642d7597be1a521/) | ⚠️ Unaudited |
| InstantWithdrawer | unknown | ethereum | n/a | [`0x2ddaa1...f6f8ff`](./contracts/ethereum-1/0x2ddaa152b3cf455693c944f9f47925408ff6f8ff/) | ⚠️ Unaudited |
| KeeperRegistry | unknown | base | n/a | [`0x03d8c4...2ebc73`](./contracts/base-8453/0x03d8c4787dcbaeaff7f1d22fb881f45c3a2ebc73/) | ⚠️ Unaudited |
| MegapotDecoderAndSanitizer | unknown | base | n/a | [`0x507c83...9c4481`](./contracts/base-8453/0x507c8376d78dcd4d7e4d5641f7a5373e939c4481/) | ⚠️ Unaudited |
| MerklClaimerStrategy | unknown | ethereum | n/a | [`0xbca648...4957db`](./contracts/ethereum-1/0xbca64801a6639ebda2c28cc0bdddf804424957db/) | ⚠️ Unaudited |
| NonUnderlyingTokenTransferStrategy | unknown | ethereum | n/a | [`0x8bddb5...67f4f8`](./contracts/ethereum-1/0x8bddb5e42b419d949bcaba2a1538c9c37867f4f8/) | ⚠️ Unaudited |
| OperatorDelegatorLib | unknown | ethereum | n/a | [`0x4f1cf8...b03f56`](./contracts/ethereum-1/0x4f1cf88b1f9edb4cbd8eaf0364970cf8aab03f56/) | ⚠️ Unaudited |
| OrderEngine | unknown | base | n/a | [`0x00df92...4f0c4a`](./contracts/base-8453/0x00df929320c5a6a621cdc75a25451514d34f0c4a/) | ⚠️ Unaudited |
| PauserRegistry | unknown | ethereum | n/a | [`0x0c431c...977060`](./contracts/ethereum-1/0x0c431c66f4de941d089625e5b423d00707977060/) | ⚠️ Unaudited |
| PaymentSplitter | unknown | ethereum | n/a | [`0x10586b...3c3011`](./contracts/ethereum-1/0x10586b9b7ff0f842913a57539f8167ce143c3011/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | [`0x0c1b9b...a80f1d`](./contracts/base-8453/0x0c1b9b3da7345f6fd5c9d8ecf7464b45e4a80f1d/) | ⚠️ Unaudited |
| Receiver | unknown | bsc | n/a | [`0x86bed1...3795b8`](./contracts/bsc-56/0x86bed1d2a6064e1b2ac5ea2eb69356cdf93795b8/) | ⚠️ Unaudited |
| SentryDelegation | unknown | base | n/a | [`0x02926b...505b6a`](./contracts/base-8453/0x02926b7b56dc41c1aa676a41eb4affc85b505b6a/) | ⚠️ Unaudited |
| Slasher | unknown | ethereum | n/a | [`0xd92145...c1c3cd`](./contracts/ethereum-1/0xd92145c07f8ed1d392c1b88017934e301cc1c3cd/) | ⚠️ Unaudited |
| StrategyBaseTVLLimits | unknown | ethereum | n/a | [`0x1bee69...25dcd2`](./contracts/ethereum-1/0x1bee69b7dfffa4e2d53c2a2df135c388ad25dcd2/) | ⚠️ Unaudited |
| StrategyManager | unknown | ethereum | n/a | [`0x5d25ee...e342fb`](./contracts/ethereum-1/0x5d25eef8cfedaa47d31fe2346726de1c21e342fb/) | ⚠️ Unaudited |
| TestToken | unknown | ethereum | n/a | [`0xe518dc...36b193`](./contracts/ethereum-1/0xe518dcaf8fb18fd2ad73da8e016f09359f36b193/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0xa6db1a...210eaf`](./contracts/ethereum-1/0xa6db1a8c5a981d1536266d2a393c5f8ddb210eaf/) | ⚠️ Unaudited |
| TokenWhitelistRegistry | unknown | base | n/a | [`0x28d37d...d85d9f`](./contracts/base-8453/0x28d37d1a4c0020ce253b7256bb5359d1d0d85d9f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0742bd...a65567`](./contracts/ethereum-1/0x0742bd018d1e9c8c918afa605e53e71cb0a65567/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x08921f...cfae6d`](./contracts/ethereum-1/0x08921f17a32110f8df44a3d5007f2acd09cfae6d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x173601...a830a6`](./contracts/ethereum-1/0x1736011d3e075351b319dbc1da28dac68ea830a6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x177879...aa9de0`](./contracts/ethereum-1/0x177879ad09f0bdf71fa91573f825ae29d5aa9de0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2b5b36...c3fd01`](./contracts/ethereum-1/0x2b5b36597be376221a098361ceedaaf426c3fd01/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x2bf60d...4ac18a`](./contracts/ethereum-1/0x2bf60d953c8afc18415840e46272806eb14ac18a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x387dbc...02c84c`](./contracts/ethereum-1/0x387dbc0fb00b26fb085aa658527d5be98302c84c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x3a0613...2d26ed`](./contracts/ethereum-1/0x3a0613a7ee2a0621ee11f8a609d17606612d26ed/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x582dc2...747482`](./contracts/ethereum-1/0x582dc2ee559077ae3a2bb08ef0eefe064c747482/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x83ee10...360110`](./contracts/ethereum-1/0x83ee10a7aa71ddc721b871ea687f13542a360110/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x85e115...c4b5ee`](./contracts/ethereum-1/0x85e1157b1f3d1384a6a67679b761517916c4b5ee/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x8c9532...3e9811`](./contracts/ethereum-1/0x8c9532a60e0e7c6bbd2b2c1303f63ace1c3e9811/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mode | n/a | [`0x0683c3...7e34ca`](./contracts/mode-34443/0x0683c3cc018fb76874fdcc8620d15c4e467e34ca/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | [`0x4d7572...388f88`](./contracts/linea-59144/0x4d7572040b84b41a6aa2efe4a93efff182388f88/) | ⚠️ Unaudited |
| UniV4UniversalRouterStrategy | unknown | ethereum | n/a | [`0x09af9b...1700fb`](./contracts/ethereum-1/0x09af9b2261463c38115acd6d345da345851700fb/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | ethereum | n/a | [`0x18efef...ab5982`](./contracts/ethereum-1/0x18efef04f525a9bf0c6440b12ebb71bfa2ab5982/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | base | n/a | [`0x31a3e1...aaada7`](./contracts/base-8453/0x31a3e1ebd28b9379797f6959649c31bc21aaada7/) | ⚠️ Unaudited |
| WethDecoderAndSanitizer | unknown | base | n/a | [`0x052ac4...ee3207`](./contracts/base-8453/0x052ac4e2116a83257890b4df600d95494aee3207/) | ⚠️ Unaudited |

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
| [* Renzo Protocol Withdrawals (May 2024) - <>](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/Halborn_Renzo_Protocol_Withdrawals_Smart_Contract_Security_Assessment_Report.pdf) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | 17 | high |
| [* REZ Staking (April 2024) <>](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/Halborn_Renzo_REZ_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | 6 | high |
| [* Flow Audit Report (September 2024) - <>](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/ezRVaults%20Audit.pdf) | Halborn | Audit | 2024-09 | aging | Direct | contract_name | 2 | high |
| [* [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br>](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/Sigma_Prime_Renzo_Restaking_Security_Assessment_Report_v2_1.pdf) | Sigma Prime | Audit | 2024-06 | stale | Direct | contract_name | 16 | high |
| [* [Code4rena](https://code4rena.com/) (June 2024) - <>](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/code4rena_Audit.md) | Code4rena | Contest | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [* Nethermind - Renzo Bridge (May 2025) - <> <br>](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/NM0445-FINAL_RENZO.pdf) | Nethermind | Audit | 2025-05 | aging | Direct | contract_name | 8 | high |
| [EVM Managed Vaults.pdf](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/EVM%20Managed%20Vaults.pdf) | Unknown | Audit | 2025-10 | fresh | Direct | contract_name | 5 | high |
| [NM0472-FINAL_RENZO_BRIDGE.pdf](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/NM0472-FINAL_RENZO_BRIDGE.pdf) | NM (likely) | Audit | 2025-05 | aging | Direct | contract_name | 7 | high |
| [P2 Vault Integration with Aave- PR 19 _ SSC.pdf](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/P2%20Vault%20Integration%20with%20Aave-%20PR%2019%20_%20SSC.pdf) | SSC (likely) | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Renzo_Protocol_v2_1.pdf](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/Renzo_Protocol_v2_1.pdf) | Unknown | Audit | 2025-06 | aging | Direct | contract_name | 2 | high |
| [Superstate USCC- Vault Strategy _ SSC.pdf](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/Superstate%20USCC-%20Vault%20Strategy%20_%20SSC.pdf) | SSC (likely) | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [A: Yes, Renzo has gone through comprehensive audits as you can see [here]().](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-11 | stale | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 88 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=11
- Match method counts: extraction_exact=71

Zero-match audit list:

- [18077] * [Code4rena](https://code4rena.com/) (June 2024) - <>
- [18081] P2 Vault Integration with Aave- PR 19 _ SSC.pdf

Fork inheritance lineage and inherited audits are included when available.
