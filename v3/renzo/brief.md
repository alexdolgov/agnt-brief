# Agentic Audit Brief: Renzo

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 3 audit(s)
- Eligible audit results: 13 (3 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Renzo (`renzo`)
- Website: [https://app.renzoprotocol.com/restake](https://app.renzoprotocol.com/restake)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, berachain, blast, bsc, ethereum, fraxtal, ink, linea, megaeth, mode, optimism, sei
- Contract surface: 470 unique implementations (486 raw deployments)
- Coverage basis: 4/8 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $88,294,760.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Renzo. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across arbitrum, base, berachain, blast, bsc, ethereum, fraxtal, ink, linea, megaeth, mode, sei. Structural roles: 4 infra, 4 supporting. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: infra (4), supporting (4)
- Contract kinds: contract (8)
- Detected standards: erc1967proxy (6), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 33 contracts are derived from known codebases. 33 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5efc9d10e42fb517456f4ac41eb5e2ebe42c8918`, chain 1)
- UnnamedContract (`0x74a09653a083691711cf8215a6ab074bb4e99ef5`, chain 1)
- UnnamedContract (`0x77b1183e730275f6a8024ce53d54bcc12b368f60`, chain 1)
- UnnamedContract (`0x858646372cc42e1a627fce94aa7a7033e7cf075a`, chain 1)
- UnnamedContract (`0x9bce21489a7a85ed475c9e9d0dc94b4e6a1aebf3`, chain 1)
- UnnamedContract (`0xbf5495efe5db9ce00f80364c8b423567e58d2110`, chain 1)
- UnnamedContract (`0xc1036d6bba2fe24c65823110b348ee80d3386acd`, chain 1)
- UnnamedContract (`0xd4fcde9bb1d746dd7e5463b01dd819ee06af25db`, chain 1)
- UnnamedContract (`0xf25484650484de3d554fb0b7125e7696efa4ab99`, chain 1)
- UnnamedContract (`0xf757c9804cf2ee8d8ed64e0a8936293fe43a7252`, chain 1)
- UnnamedContract (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 56)
- UnnamedContract (`0xf25484650484de3d554fb0b7125e7696efa4ab99`, chain 56)
- UnnamedContract (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 252)
- UnnamedContract (`0x6dcfbf4729890043dfd34a93a2694e5303ba2703`, chain 1329)
- UnnamedContract (`0x09601a65e7de7bc8a19813d263dd9e98bfdc3c57`, chain 4326)
- UnnamedContract (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 8453)
- UnnamedContract (`0xf25484650484de3d554fb0b7125e7696efa4ab99`, chain 8453)
- UnnamedContract (`0xf757c9804cf2ee8d8ed64e0a8936293fe43a7252`, chain 8453)
- UnnamedContract (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 34443)
- UnnamedContract (`0x4d7572040b84b41a6aa2efe4a93efff182388f88`, chain 34443)
- UnnamedContract (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 42161)
- UnnamedContract (`0xf25484650484de3d554fb0b7125e7696efa4ab99`, chain 42161)
- UnnamedContract (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 57073)
- UnnamedContract (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 59144)
- UnnamedContract (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 80094)
- Dapp (`0xe65843850106421eab49dd43d19fa2d75fc19a75`, chain 81457)
- OptimismMintableXERC20 (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 81457)
- Renzo (`0x3b50805453023a91a8bf641e279401a0b23fa6f9`, chain 1)
- TransparentUpgradeableProxy (`0x1736011d3e075351b319dbc1da28dac68ea830a6`, chain 1)
- TransparentUpgradeableProxy (`0x8c9532a60e0e7c6bbd2b2c1303f63ace1c3e9811`, chain 1)
- TransparentUpgradeableProxy (`0x4d7572040b84b41a6aa2efe4a93efff182388f88`, chain 59144)
- XERC20 (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 1)
- XERC20Lockbox (`0xc8140da31e6bca19b287cc35531c2212763c2059`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 33/34 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/8 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 33 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 437 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 28
- Confirmed-live implementations: 33 of 470 unique; 437 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/88
- Verified + Unaudited implementations: 84
- Verified by bytecode match: 0
- Unverified implementations: 382
- Unique implementations: 470
- Raw deployments: 486
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 3 fresh, 4 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 4 | 4.5% | 2024-09 |
| Sigma Prime | Tier 2 | 3 | 3.4% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OptimismMintableXERC20 | unknown | project_anchor | own_supporting | 1 | blast | unit-391508 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ✅ Audited |
| Renzo | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391475 | `0x3b50805453023a91a8bf641e279401a0b23fa6f9` | ✅ Audited |
| XERC20 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391505 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ✅ Audited |
| XERC20Lockbox | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391506 | `0xc8140da31e6bca19b287cc35531c2212763c2059` | ✅ Audited |

### ⚠️ Verified + Unaudited (84)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AerodromeRouterDecoderAndSanitizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x060ab33ea78c527bbaea7f633fb5ebf22ed7d2d0` | ⚠️ Unaudited |
| CachedRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4709ab91123f7dbb4b6c4a02c94e855678404fc7` | ⚠️ Unaudited |
| ConnextReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3ea4d0467c976e9877adb96869fdeb0551fd0930` | ⚠️ Unaudited |
| CowSwapPresignDecoderAndSanitizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x227d2155fc4f893e095e8de24118baca0fd6b3e4` | ⚠️ Unaudited |
| Dapp | unknown | project_anchor | own_supporting | 0 | blast | unit-391499 | `0xe65843850106421eab49dd43d19fa2d75fc19a75` | ⚠️ Unaudited |
| DelayedWithdrawalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44bcb0e01cd0c5060d4bb1a07b42580ef983e2af` | ⚠️ Unaudited |
| DelegationManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x39053d51b77dc0d36036fc1fcc8cb819df8ef37a` | ⚠️ Unaudited |
| DepositQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24aa958c90b7973dc16c63c9992f69e1767377ae` | ⚠️ Unaudited |
| EigenPod | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5a2a4f2f3c18f09179b6703e63d9edd165909073` | ⚠️ Unaudited |
| EigenPodManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x91e677b07f7af907ec9a428aafa9fc14a0d3a338` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x179f0063d87bb7ca4f75ca693566018ca9eb55ba`; ethereum `0x38ef9806fd786294e92189561543a0bfbfe993af` | ⚠️ Unaudited |
| ERC20DecoderAndSanitizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x062e9f976539f3b0378788f4c0c1846753de6d33` | ⚠️ Unaudited |
| ERC20PaymentReceiverEzRVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c28e5ea9960dff3c00c02790d1aec21b5d65af` | ⚠️ Unaudited |
| EthArbValueTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41255f463796e0852982783666751694bb50ae44` | ⚠️ Unaudited |
| EthDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45fed80345757ce3b530effa4b8022df3419cccd` | ⚠️ Unaudited |
| EthLineaValueTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x174a0ed7c1989fa693b2cf93c5162e07d9478efe` | ⚠️ Unaudited |
| EthOPValueTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4807e102fe87d8d8d16691d38e41e3aec5cded62` | ⚠️ Unaudited |
| EulerEzEthLoopStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe97c9410ac4cf12966c31e70d748b5c889b5fe6` | ⚠️ Unaudited |
| EulerSwapEzEthDelegateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d02267b9529ba1ee284e73e107feaf91e23dd89` | ⚠️ Unaudited |
| EzAdminL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7625716271e5dd3896cf5336a1ea62fae9a24718` | ⚠️ Unaudited |
| EzAdminL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1120ea466b51e86be7cacc0ed5b0d7021eb17fb4` | ⚠️ Unaudited |
| EzAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ab40d79d1c85670a10803853a307c862c1ba29f` | ⚠️ Unaudited |
| ezETHConversionStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebb77a6a553646f81eaf57429c8fc004f9bbd86a` | ⚠️ Unaudited |
| EzEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e756b7bcca7b26fb9d85344b3525f5559bbacb0` | ⚠️ Unaudited |
| ezETHValueStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35b5ebe66dd7ef372f5c36b25a297863e1b0bd9e` | ⚠️ Unaudited |
| EzRVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04fc0eec2f93b94781e89fcab192613c48957d73` | ⚠️ Unaudited |
| EzRVaultLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47fbab3dbaebfcf6173b9637bb020c0ca05158e2` | ⚠️ Unaudited |
| EzRVaultsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02e976adf6d27ec622b00a0125e3c52e32b0727f` | ⚠️ Unaudited |
| FlashAuctionBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39e2a9eb9d8d9cc30fe096b5a642d7597be1a521` | ⚠️ Unaudited |
| HyperlaneReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bedea15ab20d75aa858d42771f3ec09638b2cd2` | ⚠️ Unaudited |
| HyperlaneSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1120ea466b51e86be7cacc0ed5b0d7021eb17fb4` | ⚠️ Unaudited |
| InstantWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ddaa152b3cf455693c944f9f47925408ff6f8ff` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03d8c4787dcbaeaff7f1d22fb881f45c3a2ebc73` | ⚠️ Unaudited |
| LEZyVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00aa8017206206dd43a2dd3679e890f9b50496ac` | ⚠️ Unaudited |
| LEZyVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10586b9b7ff0f842913a57539f8167ce143c3011` | ⚠️ Unaudited |
| MegapotDecoderAndSanitizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x507c8376d78dcd4d7e4d5641f7a5373e939c4481` | ⚠️ Unaudited |
| MerklClaimerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbca64801a6639ebda2c28cc0bdddf804424957db` | ⚠️ Unaudited |
| NonUnderlyingTokenTransferStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bddb5e42b419d949bcaba2a1538c9c37867f4f8` | ⚠️ Unaudited |
| OperatorDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0683c3cc018fb76874fdcc8620d15c4e467e34ca` | ⚠️ Unaudited |
| OperatorDelegatorLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f1cf88b1f9edb4cbd8eaf0364970cf8aab03f56` | ⚠️ Unaudited |
| OrderEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x00df929320c5a6a621cdc75a25451514d34f0c4a` | ⚠️ Unaudited |
| PauserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c431c66f4de941d089625e5b423d00707977060` | ⚠️ Unaudited |
| PaymentSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x10586b9b7ff0f842913a57539f8167ce143c3011`; ethereum `0xe9e3659858d530914cb81d0833c30e47931a5fce` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c1b9b3da7345f6fd5c9d8ecf7464b45e4a80f1d` | ⚠️ Unaudited |
| Receiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86bed1d2a6064e1b2ac5ea2eb69356cdf93795b8` | ⚠️ Unaudited |
| RenzoOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19cbe4d482831a087a8eef108a33422445108607` | ⚠️ Unaudited |
| RenzoOracleL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bedea15ab20d75aa858d42771f3ec09638b2cd2` | ⚠️ Unaudited |
| RestakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18ac4d26acd4c5c4fe98c9098d2e5e1e501a042a` | ⚠️ Unaudited |
| RewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x174a0ed7c1989fa693b2cf93c5162e07d9478efe`; ethereum `0x20181331731e535eaaf3b4efad4b5b67b574edd5` | ⚠️ Unaudited |
| RoleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x041e34f9b697c36e2ec56b8d8b4ada1769260343`; base `0xb446e5867d125951d66a1e0bf15b708119a12f3d` | ⚠️ Unaudited |
| SentryDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02926b7b56dc41c1aa676a41eb4affc85b505b6a` | ⚠️ Unaudited |
| Slasher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd92145c07f8ed1d392c1b88017934e301cc1c3cd` | ⚠️ Unaudited |
| STETHShim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0683c3cc018fb76874fdcc8620d15c4e467e34ca` | ⚠️ Unaudited |
| StrategyBaseTVLLimits | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1bee69b7dfffa4e2d53c2a2df135c388ad25dcd2` | ⚠️ Unaudited |
| StrategyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d25eef8cfedaa47d31fe2346726de1c21e342fb` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe518dcaf8fb18fd2ad73da8e016f09359f36b193` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6db1a8c5a981d1536266d2a393c5f8ddb210eaf` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e0053d211b501732e999d6399b7e79610f7550b` | ⚠️ Unaudited |
| TokenWhitelistRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28d37d1a4c0020ce253b7256bb5359d1d0d85d9f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0742bd018d1e9c8c918afa605e53e71cb0a65567`; ethereum `0x38f4e5e16fc6a6f50086841b94e1281183203931` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x08921f17a32110f8df44a3d5007f2acd09cfae6d`; ethereum `0x3fc017e6746ab75fe4b21a4b5a4f39850312db20` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391504 | `0x1736011d3e075351b319dbc1da28dac68ea830a6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x177879ad09f0bdf71fa91573f825ae29d5aa9de0`; ethereum `0x917a9cfdc8256e70ceb8db935033783fefd13a3f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b5b36597be376221a098361ceedaaf426c3fd01`; ethereum `0x532d3ca61a4cd0c7993f658a47c1e30481bfbe87` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2bf60d953c8afc18415840e46272806eb14ac18a`; ethereum `0x616d3023aa09ec41f679e468cafddd5b2d20ba46` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x387dbc0fb00b26fb085aa658527d5be98302c84c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3a0613a7ee2a0621ee11f8a609d17606612d26ed`; ethereum `0xd38fff8cf7365feddd54384414b59ac328e2346a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x582dc2ee559077ae3a2bb08ef0eefe064c747482`; ethereum `0xae78adbfdc5240adc81c32d17fd92dfd24ad74a3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x83ee10a7aa71ddc721b871ea687f13542a360110`; ethereum `0xd8d662c2db90c2118f0c758694655916e20c032d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x85e1157b1f3d1384a6a67679b761517916c4b5ee`; ethereum `0xedac9e95df445acf19958b75aee365ebe5ddca3c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391503 | `0x8c9532a60e0e7c6bbd2b2c1303f63ace1c3e9811` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0683c3cc018fb76874fdcc8620d15c4e467e34ca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | linea | unit-391507 | `0x4d7572040b84b41a6aa2efe4a93efff182388f88` | ⚠️ Unaudited |
| UniV4UniversalRouterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09af9b2261463c38115acd6d345da345851700fb` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x18efef04f525a9bf0c6440b12ebb71bfa2ab5982`; ethereum `0x3b8e86db4199df1c33cf20b8d450d5946c5002a0` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31a3e1ebd28b9379797f6959649c31bc21aaada7` | ⚠️ Unaudited |
| UsccDepositStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c4564bd54da474314f715b19d7d8c7671760395` | ⚠️ Unaudited |
| WethDecoderAndSanitizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x052ac4e2116a83257890b4df600d95494aee3207` | ⚠️ Unaudited |
| WithdrawQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02ac87c747f5b74d3d290adcf83bb2b694e2ba0b` | ⚠️ Unaudited |
| XERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86e532b66872dc801d737276fc1d2ff425deb9cf` | ⚠️ Unaudited |
| xRenzoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34a8bcbbbb6265435fb5a44e71d67c899ccc67f6` | ⚠️ Unaudited |
| xRenzoBridgeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x21e4bd82f889cb1b9353ce12f4896b8dcb7495fb`; ethereum `0x875f690e72a7e1014d7fc38d66cd64bd618e94f5` | ⚠️ Unaudited |
| xRenzoDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c1b9b3da7345f6fd5c9d8ecf7464b45e4a80f1d` | ⚠️ Unaudited |
| xRenzoDepositNativeBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2efa125b4fcd5b082a4233ba55b53feb2fb4ff33`; arbitrum `0x766a4df76cb091c41de22f75b6bd6733fb730357` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (382)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0795aa14ee48e4ae85d76635d464c021483f25b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07b86abfeabc0631ce3946d8f917ba0c794a6eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09aa40b6e0e768a04d650302e1879dced6b7666e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b1981a9fcc24a445de15141390d3e46da0e425c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e6934bb14739a318571eca99aae4949262916fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1120ea466b51e86be7cacc0ed5b0d7021eb17fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x125b367c16c5858f11e12948404f7a1371a0fda3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14984137855729dcbd65e7ac561ff9a8973e4dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a44b05f40d5b2c731635c56e41f19f833ae8056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cd98c9d4e570d138aed4269da6ffb821a56fca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dbbf25286e9bd42bff4d4914c60b7559f8a7be8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f7e86e15f5098ba6c0b59f1792af22167d01728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f96861fefa1065a5a96f20deb6d8dc3ff48f7f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2258611fa7a401a2ae777233c5a6141f24bd6ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22eec85ba6a5cd97ead4728ea1c69e1d9c6fa778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x230bbcd99eb4330219ceaeea61a02da001667894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23ae0d658ad7494363f2f56daeb51e23ef11bad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2540ad206054ba2a61bffbcf1b98e58efff70064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d246ffda43a8dcf1975a70d4c1751b4ff17a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2946399b2cf1ec41a1890d81969293de59e9c855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x298fa9a644db4918af163327c8a585010161cda2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a85e64dd7f6b685213814254157f166aa791009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d2ed89f15d6f1dd95d46ebd2b9163545bd4c5f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2efa125b4fcd5b082a4233ba55b53feb2fb4ff33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3161cb01a80465ac1caf8166fd93e813c4858923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33a28a3aae95670e40126ad673644910e40e0873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33b9034f1fc2e7ec07981ea559265687441d69c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34b861c07cb154a17611b589f77e18892b05725b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ee830c46ab563a0b07674f374c3b1fe392325f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x365dc37679f21b3ef629158ca962f05bac7f0236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3691daed64a285719128e85b8d87ae6b65259062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37a1d3bc3b0f3f3cdd800e80cc2fc8021d679360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37e9259507e6dd53d87e7702c11f9a6117bc1ed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3842392159fc2bfc78604b2b73840319bf496249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38cdb1a8207264c1a07c42c43a4c3ed4bfab7cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x393b32a46918ad530b4c0f0f860983d0d317081c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x399f85586c34f1333827d2e738040cd67d607caa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b57d6ea1a96c9968ded2624045450974759324a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d48636f36be9cb6da0465010d7a6aa4c0707b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e0053d211b501732e999d6399b7e79610f7550b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ea4d0467c976e9877adb96869fdeb0551fd0930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40077493e3b0dacd2efd27488c76fa9f836918d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x409681849ba8757e505fc84babe128dc9fcb1b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41255f463796e0852982783666751694bb50ae44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x427e23456ca32c891e18384a2e19395cbd41665b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4656b1c9055f21baf2f5f3e743f43649d95a4198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47b161ed66ab28876e44e284f5b112c332c0f103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x485218ff9c55f476f07b8d6004feeae3a1801f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x489a36e43aba883b60e5a6cc43d05738479e7589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4994efc62101a9e3f885d872514c2dc7b3235849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a591241e04dbf69c8cecd5db447c444c5594bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dee0cbd6e3c85f010f68daecafb18a0d7e37a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eff530fb6e2a315b15fe2b8c3aba1e1dac8430e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x509ca1f2f314f39490cf367c3785f7cf51e8d2e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52e1fc9056f5fad07f4f6a0ce36fd7d3c6abd2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53ed4c1bac6ad77c482d9240560a5ef3e4dc4e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54945180db7943c0ed0fee7edab2bd24620256bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55600765a721faf0812d424463849d4649457578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55749e507c4e7a6c7b724b71245e0c0a3813fb20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5665f1f7ed2dcad5dc4cc9b41ca90bae9dee1a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58fd0ae1550ec7f52b2c3fb2f15f9c933e438275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a12796f7e7ebbbc8a402667d266d2e65a814042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5abe7da3c4110ca235c8a72de0661b8b3154b54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5afaca2d5d46ea64649f997f7df24fae13c1dbae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bce0221f42bafa3a7257403b7ae0c59ee331ef6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391477 | `0x5efc9d10e42fb517456f4ac41eb5e2ebe42c8918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f7fe06978c417ca2b8ee6d08de3abd0ad9e4327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61375b8a29a5ab6f6042539b870a91e24cbfa263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657eac5dc9e0dae2e949391377708acb896b2999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65e59431334da6d2ec5a92d608f9ef69d2e6761f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66935049d05c80e0a99d3496c1e6651f36518a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x671ea0446a458b9cb0833b990b426e372f444b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x672fb1c0f35dbd2074742765d23d18b80cbaaf22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67d4e4031efc2288df1e257ca2d5c596d8bd86ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6807685983153d1adadc23018ce9bbeea7e94033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680a7937c59b19e2d38b86ef47e9c2e415043ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x682c9ee10e1f4bb820758f662be0851d05150024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x684edc66b968f85232d603af4654ade7fb7141a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68cd7bb44bec8fdef7f406c5bcb1f740d1d99d94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6921c63fcf9796c9733690804e116be3520ba468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6991905e8594adcbec2105efdb1f992f34afc6d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ba40a27b2231663a2f1b56de0e4de6bfdb571b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e3873408b4814b2da53d46cb7c4a9ea322e778e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e3f6e06a0134c9066f3a2d51311dadd708b0318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708de6fa67da1ce1d53d14fc3c29fba104b0a1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71815488921dc09eb32dbe2c59a6f32fd5b7aab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x727368aaa4f866db2e47bed9dbce50e54e7331f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72ccfec623b8617eac90607575d2fbb6547ad4f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7310236fa541f5032f61b6c9b129bae6ca3a2d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7311a915c2762dc7c6e531c1223756a843089837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x732c5bacfed254cc2d9cac32c16fd420937f8042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x742a9f5cfbac603a1890616a090895d2f3a0f0b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7464426872bd6d20f6d523ff9ea6c1be550356b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391478 | `0x74a09653a083691711cf8215a6ab074bb4e99ef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a6a6a72f3d8c7ba23d114d6f2ba48dafbb82ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x768ba6aab8b0531f66b517b988fe6aafc9892f1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391479 | `0x77b1183e730275f6a8024ce53d54bcc12b368f60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77b61eaf914fcffd731c55bd4888b2a9a244dd3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x783e71e3019ae02b127764100a270ac7bc940050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78524beeac12368e600457478738c233f436e9f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78629734f984f835c3d28d5d98078a9213a5b4a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a6bbd68457fea0f88766538c75cdde97336a173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e07ba87699d6b58244d5fc4cd698bbf955cb4c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ea4d76d5993645a4c19436348498f006c3dfc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f38db25b26dd6725a6c7e819198ee8a9238bcf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe7e9cc0f274d2435ad5d56d5fa73e47f6a23d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80ae30dbe22658a55fecb56f2104a48ad831f26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81f6e9914136da1a1d3b1efd14f7e0761c3d4cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x830dd7d2bd8a8c80e7c608a7d90f5638516ad3ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834fd73e2d5a1937b7eb2d3e57de87b4bb95545a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8361c050179c8708b6e713830a58cba3c502382b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x837a97250a1495bec88cf638655bfbd1ab9e3f59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391480 | `0x858646372cc42e1a627fce94aa7a7033e7cf075a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85c211be9d3c8933eeeaa2f13d4f5970c76bf39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86a72256932d32afbcd841fce2e9e5534c6699d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87eae42e475b28b9b7ee8027a0f2b7623fda564c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b2b3aef53f357bdb0d69ff30a86c2f0532ece1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b9566ada63b64d1e1dcf1418b43fd1433b72444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d7e559dda38184573f6fae13a4f2662482ff7b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8de0723b72e8f1a61469b87173dac49d42f52e80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e70efc8f2a7b08193ec4e5295849c97f2a84a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e78df123d4e124d2cf2d247b8ad38e24f771476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f96d3b21f775b634ff9053eba2a8cb71110037d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9106e9926fb9d772318a7f44c1dcd9fdd9d44cfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9115ac0dec6c3f6e0b700d166ff79c5154dc6fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91625601e2bbbeb7171c40c79fadbcfbff6a1982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92d8b1051df2f37e46d23db99b49db889ed3bab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92fb062a7d0c104bf9e8b230b296657f55c31aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93037f30ae3d40d1e8c20c2ab431d56330e94e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x938f1b481c8b34435d5177ba077981edb44660ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939d71396d37f8dc93e5c04e2c8c1592cea232c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93b86811153f188ecc2c9898c4a1ed804f4126aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93c4b944d05dfe6df7645a86cd2206016c51564d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94eb8af1bdfaa82fd50c34d34c4bca2efd8c79bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95306a1e00f77bbb00c67a24f0080cea786dc24c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9706128269f3476a1bd1a511c75bea75422a1edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x993a520a42fde207876c4e30e269bf91a8e2d755` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391481 | `0x9bce21489a7a85ed475c9e9d0dc94b4e6a1aebf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bd289b14dd6e0782af82eeb3fcfeed4354cda2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9efc12575c54b6d3db2bd11f4d3cdf4d1225b651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f8f8b50fe12d1da5f4d4db6ed9d684618a10251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa119f4e78d24c3905f0942fd229f07afe0af8af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa17424a0d9fab54b5cc04de1ed5c8d944a420033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2e92c963e7a2243841f366e95bd45be90e38d59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3e6849784b029e219c8247928a8b7a674b345f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa56ecec4772bbe7f533710497ea735605612e03f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa70f9e9ec121bd270931a2dd43dbc139518c9246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9f07bdbbb4c0c79d06363df4013d8504f5b0b7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab23463e3f7098488ef1a299dbd377c027f8e0c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac1d13f58967deca7938f4d701a46ce351b8e0b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac681f782578907507ca5421a37dbc82d20466f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad99fb3242e3708c7071c76d4c519c4f76f78de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadb78dde07e745f36366b76dfa6f1f9928d65f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae0121b319cef804be67d269ec3e228d031053ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae8595a426a79e5b866ab7e90b3c85c14751e45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafdeb1c402f14eda4c54d51724438088bd678cb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08ed234b6854f8fed3b7d88646cbf91adee3722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0df8d1792d72e1e8e8f5f2a45d2e87da64a591a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb155a41125abdf68843de1cbd6cb5907cc579022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ffff14ba611be0dc673439eac17e8f688eaa75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb370a0bd64daf1c6b04eaf01c1dedf7c6bce30f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4a91430876e27b7c4c43d3d10b1df4b5745d50e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4df15cb8834219123ff539b79a055a0bd9c880c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb668bfd958307246e55888024e0e26e302d17a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8843223a711074cc4781b9b7d5385415b3209cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb994e82c56f5af3c22e9a2f946a7f7a8a649bdad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9ebb6221c760c51dc43f1a4f2daf69f964ff86a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba8efd0b58b93e49e120db8cf5578f6c43c3614d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaacd5f849024dcc80520baa952f11adfc59f9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaf5f3a05bd7af6f3a0bba207803bf77e2657c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb05c7c0fec8dabf45c945d5eaf8312ea16dfe9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbb685d609b6a0fbc2f6647de51fca1f2d02d30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbf4dca796f1215fa366acb477b0431c54319f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd4937cb082470e6d7a6d9eaa0328690296352bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe6e7ec627c42f2f1eb1b49f908793ba5db30ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeb5e68dfda500b9acc5e63679a5be0903082f4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391482 | `0xbf5495efe5db9ce00f80364c8b423567e58d2110` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391483 | `0xc1036d6bba2fe24c65823110b348ee80d3386acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1d304a25d8a0e9053b1cdd2345e5730520c6ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc23535d7f3634634a1e2cf101863db64a7054410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2473b6e386787a04089a98e377ec577b36bf016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3217aebf6e2e1c38cf280d726275f5381f529e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc33755a8f08255c58a283cd35dfd56cfd0f76096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5f67ff7ffaf0064f735c9ab5f5f9834dac648a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc683e8f6de4418733ea082138d9e15a1b09eee25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca3301beaf9dff3bb7903c2fae58bc999877e285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce337d0acc1d5aec58cdf9448b0dc81371778f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4882e2ba1bc6218a58422aab1fcf0ee193e607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce62dd0c4e6094d53089e13740b8ec3c409b41e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcea557ba771e957bf7e6ae5c18b3cef265920724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceea4f26924f2cf55f59a560d6f323241728019a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd02cefa754e4c407977b88d6c5de8e9d8dfe3d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0cd1150b8158ad5d632dbf48162a46191f2bbf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2c4de1bdb4a467a2f7521a90abc89a10171859c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd398b0ad474a11c91803b7834f97393510445833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd463fee2e54f420ed8c717a7349973b11a148601` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391484 | `0xd4fcde9bb1d746dd7e5463b01dd819ee06af25db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5b3be349ed0b7c82dbd9271ce3739a381fc7aa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd66548254ad9ead27983ccda3a9f68486801d789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7a8f21d94f8876eaa09204ff83b75a7bccde5b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd85869e1181b6736a7960c6e9ed50f4fdaaf6d60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb140c3de4142e1be09912110aa2621b80b12b7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbd0609c918154c1fabda5ee74d8e0aef95eea9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc5a2fdc997897646f4f602826a8691e7b6eec1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddff2552aefb3ce904d44757788edf25505da18e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xded567fc2b7a1235084fc615873f11f520c817a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7f689879d3567cb7f4c4d6c5f613f70528cdee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfda04f980be6a64e3607c95ca26012ab9aa46d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3c618b2155f0892252bd8bc14b0c575b1e11800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4a7620b22728900f9df8492e5d6d30d989e3699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5219cf568d366ae4b96efb04d826e6f2e72daa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe564a0541dd06755cc67cab5edad1da152a2e438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe73bf2b3f2a2ee03dd5c9d789a43839b4a3eb0a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9fb95eeae678d6619bbff5a6915d5c8e4eddc0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed62815f74cf460245c2069209a722cda3513cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed64c2c8aab9f7a1628dd39ae35f26905bdae94e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed8a6789624eec00f93fd371cf611515bd2efaf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedbc96e7ea36bbf76229763e94f82ba1323b7cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeada1f6061e30bb1501319bbffb44fdf7037ca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef31c292801f24f16479dd83197f1e6aebb8d6d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf206406dc547b3ed138063eab4631b2e1766dbcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391485 | `0xf25484650484de3d554fb0b7125e7696efa4ab99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2f305d14dcd8aaef887e0428b3c9534795d0d60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf39d85893eed84339b3c0b724d46ca70f12de5e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4cf6a76ac38ffbf40b012db63f36ac4f0212c51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4e1b921088df33f3db614447e9334da832771cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf50c7b13eb5567ebe079120745ab1200ef33359e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391486 | `0xf757c9804cf2ee8d8ed64e0a8936293fe43a7252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf821a5cff2cdd014c6e6bbb8e05b81c3d7e98003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf97e97649da958d290e84e6d571c32f4b7f475e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9e12d58756e52ecfb7c8086faa2711965218806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaea8e2890065609a959549d143395e39dd9ab40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbc3da631779ffd435f82452fbc7382b646266d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd17b3b0b9a5a5ae67c92496a33e88e3d4a76229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bd739c88cb90f88264488b914b6a1398840d426` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391494 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34a8bcbbbb6265435fb5a44e71d67c899ccc67f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ea4d0467c976e9877adb96869fdeb0551fd0930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47b161ed66ab28876e44e284f5b112c332c0f103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5665f1f7ed2dcad5dc4cc9b41ca90bae9dee1a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fa6e50807fbb89695dd7c2d163fe23e93e17699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaacd5f849024dcc80520baa952f11adfc59f9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8ef44a9271121e1908c0a8106f460c4071ff9ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391495 | `0xf25484650484de3d554fb0b7125e7696efa4ab99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc67503ab4df366c19858a13c3f8a68781c64dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfde1366f26cc3621d944afbc96177a90f2849d26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-391488 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-391487 | `0x6dcfbf4729890043dfd34a93a2694e5303ba2703` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | megaeth | unit-391493 | `0x09601a65e7de7bc8a19813d263dd9e98bfdc3c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1120ea466b51e86be7cacc0ed5b0d7021eb17fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14984137855729dcbd65e7ac561ff9a8973e4dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x174a0ed7c1989fa693b2cf93c5162e07d9478efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1bd739c88cb90f88264488b914b6a1398840d426` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20181331731e535eaaf3b4efad4b5b67b574edd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21e4bd82f889cb1b9353ce12f4896b8dcb7495fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391500 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24454351151a02fb0b0cc409fdc9fce378cb5f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2540ad206054ba2a61bffbcf1b98e58efff70064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2946399b2cf1ec41a1890d81969293de59e9c855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a3dfa75fa27d9471a03f6664dffa02d5278fd26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e68e7d1de6ce7163ac82eabc78f76df5be071ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3103088200e4ad0d96cd39ccefeb1be18453851c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x322cd3a0b320fef4b95c1cd341fa0b89a6126e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34a8bcbbbb6265435fb5a44e71d67c899ccc67f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a7cf1aa50349edf55a141e127c37aea5a7d8583` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ea4d0467c976e9877adb96869fdeb0551fd0930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f2c0265885cce394be64027b9b5cea5854dd3cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x407f5e36f48756b97ab59055a79e1a8f0d6f736d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4bad361ef4983eee2ec9ad6bea842d230975a879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c17f33ab31211673ac14407a517599d90bc2b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4d0056ec1ec0f4e64bfe021c4e68e5fb7126bfb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4dee0cbd6e3c85f010f68daecafb18a0d7e37a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x50d89a7f8ee9936a56e60bb2c0a395547c6409c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5247ecbf210f289c244813e89212bc3aed75aac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x54b96b2d11c9d1a71a303d6272abb28eb5b31276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x55d8aec9d222475f894681fc7f3ed832ec421215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5abe7da3c4110ca235c8a72de0661b8b3154b54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c5baba4110ae5157373844dc04e33829d63cda1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x72a490894ca6b1c14690472997a5f51d1c1dd0b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x766a4df76cb091c41de22f75b6bd6733fb730357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78094f30ba13e7831049fb37f62d309750aebe5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b5883e396fbe2a00f93951f3641039e62cd2dad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ea4d76d5993645a4c19436348498f006c3dfc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x81f6e9914136da1a1d3b1efd14f7e0761c3d4cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x837a97250a1495bec88cf638655bfbd1ab9e3f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x85a545ac0fc0be860c17365048cb82822fc49595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86bed1d2a6064e1b2ac5ea2eb69356cdf93795b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87eae42e475b28b9b7ee8027a0f2b7623fda564c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fd3e3bb8f238556dffefbd95570c447d1580cdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90efd9bf8cf6e2a5d6d324bcd8449c7cd57ea275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91ad2369e77863022ae4ea9f969ec3a823564d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x926f655ceea376db4db00e880fb6ae13424078c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x991672cde926a42125657a7f3386e22f67edd88b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9efc12575c54b6d3db2bd11f4d3cdf4d1225b651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa034348d2e6dab0a9fe0cd5a6749acf4f1df94a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0c6a0e7ca3ff33613fbaf4f344dcdc24e60e6a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa87c18c9865e47f507e0c739d16c336ad764fd95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa6af92935aa658a5fa91714a166694a5d028a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb3bcc9e0017c4641b49ad9fbdef780b7d5cb7741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4a91430876e27b7c4c43d3d10b1df4b5745d50e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbaacd5f849024dcc80520baa952f11adfc59f9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbbb685d609b6a0fbc2f6647de51fca1f2d02d30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd4b7301faad79f43fb6b2b398d3f951014ac17f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc33755a8f08255c58a283cd35dfd56cfd0f76096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc6c60d5b4dc457c5e34510ac394975a8b52d5faf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1456200ff00975eca08f2f1f6da103468d9a790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd438e914a6b4fc6f952ddea41f679ab77229be7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd527dc6c473b23a8ab2843de5a247e65a0f577df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6a2bb3ba2f5a45653b16de0e695669c71213404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd89454e6dbd4a91cd687f8856509499c0a2c9935` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdaf6399babf9e137b4532b93f335cb2440b82708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb140c3de4142e1be09912110aa2621b80b12b7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb33c25f8a2ce24e6b2543925fbef415c149d191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe40d062d5ed53014331272566587aac29cac75bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe518dcaf8fb18fd2ad73da8e016f09359f36b193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe8ef44a9271121e1908c0a8106f460c4071ff9ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391501 | `0xf25484650484de3d554fb0b7125e7696efa4ab99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4910c57a7dc6ba55dbb6c3a7d2b460e9b9f302b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391502 | `0xf757c9804cf2ee8d8ed64e0a8936293fe43a7252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa1ec83753ff95e4b224c198be3701d3d1f817df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfde1366f26cc3621d944afbc96177a90f2849d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x125b367c16c5858f11e12948404f7a1371a0fda3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1bd739c88cb90f88264488b914b6a1398840d426` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-391489 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x34a8bcbbbb6265435fb5a44e71d67c899ccc67f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x47b161ed66ab28876e44e284f5b112c332c0f103` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-391490 | `0x4d7572040b84b41a6aa2efe4a93efff182388f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9efc12575c54b6d3db2bd11f4d3cdf4d1225b651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9fa6e50807fbb89695dd7c2d163fe23e93e17699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xbaacd5f849024dcc80520baa952f11adfc59f9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xc5f67ff7ffaf0064f735c9ab5f5f9834dac648a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf25484650484de3d554fb0b7125e7696efa4ab99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xfde1366f26cc3621d944afbc96177a90f2849d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0683c3cc018fb76874fdcc8620d15c4e467e34ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c1b9b3da7345f6fd5c9d8ecf7464b45e4a80f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x125b367c16c5858f11e12948404f7a1371a0fda3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14984137855729dcbd65e7ac561ff9a8973e4dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bd739c88cb90f88264488b914b6a1398840d426` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391491 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34a8bcbbbb6265435fb5a44e71d67c899ccc67f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ea4d0467c976e9877adb96869fdeb0551fd0930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47b161ed66ab28876e44e284f5b112c332c0f103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4807e102fe87d8d8d16691d38e41e3aec5cded62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4dee0cbd6e3c85f010f68daecafb18a0d7e37a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5665f1f7ed2dcad5dc4cc9b41ca90bae9dee1a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5eafb1d4b5bdfafe81715eebcc7713e418c80e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5efc9d10e42fb517456f4ac41eb5e2ebe42c8918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86bed1d2a6064e1b2ac5ea2eb69356cdf93795b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e70efc8f2a7b08193ec4e5295849c97f2a84a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9fa6e50807fbb89695dd7c2d163fe23e93e17699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbaacd5f849024dcc80520baa952f11adfc59f9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb05c7c0fec8dabf45c945d5eaf8312ea16dfe9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5219cf568d366ae4b96efb04d826e6f2e72daa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8ef44a9271121e1908c0a8106f460c4071ff9ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391492 | `0xf25484650484de3d554fb0b7125e7696efa4ab99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc67503ab4df366c19858a13c3f8a68781c64dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfde1366f26cc3621d944afbc96177a90f2849d26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-391496 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-391497 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2efa125b4fcd5b082a4233ba55b53feb2fb4ff33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x34a8bcbbbb6265435fb5a44e71d67c899ccc67f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3bedea15ab20d75aa858d42771f3ec09638b2cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3ea4d0467c976e9877adb96869fdeb0551fd0930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x41255f463796e0852982783666751694bb50ae44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x47b161ed66ab28876e44e284f5b112c332c0f103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4d0056ec1ec0f4e64bfe021c4e68e5fb7126bfb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4dee0cbd6e3c85f010f68daecafb18a0d7e37a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5665f1f7ed2dcad5dc4cc9b41ca90bae9dee1a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5efc9d10e42fb517456f4ac41eb5e2ebe42c8918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x657eac5dc9e0dae2e949391377708acb896b2999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6ba40a27b2231663a2f1b56de0e4de6bfdb571b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x727368aaa4f866db2e47bed9dbce50e54e7331f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x766a4df76cb091c41de22f75b6bd6733fb730357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x81f6e9914136da1a1d3b1efd14f7e0761c3d4cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9fa6e50807fbb89695dd7c2d163fe23e93e17699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xac1791e5d600563aa5e9bd537f7749d7a7c3775f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbaacd5f849024dcc80520baa952f11adfc59f9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbbb685d609b6a0fbc2f6647de51fca1f2d02d30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc5f67ff7ffaf0064f735c9ab5f5f9834dac648a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe518dcaf8fb18fd2ad73da8e016f09359f36b193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf25484650484de3d554fb0b7125e7696efa4ab99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-391498 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 373
- Live contracts: 0
- Unknown liveness contracts: 373
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=373

Showing first 200 of 373 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0683c3cc018fb76874fdcc8620d15c4e467e34ca` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0c1b9b3da7345f6fd5c9d8ecf7464b45e4a80f1d` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x125b367c16c5858f11e12948404f7a1371a0fda3` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x14984137855729dcbd65e7ac561ff9a8973e4dea` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1bd739c88cb90f88264488b914b6a1398840d426` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x34a8bcbbbb6265435fb5a44e71d67c899ccc67f6` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3ea4d0467c976e9877adb96869fdeb0551fd0930` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x47b161ed66ab28876e44e284f5b112c332c0f103` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4807e102fe87d8d8d16691d38e41e3aec5cded62` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4dee0cbd6e3c85f010f68daecafb18a0d7e37a04` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5665f1f7ed2dcad5dc4cc9b41ca90bae9dee1a3a` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5eafb1d4b5bdfafe81715eebcc7713e418c80e78` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5efc9d10e42fb517456f4ac41eb5e2ebe42c8918` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x766a4df76cb091c41de22f75b6bd6733fb730357` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86bed1d2a6064e1b2ac5ea2eb69356cdf93795b8` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8e70efc8f2a7b08193ec4e5295849c97f2a84a73` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9fa6e50807fbb89695dd7c2d163fe23e93e17699` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbaacd5f849024dcc80520baa952f11adfc59f9d0` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbb05c7c0fec8dabf45c945d5eaf8312ea16dfe9c` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe5219cf568d366ae4b96efb04d826e6f2e72daa0` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe8ef44a9271121e1908c0a8106f460c4071ff9ef` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfc67503ab4df366c19858a13c3f8a68781c64dd5` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfde1366f26cc3621d944afbc96177a90f2849d26` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x1120ea466b51e86be7cacc0ed5b0d7021eb17fb4` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x14984137855729dcbd65e7ac561ff9a8973e4dea` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x174a0ed7c1989fa693b2cf93c5162e07d9478efe` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x1bd739c88cb90f88264488b914b6a1398840d426` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x20181331731e535eaaf3b4efad4b5b67b574edd5` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x21e4bd82f889cb1b9353ce12f4896b8dcb7495fb` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x24454351151a02fb0b0cc409fdc9fce378cb5f32` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x2540ad206054ba2a61bffbcf1b98e58efff70064` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x2946399b2cf1ec41a1890d81969293de59e9c855` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x2a3dfa75fa27d9471a03f6664dffa02d5278fd26` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x2e68e7d1de6ce7163ac82eabc78f76df5be071ed` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x3103088200e4ad0d96cd39ccefeb1be18453851c` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x322cd3a0b320fef4b95c1cd341fa0b89a6126e29` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x34a8bcbbbb6265435fb5a44e71d67c899ccc67f6` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x3a7cf1aa50349edf55a141e127c37aea5a7d8583` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x3ea4d0467c976e9877adb96869fdeb0551fd0930` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x3f2c0265885cce394be64027b9b5cea5854dd3cd` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x407f5e36f48756b97ab59055a79e1a8f0d6f736d` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x4bad361ef4983eee2ec9ad6bea842d230975a879` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x4c17f33ab31211673ac14407a517599d90bc2b55` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x4d0056ec1ec0f4e64bfe021c4e68e5fb7126bfb1` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x4dee0cbd6e3c85f010f68daecafb18a0d7e37a04` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x50d89a7f8ee9936a56e60bb2c0a395547c6409c1` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x5247ecbf210f289c244813e89212bc3aed75aac1` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x54b96b2d11c9d1a71a303d6272abb28eb5b31276` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x55d8aec9d222475f894681fc7f3ed832ec421215` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x5abe7da3c4110ca235c8a72de0661b8b3154b54c` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x6c5baba4110ae5157373844dc04e33829d63cda1` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x72a490894ca6b1c14690472997a5f51d1c1dd0b0` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x766a4df76cb091c41de22f75b6bd6733fb730357` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x78094f30ba13e7831049fb37f62d309750aebe5f` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x7b5883e396fbe2a00f93951f3641039e62cd2dad` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x7ea4d76d5993645a4c19436348498f006c3dfc55` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x81f6e9914136da1a1d3b1efd14f7e0761c3d4cc7` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x837a97250a1495bec88cf638655bfbd1ab9e3f59` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x85a545ac0fc0be860c17365048cb82822fc49595` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x86bed1d2a6064e1b2ac5ea2eb69356cdf93795b8` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x87eae42e475b28b9b7ee8027a0f2b7623fda564c` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x8fd3e3bb8f238556dffefbd95570c447d1580cdc` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x90efd9bf8cf6e2a5d6d324bcd8449c7cd57ea275` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x91ad2369e77863022ae4ea9f969ec3a823564d75` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x926f655ceea376db4db00e880fb6ae13424078c5` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x991672cde926a42125657a7f3386e22f67edd88b` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0x9efc12575c54b6d3db2bd11f4d3cdf4d1225b651` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xa034348d2e6dab0a9fe0cd5a6749acf4f1df94a4` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xa0c6a0e7ca3ff33613fbaf4f344dcdc24e60e6a8` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xa87c18c9865e47f507e0c739d16c336ad764fd95` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xaa6af92935aa658a5fa91714a166694a5d028a74` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xb3bcc9e0017c4641b49ad9fbdef780b7d5cb7741` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xb446e5867d125951d66a1e0bf15b708119a12f3d` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xb4a91430876e27b7c4c43d3d10b1df4b5745d50e` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xbaacd5f849024dcc80520baa952f11adfc59f9d0` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xbbb685d609b6a0fbc2f6647de51fca1f2d02d30e` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xbd4b7301faad79f43fb6b2b398d3f951014ac17f` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xc33755a8f08255c58a283cd35dfd56cfd0f76096` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xc6c60d5b4dc457c5e34510ac394975a8b52d5faf` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xd1456200ff00975eca08f2f1f6da103468d9a790` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xd438e914a6b4fc6f952ddea41f679ab77229be7b` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xd527dc6c473b23a8ab2843de5a247e65a0f577df` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xd6a2bb3ba2f5a45653b16de0e695669c71213404` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xd89454e6dbd4a91cd687f8856509499c0a2c9935` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xdaf6399babf9e137b4532b93f335cb2440b82708` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xdb140c3de4142e1be09912110aa2621b80b12b7c` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xdb33c25f8a2ce24e6b2543925fbef415c149d191` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xe40d062d5ed53014331272566587aac29cac75bd` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xe518dcaf8fb18fd2ad73da8e016f09359f36b193` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xe8ef44a9271121e1908c0a8106f460c4071ff9ef` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xf4910c57a7dc6ba55dbb6c3a7d2b460e9b9f302b` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xfa1ec83753ff95e4b224c198be3701d3d1f817df` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| base | unverified unclassified | UnnamedContract<br>`0xfde1366f26cc3621d944afbc96177a90f2849d26` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1bd739c88cb90f88264488b914b6a1398840d426` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x34a8bcbbbb6265435fb5a44e71d67c899ccc67f6` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3ea4d0467c976e9877adb96869fdeb0551fd0930` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47b161ed66ab28876e44e284f5b112c332c0f103` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5665f1f7ed2dcad5dc4cc9b41ca90bae9dee1a3a` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9fa6e50807fbb89695dd7c2d163fe23e93e17699` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbaacd5f849024dcc80520baa952f11adfc59f9d0` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe8ef44a9271121e1908c0a8106f460c4071ff9ef` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfc67503ab4df366c19858a13c3f8a68781c64dd5` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfde1366f26cc3621d944afbc96177a90f2849d26` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb370a0bd64daf1c6b04eaf01c1dedf7c6bce30f7` | non_address_book | unknown | unknown | unverified | n/a | `0x1127fc3d43e6d08eb31b7568f8853e1e8c07cdac` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba8efd0b58b93e49e120db8cf5578f6c43c3614d` | non_address_book | unknown | unknown | unverified | n/a | `0x1127fc3d43e6d08eb31b7568f8853e1e8c07cdac` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeeada1f6061e30bb1501319bbffb44fdf7037ca8` | non_address_book | unknown | unknown | unverified | n/a | `0x1127fc3d43e6d08eb31b7568f8853e1e8c07cdac` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a44b05f40d5b2c731635c56e41f19f833ae8056` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f96861fefa1065a5a96f20deb6d8dc3ff48f7f9` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34ee830c46ab563a0b07674f374c3b1fe392325f` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38ef9806fd786294e92189561543a0bfbfe993af` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54945180db7943c0ed0fee7edab2bd24620256bc` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68cd7bb44bec8fdef7f406c5bcb1f740d1d99d94` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7fe7e9cc0f274d2435ad5d56d5fa73e47f6a23d8` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b9566ada63b64d1e1dcf1418b43fd1433b72444` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x93c4b944d05dfe6df7645a86cd2206016c51564d` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab23463e3f7098488ef1a299dbd377c027f8e0c1` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb668bfd958307246e55888024e0e26e302d17a75` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc683e8f6de4418733ea082138d9e15a1b09eee25` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdfda04f980be6a64e3607c95ca26012ab9aa46d3` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef31c292801f24f16479dd83197f1e6aebb8d6d8` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf50c7b13eb5567ebe079120745ab1200ef33359e` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf97e97649da958d290e84e6d571c32f4b7f475e4` | non_address_book | unknown | unknown | unverified | n/a | `0x4ef221f76f046f3cfa3f739c9dcd368d59df99da` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1120ea466b51e86be7cacc0ed5b0d7021eb17fb4` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x125b367c16c5858f11e12948404f7a1371a0fda3` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x14984137855729dcbd65e7ac561ff9a8973e4dea` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20181331731e535eaaf3b4efad4b5b67b574edd5` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2540ad206054ba2a61bffbcf1b98e58efff70064` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2946399b2cf1ec41a1890d81969293de59e9c855` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2efa125b4fcd5b082a4233ba55b53feb2fb4ff33` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33a28a3aae95670e40126ad673644910e40e0873` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34b861c07cb154a17611b589f77e18892b05725b` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x365dc37679f21b3ef629158ca962f05bac7f0236` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e0053d211b501732e999d6399b7e79610f7550b` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ea4d0467c976e9877adb96869fdeb0551fd0930` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41255f463796e0852982783666751694bb50ae44` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x47b161ed66ab28876e44e284f5b112c332c0f103` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4dee0cbd6e3c85f010f68daecafb18a0d7e37a04` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x532d3ca61a4cd0c7993f658a47c1e30481bfbe87` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x55749e507c4e7a6c7b724b71245e0c0a3813fb20` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5665f1f7ed2dcad5dc4cc9b41ca90bae9dee1a3a` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5abe7da3c4110ca235c8a72de0661b8b3154b54c` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x657eac5dc9e0dae2e949391377708acb896b2999` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x672fb1c0f35dbd2074742765d23d18b80cbaaf22` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x680a7937c59b19e2d38b86ef47e9c2e415043ded` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ba40a27b2231663a2f1b56de0e4de6bfdb571b2` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e3f6e06a0134c9066f3a2d51311dadd708b0318` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x727368aaa4f866db2e47bed9dbce50e54e7331f5` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ea4d76d5993645a4c19436348498f006c3dfc55` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81f6e9914136da1a1d3b1efd14f7e0761c3d4cc7` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x837a97250a1495bec88cf638655bfbd1ab9e3f59` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87eae42e475b28b9b7ee8027a0f2b7623fda564c` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e70efc8f2a7b08193ec4e5295849c97f2a84a73` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f96d3b21f775b634ff9053eba2a8cb71110037d` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x93037f30ae3d40d1e8c20c2ab431d56330e94e93` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9efc12575c54b6d3db2bd11f4d3cdf4d1225b651` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4a91430876e27b7c4c43d3d10b1df4b5745d50e` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb994e82c56f5af3c22e9a2f946a7f7a8a649bdad` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbaacd5f849024dcc80520baa952f11adfc59f9d0` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb05c7c0fec8dabf45c945d5eaf8312ea16dfe9c` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbbb685d609b6a0fbc2f6647de51fca1f2d02d30e` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc33755a8f08255c58a283cd35dfd56cfd0f76096` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc5f67ff7ffaf0064f735c9ab5f5f9834dac648a3` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb140c3de4142e1be09912110aa2621b80b12b7c` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5219cf568d366ae4b96efb04d826e6f2e72daa0` | non_address_book | unknown | unknown | unverified | n/a | `0xadef586efb3287da4d7d1cbe15f12e0be69e0df0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0795aa14ee48e4ae85d76635d464c021483f25b9` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07b86abfeabc0631ce3946d8f917ba0c794a6eb5` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09aa40b6e0e768a04d650302e1879dced6b7666e` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b1981a9fcc24a445de15141390d3e46da0e425c` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e6934bb14739a318571eca99aae4949262916fd` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1cd98c9d4e570d138aed4269da6ffb821a56fca2` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1dbbf25286e9bd42bff4d4914c60b7559f8a7be8` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f7e86e15f5098ba6c0b59f1792af22167d01728` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2258611fa7a401a2ae777233c5a6141f24bd6ea2` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22eec85ba6a5cd97ead4728ea1c69e1d9c6fa778` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x230bbcd99eb4330219ceaeea61a02da001667894` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23ae0d658ad7494363f2f56daeb51e23ef11bad7` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28d246ffda43a8dcf1975a70d4c1751b4ff17a68` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x298fa9a644db4918af163327c8a585010161cda2` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a85e64dd7f6b685213814254157f166aa791009` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d2ed89f15d6f1dd95d46ebd2b9163545bd4c5f3` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3161cb01a80465ac1caf8166fd93e813c4858923` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33b9034f1fc2e7ec07981ea559265687441d69c9` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3691daed64a285719128e85b8d87ae6b65259062` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37a1d3bc3b0f3f3cdd800e80cc2fc8021d679360` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37e9259507e6dd53d87e7702c11f9a6117bc1ed1` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3842392159fc2bfc78604b2b73840319bf496249` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38cdb1a8207264c1a07c42c43a4c3ed4bfab7cea` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38f4e5e16fc6a6f50086841b94e1281183203931` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x393b32a46918ad530b4c0f0f860983d0d317081c` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x399f85586c34f1333827d2e738040cd67d607caa` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b57d6ea1a96c9968ded2624045450974759324a` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b8e86db4199df1c33cf20b8d450d5946c5002a0` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d48636f36be9cb6da0465010d7a6aa4c0707b61` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3fc017e6746ab75fe4b21a4b5a4f39850312db20` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40077493e3b0dacd2efd27488c76fa9f836918d5` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x409681849ba8757e505fc84babe128dc9fcb1b03` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x427e23456ca32c891e18384a2e19395cbd41665b` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4656b1c9055f21baf2f5f3e743f43649d95a4198` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x485218ff9c55f476f07b8d6004feeae3a1801f70` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x489a36e43aba883b60e5a6cc43d05738479e7589` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d2e57ae1a8ecc5f5487b010e1fcd60f4b84dc0` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [* Renzo Protocol Withdrawals (May 2024) - <>](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/Halborn_Renzo_Protocol_Withdrawals_Smart_Contract_Security_Assessment_Report.pdf) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | matched | 3 | 3 | 0 | 79 | high |
| [* REZ Staking (April 2024) <>](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/Halborn_Renzo_REZ_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2024-04 | stale | Direct | address | matched | 1 | 0 | 0 | 0 | high |
| [Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [* Flow Audit Report (September 2024) - <>](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/ezRVaults%20Audit.pdf) | Halborn | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [* [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br>](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/Sigma_Prime_Renzo_Restaking_Security_Assessment_Report_v2_1.pdf) | Sigma Prime | Audit | 2024-06 | stale | Direct | contract_name | matched | 3 | 3 | 0 | 20 | high |
| [* [Code4rena](https://code4rena.com/) (June 2024) - <>](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/code4rena_Audit.md) | Code4rena | Contest | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |
| [* Nethermind - Renzo Bridge (May 2025) - <> <br>](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/NM0445-FINAL_RENZO.pdf) | Nethermind | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |
| [EVM Managed Vaults.pdf](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/EVM%20Managed%20Vaults.pdf) | Unknown | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [NM0472-FINAL_RENZO_BRIDGE.pdf](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/NM0472-FINAL_RENZO_BRIDGE.pdf) | NM (likely) | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [P2 Vault Integration with Aave- PR 19 _ SSC.pdf](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/P2%20Vault%20Integration%20with%20Aave-%20PR%2019%20_%20SSC.pdf) | SSC (likely) | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Renzo_Protocol_v2_1.pdf](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/Renzo_Protocol_v2_1.pdf) | Unknown | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Superstate USCC- Vault Strategy _ SSC.pdf](https://github.com/Renzo-Protocol/contracts-public/blob/master/Audit/Superstate%20USCC-%20Vault%20Strategy%20_%20SSC.pdf) | SSC (likely) | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [A: Yes, Renzo has gone through comprehensive audits as you can see [here]().](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18072] * Renzo Protocol Withdrawals (May 2024) - <> — matched: Scope section explicitly lists all files and contracts in scope. Audit date is the end date of the engagement period (May 22, 2024).
- [18073] * REZ Staking (April 2024) <> — matched: Only one contract in scope: Renzo token at address 0x3b50805453023a91a8bf641e279401a0b23fa6f9. Audit date is the end date of engagement: April 24th, 2024.
- [18074] Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf — no match: Scope section clearly lists 12 contracts plus RewardHandler.sol (out of scope but mentioned). Audit date is end of engagement (November 29th, 2023).
- [18075] * Flow Audit Report (September 2024) - <> — no match: Scope section explicitly lists 5 contracts in scope. Audit date is the end date of engagement: September 16, 2024.
- [18076] * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> — matched: Extracted contracts from scope section listing directories and files. Also included contracts mentioned in findings and test files that are part of the audited codebase.
- [18077] * [Code4rena](https://code4rena.com/) (June 2024) - <> — no match: Extracted contract names from the scope section of the Code4Rena audit report for Renzo protocol. The report date is inferred from the URL (2024-04) and the report is likely published at the end of April 2024.
- [18078] * Nethermind - Renzo Bridge (May 2025) - <> <br> — no match: All contracts listed in the 'Audited Files' table in Section 2 are in scope. The audit date is the final report date (April 14, 2025) from the summary table.
- [18079] EVM Managed Vaults.pdf — no match: Extracted 16 contract names from the scope section (Section 7) and file paths. Audit date is the end date of the engagement: October 2nd, 2025.
- [18080] NM0472-FINAL_RENZO_BRIDGE.pdf — no match: All contracts listed in the 'Audited Files' table on page 3 are in scope. The audit date is the final report date: May 1, 2025.
- [18081] P2 Vault Integration with Aave- PR 19 _ SSC.pdf — no match: Only one contract in scope: SuperstateAaveV3LeverageStrategy. Audit date is the end date of engagement (November 27, 2025).
- [18082] Renzo_Protocol_v2_1.pdf — no match: Scope section lists repositories and PRs but does not explicitly list contract names. Contract names extracted from findings.
- [18083] Superstate USCC- Vault Strategy _ SSC.pdf — no match: Scope section mentions 'UsccDepositStrategy' and 'UsccDepositWithdrawalHelper' as the smart contracts assessed. Audit date is from the header '10.28.2025 - 10.28.2025'.
- [18084] A: Yes, Renzo has gone through comprehensive audits as you can see [here](). — no match: Scope section explicitly lists 12 contracts plus RewardHandler.sol (out-of-scope but mentioned). Audit date from engagement end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| * Renzo Protocol Withdrawals (May 2024) - <> | IEzEthToken | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | EzEthTokenStorage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | EzEthToken | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | BeaconChainProofs | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | EIP1271SignatureUtils | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | StructuredLinkedList | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | Endian | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | Merkle | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | BytesLib | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IDelegationManager | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IPauserRegistry | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | ISignatureUtils | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IEigenPodManager | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IWhitelister | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IEigenPod | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IDelayedWithdrawalRouter | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IETHPOSDeposit | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IStrategyManager | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IStrategy | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IDelegationFaucet | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IBeaconChainOracle | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | ISocketUpdater | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IPausable | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | ISlasher | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IAVSDirectory | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | RestakeManagerStorage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IxRenzoDeposit | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | xRenzoDeposit | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | RenzoOracleL2Storage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | RenzoOracleL2 | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IRenzoOracleL2 | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | xRenzoDepositStorage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | CCIPReceiver | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | ConnextReceiver | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | OptimismMintableXERC20Factory | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | OptimismMintableXERC20 | own proxy deployment | OptimismMintableXERC20 (proxy) (selected) `0x2416092f143378750bb29b79ed961ab195cceea5` — deployed 2024-03-12 18:02:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * Renzo Protocol Withdrawals (May 2024) - <> | XERC20Factory | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | XERC20Lockbox | own proxy deployment | XERC20Lockbox (proxy) (selected) `0xc8140da31e6bca19b287cc35531c2212763c2059` — deployed 2024-02-28 19:39:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * Renzo Protocol Withdrawals (May 2024) - <> | XERC20 | own proxy deployment | XERC20 (proxy) (selected) `0x2416092f143378750bb29b79ed961ab195cceea5` — deployed 2024-02-28 19:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * Renzo Protocol Withdrawals (May 2024) - <> | IOptimismMintableERC20 | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IXERC20Lockbox | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IXERC20Factory | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IXERC20 | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IxRenzoBridge | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | xRenzoBridge | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | xRenzoBridgeStorage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IXReceiver | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IWeth | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IConnext | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | LockboxAdapterBlast | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | TokenId | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | LibConnextStorage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | METHShim | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | METHShimStorage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IMethStaking | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | RenzoOracle | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | RenzoOracleStorage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IRenzoOracle | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | WBETHShim | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | WBETHShimStorage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IStakedTokenV2 | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | RewardHandlerStorage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | RewardHandler | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IRateProvider | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | BalancerRateProviderStorage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | BalancerRateProvider | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IRoleManager | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | RoleManagerStorage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | RoleManager | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | OperatorDelegator | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | OperatorDelegatorStorage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IOperatorDelegator | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | DepositQueueStorage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IDepositQueue | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | DepositQueue | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IRestakeManager | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | RestakeManager | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | Errors | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | IWithdrawQueue | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | WithdrawQueue | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | WithdrawQueueStorage | unmatched — not counted | — | listed in scope | no |
| * Renzo Protocol Withdrawals (May 2024) - <> | TimelockController | unmatched — not counted | — | listed in scope | no |
| * REZ Staking (April 2024) <> | Renzo | own contract | Renzo (selected) `0x3b50805453023a91a8bf641e279401a0b23fa6f9` — deployed 2024-04-23 17:28:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf | RestakeManager | unmatched — not counted | — | listed in scope | no |
| Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf | RestakeManagerStorage | unmatched — not counted | — | listed in scope | no |
| Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf | EzEthTokenStorage | unmatched — not counted | — | listed in scope | no |
| Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf | EzEthToken | unmatched — not counted | — | listed in scope | no |
| Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf | OperatorDelegatorStorage | unmatched — not counted | — | listed in scope | no |
| Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf | OperatorDelegator | unmatched — not counted | — | listed in scope | no |
| Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf | RenzoOracle | unmatched — not counted | — | listed in scope | no |
| Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf | RenzoOracleStorage | unmatched — not counted | — | listed in scope | no |
| Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf | RoleManager | unmatched — not counted | — | listed in scope | no |
| Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf | RoleManagerStorage | unmatched — not counted | — | listed in scope | no |
| Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf | DepositQueueStorage | unmatched — not counted | — | listed in scope | no |
| Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf | DepositQueue | unmatched — not counted | — | listed in scope | no |
| Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf | RewardHandler | unmatched — not counted | — | listed in scope | no |
| * Flow Audit Report (September 2024) - <> | EzRVaultsFactory | unmatched — not counted | — | listed in scope | no |
| * Flow Audit Report (September 2024) - <> | EzRVaultsFactoryStorage | unmatched — not counted | — | listed in scope | no |
| * Flow Audit Report (September 2024) - <> | EzRVault | unmatched — not counted | — | listed in scope | no |
| * Flow Audit Report (September 2024) - <> | EzRvaultStorage | unmatched — not counted | — | listed in scope | no |
| * Flow Audit Report (September 2024) - <> | Errors | unmatched — not counted | — | listed in scope | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | OperatorDelegator | unmatched — not counted | — | listed in scope as contracts/Delegation/ | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | DepositQueue | unmatched — not counted | — | listed in scope as contracts/Deposits/ | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | RestakeManager | unmatched — not counted | — | listed in scope as contracts/RestakeManager.sol | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | RenzoOracle | unmatched — not counted | — | listed in scope as contracts/Oracle/ | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | xRenzoDeposit | unmatched — not counted | — | listed in scope as contracts/Bridge/L2 | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | xRenzoBridge | unmatched — not counted | — | listed in scope as contracts/Bridge/L1 | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | OptimismMintableXERC20Factory | unmatched — not counted | — | listed in scope as contracts/Bridge/L2 | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | OptimismMintableXERC20 | own proxy deployment | OptimismMintableXERC20 (proxy) (selected) `0x2416092f143378750bb29b79ed961ab195cceea5` — deployed 2024-03-12 18:02:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | EzEthToken | unmatched — not counted | — | listed in scope as contracts/token/ | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | EzEthTokenStorage | unmatched — not counted | — | listed in scope as contracts/token/ | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | WithdrawQueue | unmatched — not counted | — | mentioned in findings as a contract | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | RewardHandler | unmatched — not counted | — | listed in scope as contracts/Rewards/ | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | BalancerRateProvider | unmatched — not counted | — | listed in scope as contracts/RateProvider/ | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | RenzoOracleL2 | unmatched — not counted | — | listed in scope as contracts/Oracle/ | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | RoleManager | unmatched — not counted | — | listed in scope as contracts/Permissions/ | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | METHShim | unmatched — not counted | — | test file reference | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | WBETHShim | unmatched — not counted | — | test file reference | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | XERC20 | own proxy deployment | XERC20 (proxy) (selected) `0x2416092f143378750bb29b79ed961ab195cceea5` — deployed 2024-02-28 19:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | XERC20Lockbox | own proxy deployment | XERC20Lockbox (proxy) (selected) `0xc8140da31e6bca19b287cc35531c2212763c2059` — deployed 2024-02-28 19:39:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | XERC20Factory | unmatched — not counted | — | listed in scope as contracts/token/ | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | LockboxAdapterBlast | unmatched — not counted | — | test file reference | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | ConnextReceiver | unmatched — not counted | — | listed in scope as contracts/Bridge/Connext | no |
| * [Sigma Prime ](https://sigmaprime.io/)(June 2024) - <><br> | CCIPReceiver | unmatched — not counted | — | listed in scope as contracts/Bridge/Connext | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | xRenzoDeposit | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | xRenzoBridge | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | xRenzoDepositStorage | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | xRenzoBridgeStorage | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | IRenzoDeposit | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | IRenzoBridge | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | IRenzoDepositStorage | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | IRenzoBridgeStorage | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | RenzoOracle | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | RenzoOracleL2 | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | RenzoDeposit | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | RenzoBridge | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | RenzoDepositStorage | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | RenzoBridgeStorage | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | RestakeManager | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | OperatorDelegator | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | WithdrawQueue | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | RewardHandler | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | TimelockController | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | RenzoGovernance | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | RenzoToken | unmatched — not counted | — | listed in scope | no |
| * [Code4rena](https://code4rena.com/) (June 2024) - <> | EzEthToken | unmatched — not counted | — | listed in scope | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | RestakeManagerStorage | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | IRestakeManager | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | RestakeManager | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | IEzEthToken | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | EzEthTokenStorage | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | EzEthToken | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | RenzoOracle | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | RenzoOracleStorage | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | IRenzoOracle | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | StETHShim | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | METHShim | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | METHShimStorage | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | IMethStaking | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | WBETHShim | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | WBETHShimStorage | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | IStakedTokenV2 | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | IRateProvider | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | BalancerRateProviderStorage | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | BalancerRateProvider | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | IRoleManager | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | RoleManagerStorage | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | RoleManager | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | OperatorDelegator | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | OperatorDelegatorStorage | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | IOperatorDelegator | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | OperatorDelegatorAdminLib | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | WETHUnwrapper | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | DepositQueueStorage | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | IDepositQueue | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | DepositQueue | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | Errors | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | IWithdrawQueue | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | WithdrawQueue | unmatched — not counted | — | listed in audited files table | no |
| * Nethermind - Renzo Bridge (May 2025) - <> <br> | WithdrawQueueStorage | unmatched — not counted | — | listed in audited files table | no |
| EVM Managed Vaults.pdf | LEZyVault | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | WithdrawQueue | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | LEZyVaultFactory | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | RoleManager | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | WithdrawQueueStorage | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | LEZyVaultStorage | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | ILEZyVault | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | BaseDelegateStrategy | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | IWithdrawQueue | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | LEZyVaultFactoryStorage | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | IRoleManager | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | RoleManagerStorage | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | EulerSwapEzEthDelegateStrategy | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | AaveV3DelegateStrategy | unmatched — not counted | — | listed in scope | no |
| EVM Managed Vaults.pdf | MorphoDelegateStrategy | unmatched — not counted | — | listed in scope | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | xRenzoDepositNativeBridge | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | IxRenzoDeposit | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | xRenzoDepositNativeBridgeStorage | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | RenzoOracleL2Storage | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | RenzoOracleL2 | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | IRenzoOracleL2 | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | HyperlaneSender | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | HyperlaneReceiver | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | HyperlaneReceiverStorage | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | IValueTransferBridge | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | LidoOPValueTransfer | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | EthOPValueTransfer | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | LidoArbValueTransfer | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | EthArbValueTransfer | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | xRenzoBridgeReceiver | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | IwstETH | unmatched — not counted | — | listed in scope table | no |
| NM0472-FINAL_RENZO_BRIDGE.pdf | xRenzoBridgeReceiverStorage | unmatched — not counted | — | listed in scope table | no |
| P2 Vault Integration with Aave- PR 19 _ SSC.pdf | SuperstateAaveV3LeverageStrategy | unmatched — not counted | — | Listed in scope section and throughout findings | no |
| Renzo_Protocol_v2_1.pdf | OperatorDelegator | unmatched — not counted | — | Mentioned in finding HAL-01: 'In the OperatorDelegator contract, the _recordGas function...' | no |
| Renzo_Protocol_v2_1.pdf | WithdrawQueue | unmatched — not counted | — | Mentioned in finding HAL-02: 'In the WithdrawQueue contract, the completeStETHRebalance function...' | no |
| Superstate USCC- Vault Strategy _ SSC.pdf | UsccDepositStrategy | unmatched — not counted | — | Mentioned in scope description and findings as main strategy contract | no |
| Superstate USCC- Vault Strategy _ SSC.pdf | UsccDepositWithdrawalHelper | unmatched — not counted | — | Mentioned in scope description and findings as helper contract | no |
| A: Yes, Renzo has gone through comprehensive audits as you can see [here](). | RestakeManager | unmatched — not counted | — | listed in scope | no |
| A: Yes, Renzo has gone through comprehensive audits as you can see [here](). | RestakeManagerStorage | unmatched — not counted | — | listed in scope | no |
| A: Yes, Renzo has gone through comprehensive audits as you can see [here](). | EzEthTokenStorage | unmatched — not counted | — | listed in scope | no |
| A: Yes, Renzo has gone through comprehensive audits as you can see [here](). | EzEthToken | unmatched — not counted | — | listed in scope | no |
| A: Yes, Renzo has gone through comprehensive audits as you can see [here](). | OperatorDelegatorStorage | unmatched — not counted | — | listed in scope | no |
| A: Yes, Renzo has gone through comprehensive audits as you can see [here](). | OperatorDelegator | unmatched — not counted | — | listed in scope | no |
| A: Yes, Renzo has gone through comprehensive audits as you can see [here](). | RenzoOracle | unmatched — not counted | — | listed in scope | no |
| A: Yes, Renzo has gone through comprehensive audits as you can see [here](). | RenzoOracleStorage | unmatched — not counted | — | listed in scope | no |
| A: Yes, Renzo has gone through comprehensive audits as you can see [here](). | RoleManager | unmatched — not counted | — | listed in scope | no |
| A: Yes, Renzo has gone through comprehensive audits as you can see [here](). | RoleManagerStorage | unmatched — not counted | — | listed in scope | no |
| A: Yes, Renzo has gone through comprehensive audits as you can see [here](). | DepositQueueStorage | unmatched — not counted | — | listed in scope | no |
| A: Yes, Renzo has gone through comprehensive audits as you can see [here](). | DepositQueue | unmatched — not counted | — | listed in scope | no |
| A: Yes, Renzo has gone through comprehensive audits as you can see [here](). | RewardHandler | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | `0xe65843850106421eab49dd43d19fa2d75fc19a75` | Dapp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 68 |
| upstream | 2 |
| standard_library | 18 |
| needs_review | 382 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (6 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 224 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=12, medium=1
- Match method counts: address=1, unique_name=6

Zero-match audit list:

- [18074] Halborn_Renzo_Protocol_EVM_Contracts_Smart_Contract_Security_Assessment.pdf
- [18075] * Flow Audit Report (September 2024) - <>
- [18077] * [Code4rena](https://code4rena.com/) (June 2024) - <>
- [18078] * Nethermind - Renzo Bridge (May 2025) - <> <br>
- [18079] EVM Managed Vaults.pdf
- [18080] NM0472-FINAL_RENZO_BRIDGE.pdf
- [18081] P2 Vault Integration with Aave- PR 19 _ SSC.pdf
- [18082] Renzo_Protocol_v2_1.pdf
- [18083] Superstate USCC- Vault Strategy _ SSC.pdf
- [18084] A: Yes, Renzo has gone through comprehensive audits as you can see [here]().

Fork inheritance lineage and inherited audits are included when available.
