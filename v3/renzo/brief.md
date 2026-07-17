# Agentic Audit Brief: Renzo

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 3 audit(s)
- Eligible audit results: 13 (3 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Renzo (`renzo`)
- Website: [https://app.renzoprotocol.com/restake](https://app.renzoprotocol.com/restake)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, blast, bsc, ethereum, fraxtal, ink, linea, megaeth, mode, optimism, sei
- Contract surface: 113 unique implementations (113 raw deployments)
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
- Outside the address book: 80 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 11 standard proxy/library)
- Proxy deployments represented within implementation groups: 28
- Confirmed-live implementations: 33 of 113 unique; 80 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/88
- Verified + Unaudited implementations: 84
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 113
- Raw deployments: 113
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
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x179f0063d87bb7ca4f75ca693566018ca9eb55ba` | ⚠️ Unaudited |
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
| PaymentSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x10586b9b7ff0f842913a57539f8167ce143c3011` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c1b9b3da7345f6fd5c9d8ecf7464b45e4a80f1d` | ⚠️ Unaudited |
| Receiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86bed1d2a6064e1b2ac5ea2eb69356cdf93795b8` | ⚠️ Unaudited |
| RenzoOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19cbe4d482831a087a8eef108a33422445108607` | ⚠️ Unaudited |
| RenzoOracleL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bedea15ab20d75aa858d42771f3ec09638b2cd2` | ⚠️ Unaudited |
| RestakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18ac4d26acd4c5c4fe98c9098d2e5e1e501a042a` | ⚠️ Unaudited |
| RewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x174a0ed7c1989fa693b2cf93c5162e07d9478efe` | ⚠️ Unaudited |
| RoleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x041e34f9b697c36e2ec56b8d8b4ada1769260343` | ⚠️ Unaudited |
| SentryDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02926b7b56dc41c1aa676a41eb4affc85b505b6a` | ⚠️ Unaudited |
| Slasher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd92145c07f8ed1d392c1b88017934e301cc1c3cd` | ⚠️ Unaudited |
| STETHShim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0683c3cc018fb76874fdcc8620d15c4e467e34ca` | ⚠️ Unaudited |
| StrategyBaseTVLLimits | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1bee69b7dfffa4e2d53c2a2df135c388ad25dcd2` | ⚠️ Unaudited |
| StrategyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d25eef8cfedaa47d31fe2346726de1c21e342fb` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe518dcaf8fb18fd2ad73da8e016f09359f36b193` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6db1a8c5a981d1536266d2a393c5f8ddb210eaf` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e0053d211b501732e999d6399b7e79610f7550b` | ⚠️ Unaudited |
| TokenWhitelistRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x28d37d1a4c0020ce253b7256bb5359d1d0d85d9f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0742bd018d1e9c8c918afa605e53e71cb0a65567` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x08921f17a32110f8df44a3d5007f2acd09cfae6d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391504 | `0x1736011d3e075351b319dbc1da28dac68ea830a6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x177879ad09f0bdf71fa91573f825ae29d5aa9de0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2b5b36597be376221a098361ceedaaf426c3fd01` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2bf60d953c8afc18415840e46272806eb14ac18a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x387dbc0fb00b26fb085aa658527d5be98302c84c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3a0613a7ee2a0621ee11f8a609d17606612d26ed` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x582dc2ee559077ae3a2bb08ef0eefe064c747482` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x83ee10a7aa71ddc721b871ea687f13542a360110` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x85e1157b1f3d1384a6a67679b761517916c4b5ee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391503 | `0x8c9532a60e0e7c6bbd2b2c1303f63ace1c3e9811` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0683c3cc018fb76874fdcc8620d15c4e467e34ca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | linea | unit-391507 | `0x4d7572040b84b41a6aa2efe4a93efff182388f88` | ⚠️ Unaudited |
| UniV4UniversalRouterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09af9b2261463c38115acd6d345da345851700fb` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x18efef04f525a9bf0c6440b12ebb71bfa2ab5982` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31a3e1ebd28b9379797f6959649c31bc21aaada7` | ⚠️ Unaudited |
| UsccDepositStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c4564bd54da474314f715b19d7d8c7671760395` | ⚠️ Unaudited |
| WethDecoderAndSanitizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x052ac4e2116a83257890b4df600d95494aee3207` | ⚠️ Unaudited |
| WithdrawQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02ac87c747f5b74d3d290adcf83bb2b694e2ba0b` | ⚠️ Unaudited |
| XERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86e532b66872dc801d737276fc1d2ff425deb9cf` | ⚠️ Unaudited |
| xRenzoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34a8bcbbbb6265435fb5a44e71d67c899ccc67f6` | ⚠️ Unaudited |
| xRenzoBridgeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x21e4bd82f889cb1b9353ce12f4896b8dcb7495fb` | ⚠️ Unaudited |
| xRenzoDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c1b9b3da7345f6fd5c9d8ecf7464b45e4a80f1d` | ⚠️ Unaudited |
| xRenzoDepositNativeBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x2efa125b4fcd5b082a4233ba55b53feb2fb4ff33` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391477 | `0x5efc9d10e42fb517456f4ac41eb5e2ebe42c8918` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391478 | `0x74a09653a083691711cf8215a6ab074bb4e99ef5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391479 | `0x77b1183e730275f6a8024ce53d54bcc12b368f60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391480 | `0x858646372cc42e1a627fce94aa7a7033e7cf075a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391481 | `0x9bce21489a7a85ed475c9e9d0dc94b4e6a1aebf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391482 | `0xbf5495efe5db9ce00f80364c8b423567e58d2110` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391483 | `0xc1036d6bba2fe24c65823110b348ee80d3386acd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391484 | `0xd4fcde9bb1d746dd7e5463b01dd819ee06af25db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391485 | `0xf25484650484de3d554fb0b7125e7696efa4ab99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391486 | `0xf757c9804cf2ee8d8ed64e0a8936293fe43a7252` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391494 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391495 | `0xf25484650484de3d554fb0b7125e7696efa4ab99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-391488 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-391487 | `0x6dcfbf4729890043dfd34a93a2694e5303ba2703` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | megaeth | unit-391493 | `0x09601a65e7de7bc8a19813d263dd9e98bfdc3c57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391500 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391501 | `0xf25484650484de3d554fb0b7125e7696efa4ab99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391502 | `0xf757c9804cf2ee8d8ed64e0a8936293fe43a7252` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-391489 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-391490 | `0x4d7572040b84b41a6aa2efe4a93efff182388f88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391491 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391492 | `0xf25484650484de3d554fb0b7125e7696efa4ab99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-391496 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-391497 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-391498 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ❓ Unverified |

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
| needs_review | 25 |

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
