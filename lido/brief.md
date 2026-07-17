# Agentic Audit Brief: Lido

## Project Overview

- Project: Lido (`lido`)
- Website: [https://lido.fi/](https://lido.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.029Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, bsc, ethereum, linea, mantle, mode, moonbeam, moonriver, optimism, polygon, scroll, unichain
- Contract surface: 366 unique implementations (366 raw deployments)
- DeFi Llama TVL: $14,419,982,777.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 335 project-authored contract(s) across 13 chain(s); 28 ERC20 tokens, 6 ERC721 NFTs, 2 ERC1155 multi-tokens, 14 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 89 common project-authored base contract(s) (trustedcaller, erc165, motionsettings). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 366; live-surface contracts included: 366 (359 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 166/343 (48.4%)
- Deployed-live implementations: 359 of 366 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 170/366
- Verified + Unaudited implementations: 196
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 366
- Raw deployments: 366
- Audits discovered: 147 (147 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 105
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/lido/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 53 fresh, 30 aging, 61 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 170 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 22.4% (Certora, ChainSecurity, Code4rena, ConsenSys Diligence, Cyfrin, MixBytes, OpenZeppelin, Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 99 | 27.0% | 2026-04 |
| Statemind | Tier 2 | 89 | 24.3% | 2025-09 |
| Ackee Blockchain | Tier 2 | 55 | 15.0% | 2026-02 |
| Certora | Tier 1 | 53 | 14.5% | 2026-01 |
| MixBytes | Tier 1 | 46 | 12.6% | 2026-05 |
| Oxorio | Tier 2 | 46 | 12.6% | 2023-05 |
| Quantstamp | Tier 2 | 26 | 7.1% | 2024-09 |
| Spearbit | Tier 1 | 24 | 6.6% | 2026-03 |
| OpenZeppelin | Tier 1 | 14 | 3.8% | 2025-02 |
| Hexens | Tier 2 | 13 | 3.6% | 2023-05 |
| Sigma Prime | Tier 2 | 13 | 3.6% | 2026-01 |
| ChainSecurity | Tier 1 | 12 | 3.3% | 2024-06 |
| unknown | Tier 2 | 7 | 1.9% | 2024-11 |
| Composable Security | Tier 2 | 6 | 1.6% | 2026-06 |
| Runtime Verification | Tier 2 | 4 | 1.1% | 2025-02 |
| Code4rena | Tier 1 | 3 | 0.8% | 2026-03 |
| Nethermind | Tier 2 | 3 | 0.8% | 2026-04 |
| Zellic | Tier 2 | 3 | 0.8% | 2024-01 |
| Consensys Diligence | Tier 1 | 2 | 0.5% | 2023-12 |
| Verilog | Tier 2 | 2 | 0.5% | 2023-09 |
| Cyfrin | Tier 1 | 1 | 0.3% | 2026-05 |
| Pessimistic | Tier 2 | 1 | 0.3% | 2023-12 |
| Sherlock | Tier 1 | 1 | 0.3% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (170)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Accounting | unknown | ethereum | n/a | [`0x23ed611be0e1a820978875c0122f92260804cddf`](./contracts/ethereum-1/0x23ed611be0e1a820978875c0122f92260804cddf/) | ✅ Audited |
| AccountingOracle | unknown | ethereum | n/a | [`0x010ecb2af743c700bdfaf5ddfd55ba3c07dcf9df`](./contracts/ethereum-1/0x010ecb2af743c700bdfaf5ddfd55ba3c07dcf9df/) | ✅ Audited |
| ActivateNodeOperators | unknown | ethereum | n/a | [`0xcbb418f6f9bfd3525ce6aade8f74ecfefe2db5c8`](./contracts/ethereum-1/0xcbb418f6f9bfd3525ce6aade8f74ecfefe2db5c8/) | ✅ Audited |
| AddAllowedRecipient | unknown | ethereum | n/a | [`0x1f809d2cb72a5ab13778811742050eda876129b6`](./contracts/ethereum-1/0x1f809d2cb72a5ab13778811742050eda876129b6/) | ✅ Audited |
| AddMEVBoostRelays | unknown | ethereum | n/a | [`0x00a3d6260f70b1660c8646ef25d0820effd7be60`](./contracts/ethereum-1/0x00a3d6260f70b1660c8646ef25d0820effd7be60/) | ✅ Audited |
| AddNodeOperators | unknown | ethereum | n/a | [`0xcaa3af7460e83e665eefec73a7a542e5005c9639`](./contracts/ethereum-1/0xcaa3af7460e83e665eefec73a7a542e5005c9639/) | ✅ Audited |
| AddRewardProgram | unknown | ethereum | n/a | [`0x9d15032b91d01d5c1d940eb919461426ab0dd4e3`](./contracts/ethereum-1/0x9d15032b91d01d5c1d940eb919461426ab0dd4e3/) | ✅ Audited |
| AllowedRecipientsBuilder | unknown | ethereum | n/a | [`0x334d6edc13f63728b39e6a6d04a7bbd5d6a9b9ff`](./contracts/ethereum-1/0x334d6edc13f63728b39e6a6d04a7bbd5d6a9b9ff/) | ✅ Audited |
| AllowedRecipientsFactory | unknown | ethereum | n/a | [`0x83e976758b7ab1bb676a4fea073fa0e2a807642b`](./contracts/ethereum-1/0x83e976758b7ab1bb676a4fea073fa0e2a807642b/) | ✅ Audited |
| AllowedRecipientsRegistry | unknown | ethereum | n/a | [`0x1a7cfa9efb4d5bffde87b0faeb1fc65d653868c0`](./contracts/ethereum-1/0x1a7cfa9efb4d5bffde87b0faeb1fc65d653868c0/) | ✅ Audited |
| AllowedTokensRegistry | unknown | ethereum | n/a | [`0x4ac40c34f8992bb1e5e856a448792158022551ca`](./contracts/ethereum-1/0x4ac40c34f8992bb1e5e856a448792158022551ca/) | ✅ Audited |
| AlterTiersInOperatorGrid | unknown | ethereum | n/a | [`0x37d9b09eda477a84e3913fcb4d032efb0bf9b62e`](./contracts/ethereum-1/0x37d9b09eda477a84e3913fcb4d032efb0bf9b62e/) | ✅ Audited |
| AmountConverterFactory | unknown | ethereum | n/a | [`0xb95faf0522fbe3d9b10240c1494c169744489711`](./contracts/ethereum-1/0xb95faf0522fbe3d9b10240c1494c169744489711/) | ✅ Audited |
| ArbitrumBridgeExecutor | unknown | arbitrum | n/a | [`0x1dca41859cd23b526cbe74da8f48ac96e14b1a29`](./contracts/arbitrum-42161/0x1dca41859cd23b526cbe74da8f48ac96e14b1a29/) | ✅ Audited |
| AssetRecovererLib | unknown | ethereum | n/a | [`0xa74528edc289b1a597faf83fcff7eff871cc01d9`](./contracts/ethereum-1/0xa74528edc289b1a597faf83fcff7eff871cc01d9/) | ✅ Audited |
| AStETH | unknown | ethereum | n/a | [`0x1982b2f5814301d4e9a8b0201555376e62f82428`](./contracts/ethereum-1/0x1982b2f5814301d4e9a8b0201555376e62f82428/) | ✅ Audited |
| AxelarTransceiver | unknown | ethereum | n/a | [`0x723aead29acee7e9281c32d11ea4ed0070c41b13`](./contracts/ethereum-1/0x723aead29acee7e9281c32d11ea4ed0070c41b13/) | ✅ Audited |
| Burner | unknown | ethereum | n/a | [`0x0359bc6ef9425414f9b22e8c9b877080b52793f5`](./contracts/ethereum-1/0x0359bc6ef9425414f9b22e8c9b877080b52793f5/) | ✅ Audited |
| CCIPAdapter | unknown | ethereum | n/a | [`0x12176e3a3d674e4af1176f30ff4dbc4428f2da7f`](./contracts/ethereum-1/0x12176e3a3d674e4af1176f30ff4dbc4428f2da7f/) | ✅ Audited |
| ChangeNodeOperatorManagers | unknown | ethereum | n/a | [`0xe31a0599a6772bcf9b2bfc9e25cf941e793c9a7d`](./contracts/ethereum-1/0xe31a0599a6772bcf9b2bfc9e25cf941e793c9a7d/) | ✅ Audited |
| CircuitBreaker | unknown | ethereum | n/a | [`0x6019cb557978296ba3c08a7b73225c0975dfb2f7`](./contracts/ethereum-1/0x6019cb557978296ba3c08a7b73225c0975dfb2f7/) | ✅ Audited |
| CompositePostRebaseBeaconReceiver | unknown | ethereum | n/a | [`0x55a7e1cbd678d9ebd50c7d69dc75203b0dbdd431`](./contracts/ethereum-1/0x55a7e1cbd678d9ebd50c7d69dc75203b0dbdd431/) | ✅ Audited |
| CrossChainController | unknown | bsc | n/a | [`0x40c4464fca8cacd550c33b39d674fc257966022f`](./contracts/bsc-56/0x40c4464fca8cacd550c33b39d674fc257966022f/) | ✅ Audited |
| CrossChainExecutor | unknown | bsc | n/a | [`0x250227c30e3b26525f292f63756e5eb3c425427e`](./contracts/bsc-56/0x250227c30e3b26525f292f63756e5eb3c425427e/) | ✅ Audited |
| CSAccounting | unknown | ethereum | n/a | [`0x4d72bff1beac69925f8bd12526a39baab069e5da`](./contracts/ethereum-1/0x4d72bff1beac69925f8bd12526a39baab069e5da/) | ✅ Audited |
| CSEarlyAdoption | unknown | ethereum | n/a | [`0x3d5148ad93e2ae5dedd1f7a8b3c19e7f67f90c0e`](./contracts/ethereum-1/0x3d5148ad93e2ae5dedd1f7a8b3c19e7f67f90c0e/) | ✅ Audited |
| CSEjector | unknown | ethereum | n/a | [`0xc72b58aa02e0e98cf8a4a0e9dce75e763800802c`](./contracts/ethereum-1/0xc72b58aa02e0e98cf8a4a0e9dce75e763800802c/) | ✅ Audited |
| CSExitPenalties | unknown | ethereum | n/a | [`0x06cd61045f958a209a0f8d746e103ecc625f4193`](./contracts/ethereum-1/0x06cd61045f958a209a0f8d746e103ecc625f4193/) | ✅ Audited |
| CSFeeDistributor | unknown | ethereum | n/a | [`0x17fc610ecbbac3f99751b3b2aac1ba2b22e444f0`](./contracts/ethereum-1/0x17fc610ecbbac3f99751b3b2aac1ba2b22e444f0/) | ✅ Audited |
| CSFeeOracle | unknown | ethereum | n/a | [`0x4d4074628678bd302921c20573eea1ed38ddf7fb`](./contracts/ethereum-1/0x4d4074628678bd302921c20573eea1ed38ddf7fb/) | ✅ Audited |
| CSModule | unknown | ethereum | n/a | [`0x1eb6d4da13ca9566c17f526ae0715325d7a07665`](./contracts/ethereum-1/0x1eb6d4da13ca9566c17f526ae0715325d7a07665/) | ✅ Audited |
| CSMSettleElStealingPenalty | unknown | ethereum | n/a | [`0xf6b6e7997338c48ea3a8bcfa4bb64a315fda76f4`](./contracts/ethereum-1/0xf6b6e7997338c48ea3a8bcfa4bb64a315fda76f4/) | ✅ Audited |
| CSMSetVettedGateTree | unknown | ethereum | n/a | [`0xbc5642bdd6f2a54b01a75605aae9143525d97308`](./contracts/ethereum-1/0xbc5642bdd6f2a54b01a75605aae9143525d97308/) | ✅ Audited |
| CSParametersRegistry | unknown | ethereum | n/a | [`0x0eee39440b25b254d28994c5b4037b8bed58fa5e`](./contracts/ethereum-1/0x0eee39440b25b254d28994c5b4037b8bed58fa5e/) | ✅ Audited |
| CSStrikes | unknown | ethereum | n/a | [`0x3e5021424c9e13fc853e523cd68ebbec848956a0`](./contracts/ethereum-1/0x3e5021424c9e13fc853e523cd68ebbec848956a0/) | ✅ Audited |
| CSVerifier | unknown | ethereum | n/a | [`0x0c345dfa318f9f4977cdd4f33d80f9d0ffa38e8b`](./contracts/ethereum-1/0x0c345dfa318f9f4977cdd4f33d80f9d0ffa38e8b/) | ✅ Audited |
| CuratedSubmitExitRequestHashes | unknown | ethereum | n/a | [`0x4f716ad3cc7a3a5cda2359e5b2c84335c171dcde`](./contracts/ethereum-1/0x4f716ad3cc7a3a5cda2359e5b2c84335c171dcde/) | ✅ Audited |
| CustomBridgedToken | unknown | linea | n/a | [`0x0ece76334fb560f2b1a49a60e38cf726b02203f0`](./contracts/linea-59144/0x0ece76334fb560f2b1a49a60e38cf726b02203f0/) | ✅ Audited |
| Dashboard | unknown | ethereum | n/a | [`0x294825c2764c7d412dc32d87e2242c4f1d989af3`](./contracts/ethereum-1/0x294825c2764c7d412dc32d87e2242c4f1d989af3/) | ✅ Audited |
| DataBus | unknown | optimism | n/a | [`0x37de961d6bb5865867add416be07189d2dd960e6`](./contracts/optimism-10/0x37de961d6bb5865867add416be07189d2dd960e6/) | ✅ Audited |
| DeactivateNodeOperators | unknown | ethereum | n/a | [`0x8b82c1546d47330335a48406cc3a50da732672e7`](./contracts/ethereum-1/0x8b82c1546d47330335a48406cc3a50da732672e7/) | ✅ Audited |
| DepositSecurityModule | unknown | ethereum | n/a | [`0x0dca6e1cc2c3816f1c880c9861e6c2478dd0e052`](./contracts/ethereum-1/0x0dca6e1cc2c3816f1c880c9861e6c2478dd0e052/) | ✅ Audited |
| DGLaunchOmnibusMainnet | unknown | ethereum | n/a | [`0x1db8a9313785b78f7d0a201c5e0be007f1eb63b4`](./contracts/ethereum-1/0x1db8a9313785b78f7d0a201c5e0be007f1eb63b4/) | ✅ Audited |
| DGLaunchStateVerifier | unknown | ethereum | n/a | [`0xd48c2fc419569537bb069bad2165dc0ceb160cec`](./contracts/ethereum-1/0xd48c2fc419569537bb069bad2165dc0ceb160cec/) | ✅ Audited |
| DGRolesValidatorMainnet | unknown | ethereum | n/a | [`0x31534e3afe219b609da3715a00a1479d2a2d7981`](./contracts/ethereum-1/0x31534e3afe219b609da3715a00a1479d2a2d7981/) | ✅ Audited |
| DGUpgradeOmnibusMainnet | unknown | ethereum | n/a | [`0x67988077f29fba661911d9567e05cc52c51ca1b0`](./contracts/ethereum-1/0x67988077f29fba661911d9567e05cc52c51ca1b0/) | ✅ Audited |
| DGUpgradeStateVerifierMainnet | unknown | ethereum | n/a | [`0x487b764a2085ffd595d9141baec0a766b7904786`](./contracts/ethereum-1/0x487b764a2085ffd595d9141baec0a766b7904786/) | ✅ Audited |
| DualGovernance | unknown | ethereum | n/a | [`0xc1db28b3301331277e307fdcff8de28242a4486e`](./contracts/ethereum-1/0xc1db28b3301331277e307fdcff8de28242a4486e/) | ✅ Audited |
| DummyEmptyContract | unknown | ethereum | n/a | [`0x6f6541c2203196feedd14cd2c09550da1cbeda31`](./contracts/ethereum-1/0x6f6541c2203196feedd14cd2c09550da1cbeda31/) | ✅ Audited |
| EasyTrack | unknown | ethereum | n/a | [`0xf0211b7660680b49de1a7e9f25c65660f0a13fea`](./contracts/ethereum-1/0xf0211b7660680b49de1a7e9f25c65660f0a13fea/) | ✅ Audited |
| EditMEVBoostRelays | unknown | ethereum | n/a | [`0x6b7863f2c7dee99d3b744fdaedbeb1aecc025535`](./contracts/ethereum-1/0x6b7863f2c7dee99d3b744fdaedbeb1aecc025535/) | ✅ Audited |
| EIP712StETH | unknown | ethereum | n/a | [`0x075cef9752b42e332dab0bae1ca63801ad8e28c7`](./contracts/ethereum-1/0x075cef9752b42e332dab0bae1ca63801ad8e28c7/) | ✅ Audited |
| EmergencyProtectedTimelock | unknown | ethereum | n/a | [`0xce0425301c85c5ea2a0873a2dee44d78e02d2316`](./contracts/ethereum-1/0xce0425301c85c5ea2a0873a2dee44d78e02d2316/) | ✅ Audited |
| ERC20Bridged | unknown | arbitrum | n/a | [`0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921`](./contracts/arbitrum-42161/0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921/) | ✅ Audited |
| ERC20BridgedPermit | unknown | optimism | n/a | [`0x1f32b1c2345538c0c6f582fcb022739c4a194ebb`](./contracts/optimism-10/0x1f32b1c2345538c0c6f582fcb022739c4a194ebb/) | ✅ Audited |
| ERC20RebasableBridgedPermit | unknown | optimism | n/a | [`0x39afe23ce59e8ef196b81f0dcb165e9ad38b9463`](./contracts/optimism-10/0x39afe23ce59e8ef196b81f0dcb165e9ad38b9463/) | ✅ Audited |
| Escrow | unknown | ethereum | n/a | [`0x165813a31446a98c84e20dda8c101bb3c8228e1c`](./contracts/ethereum-1/0x165813a31446a98c84e20dda8c101bb3c8228e1c/) | ✅ Audited |
| EVMScriptExecutor | unknown | ethereum | n/a | [`0xfe5986e06210ac1ecc1adcafc0cc7f8d63b3f977`](./contracts/ethereum-1/0xfe5986e06210ac1ecc1adcafc0cc7f8d63b3f977/) | ✅ Audited |
| Executor | unknown | ethereum | n/a | [`0x23e0b465633ff5178808f4a75186e2f2f9537021`](./contracts/ethereum-1/0x23e0b465633ff5178808f4a75186e2f2f9537021/) | ✅ Audited |
| ForceValidatorExitsInVaultHub | unknown | ethereum | n/a | [`0x6c968cd89ca358fbaf57b18e77a8973fa869a6aa`](./contracts/ethereum-1/0x6c968cd89ca358fbaf57b18e77a8973fa869a6aa/) | ✅ Audited |
| FxStateRootTunnel | unknown | ethereum | n/a | [`0xc7dd5c30dca04f487c9ede0c5ac580c91587fc66`](./contracts/ethereum-1/0xc7dd5c30dca04f487c9ede0c5ac580c91587fc66/) | ✅ Audited |
| GateSeal | unknown | ethereum | n/a | [`0x881dad714679a6feaa636446a0499101375a365c`](./contracts/ethereum-1/0x881dad714679a6feaa636446a0499101375a365c/) | ✅ Audited |
| HashConsensus | unknown | ethereum | n/a | [`0x64bc157ec2585fac63d33a31ced56cee4cb421ea`](./contracts/ethereum-1/0x64bc157ec2585fac63d33a31ced56cee4cb421ea/) | ✅ Audited |
| HyperLaneAdapter | unknown | ethereum | n/a | [`0x8d374df3de08b971777aa091fa68bce109b3a7f3`](./contracts/ethereum-1/0x8d374df3de08b971777aa091fa68bce109b3a7f3/) | ✅ Audited |
| ImmutableDualGovernanceConfigProvider | unknown | ethereum | n/a | [`0xa1692af6fdfdd1030e4e9c4bc429986fa64cb5ef`](./contracts/ethereum-1/0xa1692af6fdfdd1030e4e9c4bc429986fa64cb5ef/) | ✅ Audited |
| IncreaseNodeOperatorStakingLimit | unknown | ethereum | n/a | [`0xfebd8fac16de88206d4b18764e826af38546afe0`](./contracts/ethereum-1/0xfebd8fac16de88206d4b18764e826af38546afe0/) | ✅ Audited |
| IncreaseVettedValidatorsLimit | unknown | ethereum | n/a | [`0xcc993499e03dda45ae8804aa1620257a1d7fb996`](./contracts/ethereum-1/0xcc993499e03dda45ae8804aa1620257a1d7fb996/) | ✅ Audited |
| InsuranceFund | unknown | ethereum | n/a | [`0x8b3f33234abd88493c0cd28de33d583b70bede35`](./contracts/ethereum-1/0x8b3f33234abd88493c0cd28de33d583b70bede35/) | ✅ Audited |
| L1ERC20Bridge | unknown | ethereum | n/a | [`0x41527b2d03844db6b0945f25702cb958b6d55989`](./contracts/ethereum-1/0x41527b2d03844db6b0945f25702cb958b6d55989/) | ✅ Audited |
| L1ERC20TokenBridge | unknown | ethereum | n/a | [`0x29c5c51a031165ce62f964966a6399b81165efa4`](./contracts/ethereum-1/0x29c5c51a031165ce62f964966a6399b81165efa4/) | ✅ Audited |
| L1ERC20TokenGateway | unknown | ethereum | n/a | [`0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a`](./contracts/ethereum-1/0x0f25c1dc2a9922304f2eac71dca9b07e310e8e5a/) | ✅ Audited |
| L1Executor | unknown | ethereum | n/a | [`0x06185d60ed72a91d1367eb0733b9d20ae7336d3b`](./contracts/ethereum-1/0x06185d60ed72a91d1367eb0733b9d20ae7336d3b/) | ✅ Audited |
| L1LidoTokensBridge | unknown | ethereum | n/a | [`0x0789f3c7f0c932cc663b0f2256c7057a80a648b6`](./contracts/ethereum-1/0x0789f3c7f0c932cc663b0f2256c7057a80a648b6/) | ✅ Audited |
| L2ERC20ExtendedTokensBridge | unknown | unichain | n/a | [`0x1a513e9b6434a12c7bb5b9af3b21963308dee372`](./contracts/unichain-130/0x1a513e9b6434a12c7bb5b9af3b21963308dee372/) | ✅ Audited |
| L2ERC20TokenBridge | unknown | optimism | n/a | [`0x0fc3de4b1bbcb315880d328e3f9c81d742d73d01`](./contracts/optimism-10/0x0fc3de4b1bbcb315880d328e3f9c81d742d73d01/) | ✅ Audited |
| L2ERC20TokenGateway | unknown | arbitrum | n/a | [`0x07d4692291b9e30e326fd31706f686f83f331b82`](./contracts/arbitrum-42161/0x07d4692291b9e30e326fd31706f686f83f331b82/) | ✅ Audited |
| L2LidoGateway | unknown | scroll | n/a | [`0x2b9beb2890dbefc7ca25af3164100d139b623c24`](./contracts/scroll-534352/0x2b9beb2890dbefc7ca25af3164100d139b623c24/) | ✅ Audited |
| L2MessageService | unknown | linea | n/a | [`0x05d43713b7e333d2d54be65ce3b5f3698ab960fd`](./contracts/linea-59144/0x05d43713b7e333d2d54be65ce3b5f3698ab960fd/) | ✅ Audited |
| L2WstETHToken | unknown | scroll | n/a | [`0x38224d52ecc979aedfeb31b1eea0cfcebd55247e`](./contracts/scroll-534352/0x38224d52ecc979aedfeb31b1eea0cfcebd55247e/) | ✅ Audited |
| LayerZeroAdapter | unknown | ethereum | n/a | [`0x742650e0441be8503682965d601ad0ba1fb54411`](./contracts/ethereum-1/0x742650e0441be8503682965d601ad0ba1fb54411/) | ✅ Audited |
| LazyOracle | unknown | ethereum | n/a | [`0x47f3a6b1e70f7ec7dbc3cb510b1fdb948c863a5b`](./contracts/ethereum-1/0x47f3a6b1e70f7ec7dbc3cb510b1fdb948c863a5b/) | ✅ Audited |
| LegacyOracle | unknown | ethereum | n/a | [`0xa29b819654ce6224a222bb5f586920105e2d7e0e`](./contracts/ethereum-1/0xa29b819654ce6224a222bb5f586920105e2d7e0e/) | ✅ Audited |
| Lido | unknown | ethereum | n/a | [`0x0f096e343563b11e35104924111726c596d9f3b9`](./contracts/ethereum-1/0x0f096e343563b11e35104924111726c596d9f3b9/) | ✅ Audited |
| LidoExecutionLayerRewardsVault | unknown | ethereum | n/a | [`0x388c818ca8b9251b393131c08a736a67ccb19297`](./contracts/ethereum-1/0x388c818ca8b9251b393131c08a736a67ccb19297/) | ✅ Audited |
| LidoLocator | unknown | ethereum | n/a | [`0x1c3994e4bf7cf49ca53d11a5174727deea34b3df`](./contracts/ethereum-1/0x1c3994e4bf7cf49ca53d11a5174727deea34b3df/) | ✅ Audited |
| LidoOracle | unknown | ethereum | n/a | [`0x1430194905301504e8830ce4b0b0df7187e84abd`](./contracts/ethereum-1/0x1430194905301504e8830ce4b0b0df7187e84abd/) | ✅ Audited |
| LineaBridgeExecutor | unknown | linea | n/a | [`0x280983c7a4764ed26bfdc5465d08eb0885822c95`](./contracts/linea-59144/0x280983c7a4764ed26bfdc5465d08eb0885822c95/) | ✅ Audited |
| MinFirstAllocationStrategy | unknown | ethereum | n/a | [`0x7e70de6d1877b3711b2beda7ba00013c7142d993`](./contracts/ethereum-1/0x7e70de6d1877b3711b2beda7ba00013c7142d993/) | ✅ Audited |
| MiniMeToken | unknown | ethereum | n/a | [`0x5a98fcbea516cf06857215779fd812ca3bef1b32`](./contracts/ethereum-1/0x5a98fcbea516cf06857215779fd812ca3bef1b32/) | ✅ Audited |
| NOAddresses | unknown | ethereum | n/a | [`0xe4d5a7be8d7c3db15755061053f5a49b6a67fffc`](./contracts/ethereum-1/0xe4d5a7be8d7c3db15755061053f5a49b6a67fffc/) | ✅ Audited |
| NodeOperatorRegistry | unknown | ethereum | n/a | [`0x1b6c71edbdb8174420cf9b368b38a1b52bfdd7f3`](./contracts/ethereum-1/0x1b6c71edbdb8174420cf9b368b38a1b52bfdd7f3/) | ✅ Audited |
| NodeOperatorsRegistry | unknown | ethereum | n/a | [`0x1770044a38402e3cfca2fcfa0c84a093c9b42135`](./contracts/ethereum-1/0x1770044a38402e3cfca2fcfa0c84a093c9b42135/) | ✅ Audited |
| NttManager | unknown | bsc | n/a | [`0x4bbaab64e8114e0026afaf6bec9135f69d46aa61`](./contracts/bsc-56/0x4bbaab64e8114e0026afaf6bec9135f69d46aa61/) | ✅ Audited |
| OperatorGrid | unknown | ethereum | n/a | [`0xa612e30d71d7d54aeaf4e5a21023f3f270932c2c`](./contracts/ethereum-1/0xa612e30d71d7d54aeaf4e5a21023f3f270932c2c/) | ✅ Audited |
| OpStackTokenRatePusher | unknown | ethereum | n/a | [`0x02b2d3c03e705e29c6a86662fba1c11a83c205d2`](./contracts/ethereum-1/0x02b2d3c03e705e29c6a86662fba1c11a83c205d2/) | ✅ Audited |
| OptimismBridgeExecutor | unknown | base | n/a | [`0x0e37599436974a25ddeedf795c848d30af46eacf`](./contracts/base-8453/0x0e37599436974a25ddeedf795c848d30af46eacf/) | ✅ Audited |
| Oracle | unknown | moonriver | n/a | [`0xa73bc334b3c64a66969677cbe7103e38dbc8858d`](./contracts/moonriver-1285/0xa73bc334b3c64a66969677cbe7103e38dbc8858d/) | ✅ Audited |
| OracleDaemonConfig | unknown | ethereum | n/a | [`0xbf05a929c3d7885a6aead833a992da6e5ac23b09`](./contracts/ethereum-1/0xbf05a929c3d7885a6aead833a992da6e5ac23b09/) | ✅ Audited |
| OracleReportSanityChecker | unknown | ethereum | n/a | [`0x6232397ebac4f5772e53285b26c47914e9461e75`](./contracts/ethereum-1/0x6232397ebac4f5772e53285b26c47914e9461e75/) | ✅ Audited |
| OracleRouter | unknown | ethereum | n/a | [`0x79ef3a538200fe4981d67e7e886bfb36d4cb5a31`](./contracts/ethereum-1/0x79ef3a538200fe4981d67e7e886bfb36d4cb5a31/) | ✅ Audited |
| OssifiableProxy | unknown | mode | n/a | [`0x98f96a4b34d03a2e6f225b28b8f8cb1279562d81`](./contracts/mode-34443/0x98f96a4b34d03a2e6f225b28b8f8cb1279562d81/) | ✅ Audited |
| PermissionlessGate | unknown | ethereum | n/a | [`0x2305e02c0d92ba3ff09f2393da9997c3404fce0a`](./contracts/ethereum-1/0x2305e02c0d92ba3ff09f2393da9997c3404fce0a/) | ✅ Audited |
| PoLidoNFT | unknown | ethereum | n/a | [`0x3e3af10763c8cd302ba446ec877d57d01556f8da`](./contracts/ethereum-1/0x3e3af10763c8cd302ba446ec877d57d01556f8da/) | ✅ Audited |
| PredepositGuarantee | unknown | ethereum | n/a | [`0xcc08c36bd5bb78fdcb10f35b404ada6ffc71a023`](./contracts/ethereum-1/0xcc08c36bd5bb78fdcb10f35b404ada6ffc71a023/) | ✅ Audited |
| QueueLib | unknown | ethereum | n/a | [`0x6eff460627b6798c2907409ea2fdfb287eaa2e55`](./contracts/ethereum-1/0x6eff460627b6798c2907409ea2fdfb287eaa2e55/) | ✅ Audited |
| RegisterGroupsInOperatorGrid | unknown | ethereum | n/a | [`0x17305db55c908e84c58bbdca57258a7d1f7eea7c`](./contracts/ethereum-1/0x17305db55c908e84c58bbdca57258a7d1f7eea7c/) | ✅ Audited |
| RegisterTiersInOperatorGrid | unknown | ethereum | n/a | [`0x5292a1284e4695b95c0840cf8ea25a818751c17f`](./contracts/ethereum-1/0x5292a1284e4695b95c0840cf8ea25a818751c17f/) | ✅ Audited |
| RemoveAllowedRecipient | unknown | ethereum | n/a | [`0x22010d1747cafc370b1f1fbba61022a313c5693b`](./contracts/ethereum-1/0x22010d1747cafc370b1f1fbba61022a313c5693b/) | ✅ Audited |
| RemoveMEVBoostRelays | unknown | ethereum | n/a | [`0x9721c0f77e3ea40ed592b9dcf3032daf269c0306`](./contracts/ethereum-1/0x9721c0f77e3ea40ed592b9dcf3032daf269c0306/) | ✅ Audited |
| RemoveRewardProgram | unknown | ethereum | n/a | [`0xc21e5e72ffc223f02fc410aaede3084a63963932`](./contracts/ethereum-1/0xc21e5e72ffc223f02fc410aaede3084a63963932/) | ✅ Audited |
| Repo | unknown | ethereum | n/a | [`0x0d97e876ad14db2b183cfeeb8aa1a5c788eb1831`](./contracts/ethereum-1/0x0d97e876ad14db2b183cfeeb8aa1a5c788eb1831/) | ✅ Audited |
| ResealManager | unknown | ethereum | n/a | [`0x7914b5a1539b97bd0bbd155757f25fd79a522d24`](./contracts/ethereum-1/0x7914b5a1539b97bd0bbd155757f25fd79a522d24/) | ✅ Audited |
| RewardProgramsRegistry | unknown | ethereum | n/a | [`0x3129c041b372ee93a5a8756dc4ec6f154d85bc9a`](./contracts/ethereum-1/0x3129c041b372ee93a5a8756dc4ec6f154d85bc9a/) | ✅ Audited |
| RLPReader | unknown | ethereum | n/a | [`0xbefe614a45a8300f2a4a00fb634b7137b6b1bc47`](./contracts/ethereum-1/0xbefe614a45a8300f2a4a00fb634b7137b6b1bc47/) | ✅ Audited |
| ScrollBridgeExecutor | unknown | scroll | n/a | [`0x0c67d8d067e349669dfeab132a7c03a90594ee09`](./contracts/scroll-534352/0x0c67d8d067e349669dfeab132a7c03a90594ee09/) | ✅ Audited |
| SDVTSubmitExitRequestHashes | unknown | ethereum | n/a | [`0x58a59ddc6aea9b1d5743d024e15dfa4badb56e37`](./contracts/ethereum-1/0x58a59ddc6aea9b1d5743d024e15dfa4badb56e37/) | ✅ Audited |
| SelfOwnedStETHBurner | unknown | ethereum | n/a | [`0xa4b17b9f2b66890b5a0c5d8e7ff631ea340a9f13`](./contracts/ethereum-1/0xa4b17b9f2b66890b5a0c5d8e7ff631ea340a9f13/) | ✅ Audited |
| SetJailStatusInOperatorGrid | unknown | ethereum | n/a | [`0x6a4f33f05e7412a11100353724bb6a152cf0d305`](./contracts/ethereum-1/0x6a4f33f05e7412a11100353724bb6a152cf0d305/) | ✅ Audited |
| SetLiabilitySharesTargetInVaultHub | unknown | ethereum | n/a | [`0x4e5cc771c7b77f1417fa6ba9262d83c6ccc1e969`](./contracts/ethereum-1/0x4e5cc771c7b77f1417fa6ba9262d83c6ccc1e969/) | ✅ Audited |
| SetNodeOperatorNames | unknown | ethereum | n/a | [`0x7d509bff310d9460b1f613e4e40d342201a83ae4`](./contracts/ethereum-1/0x7d509bff310d9460b1f613e4e40d342201a83ae4/) | ✅ Audited |
| SetNodeOperatorRewardAddresses | unknown | ethereum | n/a | [`0x589e298964b9181d9938b84bb034c3bb9024e2c0`](./contracts/ethereum-1/0x589e298964b9181d9938b84bb034c3bb9024e2c0/) | ✅ Audited |
| SetVettedValidatorsLimits | unknown | ethereum | n/a | [`0xd75778b855886fc5e1ea7d6bfada9eb68b35c19d`](./contracts/ethereum-1/0xd75778b855886fc5e1ea7d6bfada9eb68b35c19d/) | ✅ Audited |
| ShapellaUpgradeTemplate | unknown | ethereum | n/a | [`0xa818ff9ec93122bf9401ab4340c42de638cd600a`](./contracts/ethereum-1/0xa818ff9ec93122bf9401ab4340c42de638cd600a/) | ✅ Audited |
| SignatureChecker | unknown | mode | n/a | [`0x87fb7b90b7071ba2e56bd3c44d6e93746d6ca602`](./contracts/mode-34443/0x87fb7b90b7071ba2e56bd3c44d6e93746d6ca602/) | ✅ Audited |
| SocializeBadDebtInVaultHub | unknown | ethereum | n/a | [`0x1df50522a1d868c12bf71747bb6f24a18fe6d32c`](./contracts/ethereum-1/0x1df50522a1d868c12bf71747bb6f24a18fe6d32c/) | ✅ Audited |
| StableDebtStETH | unknown | ethereum | n/a | [`0x66457616dd8489df5d0afd8678f4a260088aaf55`](./contracts/ethereum-1/0x66457616dd8489df5d0afd8678f4a260088aaf55/) | ✅ Audited |
| StakingRouter | unknown | ethereum | n/a | [`0x226f9265cbc37231882b7409658c18bb7738173a`](./contracts/ethereum-1/0x226f9265cbc37231882b7409658c18bb7738173a/) | ✅ Audited |
| StakingVault | unknown | ethereum | n/a | [`0x06a56487494aa080dec7bf69128eda9225784553`](./contracts/ethereum-1/0x06a56487494aa080dec7bf69128eda9225784553/) | ✅ Audited |
| StMATIC | unknown | ethereum | n/a | [`0x15152eee59752f18c2de8fbd4bc83ec20c448303`](./contracts/ethereum-1/0x15152eee59752f18c2de8fbd4bc83ec20c448303/) | ✅ Audited |
| Stonks | unknown | ethereum | n/a | [`0x278f7b6cbb3cc37374e6a40bdfebfff08f65a5c7`](./contracts/ethereum-1/0x278f7b6cbb3cc37374e6a40bdfebfff08f65a5c7/) | ✅ Audited |
| StonksFactory | unknown | ethereum | n/a | [`0x78470f9e0a563b5b5b343d42b6cd1392a88de0e3`](./contracts/ethereum-1/0x78470f9e0a563b5b5b343d42b6cd1392a88de0e3/) | ✅ Audited |
| TiebreakerCoreCommittee | unknown | ethereum | n/a | [`0x175742c3ddd88b0192df3ecf98f180a79cb259d0`](./contracts/ethereum-1/0x175742c3ddd88b0192df3ecf98f180a79cb259d0/) | ✅ Audited |
| TiebreakerSubCommittee | unknown | ethereum | n/a | [`0x3d3ba54d54bbff40f2dfa2a8e27bd4de3dab2951`](./contracts/ethereum-1/0x3d3ba54d54bbff40f2dfa2a8e27bd4de3dab2951/) | ✅ Audited |
| TimeConstraints | unknown | ethereum | n/a | [`0x2a30f5ac03187674553024296bed35aa49749dda`](./contracts/ethereum-1/0x2a30f5ac03187674553024296bed35aa49749dda/) | ✅ Audited |
| TimeLock | unknown | ethereum | n/a | [`0xd6b95c960779c72b8c6752119849318e5d550574`](./contracts/ethereum-1/0xd6b95c960779c72b8c6752119849318e5d550574/) | ✅ Audited |
| TimelockedGovernance | unknown | ethereum | n/a | [`0x553337946f2fab8911774b20025fa776b76a7cce`](./contracts/ethereum-1/0x553337946f2fab8911774b20025fa776b76a7cce/) | ✅ Audited |
| TokenBridge | unknown | ethereum | n/a | [`0x051f1d88f0af5763fb888ec4378b4d8b29ea3319`](./contracts/ethereum-1/0x051f1d88f0af5763fb888ec4378b4d8b29ea3319/) | ✅ Audited |
| TokenRateNotifier | unknown | ethereum | n/a | [`0x25e35855783bec3e49355a29e110f02ed8b05ba9`](./contracts/ethereum-1/0x25e35855783bec3e49355a29e110f02ed8b05ba9/) | ✅ Audited |
| TokenRateOracle | unknown | optimism | n/a | [`0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0`](./contracts/optimism-10/0x294ed1f214f4e0ecae31c3eae4f04ebb3b36c9d0/) | ✅ Audited |
| TopUpAllowedRecipients | unknown | ethereum | n/a | [`0x00caaef11ec545b192f16313f53912e453c91458`](./contracts/ethereum-1/0x00caaef11ec545b192f16313f53912e453c91458/) | ✅ Audited |
| TopUpLegoProgram | unknown | ethereum | n/a | [`0x648c8be548f43eca4e482c0801ebccccfb944931`](./contracts/ethereum-1/0x648c8be548f43eca4e482c0801ebccccfb944931/) | ✅ Audited |
| TopUpRewardPrograms | unknown | ethereum | n/a | [`0x77781a93c4824d2299a38ac8bbb11eb3cd6bc3b7`](./contracts/ethereum-1/0x77781a93c4824d2299a38ac8bbb11eb3cd6bc3b7/) | ✅ Audited |
| TransceiverStructs | unknown | bsc | n/a | [`0x27a3daf3b243104e9b0afae6b56026a416b852c9`](./contracts/bsc-56/0x27a3daf3b243104e9b0afae6b56026a416b852c9/) | ✅ Audited |
| TriggerableWithdrawalsGateway | unknown | ethereum | n/a | [`0xdc00116a0d3e064427da2600449cfd2566b3037b`](./contracts/ethereum-1/0xdc00116a0d3e064427da2600449cfd2566b3037b/) | ✅ Audited |
| TwoPhaseFrameConfigUpdate | unknown | ethereum | n/a | [`0xb2b4db1491cbe949ae85eff01e0d3ee239f110c1`](./contracts/ethereum-1/0xb2b4db1491cbe949ae85eff01e0d3ee239f110c1/) | ✅ Audited |
| UpdateGroupsShareLimitInOperatorGrid | unknown | ethereum | n/a | [`0x8bdc726a3147d8187820391d7c6f9f942606aee6`](./contracts/ethereum-1/0x8bdc726a3147d8187820391d7c6f9f942606aee6/) | ✅ Audited |
| UpdateTargetValidatorLimits | unknown | ethereum | n/a | [`0x161a4552a625844c822954c5acbac928ee0f399b`](./contracts/ethereum-1/0x161a4552a625844c822954c5acbac928ee0f399b/) | ✅ Audited |
| UpdateVaultsFeesInOperatorGrid | unknown | ethereum | n/a | [`0x5c3bdfa3e7f312d8cf72f56f2b797b026f6b471c`](./contracts/ethereum-1/0x5c3bdfa3e7f312d8cf72f56f2b797b026f6b471c/) | ✅ Audited |
| UpgradeableBeacon | unknown | ethereum | n/a | [`0x971f46a2852d11d59dbf0909e837cfd06f357deb`](./contracts/ethereum-1/0x971f46a2852d11d59dbf0909e837cfd06f357deb/) | ✅ Audited |
| V3Template | unknown | ethereum | n/a | [`0x34e01ecfebd403370b0879c628f8a5319ddb8507`](./contracts/ethereum-1/0x34e01ecfebd403370b0879c628f8a5319ddb8507/) | ✅ Audited |
| V3TemporaryAdmin | unknown | ethereum | n/a | [`0xf738a2c7d69694b618dbb547c1c5a152d7958f06`](./contracts/ethereum-1/0xf738a2c7d69694b618dbb547c1c5a152d7958f06/) | ✅ Audited |
| V3VoteScript | unknown | ethereum | n/a | [`0xa47ca1d2029d8e735237ea4e74c607426d4aa07e`](./contracts/ethereum-1/0xa47ca1d2029d8e735237ea4e74c607426d4aa07e/) | ✅ Audited |
| ValidatorConsolidationRequests | unknown | ethereum | n/a | [`0xac4aae7123248684c405a4b0038c1560ec7fe018`](./contracts/ethereum-1/0xac4aae7123248684c405a4b0038c1560ec7fe018/) | ✅ Audited |
| ValidatorExitDelayVerifier | unknown | ethereum | n/a | [`0xbdb567672c867db533119c2dcd4fb9d8b44ec82f`](./contracts/ethereum-1/0xbdb567672c867db533119c2dcd4fb9d8b44ec82f/) | ✅ Audited |
| ValidatorsExitBusOracle | unknown | ethereum | n/a | [`0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e`](./contracts/ethereum-1/0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e/) | ✅ Audited |
| VariableDebtStETH | unknown | ethereum | n/a | [`0xa9deac9f00dc4310c35603fcd9d34d1a750f81db`](./contracts/ethereum-1/0xa9deac9f00dc4310c35603fcd9d34d1a750f81db/) | ✅ Audited |
| VaultFactory | unknown | ethereum | n/a | [`0x02ca7772ff14a9f6c1a08af385aa96bb1b34175a`](./contracts/ethereum-1/0x02ca7772ff14a9f6c1a08af385aa96bb1b34175a/) | ✅ Audited |
| VaultHub | unknown | ethereum | n/a | [`0x1d201be093d847f6446530efb0e8fb426d176709`](./contracts/ethereum-1/0x1d201be093d847f6446530efb0e8fb426d176709/) | ✅ Audited |
| VaultsAdapter | unknown | ethereum | n/a | [`0x28f9ac198c4e0fa6a9ad2c2f97cb38f1a3120f27`](./contracts/ethereum-1/0x28f9ac198c4e0fa6a9ad2c2f97cb38f1a3120f27/) | ✅ Audited |
| VettedGate | unknown | ethereum | n/a | [`0x0b0dec7cbc586bc1cadfaa0f20428df200276f37`](./contracts/ethereum-1/0x0b0dec7cbc586bc1cadfaa0f20428df200276f37/) | ✅ Audited |
| VettedGateFactory | unknown | ethereum | n/a | [`0x4b1681a68793be9a03b5055e830574183dc14e70`](./contracts/ethereum-1/0x4b1681a68793be9a03b5055e830574183dc14e70/) | ✅ Audited |
| Voting | unknown | ethereum | n/a | [`0x2e59a20f205bb85a89c53f1936454680651e618e`](./contracts/ethereum-1/0x2e59a20f205bb85a89c53f1936454680651e618e/) | ✅ Audited |
| Withdrawal | unknown | moonriver | n/a | [`0x48e18699f4e5009139aa89002508635bd46dfb96`](./contracts/moonriver-1285/0x48e18699f4e5009139aa89002508635bd46dfb96/) | ✅ Audited |
| WithdrawalQueueERC721 | unknown | ethereum | n/a | [`0x889edc2edab5f40e902b864ad4d7ade8e412f9b1`](./contracts/ethereum-1/0x889edc2edab5f40e902b864ad4d7ade8e412f9b1/) | ✅ Audited |
| WithdrawalVault | unknown | ethereum | n/a | [`0x7d2baa6094e1c4b60da4cbaf4a77c3f4694fd53d`](./contracts/ethereum-1/0x7d2baa6094e1c4b60da4cbaf4a77c3f4694fd53d/) | ✅ Audited |
| WormholeAdapter | unknown | bsc | n/a | [`0xbb1e43408bbf2c767ff3bd5bbc34e183cc1ef119`](./contracts/bsc-56/0xbb1e43408bbf2c767ff3bd5bbc34e183cc1ef119/) | ✅ Audited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x50dfc07cb795d390841632394e19c5466883bed2`](./contracts/ethereum-1/0x50dfc07cb795d390841632394e19c5466883bed2/) | ✅ Audited |
| WstETH | unknown | ethereum | n/a | [`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ✅ Audited |
| WstEthL2Token | unknown | bsc | n/a | [`0x26c5e01524d2e6280a48f2c50ff6de7e52e9611c`](./contracts/bsc-56/0x26c5e01524d2e6280a48f2c50ff6de7e52e9611c/) | ✅ Audited |
| ZkEvmV2 | unknown | ethereum | n/a | [`0x4c8d4ce72afaa417d1f7e833725fdb4e793cd6b3`](./contracts/ethereum-1/0x4c8d4ce72afaa417d1f7e833725fdb4e793cd6b3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (196)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlledAggregator | unknown | bsc | n/a | [`0x1def31d26bce797d808c6684f4b0a17867ac01bd`](./contracts/bsc-56/0x1def31d26bce797d808c6684f4b0a17867ac01bd/) | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | bsc | n/a | [`0x1655ad5bd23b6fea57dc21fd761ec4552fcb2419`](./contracts/bsc-56/0x1655ad5bd23b6fea57dc21fd761ec4552fcb2419/) | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | arbitrum | n/a | [`0x0050d50cecc09ce311d4e0ab14377bfcd0397af7`](./contracts/arbitrum-42161/0x0050d50cecc09ce311d4e0ab14377bfcd0397af7/) | ⚠️ Unaudited |
| Accountant | unknown | ethereum | n/a | [`0x15a94d49fac6e23e17c1366c999117a1de8ba7b6`](./contracts/ethereum-1/0x15a94d49fac6e23e17c1366c999117a1de8ba7b6/) | ⚠️ Unaudited |
| AccountingModule | unknown | ethereum | n/a | [`0x77fb6fd121afe51c95fea53069686138b8de469a`](./contracts/ethereum-1/0x77fb6fd121afe51c95fea53069686138b8de469a/) | ⚠️ Unaudited |
| ACL | unknown | ethereum | n/a | [`0x9895f0f17cc1d1891b6f18ee0b483b6f221b37bb`](./contracts/ethereum-1/0x9895f0f17cc1d1891b6f18ee0b483b6f221b37bb/) | ⚠️ Unaudited |
| Address | unknown | ethereum | n/a | [`0xeffdcb49c2d0ef813764b709ca3c6fe71f230e3e`](./contracts/ethereum-1/0xeffdcb49c2d0ef813764b709ca3c6fe71f230e3e/) | ⚠️ Unaudited |
| Agent | unknown | ethereum | n/a | [`0x3e40d73eb977dc6a537af587d48316fee66e9c8c`](./contracts/ethereum-1/0x3e40d73eb977dc6a537af587d48316fee66e9c8c/) | ⚠️ Unaudited |
| Airdrop | unknown | mantle | n/a | [`0x8551d2141a755ed8ca3a9e4bd9977dadf300fdb2`](./contracts/mantle-5000/0x8551d2141a755ed8ca3a9e4bd9977dadf300fdb2/) | ⚠️ Unaudited |
| APMRegistry | unknown | ethereum | n/a | [`0x0cb113890b04b49455dfe06554e2d784598a29c9`](./contracts/ethereum-1/0x0cb113890b04b49455dfe06554e2d784598a29c9/) | ⚠️ Unaudited |
| ATokenWithDelegation | unknown | ethereum | n/a | [`0x366ae337897223aea70e3ebe1862219386f20593`](./contracts/ethereum-1/0x366ae337897223aea70e3ebe1862219386f20593/) | ⚠️ Unaudited |
| AuraProposalEncoder | unknown | ethereum | n/a | [`0xe5e941fd184ecc4bff84834b487d79efd6483287`](./contracts/ethereum-1/0xe5e941fd184ecc4bff84834b487d79efd6483287/) | ⚠️ Unaudited |
| AuthManager | unknown | moonriver | n/a | [`0x1077799f07c4dc45872e832902571f56e1f9185b`](./contracts/moonriver-1285/0x1077799f07c4dc45872e832902571f56e1f9185b/) | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | linea | n/a | [`0x6e84390dcc5195414ec91a8c56a5c91021b95704`](./contracts/linea-59144/0x6e84390dcc5195414ec91a8c56a5c91021b95704/) | ⚠️ Unaudited |
| BokkyPooBahsDateTimeContract | unknown | ethereum | n/a | [`0x75100bd564415731b5936a4a94d0dc29dde5db3c`](./contracts/ethereum-1/0x75100bd564415731b5936a4a94d0dc29dde5db3c/) | ⚠️ Unaudited |
| BridgedToken | unknown | linea | n/a | [`0x05f5198b1d4a37e07ac510fc7a207e1499e8aef7`](./contracts/linea-59144/0x05f5198b1d4a37e07ac510fc7a207e1499e8aef7/) | ⚠️ Unaudited |
| BridgeOFT | unknown | ethereum | n/a | [`0x01b9ac434c6cd3128e0d2f52780a91678db126c7`](./contracts/ethereum-1/0x01b9ac434c6cd3128e0d2f52780a91678db126c7/) | ⚠️ Unaudited |
| CallForwardingProxy | unknown | ethereum | n/a | [`0x3697bd0bc6c050135b8321f989a5316eacbf367d`](./contracts/ethereum-1/0x3697bd0bc6c050135b8321f989a5316eacbf367d/) | ⚠️ Unaudited |
| CallProxy | unknown | arbitrum | n/a | [`0x031828231b6829208c1b2aad4ecfea2c011dcf87`](./contracts/arbitrum-42161/0x031828231b6829208c1b2aad4ecfea2c011dcf87/) | ⚠️ Unaudited |
| CbEthSynchronicityPriceAdapter | unknown | ethereum | n/a | [`0x7ae2930b50cfebc99fe6db16ce5b9c7d8d09332c`](./contracts/ethereum-1/0x7ae2930b50cfebc99fe6db16ce5b9c7d8d09332c/) | ⚠️ Unaudited |
| ChildERC20 | unknown | polygon | n/a | [`0x30b622609ffab1641b498e9bf1ff102ab288bee7`](./contracts/polygon-137/0x30b622609ffab1641b498e9bf1ff102ab288bee7/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x004bae2ed0210e937327aaf199135393f64d5b57`](./contracts/polygon-137/0x004bae2ed0210e937327aaf199135393f64d5b57/) | ⚠️ Unaudited |
| Claimer | unknown | ethereum | n/a | [`0x2819b65021e13ceeb9ac33e77db32c7e64e7520d`](./contracts/ethereum-1/0x2819b65021e13ceeb9ac33e77db32c7e64e7520d/) | ⚠️ Unaudited |
| CLrETHSynchronicityPriceAdapter | unknown | ethereum | n/a | [`0x05225cd708bca9253789c1374e4337a019e99d56`](./contracts/ethereum-1/0x05225cd708bca9253789c1374e4337a019e99d56/) | ⚠️ Unaudited |
| CLSynchronicityPriceAdapterPegToBase | unknown | ethereum | n/a | [`0x230e0321cf38f09e247e50afc7801ea2351fe56f`](./contracts/ethereum-1/0x230e0321cf38f09e247e50afc7801ea2351fe56f/) | ⚠️ Unaudited |
| CLwstETHSynchronicityPriceAdapter | unknown | ethereum | n/a | [`0x981ab570ac289938f296b975c524b66fbf1b8774`](./contracts/ethereum-1/0x981ab570ac289938f296b975c524b66fbf1b8774/) | ⚠️ Unaudited |
| CoinToken | unknown | mantle | n/a | [`0x3e65ac1dd4938e02301c4869d3043903f5deb474`](./contracts/mantle-5000/0x3e65ac1dd4938e02301c4869d3043903f5deb474/) | ⚠️ Unaudited |
| Collector | unknown | ethereum | n/a | [`0x80f2c02224a2e548fc67c0bf705ebfa825dd5439`](./contracts/ethereum-1/0x80f2c02224a2e548fc67c0bf705ebfa825dd5439/) | ⚠️ Unaudited |
| ComposableStablePool | unknown | optimism | n/a | [`0xde45f101250f2ca1c0f8adfc172576d10c12072d`](./contracts/optimism-10/0xde45f101250f2ca1c0f8adfc172576d10c12072d/) | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | base | n/a | [`0x2dc44ca93a1207cb50671dca68991f64776f5fa2`](./contracts/base-8453/0x2dc44ca93a1207cb50671dca68991f64776f5fa2/) | ⚠️ Unaudited |
| Controller | unknown | moonriver | n/a | [`0x4bea5e06cb0536cfd5fe32a3f3a20495fabedfd8`](./contracts/moonriver-1285/0x4bea5e06cb0536cfd5fe32a3f3a20495fabedfd8/) | ⚠️ Unaudited |
| CrosschainForwarderBase | unknown | ethereum | n/a | [`0x3215225538da1546fe0da88ee13019f402078942`](./contracts/ethereum-1/0x3215225538da1546fe0da88ee13019f402078942/) | ⚠️ Unaudited |
| CrowdProposal | unknown | ethereum | n/a | [`0x62134f1897e236e06ed34841ba91cef55945df23`](./contracts/ethereum-1/0x62134f1897e236e06ed34841ba91cef55945df23/) | ⚠️ Unaudited |
| CryptoCabz | unknown | polygon | n/a | [`0x76bf9ac96fc75849c6872cf89f367e56feed5c30`](./contracts/polygon-137/0x76bf9ac96fc75849c6872cf89f367e56feed5c30/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | ethereum | n/a | [`0xff04ed5f7a6c3a0f1e5ea20617f8c6f513d5a77c`](./contracts/ethereum-1/0xff04ed5f7a6c3a0f1e5ea20617f8c6f513d5a77c/) | ⚠️ Unaudited |
| DelayedWithdraw | unknown | ethereum | n/a | [`0x755a078dee1c264a3053f02cd634e750d505cf85`](./contracts/ethereum-1/0x755a078dee1c264a3053f02cd634e750d505cf85/) | ⚠️ Unaudited |
| Delegation | unknown | ethereum | n/a | [`0x8287f469726a95dede7cff1ea3b24a34a12e88f0`](./contracts/ethereum-1/0x8287f469726a95dede7cff1ea3b24a34a12e88f0/) | ⚠️ Unaudited |
| DelegationMigration | unknown | ethereum | n/a | [`0x9d2a805227fbb433f7c05e98af505b04e07ab639`](./contracts/ethereum-1/0x9d2a805227fbb433f7c05e98af505b04e07ab639/) | ⚠️ Unaudited |
| DualAggregator | unknown | arbitrum | n/a | [`0x01065f4726bbbce2ef1a4bebc04af3209357c71e`](./contracts/arbitrum-42161/0x01065f4726bbbce2ef1a4bebc04af3209357c71e/) | ⚠️ Unaudited |
| Dummy | unknown | ethereum | n/a | [`0x136d8483032e8e6f7de3ba3fb8f7e0cac9d2ccfa`](./contracts/ethereum-1/0x136d8483032e8e6f7de3ba3fb8f7e0cac9d2ccfa/) | ⚠️ Unaudited |
| DummyERC1155 | unknown | ethereum | n/a | [`0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d`](./contracts/ethereum-1/0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d/) | ⚠️ Unaudited |
| DummyERC20 | unknown | ethereum | n/a | [`0xf2f3bd7ca5746c5fac518f67d1be87805a2be82a`](./contracts/ethereum-1/0xf2f3bd7ca5746c5fac518f67d1be87805a2be82a/) | ⚠️ Unaudited |
| DummyERC721 | unknown | ethereum | n/a | [`0x71b821aa52a49f32eed535fca6eb5aa130085978`](./contracts/ethereum-1/0x71b821aa52a49f32eed535fca6eb5aa130085978/) | ⚠️ Unaudited |
| DummyMintableERC721 | unknown | ethereum | n/a | [`0x578360adf0bbb2f10ec9cec7ef89ef495511ed5f`](./contracts/ethereum-1/0x578360adf0bbb2f10ec9cec7ef89ef495511ed5f/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | arbitrum | n/a | [`0x0017abac5b6f291f9164e35b1234ca1d697f9cf4`](./contracts/arbitrum-42161/0x0017abac5b6f291f9164e35b1234ca1d697f9cf4/) | ⚠️ Unaudited |
| EmptyContract | unknown | ethereum | n/a | [`0x8c8fb15e0dbdae91aa426decedfb779c6ae985e3`](./contracts/ethereum-1/0x8c8fb15e0dbdae91aa426decedfb779c6ae985e3/) | ⚠️ Unaudited |
| EnforcedTxGateway | unknown | ethereum | n/a | [`0x642af405bf64660665b37977449c9c536b806318`](./contracts/ethereum-1/0x642af405bf64660665b37977449c9c536b806318/) | ⚠️ Unaudited |
| ENSRegistry | unknown | linea | n/a | [`0x50130b669b28c339991d8676fa73cf122a121267`](./contracts/linea-59144/0x50130b669b28c339991d8676fa73cf122a121267/) | ⚠️ Unaudited |
| ERC1155Predicate | unknown | ethereum | n/a | [`0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f`](./contracts/ethereum-1/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x76cf3b8064f356a16028124dcfedcf009c5fc2d3`](./contracts/bsc-56/0x76cf3b8064f356a16028124dcfedcf009c5fc2d3/) | ⚠️ Unaudited |
| ERC20Predicate | unknown | ethereum | n/a | [`0x1f4c1e0afbeb5b5b86d7722549274434b29884f6`](./contracts/ethereum-1/0x1f4c1e0afbeb5b5b86d7722549274434b29884f6/) | ⚠️ Unaudited |
| ERC721Predicate | unknown | ethereum | n/a | [`0x9aaae29879c95ed732bababea4cae20a6d931dbb`](./contracts/ethereum-1/0x9aaae29879c95ed732bababea4cae20a6d931dbb/) | ⚠️ Unaudited |
| EtherPredicate | unknown | ethereum | n/a | [`0x499a865ac595e6167482d2bd5a224876bab85ab4`](./contracts/ethereum-1/0x499a865ac595e6167482d2bd5a224876bab85ab4/) | ⚠️ Unaudited |
| EthLongMovePermissionsPayload | unknown | ethereum | n/a | [`0x274a46efd4364ccba654dc74ddb793f9010b179c`](./contracts/ethereum-1/0x274a46efd4364ccba654dc74ddb793f9010b179c/) | ⚠️ Unaudited |
| ETHRegistrarController | unknown | linea | n/a | [`0xdb75db974b1f2bd3b5916d503036208064d18295`](./contracts/linea-59144/0xdb75db974b1f2bd3b5916d503036208064d18295/) | ⚠️ Unaudited |
| EthShortMovePermissionsPayload | unknown | ethereum | n/a | [`0xdbb0236007fd3697b03a88b4b550b422f57894cf`](./contracts/ethereum-1/0xdbb0236007fd3697b03a88b4b550b422f57894cf/) | ⚠️ Unaudited |
| EthShortV2Payload | unknown | ethereum | n/a | [`0x62f5c2c54495567537c0f9c4b66a6adb3b584148`](./contracts/ethereum-1/0x62f5c2c54495567537c0f9c4b66a6adb3b584148/) | ⚠️ Unaudited |
| EthShortV3Payload | unknown | ethereum | n/a | [`0x92b64dd461944ace6fd2e9f91714d3962ae5007a`](./contracts/ethereum-1/0x92b64dd461944ace6fd2e9f91714d3962ae5007a/) | ⚠️ Unaudited |
| EVMScriptRegistry | unknown | ethereum | n/a | [`0x853cc0d5917f49b57b8e9f89e491f5e18919093a`](./contracts/ethereum-1/0x853cc0d5917f49b57b8e9f89e491f5e18919093a/) | ⚠️ Unaudited |
| FeeSharing | unknown | mode | n/a | [`0x8680ceabcb9b56913c519c069add6bc3494b7020`](./contracts/mode-34443/0x8680ceabcb9b56913c519c069add6bc3494b7020/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | mode | n/a | [`0x6df6c0e70d6874a37084270de861d4be682f271b`](./contracts/mode-34443/0x6df6c0e70d6874a37084270de861d4be682f271b/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | linea | n/a | [`0x0e57c8d26671e267c3c971824b93343bb75c2dc8`](./contracts/linea-59144/0x0e57c8d26671e267c3c971824b93343bb75c2dc8/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | linea | n/a | [`0x176211869ca2b568f2a7d4ee941e073a821ee1ff`](./contracts/linea-59144/0x176211869ca2b568f2a7d4ee941e073a821ee1ff/) | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | mode | n/a | [`0xc0ce92b23108cb4bdbf88788a3933546a85cd772`](./contracts/mode-34443/0xc0ce92b23108cb4bdbf88788a3933546a85cd772/) | ⚠️ Unaudited |
| Finance | unknown | ethereum | n/a | [`0xb9e5cbb9ca5b0d659238807e84d0176930753d86`](./contracts/ethereum-1/0xb9e5cbb9ca5b0d659238807e84d0176930753d86/) | ⚠️ Unaudited |
| FixedRatioSynchronicityPriceAdapterBaseToPeg | unknown | ethereum | n/a | [`0xac3af0f4a52c577cc2c241df51a01fde3d06d93b`](./contracts/ethereum-1/0xac3af0f4a52c577cc2c241df51a01fde3d06d93b/) | ⚠️ Unaudited |
| Flags | unknown | base | n/a | [`0x26e0e12b1682884a557e67743c6a575fd00bf332`](./contracts/base-8453/0x26e0e12b1682884a557e67743c6a575fd00bf332/) | ⚠️ Unaudited |
| FLOKI | unknown | mantle | n/a | [`0x6efff76acf1698a6a215eca7d632991678ec673b`](./contracts/mantle-5000/0x6efff76acf1698a6a215eca7d632991678ec673b/) | ⚠️ Unaudited |
| GasSwapper | unknown | ethereum | n/a | [`0x4ccd4cbde5ec758ccbf75f0be280647ff359c17a`](./contracts/ethereum-1/0x4ccd4cbde5ec758ccbf75f0be280647ff359c17a/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x08637515e85a4633e23dfc7861e2a9f53af640f7`](./contracts/ethereum-1/0x08637515e85a4633e23dfc7861e2a9f53af640f7/) | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | moonbeam | n/a | [`0x007132343ca619c5449297507b26c3f85e80d1b1`](./contracts/moonbeam-1284/0x007132343ca619c5449297507b26c3f85e80d1b1/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | base | n/a | [`0x0f9a0e7071b7b21bc7a8514da2cd251bc1ff0725`](./contracts/base-8453/0x0f9a0e7071b7b21bc7a8514da2cd251bc1ff0725/) | ⚠️ Unaudited |
| Greeter | unknown | arbitrum | n/a | [`0x1763b9ed3586b08ae796c7787811a2e1bc16163a`](./contracts/arbitrum-42161/0x1763b9ed3586b08ae796c7787811a2e1bc16163a/) | ⚠️ Unaudited |
| GUDOFTAdapter | unknown | ethereum | n/a | [`0x67953f28b50cd51e99804e86f42f0e7f9f1a0171`](./contracts/ethereum-1/0x67953f28b50cd51e99804e86f42f0e7f9f1a0171/) | ⚠️ Unaudited |
| JointCampaign | unknown | ethereum | n/a | [`0x8f1155447ee97b5ae147a01a5c420b0fddf0370d`](./contracts/ethereum-1/0x8f1155447ee97b5ae147a01a5c420b0fddf0370d/) | ⚠️ Unaudited |
| Keeper | unknown | ethereum | n/a | [`0xc2a55871a713fb98a6b60e2e76fc94021c9f182f`](./contracts/ethereum-1/0xc2a55871a713fb98a6b60e2e76fc94021c9f182f/) | ⚠️ Unaudited |
| Kernel | unknown | ethereum | n/a | [`0xb8ffc3cd6e7cf5a098a1c92f48009765b24088dc`](./contracts/ethereum-1/0xb8ffc3cd6e7cf5a098a1c92f48009765b24088dc/) | ⚠️ Unaudited |
| L1BatchBridgeGateway | unknown | ethereum | n/a | [`0x5bcfd99c34cf7e06fc756f6f5ae7400504852bc4`](./contracts/ethereum-1/0x5bcfd99c34cf7e06fc756f6f5ae7400504852bc4/) | ⚠️ Unaudited |
| L1CustomERC20Gateway | unknown | ethereum | n/a | [`0x40c3c3dea3b7d6d117e6713377144fd8ee6d6c97`](./contracts/ethereum-1/0x40c3c3dea3b7d6d117e6713377144fd8ee6d6c97/) | ⚠️ Unaudited |
| L1ERC1155Gateway | unknown | ethereum | n/a | [`0x244bf7aef29f03916569470a51fa0794b62f8cd7`](./contracts/ethereum-1/0x244bf7aef29f03916569470a51fa0794b62f8cd7/) | ⚠️ Unaudited |
| L1ERC721Gateway | unknown | ethereum | n/a | [`0x6260af48e8948617b8fa17f4e5cea2d21d21554b`](./contracts/ethereum-1/0x6260af48e8948617b8fa17f4e5cea2d21d21554b/) | ⚠️ Unaudited |
| L1ETHGateway | unknown | ethereum | n/a | [`0x1fcbe079c4bbab37406dab7dfd35acae37d5c55d`](./contracts/ethereum-1/0x1fcbe079c4bbab37406dab7dfd35acae37d5c55d/) | ⚠️ Unaudited |
| L1GatewayRouter | unknown | ethereum | n/a | [`0xb93ac04010bd61f45bf492022a5b49a902f798f3`](./contracts/ethereum-1/0xb93ac04010bd61f45bf492022a5b49a902f798f3/) | ⚠️ Unaudited |
| L1LidoGateway | unknown | ethereum | n/a | [`0x6625c6332c9f91f2d27c304e729b86db87a3f504`](./contracts/ethereum-1/0x6625c6332c9f91f2d27c304e729b86db87a3f504/) | ⚠️ Unaudited |
| L1LiskToken | unknown | ethereum | n/a | [`0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f`](./contracts/ethereum-1/0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f/) | ⚠️ Unaudited |
| L1MessageQueue | unknown | ethereum | n/a | [`0xbc9d741501a20f962756c95bf906b4abffadcf8f`](./contracts/ethereum-1/0xbc9d741501a20f962756c95bf906b4abffadcf8f/) | ⚠️ Unaudited |
| L1MessageQueueV2 | unknown | ethereum | n/a | [`0x39c36c9026ac18104839a50c61a4507ea5052eca`](./contracts/ethereum-1/0x39c36c9026ac18104839a50c61a4507ea5052eca/) | ⚠️ Unaudited |
| L1MessageQueueWithGasPriceOracle | unknown | ethereum | n/a | [`0x0d7e906bd9cafa154b048cfa766cc1e54e39af9b`](./contracts/ethereum-1/0x0d7e906bd9cafa154b048cfa766cc1e54e39af9b/) | ⚠️ Unaudited |
| L1OpEURCFactory | unknown | ethereum | n/a | [`0x8d9a9aef9ab3b7d978fd4f723fd1a5aebbcb2c67`](./contracts/ethereum-1/0x8d9a9aef9ab3b7d978fd4f723fd1a5aebbcb2c67/) | ⚠️ Unaudited |
| L1ScrollMessenger | unknown | ethereum | n/a | [`0x6774bcbd5cecef1336b5300fb5186a12ddd8b367`](./contracts/ethereum-1/0x6774bcbd5cecef1336b5300fb5186a12ddd8b367/) | ⚠️ Unaudited |
| L1StandardERC20Gateway | unknown | ethereum | n/a | [`0x4015fc868c06689abeba4a9dc8fa43b804f6239c`](./contracts/ethereum-1/0x4015fc868c06689abeba4a9dc8fa43b804f6239c/) | ⚠️ Unaudited |
| L1USDCBridge | unknown | ethereum | n/a | [`0x0ec393209674090368c592a591b25811e490bf36`](./contracts/ethereum-1/0x0ec393209674090368c592a591b25811e490bf36/) | ⚠️ Unaudited |
| L1USDCGateway | unknown | ethereum | n/a | [`0x4a5810f71b6836027c26c25bff9708dfcd2b5432`](./contracts/ethereum-1/0x4a5810f71b6836027c26c25bff9708dfcd2b5432/) | ⚠️ Unaudited |
| L1VestingWallet | unknown | ethereum | n/a | [`0x114cb34b1a0fbbb686e31bf5542d64a98c42ee23`](./contracts/ethereum-1/0x114cb34b1a0fbbb686e31bf5542d64a98c42ee23/) | ⚠️ Unaudited |
| L1VestingWalletPaused | unknown | ethereum | n/a | [`0xe2b0cfef892c017d84d8220b8d2ac249624cd087`](./contracts/ethereum-1/0xe2b0cfef892c017d84d8220b8d2ac249624cd087/) | ⚠️ Unaudited |
| L1WETHGateway | unknown | ethereum | n/a | [`0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe`](./contracts/ethereum-1/0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe/) | ⚠️ Unaudited |
| L2GasPriceOracle | unknown | ethereum | n/a | [`0x987e300fdfb06093859358522a79098848c33852`](./contracts/ethereum-1/0x987e300fdfb06093859358522a79098848c33852/) | ⚠️ Unaudited |
| L2USDCBridge | unknown | linea | n/a | [`0x1998108fa7993ea67a8b1a99d392a3288c5a5521`](./contracts/linea-59144/0x1998108fa7993ea67a8b1a99d392a3288c5a5521/) | ⚠️ Unaudited |
| LaunchOmnibusMainnet | unknown | ethereum | n/a | [`0x6ffda833d2cf6aa76fa199d96db22c4075c14d71`](./contracts/ethereum-1/0x6ffda833d2cf6aa76fa199d96db22c4075c14d71/) | ⚠️ Unaudited |
| Ledger | unknown | moonriver | n/a | [`0x1c7c3c6077ab51e1b656a208f1a9c3ad39b84269`](./contracts/moonriver-1285/0x1c7c3c6077ab51e1b656a208f1a9c3ad39b84269/) | ⚠️ Unaudited |
| LedgerBeacon | unknown | moonriver | n/a | [`0x36cf86ffa541fed07550ffd9536dbfaac73da7eb`](./contracts/moonriver-1285/0x36cf86ffa541fed07550ffd9536dbfaac73da7eb/) | ⚠️ Unaudited |
| LedgerFactory | unknown | moonriver | n/a | [`0x780825fd0e7b09a8c136ad41090e356c138e0ede`](./contracts/moonriver-1285/0x780825fd0e7b09a8c136ad41090e356c138e0ede/) | ⚠️ Unaudited |
| LidoStVaultYieldProviderFactory | unknown | ethereum | n/a | [`0xe4fc9f1a8cb97fead3c2b37c11ad5b1c2ef73959`](./contracts/ethereum-1/0xe4fc9f1a8cb97fead3c2b37c11ad5b1c2ef73959/) | ⚠️ Unaudited |
| LineaRollup | unknown | ethereum | n/a | [`0x04728bf704a716c26f9ef4085013b760ac885631`](./contracts/ethereum-1/0x04728bf704a716c26f9ef4085013b760ac885631/) | ⚠️ Unaudited |
| LineaSurgeXP | unknown | linea | n/a | [`0x96b3a15257c4983a6fe9073d8c91763433124b82`](./contracts/linea-59144/0x96b3a15257c4983a6fe9073d8c91763433124b82/) | ⚠️ Unaudited |
| LineaVoyageXP | unknown | linea | n/a | [`0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a`](./contracts/linea-59144/0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a/) | ⚠️ Unaudited |
| LineaXP | unknown | linea | n/a | [`0xc24e7b826b3c1e8918843baf7abd2e51399cfc13`](./contracts/linea-59144/0xc24e7b826b3c1e8918843baf7abd2e51399cfc13/) | ⚠️ Unaudited |
| LinkToken | unknown | base | n/a | [`0x88038752750d7717a19f2a681ef75e65fb714f1e`](./contracts/base-8453/0x88038752750d7717a19f2a681ef75e65fb714f1e/) | ⚠️ Unaudited |
| LockedFBTC | unknown | mantle | n/a | [`0x791caa38eb7056696f8d7e0714bb728a34eeac39`](./contracts/mantle-5000/0x791caa38eb7056696f8d7e0714bb728a34eeac39/) | ⚠️ Unaudited |
| LUSDStablecoin | unknown | mantle | n/a | [`0xf93a85d53e4af0d62bdf3a83ccfc1ecf3eaf9f32`](./contracts/mantle-5000/0xf93a85d53e4af0d62bdf3a83ccfc1ecf3eaf9f32/) | ⚠️ Unaudited |
| ManyChainMultiSig | unknown | arbitrum | n/a | [`0x4ea3f791511d35aa859455bd60af526537040bb3`](./contracts/arbitrum-42161/0x4ea3f791511d35aa859455bd60af526537040bb3/) | ⚠️ Unaudited |
| MasterMinter | unknown | mode | n/a | [`0x885904d9cfece53fb5042530f780c5208078b2bf`](./contracts/mode-34443/0x885904d9cfece53fb5042530f780c5208078b2bf/) | ⚠️ Unaudited |
| Mediator | unknown | ethereum | n/a | [`0xe34949a48cd2e6f5cd41753e449bd2d43993c9ac`](./contracts/ethereum-1/0xe34949a48cd2e6f5cd41753e449bd2d43993c9ac/) | ⚠️ Unaudited |
| Merkle | unknown | ethereum | n/a | [`0x195fe6ee6639665cceb15bcceb9980fc445dfa0b`](./contracts/ethereum-1/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x4b3edb22952fb4a70140e39fb1add05a6b49622b`](./contracts/ethereum-1/0x4b3edb22952fb4a70140e39fb1add05a6b49622b/) | ⚠️ Unaudited |
| MerklePatriciaProof | unknown | ethereum | n/a | [`0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa`](./contracts/ethereum-1/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| MetaStablePool | unknown | ethereum | n/a | [`0x32296969ef14eb0c6d29669c550d4a0449130230`](./contracts/ethereum-1/0x32296969ef14eb0c6d29669c550d4a0449130230/) | ⚠️ Unaudited |
| METHL2 | unknown | mantle | n/a | [`0xeb0c390b1fb2b63d5ed257b822a1cbbff87956ce`](./contracts/mantle-5000/0xeb0c390b1fb2b63d5ed257b822a1cbbff87956ce/) | ⚠️ Unaudited |
| MintableERC721Predicate | unknown | ethereum | n/a | [`0x3bf44ad2e36f39572175c72c1d0fa85933c6e0b6`](./contracts/ethereum-1/0x3bf44ad2e36f39572175c72c1d0fa85933c6e0b6/) | ⚠️ Unaudited |
| MJAirdrop | unknown | mantle | n/a | [`0x532e522964cba02be18f767e4c0e39188894163f`](./contracts/mantle-5000/0x532e522964cba02be18f767e4c0e39188894163f/) | ⚠️ Unaudited |
| Mooniswap | unknown | ethereum | n/a | [`0xc1a900ae76db21dc5aa8e418ac0f4e888a4c7431`](./contracts/ethereum-1/0xc1a900ae76db21dc5aa8e418ac0f4e888a4c7431/) | ⚠️ Unaudited |
| MultipleVersionRollupVerifier | unknown | ethereum | n/a | [`0x1ea29d57dac237152d878758bae4beb2668998f6`](./contracts/ethereum-1/0x1ea29d57dac237152d878758bae4beb2668998f6/) | ⚠️ Unaudited |
| NameWrapper | unknown | linea | n/a | [`0xa53cca02f98d590819141aa85c891e2af713c223`](./contracts/linea-59144/0xa53cca02f98d590819141aa85c891e2af713c223/) | ⚠️ Unaudited |
| OFTAdapterSwETH | unknown | ethereum | n/a | [`0x2c1b3426e557d6756d8a8859a0779373236f94e2`](./contracts/ethereum-1/0x2c1b3426e557d6756d8a8859a0779373236f94e2/) | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | mode | n/a | [`0xcdd475325d6f564d27247d1dddbb0dac6fa0a5cf`](./contracts/mode-34443/0xcdd475325d6f564d27247d1dddbb0dac6fa0a5cf/) | ⚠️ Unaudited |
| OracleAdapter | unknown | ethereum | n/a | [`0xa419026809e2d13bc73dee13992e7873ab605981`](./contracts/ethereum-1/0xa419026809e2d13bc73dee13992e7873ab605981/) | ⚠️ Unaudited |
| OracleMaster | unknown | moonriver | n/a | [`0x425fa6d8c977f12e9d62396f3f5037f5bc3c1b5b`](./contracts/moonriver-1285/0x425fa6d8c977f12e9d62396f3f5037f5bc3c1b5b/) | ⚠️ Unaudited |
| OwnedResolver | unknown | linea | n/a | [`0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f`](./contracts/linea-59144/0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f/) | ⚠️ Unaudited |
| PauseController | unknown | ethereum | n/a | [`0x22e5c20bb540d68f43a6790927fab8e4fbdc83e7`](./contracts/ethereum-1/0x22e5c20bb540d68f43a6790927fab8e4fbdc83e7/) | ⚠️ Unaudited |
| PaymentSplitterWrapper | unknown | ethereum | n/a | [`0x4d2504c498bb7e63bcc7bc11f781d30d99b6febb`](./contracts/ethereum-1/0x4d2504c498bb7e63bcc7bc11f781d30d99b6febb/) | ⚠️ Unaudited |
| PlonkVerifier | unknown | ethereum | n/a | [`0x2edcbd39334c4e9570d13e2fbd352688f8942c52`](./contracts/ethereum-1/0x2edcbd39334c4e9570d13e2fbd352688f8942c52/) | ⚠️ Unaudited |
| PlonkVerifierForDataAggregation | unknown | ethereum | n/a | [`0xfb0c26a89833762b65098dd66b6ae04b34d153be`](./contracts/ethereum-1/0xfb0c26a89833762b65098dd66b6ae04b34d153be/) | ⚠️ Unaudited |
| PlonkVerifierForMultiTypeDataAggregation | unknown | ethereum | n/a | [`0x8ab455030e1ea718e445f423bb8d993dcad24cc4`](./contracts/ethereum-1/0x8ab455030e1ea718e445f423bb8d993dcad24cc4/) | ⚠️ Unaudited |
| PlonkVerifierFull | unknown | ethereum | n/a | [`0x6312e56c17e1011dd0821558034a77bb60d06e1b`](./contracts/ethereum-1/0x6312e56c17e1011dd0821558034a77bb60d06e1b/) | ⚠️ Unaudited |
| PlonkVerifierFullLarge | unknown | ethereum | n/a | [`0x2edea64bb8b45fd87c05dc89286f1a60f4f4bee0`](./contracts/ethereum-1/0x2edea64bb8b45fd87c05dc89286f1a60f4f4bee0/) | ⚠️ Unaudited |
| PlonkVerifierMainnetFull | unknown | ethereum | n/a | [`0x3d345775913a9cbfa3675024348b63ef14865d32`](./contracts/ethereum-1/0x3d345775913a9cbfa3675024348b63ef14865d32/) | ⚠️ Unaudited |
| Pool | unknown | arbitrum | n/a | [`0x2149a5f5d7ca96eb98a2ee6e5b0ba1a5593a1a0a`](./contracts/arbitrum-42161/0x2149a5f5d7ca96eb98a2ee6e5b0ba1a5593a1a0a/) | ⚠️ Unaudited |
| ProtocolDebugBinder | unknown | ethereum | n/a | [`0x01434ae91f8b31cceee27593d88112442395458d`](./contracts/ethereum-1/0x01434ae91f8b31cceee27593d88112442395458d/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x0833f5bd45803e05ef54e119a77e463ce6b1a963`](./contracts/ethereum-1/0x0833f5bd45803e05ef54e119a77e463ce6b1a963/) | ⚠️ Unaudited |
| PublicResolver | unknown | linea | n/a | [`0x86c5aed9f27837074612288610fb98ccc1733126`](./contracts/linea-59144/0x86c5aed9f27837074612288610fb98ccc1733126/) | ⚠️ Unaudited |
| RBACTimelock | unknown | arbitrum | n/a | [`0x8a89770722c84b60ce02989aedb22ac4791f8c7f`](./contracts/arbitrum-42161/0x8a89770722c84b60ce02989aedb22ac4791f8c7f/) | ⚠️ Unaudited |
| RegistryFactory | unknown | ethereum | n/a | [`0x939f1cc163fdc38a77571019eb4ad1794873bf8c`](./contracts/ethereum-1/0x939f1cc163fdc38a77571019eb4ad1794873bf8c/) | ⚠️ Unaudited |
| ReleaseRegistry | unknown | ethereum | n/a | [`0x5bd444ad23e02376f8fbba47e3cc9d2cadb6c4f6`](./contracts/ethereum-1/0x5bd444ad23e02376f8fbba47e3cc9d2cadb6c4f6/) | ⚠️ Unaudited |
| RepFixedPriceAdapter | unknown | ethereum | n/a | [`0xc7751400f809cdb0c167f87985083c558a0610f7`](./contracts/ethereum-1/0xc7751400f809cdb0c167f87985083c558a0610f7/) | ⚠️ Unaudited |
| ReverseRegistrar | unknown | linea | n/a | [`0x08d3ff6e65f680844fd2465393ff6f0d742b67d5`](./contracts/linea-59144/0x08d3ff6e65f680844fd2465393ff6f0d742b67d5/) | ⚠️ Unaudited |
| RewardExtractor | unknown | ethereum | n/a | [`0x3715d25c56126fb1bc57e37bf5a017ffb6cecbc6`](./contracts/ethereum-1/0x3715d25c56126fb1bc57e37bf5a017ffb6cecbc6/) | ⚠️ Unaudited |
| RoleManager | unknown | ethereum | n/a | [`0x1bb44f9d91b4276621550aeea5d2d96279975bf3`](./contracts/ethereum-1/0x1bb44f9d91b4276621550aeea5d2d96279975bf3/) | ⚠️ Unaudited |
| RolesAuthority | unknown | ethereum | n/a | [`0x2db7583852c700549b710fd79dd1b54af2efa4dd`](./contracts/ethereum-1/0x2db7583852c700549b710fd79dd1b54af2efa4dd/) | ⚠️ Unaudited |
| RolesValidatorMainnet | unknown | ethereum | n/a | [`0xc90e7cc979f3e931829cda552b50d82d420b9e8e`](./contracts/ethereum-1/0xc90e7cc979f3e931829cda552b50d82d420b9e8e/) | ⚠️ Unaudited |
| Root | unknown | linea | n/a | [`0xfbf795ead640e261868eb200ed2850eb9c151e7d`](./contracts/linea-59144/0xfbf795ead640e261868eb200ed2850eb9c151e7d/) | ⚠️ Unaudited |
| RootChainManager | unknown | ethereum | n/a | [`0x0bff34272af650632236703a3d6d8e3c133421cb`](./contracts/ethereum-1/0x0bff34272af650632236703a3d6d8e3c133421cb/) | ⚠️ Unaudited |
| RSwellOFTAdapter | unknown | ethereum | n/a | [`0x428cda6c1994b926f75a4830d5baedee9db2ac58`](./contracts/ethereum-1/0x428cda6c1994b926f75a4830d5baedee9db2ac58/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x13600b9aee86f8254969918b1e9ae6ea091b8727`](./contracts/ethereum-1/0x13600b9aee86f8254969918b1e9ae6ea091b8727/) | ⚠️ Unaudited |
| SafeL2 | unknown | unichain | n/a | [`0xac8bc65814dd0501674f6940aff1a4ea78fc20ef`](./contracts/unichain-130/0xac8bc65814dd0501674f6940aff1a4ea78fc20ef/) | ⚠️ Unaudited |
| SafeMath | unknown | ethereum | n/a | [`0x6ebeac13f6403d19c95b6b75008b12fd21a93aab`](./contracts/ethereum-1/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ⚠️ Unaudited |
| ScrollChain | unknown | ethereum | n/a | [`0xa13baf47339d63b743e7da8741db5456dac1e556`](./contracts/ethereum-1/0xa13baf47339d63b743e7da8741db5456dac1e556/) | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | optimism | n/a | [`0x0f86056d00bcf39baef81bbed1786e6f32c1a5fe`](./contracts/optimism-10/0x0f86056d00bcf39baef81bbed1786e6f32c1a5fe/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x39808cafef4b271faa22afd44177698e7a90b220`](./contracts/ethereum-1/0x39808cafef4b271faa22afd44177698e7a90b220/) | ⚠️ Unaudited |
| StakingRewardsSushi | unknown | ethereum | n/a | [`0x75ff3dd673ef9fc459a52e1054db5df2a1101212`](./contracts/ethereum-1/0x75ff3dd673ef9fc459a52e1054db5df2a1101212/) | ⚠️ Unaudited |
| StaticMetadataService | unknown | linea | n/a | [`0x18703d0117121f6a7476221e2afc57faf9866e4c`](./contracts/linea-59144/0x18703d0117121f6a7476221e2afc57faf9866e4c/) | ⚠️ Unaudited |
| StETHtoETHSynchronicityPriceAdapter | unknown | ethereum | n/a | [`0xade6cba6c45aa8e9d0337cac3d2619eabc39d901`](./contracts/ethereum-1/0xade6cba6c45aa8e9d0337cac3d2619eabc39d901/) | ⚠️ Unaudited |
| SwBtcOFTAdapter | unknown | ethereum | n/a | [`0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2`](./contracts/ethereum-1/0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2/) | ⚠️ Unaudited |
| SwellOFTAdapter | unknown | ethereum | n/a | [`0x09341022ea237a4db1644de7ccf8fa0e489d85b7`](./contracts/ethereum-1/0x09341022ea237a4db1644de7ccf8fa0e489d85b7/) | ⚠️ Unaudited |
| SwETHOFTAdapter | unknown | ethereum | n/a | [`0x9b07fb810ef909b01f959911cef2cc834433f562`](./contracts/ethereum-1/0x9b07fb810ef909b01f959911cef2cc834433f562/) | ⚠️ Unaudited |
| SymbioticAdapter | unknown | ethereum | n/a | [`0x2a6a2beebf6d65e03246087a41812db1c5c0caf8`](./contracts/ethereum-1/0x2a6a2beebf6d65e03246087a41812db1c5c0caf8/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x6a124779fdf107c3f6bcb992731dcaad09f2276a`](./contracts/ethereum-1/0x6a124779fdf107c3f6bcb992731dcaad09f2276a/) | ⚠️ Unaudited |
| TestFactory | unknown | ethereum | n/a | [`0x374d1176eec25dad22b84d331941d3a298e28c2c`](./contracts/ethereum-1/0x374d1176eec25dad22b84d331941d3a298e28c2c/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x0cd4c0f24a0a9f3e2fe80ed385d8ad5a2ffeca44`](./contracts/ethereum-1/0x0cd4c0f24a0a9f3e2fe80ed385d8ad5a2ffeca44/) | ⚠️ Unaudited |
| TokenizedStrategy | unknown | ethereum | n/a | [`0x473f0adec308dc82440665d9fc7d5e26ebcf0e05`](./contracts/ethereum-1/0x473f0adec308dc82440665d9fc7d5e26ebcf0e05/) | ⚠️ Unaudited |
| TokenManager | unknown | ethereum | n/a | [`0xf73a1260d222f447210581ddf212d915c09a3249`](./contracts/ethereum-1/0xf73a1260d222f447210581ddf212d915c09a3249/) | ⚠️ Unaudited |
| TokenMintERC20Token | unknown | mantle | n/a | [`0x49397ac9cb061152b770b1d274a5682155f20099`](./contracts/mantle-5000/0x49397ac9cb061152b770b1d274a5682155f20099/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | scroll | n/a | [`0x8ae8f22226b9d789a36ac81474e633f8be2856c9`](./contracts/scroll-534352/0x8ae8f22226b9d789a36ac81474e633f8be2856c9/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x00032e33ac57c73f9d4e3e85a97488214cb5f25b`](./contracts/polygon-137/0x00032e33ac57c73f9d4e3e85a97488214cb5f25b/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x009aedc40323b16a0cbc71920d05c15192643974`](./contracts/polygon-137/0x009aedc40323b16a0cbc71920d05c15192643974/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xc5578194d457dcce3f272538d1ad52c68d1ce849`](./contracts/ethereum-1/0xc5578194d457dcce3f272538d1ad52c68d1ce849/) | ⚠️ Unaudited |
| UniversalResolver | unknown | linea | n/a | [`0x3aa974fb3f8c1e02796048bdcded79e9d53a6965`](./contracts/linea-59144/0x3aa974fb3f8c1e02796048bdcded79e9d53a6965/) | ⚠️ Unaudited |
| USDT | unknown | mantle | n/a | [`0x201eba5cc46d216ce6dc03f6a759e8e766e956ae`](./contracts/mantle-5000/0x201eba5cc46d216ce6dc03f6a759e8e766e956ae/) | ⚠️ Unaudited |
| Validator | unknown | ethereum | n/a | [`0x7db7d8be39b6bb07115445b5ebaa7b8345d6b2f6`](./contracts/ethereum-1/0x7db7d8be39b6bb07115445b5ebaa7b8345d6b2f6/) | ⚠️ Unaudited |
| ValidatorContainerProofVerifier | unknown | ethereum | n/a | [`0x2309c45d44105928b483f608dd6140fb65f3ebde`](./contracts/ethereum-1/0x2309c45d44105928b483f608dd6140fb65f3ebde/) | ⚠️ Unaudited |
| ValidatorFactory | unknown | ethereum | n/a | [`0x0a6c933495a7bb768d95f4667b074dd5b95b78eb`](./contracts/ethereum-1/0x0a6c933495a7bb768d95f4667b074dd5b95b78eb/) | ⚠️ Unaudited |
| VaultViewer | unknown | ethereum | n/a | [`0x57dab476c3e37a2410076c9568d796e429fd8418`](./contracts/ethereum-1/0x57dab476c3e37a2410076c9568d796e429fd8418/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x0db86d2d8707f260d455f63790f5f5e5d828a961`](./contracts/ethereum-1/0x0db86d2d8707f260d455f63790f5f5e5d828a961/) | ⚠️ Unaudited |
| WBTC | unknown | mantle | n/a | [`0xcabae6f6ea1ecab08ad02fe02ce9a44f09aebfa2`](./contracts/mantle-5000/0xcabae6f6ea1ecab08ad02fe02ce9a44f09aebfa2/) | ⚠️ Unaudited |
| WeightedPool | unknown | arbitrum | n/a | [`0x178e029173417b1f9c8bc16dcec6f697bc323746`](./contracts/arbitrum-42161/0x178e029173417b1f9c8bc16dcec6f697bc323746/) | ⚠️ Unaudited |
| Whitelist | unknown | ethereum | n/a | [`0x259204ddd2ba29bd9b1b9a5c9b093f73d7eacf37`](./contracts/ethereum-1/0x259204ddd2ba29bd9b1b9a5c9b093f73d7eacf37/) | ⚠️ Unaudited |
| WithdrawalFinalizer | unknown | ethereum | n/a | [`0x414f7ca4256e6edeeb8d1eff902328e82f266e9e`](./contracts/ethereum-1/0x414f7ca4256e6edeeb8d1eff902328e82f266e9e/) | ⚠️ Unaudited |
| WithdrawLimitModule | unknown | ethereum | n/a | [`0x4c86cb5cd701cbf2364f25ed9563ff3d3d493c22`](./contracts/ethereum-1/0x4c86cb5cd701cbf2364f25ed9563ff3d3d493c22/) | ⚠️ Unaudited |
| WstETHReferralStaker | unknown | ethereum | n/a | [`0xa88f0329c2c4ce51ba3fc619bbf44efe7120dd0d`](./contracts/ethereum-1/0xa88f0329c2c4ce51ba3fc619bbf44efe7120dd0d/) | ⚠️ Unaudited |
| WstETHSynchronicityPriceAdapter | unknown | ethereum | n/a | [`0x8b6851156023f4f5a66f68bea80851c3d905ac93`](./contracts/ethereum-1/0x8b6851156023f4f5a66f68bea80851c3d905ac93/) | ⚠️ Unaudited |
| WstKSM | unknown | moonriver | n/a | [`0x3bfd113ad0329a7994a681236323fb16e16790e3`](./contracts/moonriver-1285/0x3bfd113ad0329a7994a681236323fb16e16790e3/) | ⚠️ Unaudited |
| YieldManager | unknown | ethereum | n/a | [`0x751236a1afc11b7f1a7630fe87b0bd96ac5203c4`](./contracts/ethereum-1/0x751236a1afc11b7f1a7630fe87b0bd96ac5203c4/) | ⚠️ Unaudited |
| ZkEvmVerifierPostEuclid | unknown | ethereum | n/a | [`0x0112315fa1c81c35ac9a477e161b52ae4d1466b3`](./contracts/ethereum-1/0x0112315fa1c81c35ac9a477e161b52ae4d1466b3/) | ⚠️ Unaudited |
| ZkEvmVerifierPostFeynman | unknown | ethereum | n/a | [`0xa8d4702aa5c09af5dd1323e1842a43789021f485`](./contracts/ethereum-1/0xa8d4702aa5c09af5dd1323e1842a43789021f485/) | ⚠️ Unaudited |
| ZkEvmVerifierV1 | unknown | ethereum | n/a | [`0x3f7b737155e6e0dece9cd8cd3240d15939c58184`](./contracts/ethereum-1/0x3f7b737155e6e0dece9cd8cd3240d15939c58184/) | ⚠️ Unaudited |
| ZkEvmVerifierV2 | unknown | ethereum | n/a | [`0x2d6e16d8e8a0c3bc7750e774b108ec39ab0c18fb`](./contracts/ethereum-1/0x2d6e16d8e8a0c3bc7750e774b108ec39ab0c18fb/) | ⚠️ Unaudited |
| ZrcOFTAdapter | unknown | ethereum | n/a | [`0x41742a7e10b265accc60c3de389cce93dfb32bab`](./contracts/ethereum-1/0x41742a7e10b265accc60c3de389cce93dfb32bab/) | ⚠️ Unaudited |

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
| [The Lido protocol, from the very beginning, is built on trust in code, and that trust comes from careful and continuous verification. Every component of the Lido protocol has gone through multiple layers of independent review by leading blockchain security firms. Over the years, experts from Certora, MixBytes, Statemind, Ackee, OpenZeppelin Consensys Diligence, ChainSecurity, Oxorio, Hexens, and SigmaPrime have examined Lido protocol’s smart contracts, looking for ways to make them safer and more reliable. The results of these reviews are full audit reports and code-verification summaries, which are publicly available for anyone to explore [here]().](https://github.com/lidofinance/audits) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/lido/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [See [audit report]().](https://github.com/lidofinance/audits/blob/main/Cyfrin%20CircuitBreaker%20Audit%20Report%2004-2026.pdf) | Cyfrin | Audit | 2026-05 | fresh | Direct | contract_name | 1 | high |
| [See [formal verification report]() for more details.](https://github.com/lidofinance/audits/blob/main/Cyfrin%20CircuitBreaker%20Formal%20Verification%20Report%2004-2026.pdf) | Cyfrin | Audit | 2026-04 | fresh | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20CircuitBreaker%20Audit%20Report%2004-2026.pdf) | MixBytes | Audit | 2026-05 | fresh | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V7_1%20Audit%20Report.pdf) | Composable Security | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20DeFi%20Wrapper%20MellowStrategyAdapter%20Security%20Audit%20Report%2003-2026.pdf) | yAudit | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Easy%20Track%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-03 | fresh | Direct | contract_name | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V3%20Smart%20Contracts%20Security%20Assessment%20Report%20fix%20review%2003-26.pdf) | Certora | Audit | 2026-01 | fresh | Direct | contract_name | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20v3%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | 7 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Easy%20Track%20stVaults%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Sigma%20Prime%20-%20Lido%20BLS%20Library%20Security%20Assessment%20Report%20v2.0%20-%2001-2026.pdf) | Sigma Prime | Audit | 2026-01 | fresh | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20CSM%20Performance%20Oracle%20Security%20Audit%20Report%2001-26.pdf) | yAudit | Audit | 2026-01 | fresh | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20DeFi%20Wrapper%20Security%20Audit%20Report%2001-2026.pdf) | yAudit | Audit | 2026-02 | fresh | Direct | contract_name | 17 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Vault%20Wrapper%20Report%2001-2026.pdf) | Ackee Blockchain | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [full report](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V3%20Audit%20Report%20-%2012-2025.pdf) | Certora | Audit | 2026-01 | fresh | Direct | contract_name | 15 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V3%20Formal%20Verification%20Report%20-%2012-2025.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | 18 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V3%20Oracle%20V7%20Audit%20Report%20-%2012-2025.pdf) | Certora | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [full report](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20V3%20Security%20Audit%20Report%20-%2012-2025.pdf) | yAudit | Audit | 2026-01 | fresh | Direct | contract_name | 34 | high |
| [full report](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20V3%20Easy%20Track%20Security%20Audit%20Report%20-%2012-2025.pdf) | yAudit | Audit | 2026-01 | fresh | Direct | contract_name | 10 | high |
| [full report](https://github.com/lidofinance/audits/blob/main/Consensys%20Diligence%20Lido%20V3%20Security%20Audit%20-%2011-2025.pdf) | yAudit | Audit | 2025-08 | fresh | Direct | contract_name | 14 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Stonks%202%20Audit%20Report%2012-25.pdf) | Ackee Blockchain | Audit | 2026-02 | fresh | Direct | contract_name | 4 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Lido%20LDO%20Revesting%20Security%20Audit%20Report%20-%2012-2025.pdf) | yAudit | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20V3%20Oracle%20V7%20Audit%20Report%20-%2012-2025.pdf) | Composable Security | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Easy%20Track%20Security%20Audit%20Report%2009-25.pdf) | yAudit | Audit | 2025-09 | fresh | Direct | contract_name | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20WstETH%20Staker%20Security%20Audit%20Report%2009-2025.pdf) | yAudit | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Triggerable%20Withdrawals%20Audit%20Report%2009-25.pdf) | Ackee Blockchain | Audit | 2025-09 | fresh | Direct | contract_name | 11 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V6%20Audit%20Report.pdf) | Composable Security | Audit | 2025-08 | fresh | Direct | contract_name | 2 | high |
| [See [full report]() for more details](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V6_0_2%20Audit%20Report.pdf) | Composable Security | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Easy%20Track%20CSM%20v2%20Security%20Audit%20Report%2009-2025.pdf) | yAudit | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Community%20Staking%20Module%20v2%20Audit%20Report%2009-2025.pdf) | Ackee Blockchain | Audit | 2025-09 | fresh | Direct | contract_name | 13 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Triggerable%20Withdrawals%20and%20CSM%20v2%20Audit%20Report%2009-2025.pdf) | Statemind | Audit | 2025-09 | fresh | Direct | contract_name | 40 | high |
| [report](https://github.com/lidofinance/audits/blob/main/Certora%20Dual%20Governance%20v1.0.1%20Hotfix%20Review%20Report%2008-2025.pdf) | Certora | Audit | 2025-08 | fresh | Direct | contract_name | 1 | medium |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Dual%20Governance%20Escrow%20Fix%20Review%20Report%2008-2025.pdf) | Statemind | Audit | 2025-08 | fresh | Direct | contract_name | 12 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V5_4_1%2008-25.pdf) | Composable Security | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Code4rena%20CSM%20V2%20Audit%20Report%2008-2025.pdf) | Code4rena | Contest | 2025-08 | fresh | Direct | contract_name | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20CSM%20Security%20Audit%20Report%2007-2025.pdf) | yAudit | Audit | 2025-07 | aging | Direct | contract_name | 35 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/zk/Nethermind_LIDO_ACCOUNTING_ZK_ORACLE_FINAL.pdf) | Nethermind | Audit | 2025-07 | aging | Direct | contract_name | 2 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Dual%20Governance%20Deployment%20and%20Voting%20Script%20Review%20Report%2006-2025.pdf) | Statemind | Audit | 2025-06 | aging | Direct | contract_name | 14 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V5_2%2006-25.pdf) | Composable Security | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20RMC%20EasyTrack%20Security%20Audit%20Report%2005-2025.pdf) | yAudit | Audit | 2025-05 | aging | Direct | contract_name | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Oracle%20v5%2004-25.pdf) | MixBytes | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20v5%2004-25.pdf) | Composable Security | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Community%20Staking%20Module%20Report%2004-25.pdf) | Ackee Blockchain | Audit | 2025-04 | aging | Direct | contract_name | 28 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20GateSeal%20Deployment%20Validation%2003-2025.pdf) | Statemind | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Dual%20Governance%20Audit%20Report%2002-2025.pdf) | Certora | Audit | 2025-02 | aging | Direct | contract_name | 10 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/OpenZeppelin%20Dual%20Governance%20Re-Audit%20Report%2002-2025.pdf) | OpenZeppelin | Audit | 2025-02 | aging | Direct | contract_name | 10 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/Runtime%20Verification%20Dual%20Governance%20Formal%20Verification%20Report%2002-2025.pdf) | Runtime Verification | Audit | 2025-02 | aging | Direct | contract_name | 4 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/OpenZeppelin%20Dual%20Governance%20Audit%20Report%2011-2024.pdf) | OpenZeppelin | Audit | 2024-11 | aging | Direct | contract_name | 10 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Staking%20Router%20v2%20Report%2010-24.pdf) | Ackee Blockchain | Audit | 2024-10 | aging | Direct | contract_name | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Community%20Staking%20Module%20Report%2010-24.pdf) | Ackee Blockchain | Audit | 2024-10 | aging | Direct | contract_name | 28 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20CSM%20Security%20Audit%20Report%2010-24.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 35 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Oracle%20Security%20Audit%20Report%2010-24.pdf) | yAudit | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Dual%20Governance%20Audit%20Report%2010-2024.pdf) | Statemind | Audit | 2024-10 | aging | Direct | contract_name | 10 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Dual%20Governance%20Draft%20Audit%20Report%2009-2024.pdf) | Certora | Audit | 2024-09 | aging | Direct | contract_name | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Simple%20Delegation%20audit%20report%2007-24.pdf) | Ackee Blockchain | Audit | 2024-07 | stale | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20Simple%20Delegation%20audit%20report%2007-24.pdf) | Statemind | Audit | 2024-03 | stale | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Lido%20Sanity%20Checker%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/ChainSecurity%20Code%20Assessment%20of%20LIP-23%20Negative%20Rebase%20Checks%20Smart%20Contracts%2006-24.pdf) | ChainSecurity | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20GateSeal%20Deployment%20Validation%2004-2024.pdf) | Statemind | Audit | 2024-11 | aging | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Stonks%20Audit%20Report%2003-24.pdf) | Ackee Blockchain | Audit | 2024-03 | stale | Direct | contract_name | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20Simple%20DVT%20Easy%20Track%20Factories%20Audit%20Report%2001-24.pdf) | Statemind | Audit | 2023-12 | stale | Direct | contract_name | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Pessimistic%20Lido%20Stonks%20Audit%20Report%2012-23.pdf) | Pessimistic | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20roles%20analysis%2010-2023.pdf) | Statemind | Audit | 2023-10 | stale | Direct | contract_name | 8 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Oxorio%20Lido%20Easy%20Track%20Smart%20Contracts%20Security%20Audit%20Report%2010-2023.pdf) | yAudit | Audit | 2023-10 | stale | Direct | contract_name | 4 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20V2%20Upgrade%20Template%20Audit%20Report%2005-2023.pdf) | Statemind | Audit | 2023-05 | stale | Direct | contract_name | 1 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20V2%20Deployment%20Validation%2005-2023.pdf) | Statemind | Audit | 2023-05 | stale | Direct | contract_name | 37 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Hexens%20Lido%20V2%20Oracle%20Security%20Review%20Report%2005-23.pdf) | Hexens | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Oxorio%20Lido%20V2%20On-chain%20Audit%20Report%2006-23.pdf) | Oxorio | Audit | 2023-05 | stale | Direct | contract_name | 34 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Oxorio%20Lido%20V2%20Off-chain%20Audit%20Report%2006-23.pdf) | Oxorio | Audit | 2023-05 | stale | Direct | contract_name | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Hexens%20Lido%20V2%20Smart%20Contract%20Audit%20Report%2004-23.pdf) | Hexens | Audit | 2023-04 | stale | Direct | contract_name | 13 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Camp%20Lido%20V2%20Contest%20Report%2004-23.pdf) | MixBytes | Audit | 2023-03 | stale | Direct | contract_name | 34 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20GateSeals%20Audit%20Report%2004-2023.pdf) | Statemind | Audit | 2023-04 | stale | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V2%20Audit%20Report%2004-23.pdf) | Certora | Audit | 2023-04 | stale | Direct | contract_name | 34 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20V2%20Audit%20Report%2004-23.pdf) | Statemind | Audit | 2023-04 | stale | Direct | contract_name | 34 | high |
| [See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release.](https://github.com/lidofinance/audits/blob/main/Sigma%20Prime%20-%20Lido%20-%20dc4bc%20Security%20Assessment%20Report%20-%20v2.2%2003-2023.pdf) | Code4rena | Contest | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/ChainSecurity%20Lido%20Staking%20Router%20audit%20report%2002-23.pdf) | ChainSecurity | Audit | 2023-02 | stale | Direct | contract_name | 7 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20TRP%20Vesting%20Escrow%20Audit%20Report%2001-2023.pdf) | Statemind | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20MEV-Boost%20relay%20allowlist%20Security%20Audit%20Report%2009-2022.pdf) | yAudit | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Reserve%20Fund%20Audit%20Report%2009-2022.pdf) | Statemind | Audit | 2022-09 | stale | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Easy%20Track%20Payment%20Processor%20with%20limits%2009-2022.pdf) | Statemind | Audit | 2022-09 | stale | Direct | contract_name | 13 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/ChainSecurity%20Code%20Assessment%20of%20the%20Lido%20Smart%20Contracts%20Report%2008-22.pdf) | ChainSecurity | Audit | 2022-08 | stale | Direct | contract_name | 9 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Note%20on%20Deployed%20Code%20Compliance%2008-22.pdf) | MixBytes | Audit | 2022-08 | stale | Direct | contract_name | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Two-Phase%20Voting%20Security%20Audit%20Report%2006-2022.pdf) | yAudit | Audit | 2022-06 | stale | Direct | contract_name | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Oxorio%20Jumpgate%20Smart%20Contracts%20Security%20Audit%20Report%2005-2022.pdf) | yAudit | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido_Protocol_Security_Audit_Report%2005-2022.pdf) | MixBytes | Audit | 2022-05 | stale | Direct | contract_name | 9 | high |
| [The implementation has been audited by MixBytes() and considered safe. Read the full report from [here]().](https://github.com/lidofinance/audits/blob/main/MixBytes%20AAVE%20stETH%20integration%20Security%20Audit%20Report%2002-22.pdf) | yAudit | Audit | 2022-02 | stale | Direct | contract_name | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20In-protocol%20Coverage%20Security%20Audit%20Report%2002-2022.pdf) | yAudit | Audit | 2022-02 | stale | Direct | contract_name | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Deposit%20Security%20Module%20Security%20Audit%20Report%2002-2022.pdf) | yAudit | Audit | 2022-02 | stale | Direct | contract_name | 4 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20bETH%20Vault%20Security%20Audit%20Report%2001-2022.pdf) | yAudit | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Aragon%20Voting%20Security%20Audit%20Report%2010-2021.pdf) | yAudit | Audit | 2021-10 | stale | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Sigma%20Prime%20-%20Lido%20Easy%20Track%20Smart%20Contract%20Security%20Review%20Report%20v2.0%2010-2021.pdf) | Sigma Prime | Audit | 2021-10 | stale | Direct | contract_name | 8 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20wstETH%20Security%20Audit%20Report%2009-2021.pdf) | yAudit | Audit | 2021-09 | stale | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Easy%20Track%20Security%20Audit%20Report%2009-2021.pdf) | yAudit | Audit | 2021-09 | stale | Direct | contract_name | 10 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%201inch%20Rewards%20Manager%20Security%20Audit%20Report%2009-21.pdf) | yAudit | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20bETH%20Vault%20Security%20Audit%20Report%2008-2021.pdf) | yAudit | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20bETH%20Vault%20Security%20Audit%20Report%2007-2021.pdf) | yAudit | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20stETH%20Price%20Feed%20Security%20Audit%20Report%2006-2021.pdf) | yAudit | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20stETH%20price%20oracle%20Security%20Audit%20Report%2005-2021.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Withdrawals%20Manager%20Stub%20Security%20Audit%20Report%2005-2021.pdf) | yAudit | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20ETH2%20Oracle%20Security%20Audit%20Report%2004-2021.pdf) | yAudit | Audit | 2021-04 | stale | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Sigma%20Prime%20-%20Lido%20Finance%20Security%20Assessment%20Report%20v2.1.pdf) | Sigma Prime | Audit | 2020-12 | stale | Direct | contract_name | 4 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/QSP%20Lido%20Report%2012-2020.pdf) | Quantstamp | Audit | 2020-12 | stale | Direct | contract_name | 4 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/wstETH-on-Lisk-2025-04-MixBytes-deployment-verification.pdf) | MixBytes | Audit | 2025-04 | aging | Direct | contract_name | 20 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/stETH-on-Unichain-2025-02-MixBytes-deployment-verification.pdf) | MixBytes | Audit | 2025-02 | aging | Direct | contract_name | 20 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/stETH-on-Soneium-2025-01-MixBytes-deployment-verification.pdf) | MixBytes | Audit | 2025-01 | aging | Direct | contract_name | 20 | high |
| [See the [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Starknet-2024-11-14-deployment-verification.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Zircuit_2024-10-02-Quantstamp-wstETH-deployment-verification.pdf) | Quantstamp | Audit | 2024-09 | aging | Direct | contract_name | 23 | high |
| [See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details.](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | 5 | high |
| [See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details.](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | 5 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Mode-2024-07-18-Cantina-wstETH-deployment-verification.pdf) | Spearbit | Audit | 2024-07 | stale | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/bsc/MixBytes%20Lido%20a.DI%20Security%20Audit%20Report%2007-2024.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/stETH-on-Optimism-2024-06-Ackee-Blockchain-Audit-report.pdf) | Ackee Blockchain | Audit | 2024-06 | stale | Direct | contract_name | 23 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/stETH-on-Optimism-2024-06-MixBytes-Audit-Report.pdf) | MixBytes | Audit | 2024-06 | stale | Direct | contract_name | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Scroll-2024-01-Lido-Gateway-Zellic-Audit-Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | contract_name | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Lidea-2023-12-Diligence-Custom-Bridged-Token-Audit-Report.pdf) | Consensys Diligence | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Linea-2023-12-OpenZeppelin-Bridge-Audit-Report.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | contract_name | 4 | high |
| [Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified.](https://github.com/lidofinance/audits/blob/main/L2/zkSync-2023-10-Cantina-Audit-Report.pdf) | Spearbit | Audit | 2023-10 | stale | Direct | contract_name | 24 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Linea-2023-10-Diligence-Cross-Chain-Governance-Executor-Audit-Report.pdf) | Consensys Diligence | Audit | 2023-10 | stale | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Mantle-2023-09-Verilog-L2-ERC20-Token-Bridge-Audit-Report.pdf) | Verilog | Audit | 2023-09 | stale | Direct | contract_name | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Governance-Crosschain-Bridges-2022-08-Oxorio-Audit%20Report.pdf) | Oxorio | Audit | 2022-08 | stale | Direct | contract_name | 4 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Lido-L2-2022-07-Oxorio-Smart-Contracts-Security-Audit-Report.pdf) | Oxorio | Audit | 2022-07 | stale | Direct | contract_name | 20 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/zkSync-2026-03-05-Cantina-PR-85-fix-report.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/polygon/Oxorio%20Lido%20on%20Polygon%20V2%2008-2022.pdf) | Oxorio | Audit | 2022-08 | stale | Direct | contract_name | 4 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/polygon/Oxorio%20Lido%20on%20Polygon%20pr69%20report%2004-2022.pdf) | Oxorio | Audit | 2022-04 | stale | Direct | contract_name | 2 | high |
| [There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding.](https://github.com/mellow-finance/mellow-lrt/blob/85370ae372f95d057dc9806ec98fde24e5ed4d29/audits/202406_Statemind/Mellow%20LRT%20report%20with%20deployment.pdf) | Immunefi | Contest | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [- [**Audit Report for v8.0.1 (Composable Security)**]()](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V8%20Audit%20Report.pdf) | Composable Security | Audit | 2026-06 | fresh | Direct | contract_name | 4 | high |
| [The roles and addresses are listed in the following independent [report]() as of end of 2023.](https://github.com/lidofinance/audits?tab=readme-ov-file) | Statemind | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2025-07-28_Sherlock_Mellow-Core-Vaults.pdf](https://docs.lido.fi/audits/mellow/2025-07-28_Sherlock_Mellow-Core-Vaults.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | 1 | high |
| [2025-09-03_Nethermind_Mellow-Core-Vaults.pdf](https://docs.lido.fi/audits/mellow/2025-09-03_Nethermind_Mellow-Core-Vaults.pdf) | Nethermind | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [2025-10-15_Nethermind_NM-0682_Mellow.pdf](https://docs.lido.fi/audits/mellow/2025-10-15_Nethermind_NM-0682_Mellow.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [2025-11-17_Nethermind_NM-0703_Mellow.pdf](https://docs.lido.fi/audits/mellow/2025-11-17_Nethermind_NM-0703_Mellow.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [2025-11-19_Nethermind_NM-0735_Mellow.pdf](https://docs.lido.fi/audits/mellow/2025-11-19_Nethermind_NM-0735_Mellow.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [2025-12-09_Nethermind_NM-0758_Mellow.pdf](https://docs.lido.fi/audits/mellow/2025-12-09_Nethermind_NM-0758_Mellow.pdf) | Nethermind | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [2026-01-07_Nethermind_NM-0798_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-01-07_Nethermind_NM-0798_Mellow.pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [2026-01-21_Nethermind_NM-0812_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-01-21_Nethermind_NM-0812_Mellow.pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [2026-03-02_Nethermind_NM-0758_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-03-02_Nethermind_NM-0758_Mellow.pdf) | Nethermind | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [Mellow Core Vaults](https://docs.lido.fi/assets/files/2025-07-28_Sherlock_Mellow-Core-Vaults-b8fffecfc7c40da7dac9d1654f59ca1e.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | 1 | high |
| [Mellow Core Vaults](https://docs.lido.fi/assets/files/2025-09-03_Nethermind_Mellow-Core-Vaults-2d0fc4a5c603de11cd338ba30110cdaa.pdf) | Code4rena | Contest | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [NM-0682 Migrator](https://docs.lido.fi/assets/files/2025-10-15_Nethermind_NM-0682_Mellow-bf1ce27d0e36bff7ad7cb26077705428.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [NM-0703 Oracle Submitter](https://docs.lido.fi/assets/files/2025-11-17_Nethermind_NM-0703_Mellow-61713de8a6d07b1e1efea20c6af6ab61.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [NM-0735 Swap Module](https://docs.lido.fi/assets/files/2025-11-19_Nethermind_NM-0735_Mellow-dfe7f5e4b179a46c4dcacfa8598769d9.pdf) | Code4rena | Contest | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [NM-0758 SyncDepositQueue](https://docs.lido.fi/assets/files/2025-12-09_Nethermind_NM-0758_Mellow-882ef5c8bc26ba2870ebb6655a989718.pdf) | Nethermind | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [NM-0798 BurnableTokenizedShareManager](https://docs.lido.fi/assets/files/2026-01-07_Nethermind_NM-0798_Mellow-234cd31bcfcfe7e0239fa7c3da25fda8.pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [NM-0812 Redeem Queue Fee Fix](https://docs.lido.fi/assets/files/2026-01-21_Nethermind_NM-0812_Mellow-a9c3d364fc476f68a4f82d6bc5c993ac.pdf) | Code4rena | Contest | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [NM-0758 SyncDepositQueue](https://docs.lido.fi/assets/files/2026-03-02_Nethermind_NM-0758_Mellow-16bc93dbff41496cfb995655c453cf0f.pdf) | Code4rena | Contest | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [NM-0891 PermissionedChainlinkOracle](https://docs.lido.fi/assets/files/2026-04-13_Nethermind_NM-0891_Mellow-5507eaaf13402e03f180e0342c78c045.pdf) | Nethermind | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x1def31d26bce797d808c6684f4b0a17867ac01bd`](./contracts/bsc-56/0x1def31d26bce797d808c6684f4b0a17867ac01bd/) | AccessControlledAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1655ad5bd23b6fea57dc21fd761ec4552fcb2419`](./contracts/bsc-56/0x1655ad5bd23b6fea57dc21fd761ec4552fcb2419/) | AccessControlledOCR2Aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0050d50cecc09ce311d4e0ab14377bfcd0397af7`](./contracts/arbitrum-42161/0x0050d50cecc09ce311d4e0ab14377bfcd0397af7/) | AccessControlledOffchainAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15a94d49fac6e23e17c1366c999117a1de8ba7b6`](./contracts/ethereum-1/0x15a94d49fac6e23e17c1366c999117a1de8ba7b6/) | Accountant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77fb6fd121afe51c95fea53069686138b8de469a`](./contracts/ethereum-1/0x77fb6fd121afe51c95fea53069686138b8de469a/) | AccountingModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9895f0f17cc1d1891b6f18ee0b483b6f221b37bb`](./contracts/ethereum-1/0x9895f0f17cc1d1891b6f18ee0b483b6f221b37bb/) | ACL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeffdcb49c2d0ef813764b709ca3c6fe71f230e3e`](./contracts/ethereum-1/0xeffdcb49c2d0ef813764b709ca3c6fe71f230e3e/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e40d73eb977dc6a537af587d48316fee66e9c8c`](./contracts/ethereum-1/0x3e40d73eb977dc6a537af587d48316fee66e9c8c/) | Agent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x8551d2141a755ed8ca3a9e4bd9977dadf300fdb2`](./contracts/mantle-5000/0x8551d2141a755ed8ca3a9e4bd9977dadf300fdb2/) | Airdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cb113890b04b49455dfe06554e2d784598a29c9`](./contracts/ethereum-1/0x0cb113890b04b49455dfe06554e2d784598a29c9/) | APMRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x366ae337897223aea70e3ebe1862219386f20593`](./contracts/ethereum-1/0x366ae337897223aea70e3ebe1862219386f20593/) | ATokenWithDelegation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe5e941fd184ecc4bff84834b487d79efd6483287`](./contracts/ethereum-1/0xe5e941fd184ecc4bff84834b487d79efd6483287/) | AuraProposalEncoder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x1077799f07c4dc45872e832902571f56e1f9185b`](./contracts/moonriver-1285/0x1077799f07c4dc45872e832902571f56e1f9185b/) | AuthManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x6e84390dcc5195414ec91a8c56a5c91021b95704`](./contracts/linea-59144/0x6e84390dcc5195414ec91a8c56a5c91021b95704/) | BaseRegistrarImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75100bd564415731b5936a4a94d0dc29dde5db3c`](./contracts/ethereum-1/0x75100bd564415731b5936a4a94d0dc29dde5db3c/) | BokkyPooBahsDateTimeContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x05f5198b1d4a37e07ac510fc7a207e1499e8aef7`](./contracts/linea-59144/0x05f5198b1d4a37e07ac510fc7a207e1499e8aef7/) | BridgedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01b9ac434c6cd3128e0d2f52780a91678db126c7`](./contracts/ethereum-1/0x01b9ac434c6cd3128e0d2f52780a91678db126c7/) | BridgeOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3697bd0bc6c050135b8321f989a5316eacbf367d`](./contracts/ethereum-1/0x3697bd0bc6c050135b8321f989a5316eacbf367d/) | CallForwardingProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x031828231b6829208c1b2aad4ecfea2c011dcf87`](./contracts/arbitrum-42161/0x031828231b6829208c1b2aad4ecfea2c011dcf87/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ae2930b50cfebc99fe6db16ce5b9c7d8d09332c`](./contracts/ethereum-1/0x7ae2930b50cfebc99fe6db16ce5b9c7d8d09332c/) | CbEthSynchronicityPriceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x30b622609ffab1641b498e9bf1ff102ab288bee7`](./contracts/polygon-137/0x30b622609ffab1641b498e9bf1ff102ab288bee7/) | ChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x004bae2ed0210e937327aaf199135393f64d5b57`](./contracts/polygon-137/0x004bae2ed0210e937327aaf199135393f64d5b57/) | ChildERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2819b65021e13ceeb9ac33e77db32c7e64e7520d`](./contracts/ethereum-1/0x2819b65021e13ceeb9ac33e77db32c7e64e7520d/) | Claimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05225cd708bca9253789c1374e4337a019e99d56`](./contracts/ethereum-1/0x05225cd708bca9253789c1374e4337a019e99d56/) | CLrETHSynchronicityPriceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x230e0321cf38f09e247e50afc7801ea2351fe56f`](./contracts/ethereum-1/0x230e0321cf38f09e247e50afc7801ea2351fe56f/) | CLSynchronicityPriceAdapterPegToBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x981ab570ac289938f296b975c524b66fbf1b8774`](./contracts/ethereum-1/0x981ab570ac289938f296b975c524b66fbf1b8774/) | CLwstETHSynchronicityPriceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x3e65ac1dd4938e02301c4869d3043903f5deb474`](./contracts/mantle-5000/0x3e65ac1dd4938e02301c4869d3043903f5deb474/) | CoinToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80f2c02224a2e548fc67c0bf705ebfa825dd5439`](./contracts/ethereum-1/0x80f2c02224a2e548fc67c0bf705ebfa825dd5439/) | Collector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xde45f101250f2ca1c0f8adfc172576d10c12072d`](./contracts/optimism-10/0xde45f101250f2ca1c0f8adfc172576d10c12072d/) | ComposableStablePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2dc44ca93a1207cb50671dca68991f64776f5fa2`](./contracts/base-8453/0x2dc44ca93a1207cb50671dca68991f64776f5fa2/) | ConfirmedTransactionModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x4bea5e06cb0536cfd5fe32a3f3a20495fabedfd8`](./contracts/moonriver-1285/0x4bea5e06cb0536cfd5fe32a3f3a20495fabedfd8/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3215225538da1546fe0da88ee13019f402078942`](./contracts/ethereum-1/0x3215225538da1546fe0da88ee13019f402078942/) | CrosschainForwarderBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62134f1897e236e06ed34841ba91cef55945df23`](./contracts/ethereum-1/0x62134f1897e236e06ed34841ba91cef55945df23/) | CrowdProposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x76bf9ac96fc75849c6872cf89f367e56feed5c30`](./contracts/polygon-137/0x76bf9ac96fc75849c6872cf89f367e56feed5c30/) | CryptoCabz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff04ed5f7a6c3a0f1e5ea20617f8c6f513d5a77c`](./contracts/ethereum-1/0xff04ed5f7a6c3a0f1e5ea20617f8c6f513d5a77c/) | DefaultReserveInterestRateStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x755a078dee1c264a3053f02cd634e750d505cf85`](./contracts/ethereum-1/0x755a078dee1c264a3053f02cd634e750d505cf85/) | DelayedWithdraw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8287f469726a95dede7cff1ea3b24a34a12e88f0`](./contracts/ethereum-1/0x8287f469726a95dede7cff1ea3b24a34a12e88f0/) | Delegation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d2a805227fbb433f7c05e98af505b04e07ab639`](./contracts/ethereum-1/0x9d2a805227fbb433f7c05e98af505b04e07ab639/) | DelegationMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01065f4726bbbce2ef1a4bebc04af3209357c71e`](./contracts/arbitrum-42161/0x01065f4726bbbce2ef1a4bebc04af3209357c71e/) | DualAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x136d8483032e8e6f7de3ba3fb8f7e0cac9d2ccfa`](./contracts/ethereum-1/0x136d8483032e8e6f7de3ba3fb8f7e0cac9d2ccfa/) | Dummy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d`](./contracts/ethereum-1/0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d/) | DummyERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2f3bd7ca5746c5fac518f67d1be87805a2be82a`](./contracts/ethereum-1/0xf2f3bd7ca5746c5fac518f67d1be87805a2be82a/) | DummyERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71b821aa52a49f32eed535fca6eb5aa130085978`](./contracts/ethereum-1/0x71b821aa52a49f32eed535fca6eb5aa130085978/) | DummyERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x578360adf0bbb2f10ec9cec7ef89ef495511ed5f`](./contracts/ethereum-1/0x578360adf0bbb2f10ec9cec7ef89ef495511ed5f/) | DummyMintableERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0017abac5b6f291f9164e35b1234ca1d697f9cf4`](./contracts/arbitrum-42161/0x0017abac5b6f291f9164e35b1234ca1d697f9cf4/) | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c8fb15e0dbdae91aa426decedfb779c6ae985e3`](./contracts/ethereum-1/0x8c8fb15e0dbdae91aa426decedfb779c6ae985e3/) | EmptyContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x642af405bf64660665b37977449c9c536b806318`](./contracts/ethereum-1/0x642af405bf64660665b37977449c9c536b806318/) | EnforcedTxGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x50130b669b28c339991d8676fa73cf122a121267`](./contracts/linea-59144/0x50130b669b28c339991d8676fa73cf122a121267/) | ENSRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f`](./contracts/ethereum-1/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ERC1155Predicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f4c1e0afbeb5b5b86d7722549274434b29884f6`](./contracts/ethereum-1/0x1f4c1e0afbeb5b5b86d7722549274434b29884f6/) | ERC20Predicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9aaae29879c95ed732bababea4cae20a6d931dbb`](./contracts/ethereum-1/0x9aaae29879c95ed732bababea4cae20a6d931dbb/) | ERC721Predicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x499a865ac595e6167482d2bd5a224876bab85ab4`](./contracts/ethereum-1/0x499a865ac595e6167482d2bd5a224876bab85ab4/) | EtherPredicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x274a46efd4364ccba654dc74ddb793f9010b179c`](./contracts/ethereum-1/0x274a46efd4364ccba654dc74ddb793f9010b179c/) | EthLongMovePermissionsPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xdb75db974b1f2bd3b5916d503036208064d18295`](./contracts/linea-59144/0xdb75db974b1f2bd3b5916d503036208064d18295/) | ETHRegistrarController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbb0236007fd3697b03a88b4b550b422f57894cf`](./contracts/ethereum-1/0xdbb0236007fd3697b03a88b4b550b422f57894cf/) | EthShortMovePermissionsPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62f5c2c54495567537c0f9c4b66a6adb3b584148`](./contracts/ethereum-1/0x62f5c2c54495567537c0f9c4b66a6adb3b584148/) | EthShortV2Payload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92b64dd461944ace6fd2e9f91714d3962ae5007a`](./contracts/ethereum-1/0x92b64dd461944ace6fd2e9f91714d3962ae5007a/) | EthShortV3Payload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x853cc0d5917f49b57b8e9f89e491f5e18919093a`](./contracts/ethereum-1/0x853cc0d5917f49b57b8e9f89e491f5e18919093a/) | EVMScriptRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x8680ceabcb9b56913c519c069add6bc3494b7020`](./contracts/mode-34443/0x8680ceabcb9b56913c519c069add6bc3494b7020/) | FeeSharing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x6df6c0e70d6874a37084270de861d4be682f271b`](./contracts/mode-34443/0x6df6c0e70d6874a37084270de861d4be682f271b/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0e57c8d26671e267c3c971824b93343bb75c2dc8`](./contracts/linea-59144/0x0e57c8d26671e267c3c971824b93343bb75c2dc8/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x176211869ca2b568f2a7d4ee941e073a821ee1ff`](./contracts/linea-59144/0x176211869ca2b568f2a7d4ee941e073a821ee1ff/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xc0ce92b23108cb4bdbf88788a3933546a85cd772`](./contracts/mode-34443/0xc0ce92b23108cb4bdbf88788a3933546a85cd772/) | FiatTokenV2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9e5cbb9ca5b0d659238807e84d0176930753d86`](./contracts/ethereum-1/0xb9e5cbb9ca5b0d659238807e84d0176930753d86/) | Finance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac3af0f4a52c577cc2c241df51a01fde3d06d93b`](./contracts/ethereum-1/0xac3af0f4a52c577cc2c241df51a01fde3d06d93b/) | FixedRatioSynchronicityPriceAdapterBaseToPeg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x26e0e12b1682884a557e67743c6a575fd00bf332`](./contracts/base-8453/0x26e0e12b1682884a557e67743c6a575fd00bf332/) | Flags | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x6efff76acf1698a6a215eca7d632991678ec673b`](./contracts/mantle-5000/0x6efff76acf1698a6a215eca7d632991678ec673b/) | FLOKI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ccd4cbde5ec758ccbf75f0be280647ff359c17a`](./contracts/ethereum-1/0x4ccd4cbde5ec758ccbf75f0be280647ff359c17a/) | GasSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1763b9ed3586b08ae796c7787811a2e1bc16163a`](./contracts/arbitrum-42161/0x1763b9ed3586b08ae796c7787811a2e1bc16163a/) | Greeter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67953f28b50cd51e99804e86f42f0e7f9f1a0171`](./contracts/ethereum-1/0x67953f28b50cd51e99804e86f42f0e7f9f1a0171/) | GUDOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f1155447ee97b5ae147a01a5c420b0fddf0370d`](./contracts/ethereum-1/0x8f1155447ee97b5ae147a01a5c420b0fddf0370d/) | JointCampaign | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2a55871a713fb98a6b60e2e76fc94021c9f182f`](./contracts/ethereum-1/0xc2a55871a713fb98a6b60e2e76fc94021c9f182f/) | Keeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8ffc3cd6e7cf5a098a1c92f48009765b24088dc`](./contracts/ethereum-1/0xb8ffc3cd6e7cf5a098a1c92f48009765b24088dc/) | Kernel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5bcfd99c34cf7e06fc756f6f5ae7400504852bc4`](./contracts/ethereum-1/0x5bcfd99c34cf7e06fc756f6f5ae7400504852bc4/) | L1BatchBridgeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40c3c3dea3b7d6d117e6713377144fd8ee6d6c97`](./contracts/ethereum-1/0x40c3c3dea3b7d6d117e6713377144fd8ee6d6c97/) | L1CustomERC20Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x244bf7aef29f03916569470a51fa0794b62f8cd7`](./contracts/ethereum-1/0x244bf7aef29f03916569470a51fa0794b62f8cd7/) | L1ERC1155Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6260af48e8948617b8fa17f4e5cea2d21d21554b`](./contracts/ethereum-1/0x6260af48e8948617b8fa17f4e5cea2d21d21554b/) | L1ERC721Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fcbe079c4bbab37406dab7dfd35acae37d5c55d`](./contracts/ethereum-1/0x1fcbe079c4bbab37406dab7dfd35acae37d5c55d/) | L1ETHGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb93ac04010bd61f45bf492022a5b49a902f798f3`](./contracts/ethereum-1/0xb93ac04010bd61f45bf492022a5b49a902f798f3/) | L1GatewayRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6625c6332c9f91f2d27c304e729b86db87a3f504`](./contracts/ethereum-1/0x6625c6332c9f91f2d27c304e729b86db87a3f504/) | L1LidoGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f`](./contracts/ethereum-1/0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f/) | L1LiskToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc9d741501a20f962756c95bf906b4abffadcf8f`](./contracts/ethereum-1/0xbc9d741501a20f962756c95bf906b4abffadcf8f/) | L1MessageQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39c36c9026ac18104839a50c61a4507ea5052eca`](./contracts/ethereum-1/0x39c36c9026ac18104839a50c61a4507ea5052eca/) | L1MessageQueueV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d7e906bd9cafa154b048cfa766cc1e54e39af9b`](./contracts/ethereum-1/0x0d7e906bd9cafa154b048cfa766cc1e54e39af9b/) | L1MessageQueueWithGasPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d9a9aef9ab3b7d978fd4f723fd1a5aebbcb2c67`](./contracts/ethereum-1/0x8d9a9aef9ab3b7d978fd4f723fd1a5aebbcb2c67/) | L1OpEURCFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6774bcbd5cecef1336b5300fb5186a12ddd8b367`](./contracts/ethereum-1/0x6774bcbd5cecef1336b5300fb5186a12ddd8b367/) | L1ScrollMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4015fc868c06689abeba4a9dc8fa43b804f6239c`](./contracts/ethereum-1/0x4015fc868c06689abeba4a9dc8fa43b804f6239c/) | L1StandardERC20Gateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec393209674090368c592a591b25811e490bf36`](./contracts/ethereum-1/0x0ec393209674090368c592a591b25811e490bf36/) | L1USDCBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a5810f71b6836027c26c25bff9708dfcd2b5432`](./contracts/ethereum-1/0x4a5810f71b6836027c26c25bff9708dfcd2b5432/) | L1USDCGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x114cb34b1a0fbbb686e31bf5542d64a98c42ee23`](./contracts/ethereum-1/0x114cb34b1a0fbbb686e31bf5542d64a98c42ee23/) | L1VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe2b0cfef892c017d84d8220b8d2ac249624cd087`](./contracts/ethereum-1/0xe2b0cfef892c017d84d8220b8d2ac249624cd087/) | L1VestingWalletPaused | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe`](./contracts/ethereum-1/0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe/) | L1WETHGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x987e300fdfb06093859358522a79098848c33852`](./contracts/ethereum-1/0x987e300fdfb06093859358522a79098848c33852/) | L2GasPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1998108fa7993ea67a8b1a99d392a3288c5a5521`](./contracts/linea-59144/0x1998108fa7993ea67a8b1a99d392a3288c5a5521/) | L2USDCBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ffda833d2cf6aa76fa199d96db22c4075c14d71`](./contracts/ethereum-1/0x6ffda833d2cf6aa76fa199d96db22c4075c14d71/) | LaunchOmnibusMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x1c7c3c6077ab51e1b656a208f1a9c3ad39b84269`](./contracts/moonriver-1285/0x1c7c3c6077ab51e1b656a208f1a9c3ad39b84269/) | Ledger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x36cf86ffa541fed07550ffd9536dbfaac73da7eb`](./contracts/moonriver-1285/0x36cf86ffa541fed07550ffd9536dbfaac73da7eb/) | LedgerBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x780825fd0e7b09a8c136ad41090e356c138e0ede`](./contracts/moonriver-1285/0x780825fd0e7b09a8c136ad41090e356c138e0ede/) | LedgerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe4fc9f1a8cb97fead3c2b37c11ad5b1c2ef73959`](./contracts/ethereum-1/0xe4fc9f1a8cb97fead3c2b37c11ad5b1c2ef73959/) | LidoStVaultYieldProviderFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04728bf704a716c26f9ef4085013b760ac885631`](./contracts/ethereum-1/0x04728bf704a716c26f9ef4085013b760ac885631/) | LineaRollup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x96b3a15257c4983a6fe9073d8c91763433124b82`](./contracts/linea-59144/0x96b3a15257c4983a6fe9073d8c91763433124b82/) | LineaSurgeXP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a`](./contracts/linea-59144/0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a/) | LineaVoyageXP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xc24e7b826b3c1e8918843baf7abd2e51399cfc13`](./contracts/linea-59144/0xc24e7b826b3c1e8918843baf7abd2e51399cfc13/) | LineaXP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x88038752750d7717a19f2a681ef75e65fb714f1e`](./contracts/base-8453/0x88038752750d7717a19f2a681ef75e65fb714f1e/) | LinkToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x791caa38eb7056696f8d7e0714bb728a34eeac39`](./contracts/mantle-5000/0x791caa38eb7056696f8d7e0714bb728a34eeac39/) | LockedFBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xf93a85d53e4af0d62bdf3a83ccfc1ecf3eaf9f32`](./contracts/mantle-5000/0xf93a85d53e4af0d62bdf3a83ccfc1ecf3eaf9f32/) | LUSDStablecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4ea3f791511d35aa859455bd60af526537040bb3`](./contracts/arbitrum-42161/0x4ea3f791511d35aa859455bd60af526537040bb3/) | ManyChainMultiSig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x885904d9cfece53fb5042530f780c5208078b2bf`](./contracts/mode-34443/0x885904d9cfece53fb5042530f780c5208078b2bf/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe34949a48cd2e6f5cd41753e449bd2d43993c9ac`](./contracts/ethereum-1/0xe34949a48cd2e6f5cd41753e449bd2d43993c9ac/) | Mediator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x195fe6ee6639665cceb15bcceb9980fc445dfa0b`](./contracts/ethereum-1/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | Merkle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b3edb22952fb4a70140e39fb1add05a6b49622b`](./contracts/ethereum-1/0x4b3edb22952fb4a70140e39fb1add05a6b49622b/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa`](./contracts/ethereum-1/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | MerklePatriciaProof | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32296969ef14eb0c6d29669c550d4a0449130230`](./contracts/ethereum-1/0x32296969ef14eb0c6d29669c550d4a0449130230/) | MetaStablePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xeb0c390b1fb2b63d5ed257b822a1cbbff87956ce`](./contracts/mantle-5000/0xeb0c390b1fb2b63d5ed257b822a1cbbff87956ce/) | METHL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bf44ad2e36f39572175c72c1d0fa85933c6e0b6`](./contracts/ethereum-1/0x3bf44ad2e36f39572175c72c1d0fa85933c6e0b6/) | MintableERC721Predicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x532e522964cba02be18f767e4c0e39188894163f`](./contracts/mantle-5000/0x532e522964cba02be18f767e4c0e39188894163f/) | MJAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1a900ae76db21dc5aa8e418ac0f4e888a4c7431`](./contracts/ethereum-1/0xc1a900ae76db21dc5aa8e418ac0f4e888a4c7431/) | Mooniswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ea29d57dac237152d878758bae4beb2668998f6`](./contracts/ethereum-1/0x1ea29d57dac237152d878758bae4beb2668998f6/) | MultipleVersionRollupVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xa53cca02f98d590819141aa85c891e2af713c223`](./contracts/linea-59144/0xa53cca02f98d590819141aa85c891e2af713c223/) | NameWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c1b3426e557d6756d8a8859a0779373236f94e2`](./contracts/ethereum-1/0x2c1b3426e557d6756d8a8859a0779373236f94e2/) | OFTAdapterSwETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xcdd475325d6f564d27247d1dddbb0dac6fa0a5cf`](./contracts/mode-34443/0xcdd475325d6f564d27247d1dddbb0dac6fa0a5cf/) | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa419026809e2d13bc73dee13992e7873ab605981`](./contracts/ethereum-1/0xa419026809e2d13bc73dee13992e7873ab605981/) | OracleAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x425fa6d8c977f12e9d62396f3f5037f5bc3c1b5b`](./contracts/moonriver-1285/0x425fa6d8c977f12e9d62396f3f5037f5bc3c1b5b/) | OracleMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f`](./contracts/linea-59144/0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f/) | OwnedResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22e5c20bb540d68f43a6790927fab8e4fbdc83e7`](./contracts/ethereum-1/0x22e5c20bb540d68f43a6790927fab8e4fbdc83e7/) | PauseController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d2504c498bb7e63bcc7bc11f781d30d99b6febb`](./contracts/ethereum-1/0x4d2504c498bb7e63bcc7bc11f781d30d99b6febb/) | PaymentSplitterWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2edcbd39334c4e9570d13e2fbd352688f8942c52`](./contracts/ethereum-1/0x2edcbd39334c4e9570d13e2fbd352688f8942c52/) | PlonkVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb0c26a89833762b65098dd66b6ae04b34d153be`](./contracts/ethereum-1/0xfb0c26a89833762b65098dd66b6ae04b34d153be/) | PlonkVerifierForDataAggregation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ab455030e1ea718e445f423bb8d993dcad24cc4`](./contracts/ethereum-1/0x8ab455030e1ea718e445f423bb8d993dcad24cc4/) | PlonkVerifierForMultiTypeDataAggregation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6312e56c17e1011dd0821558034a77bb60d06e1b`](./contracts/ethereum-1/0x6312e56c17e1011dd0821558034a77bb60d06e1b/) | PlonkVerifierFull | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2edea64bb8b45fd87c05dc89286f1a60f4f4bee0`](./contracts/ethereum-1/0x2edea64bb8b45fd87c05dc89286f1a60f4f4bee0/) | PlonkVerifierFullLarge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d345775913a9cbfa3675024348b63ef14865d32`](./contracts/ethereum-1/0x3d345775913a9cbfa3675024348b63ef14865d32/) | PlonkVerifierMainnetFull | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2149a5f5d7ca96eb98a2ee6e5b0ba1a5593a1a0a`](./contracts/arbitrum-42161/0x2149a5f5d7ca96eb98a2ee6e5b0ba1a5593a1a0a/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01434ae91f8b31cceee27593d88112442395458d`](./contracts/ethereum-1/0x01434ae91f8b31cceee27593d88112442395458d/) | ProtocolDebugBinder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x86c5aed9f27837074612288610fb98ccc1733126`](./contracts/linea-59144/0x86c5aed9f27837074612288610fb98ccc1733126/) | PublicResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8a89770722c84b60ce02989aedb22ac4791f8c7f`](./contracts/arbitrum-42161/0x8a89770722c84b60ce02989aedb22ac4791f8c7f/) | RBACTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x939f1cc163fdc38a77571019eb4ad1794873bf8c`](./contracts/ethereum-1/0x939f1cc163fdc38a77571019eb4ad1794873bf8c/) | RegistryFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5bd444ad23e02376f8fbba47e3cc9d2cadb6c4f6`](./contracts/ethereum-1/0x5bd444ad23e02376f8fbba47e3cc9d2cadb6c4f6/) | ReleaseRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7751400f809cdb0c167f87985083c558a0610f7`](./contracts/ethereum-1/0xc7751400f809cdb0c167f87985083c558a0610f7/) | RepFixedPriceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x08d3ff6e65f680844fd2465393ff6f0d742b67d5`](./contracts/linea-59144/0x08d3ff6e65f680844fd2465393ff6f0d742b67d5/) | ReverseRegistrar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3715d25c56126fb1bc57e37bf5a017ffb6cecbc6`](./contracts/ethereum-1/0x3715d25c56126fb1bc57e37bf5a017ffb6cecbc6/) | RewardExtractor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bb44f9d91b4276621550aeea5d2d96279975bf3`](./contracts/ethereum-1/0x1bb44f9d91b4276621550aeea5d2d96279975bf3/) | RoleManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2db7583852c700549b710fd79dd1b54af2efa4dd`](./contracts/ethereum-1/0x2db7583852c700549b710fd79dd1b54af2efa4dd/) | RolesAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc90e7cc979f3e931829cda552b50d82d420b9e8e`](./contracts/ethereum-1/0xc90e7cc979f3e931829cda552b50d82d420b9e8e/) | RolesValidatorMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xfbf795ead640e261868eb200ed2850eb9c151e7d`](./contracts/linea-59144/0xfbf795ead640e261868eb200ed2850eb9c151e7d/) | Root | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bff34272af650632236703a3d6d8e3c133421cb`](./contracts/ethereum-1/0x0bff34272af650632236703a3d6d8e3c133421cb/) | RootChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x428cda6c1994b926f75a4830d5baedee9db2ac58`](./contracts/ethereum-1/0x428cda6c1994b926f75a4830d5baedee9db2ac58/) | RSwellOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ebeac13f6403d19c95b6b75008b12fd21a93aab`](./contracts/ethereum-1/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | SafeMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0f86056d00bcf39baef81bbed1786e6f32c1a5fe`](./contracts/optimism-10/0x0f86056d00bcf39baef81bbed1786e6f32c1a5fe/) | SimpleWriteAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39808cafef4b271faa22afd44177698e7a90b220`](./contracts/ethereum-1/0x39808cafef4b271faa22afd44177698e7a90b220/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75ff3dd673ef9fc459a52e1054db5df2a1101212`](./contracts/ethereum-1/0x75ff3dd673ef9fc459a52e1054db5df2a1101212/) | StakingRewardsSushi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x18703d0117121f6a7476221e2afc57faf9866e4c`](./contracts/linea-59144/0x18703d0117121f6a7476221e2afc57faf9866e4c/) | StaticMetadataService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xade6cba6c45aa8e9d0337cac3d2619eabc39d901`](./contracts/ethereum-1/0xade6cba6c45aa8e9d0337cac3d2619eabc39d901/) | StETHtoETHSynchronicityPriceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2`](./contracts/ethereum-1/0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2/) | SwBtcOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09341022ea237a4db1644de7ccf8fa0e489d85b7`](./contracts/ethereum-1/0x09341022ea237a4db1644de7ccf8fa0e489d85b7/) | SwellOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b07fb810ef909b01f959911cef2cc834433f562`](./contracts/ethereum-1/0x9b07fb810ef909b01f959911cef2cc834433f562/) | SwETHOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a6a2beebf6d65e03246087a41812db1c5c0caf8`](./contracts/ethereum-1/0x2a6a2beebf6d65e03246087a41812db1c5c0caf8/) | SymbioticAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a124779fdf107c3f6bcb992731dcaad09f2276a`](./contracts/ethereum-1/0x6a124779fdf107c3f6bcb992731dcaad09f2276a/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x374d1176eec25dad22b84d331941d3a298e28c2c`](./contracts/ethereum-1/0x374d1176eec25dad22b84d331941d3a298e28c2c/) | TestFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x473f0adec308dc82440665d9fc7d5e26ebcf0e05`](./contracts/ethereum-1/0x473f0adec308dc82440665d9fc7d5e26ebcf0e05/) | TokenizedStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf73a1260d222f447210581ddf212d915c09a3249`](./contracts/ethereum-1/0xf73a1260d222f447210581ddf212d915c09a3249/) | TokenManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00032e33ac57c73f9d4e3e85a97488214cb5f25b`](./contracts/polygon-137/0x00032e33ac57c73f9d4e3e85a97488214cb5f25b/) | UChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x009aedc40323b16a0cbc71920d05c15192643974`](./contracts/polygon-137/0x009aedc40323b16a0cbc71920d05c15192643974/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3aa974fb3f8c1e02796048bdcded79e9d53a6965`](./contracts/linea-59144/0x3aa974fb3f8c1e02796048bdcded79e9d53a6965/) | UniversalResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x201eba5cc46d216ce6dc03f6a759e8e766e956ae`](./contracts/mantle-5000/0x201eba5cc46d216ce6dc03f6a759e8e766e956ae/) | USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7db7d8be39b6bb07115445b5ebaa7b8345d6b2f6`](./contracts/ethereum-1/0x7db7d8be39b6bb07115445b5ebaa7b8345d6b2f6/) | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2309c45d44105928b483f608dd6140fb65f3ebde`](./contracts/ethereum-1/0x2309c45d44105928b483f608dd6140fb65f3ebde/) | ValidatorContainerProofVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a6c933495a7bb768d95f4667b074dd5b95b78eb`](./contracts/ethereum-1/0x0a6c933495a7bb768d95f4667b074dd5b95b78eb/) | ValidatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57dab476c3e37a2410076c9568d796e429fd8418`](./contracts/ethereum-1/0x57dab476c3e37a2410076c9568d796e429fd8418/) | VaultViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0db86d2d8707f260d455f63790f5f5e5d828a961`](./contracts/ethereum-1/0x0db86d2d8707f260d455f63790f5f5e5d828a961/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xcabae6f6ea1ecab08ad02fe02ce9a44f09aebfa2`](./contracts/mantle-5000/0xcabae6f6ea1ecab08ad02fe02ce9a44f09aebfa2/) | WBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x178e029173417b1f9c8bc16dcec6f697bc323746`](./contracts/arbitrum-42161/0x178e029173417b1f9c8bc16dcec6f697bc323746/) | WeightedPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x259204ddd2ba29bd9b1b9a5c9b093f73d7eacf37`](./contracts/ethereum-1/0x259204ddd2ba29bd9b1b9a5c9b093f73d7eacf37/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x414f7ca4256e6edeeb8d1eff902328e82f266e9e`](./contracts/ethereum-1/0x414f7ca4256e6edeeb8d1eff902328e82f266e9e/) | WithdrawalFinalizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c86cb5cd701cbf2364f25ed9563ff3d3d493c22`](./contracts/ethereum-1/0x4c86cb5cd701cbf2364f25ed9563ff3d3d493c22/) | WithdrawLimitModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa88f0329c2c4ce51ba3fc619bbf44efe7120dd0d`](./contracts/ethereum-1/0xa88f0329c2c4ce51ba3fc619bbf44efe7120dd0d/) | WstETHReferralStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b6851156023f4f5a66f68bea80851c3d905ac93`](./contracts/ethereum-1/0x8b6851156023f4f5a66f68bea80851c3d905ac93/) | WstETHSynchronicityPriceAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x3bfd113ad0329a7994a681236323fb16e16790e3`](./contracts/moonriver-1285/0x3bfd113ad0329a7994a681236323fb16e16790e3/) | WstKSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x751236a1afc11b7f1a7630fe87b0bd96ac5203c4`](./contracts/ethereum-1/0x751236a1afc11b7f1a7630fe87b0bd96ac5203c4/) | YieldManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0112315fa1c81c35ac9a477e161b52ae4d1466b3`](./contracts/ethereum-1/0x0112315fa1c81c35ac9a477e161b52ae4d1466b3/) | ZkEvmVerifierPostEuclid | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8d4702aa5c09af5dd1323e1842a43789021f485`](./contracts/ethereum-1/0xa8d4702aa5c09af5dd1323e1842a43789021f485/) | ZkEvmVerifierPostFeynman | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f7b737155e6e0dece9cd8cd3240d15939c58184`](./contracts/ethereum-1/0x3f7b737155e6e0dece9cd8cd3240d15939c58184/) | ZkEvmVerifierV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d6e16d8e8a0c3bc7750e774b108ec39ab0c18fb`](./contracts/ethereum-1/0x2d6e16d8e8a0c3bc7750e774b108ec39ab0c18fb/) | ZkEvmVerifierV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41742a7e10b265accc60c3de389cce93dfb32bab`](./contracts/ethereum-1/0x41742a7e10b265accc60c3de389cce93dfb32bab/) | ZrcOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 350 |
| upstream | 6 |
| standard_library | 10 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 41
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=104, medium=1
- Match method counts: extraction_exact=947

Zero-match audit list:

- [17716] The Lido protocol, from the very beginning, is built on trust in code, and that trust comes from careful and continuous verification. Every component of the Lido protocol has gone through multiple layers of independent review by leading blockchain security firms. Over the years, experts from Certora, MixBytes, Statemind, Ackee, OpenZeppelin Consensys Diligence, ChainSecurity, Oxorio, Hexens, and SigmaPrime have examined Lido protocol’s smart contracts, looking for ways to make them safer and more reliable. The results of these reviews are full audit reports and code-verification summaries, which are publicly available for anyone to explore [here]().
- [17725] See [full report]() for more details.
- [17726] See [full report]() for more details.
- [17734] See [full report]() for more details.
- [17737] See [full report]() for more details.
- [17742] See [full report]() for more details.
- [17743] See [full report]() for more details.
- [17745] See [full report]() for more details.
- [17748] See [full report]() for more details
- [17754] See [full report]() for more details.
- [17759] See [full report]() for more details.
- [17762] See [full report]() for more details.
- [17772] See [full report]() for more details.
- [17787] See [full report]() for more details.
- [17795] See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release.
- [17797] See [full report]() for more details.
- [17798] See [full report]() for more details.
- [17804] See [full report]() for more details.
- [17809] See [full report]() for more details.
- [17814] See [full report]() for more details.
- [17815] See [full report]() for more details.
- [17816] See [full report]() for more details.
- [17817] See [full report]() for more details.
- [17819] See [full report]() for more details.
- [17845] There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding.
- [17847] The roles and addresses are listed in the following independent [report]() as of end of 2023.
- [17850] 2025-10-15_Nethermind_NM-0682_Mellow.pdf
- [17851] 2025-11-17_Nethermind_NM-0703_Mellow.pdf
- [17852] 2025-11-19_Nethermind_NM-0735_Mellow.pdf
- [17853] 2025-12-09_Nethermind_NM-0758_Mellow.pdf
- [17854] 2026-01-07_Nethermind_NM-0798_Mellow.pdf
- [17855] 2026-01-21_Nethermind_NM-0812_Mellow.pdf
- [17856] 2026-03-02_Nethermind_NM-0758_Mellow.pdf
- [17860] NM-0682 Migrator
- [17861] NM-0703 Oracle Submitter
- [17862] NM-0735 Swap Module
- [17863] NM-0758 SyncDepositQueue
- [17864] NM-0798 BurnableTokenizedShareManager
- [17865] NM-0812 Redeem Queue Fee Fix
- [17866] NM-0758 SyncDepositQueue
- [17867] NM-0891 PermissionedChainlinkOracle

Fork inheritance lineage and inherited audits are included when available.
