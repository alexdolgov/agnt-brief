# Agentic Audit Brief: dTRINITY

## Project Overview

- Project: dTRINITY (`dtrinity`)
- Website: [https://dtrinity.org/](https://dtrinity.org/)
- Lifecycle: active (Tier 0, 35.2% below peak)
- Generated: 2026-06-17T07:00:36.458Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum, fraxtal, sonic
- Contract surface: 99 unique implementations (187 raw deployments)
- DeFi Llama TVL: $2,304,060.00
- On-chain TVL (included contracts): $313,882.37
- TVL by chain: Ethereum $280,941.32 | Sonic $32,941.05

## Project Description

dTRINITY is a subsidized stablecoin protocol centered on dUSD. Its model uses reserve yield to subsidize stablecoin borrowing and provide yield rebates, with dLEND serving as the native lending-market component and publicly described as an Aave v3 fork. dSTAKE consists of ERC-4626 yield vaults, such as sdUSD vaults that stake or deposit dUSD into dLEND, rather than liquid staking vaults.

### Architecture

The lending markets rely on the oracle family for asset prices and the dUSD stablecoin as a borrowable asset, while dSTAKE vaults may be used as collateral. Governance multisigs and AMO managers control parameters across all families, and proxy contracts provide upgradeability for core logic.

## Contract Surface Quality

- Indexed contracts: 584; live-surface contracts included: 187 (167 live, 20 unknown).
- Excluded by liveness: 328 inactive, 69 singleton, 0 uninitialized.
- Deployment units: 3/29 live.
- Detected codebases: aave-v2, curve-stableswap
- Unverified dependencies: 5/110.

## Audit Coverage Summary

- Verified implementations audited: 11/73 (15.1%)
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 1
- Unverified implementations: 26
- Unique implementations: 99
- Raw deployments: 187
- Audits discovered: 5
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $313,870.13
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hats Finance | Tier 2 | 11 | 15.1% | n/a |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollateralHolderVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x349ee0...56a2f2`](./contracts/ethereum-1/0x349ee07146157648d40fd471380b510b4d56a2f2/); ethereum `0x84c580...9253f4` | ✅ Audited |
| AmoManager | governance | sonic | n/a | [`0x788d96...614d4a`](./contracts/sonic-146/0x788d96f655735f52c676a133f4dfc53cec614d4a/) | ✅ Audited |
| DStakeCollateralVault | core_logic | fraxtal | n/a | 4 deployments: sonic `0x709c23...9be595`; sonic `0x925a5c...8eead9`; sonic `0xd4258d...1b4d8c`; fraxtal [`0x5432ed...8cc7be`](./contracts/fraxtal-252/0x5432ed4a370718d6904485e2fc114762c68cc7be/) | ✅ Audited |
| DStakeRewardManagerDLend | core_logic | fraxtal | n/a | [`0xf224e6...7a1367`](./contracts/fraxtal-252/0xf224e69c461a2dd3c5f6f6814529c8cf557a1367/) | ✅ Audited |
| DStakeRouterDLend | adapter | fraxtal | n/a | [`0xefc15e...d4cd99`](./contracts/fraxtal-252/0xefc15efb330112a2c313d5da8f1b29893ad4cd99/) | ✅ Audited |
| Issuer | unknown | fraxtal | n/a | 3 deployments: sonic `0x1f3754...4e990e`; sonic `0x5e8352...488d15`; fraxtal [`0x1ec13e...99b7a2`](./contracts/fraxtal-252/0x1ec13ef0b22c53298a00b23b03203e03d999b7a2/) | ✅ Audited |
| OdosSwapLogic | unknown | fraxtal | n/a | [`0xb029d6...4dd2ba`](./contracts/fraxtal-252/0xb029d67e4eb9d71d2e7140425e7227c5074dd2ba/) | ✅ Audited |
| OracleAggregator | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x1295a5...2c3a9c`](./contracts/sonic-146/0x1295a55d482257ecd66ba8846eab6849712c3a9c/); fraxtal `0xfa7560...af5cdd` | ✅ Audited |
| RedeemerWithFees | unknown | sonic | n/a | 4 deployments: sonic [`0x12bccb...db561c`](./contracts/sonic-146/0x12bccbbc931db5eae47efc04aca1b3f695db561c/); sonic `0x1f5d6e...c2b221`; sonic `0x528872...6c4927`; fraxtal `0xb0499d...bd8d16` | ✅ Audited |
| WrappedDLendConversionAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x1a5bb4...3e100f`](./contracts/ethereum-1/0x1a5bb485c58a86c193b823d0ea031b68813e100f/); ethereum `0xd07072...48fb07`; sonic `0x317b5c...226297`; sonic `0xc5ac44...a3c505`; sonic `0xcd32cf...2112dc`; fraxtal `0xced414...860e08` | ✅ Audited |

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StaticATokenLM | token | sonic | n/a | 4 deployments: ethereum `0x576dd4...32d4c9`; ethereum `0xeb5260...c07776`; sonic [`0x36e178...b8059e`](./contracts/sonic-146/0x36e178ba804514d80ea87d78b96db87408b8059e/); sonic `0xd92780...886a71` | ⚠️ Unaudited |
| DStakeIdleVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x501ce6...e8a9a1`](./contracts/ethereum-1/0x501ce63871f9bb20620233d22d0d4f539fe8a9a1/); ethereum `0x78a4da...5380bc` | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | fraxtal | unit-22348 | [`0x99a434...eafb16`](./contracts/fraxtal-252/0x99a434c9387dac572bdd6dacb1b7e27314eafb16/) | ⚠️ Unaudited |
| ACLManager | governance | ethereum | n/a | 3 deployments: ethereum [`0x80f702...589609`](./contracts/ethereum-1/0x80f7023e25a32e4a020ed71346c0f37c10589609/); sonic `0x973044...08e593`; fraxtal `0x93d2e5...a3acdf` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0xc85492...50a1ba`](./contracts/ethereum-1/0xc85492686004914a64930afaf48809384250a1ba/) | ⚠️ Unaudited |
| AmoDebtToken | token | fraxtal | n/a | 3 deployments: ethereum `0x55a626...6b098d`; ethereum `0x88e49f...aaaa38`; fraxtal [`0x3e17fd...0e3c28`](./contracts/fraxtal-252/0x3e17fd53fcb2dbd409b92f4860326b8b880e3c28/) | ⚠️ Unaudited |
| AmoManagerV2 | governance | ethereum | n/a | 3 deployments: ethereum [`0x29532f...6e6880`](./contracts/ethereum-1/0x29532f74a9302e0a1e9f7d015fe355ffde6e6880/); ethereum `0xbc5340...ea56a7`; fraxtal `0x57bbd5...0bebae` | ⚠️ Unaudited |
| AtomicMarketListingHelper | periphery | fraxtal | n/a | [`0x67c3ad...ad2662`](./contracts/fraxtal-252/0x67c3ad684243430ca1f7f32fe4a64eb223ad2662/) | ⚠️ Unaudited |
| BorrowLogic | core_logic | ethereum | n/a | [`0x810369...b72786`](./contracts/ethereum-1/0x81036951050a25cf6f0501ff3f981e3ed3b72786/) | ⚠️ Unaudited |
| BridgeLogic | operational_periphery | ethereum | n/a | [`0xe1c986...c4e671`](./contracts/ethereum-1/0xe1c986e12eaa37e40a2e2cf4f52a6b786dc4e671/) | ⚠️ Unaudited |
| CalldataLogic | unknown | ethereum | n/a | [`0xd23431...e5776d`](./contracts/ethereum-1/0xd23431f39c88875d1cd6b517d4e54b752fe5776d/) | ⚠️ Unaudited |
| ConfiguratorLogic | governance | ethereum | n/a | [`0xc18b93...feb7ed`](./contracts/ethereum-1/0xc18b93cac3c2404cca2187332e9767bb73feb7ed/) | ⚠️ Unaudited |
| ConvexRewardPool | core_logic | fraxtal | n/a | [`0x9886ad...172afd`](./contracts/fraxtal-252/0x9886ad218f646ad67b5d057953b2d25bd0172afd/) | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x2c2a70...f1cef9`](./contracts/ethereum-1/0x2c2a700766886290359ccf39cb2173a39af1cef9/); fraxtal `0x5ecfa6...c04577` | ⚠️ Unaudited |
| CurveXChainLiquidityGauge | operational_periphery | fraxtal | n/a | [`0xf5572d...444702`](./contracts/fraxtal-252/0xf5572d8d01bb6f96403f477d8b3bfb5739444702/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | fraxtal | n/a | 11 deployments: ethereum `0x426bb6...b0044a`; ethereum `0x614484...3ded12`; ethereum `0x64dc6d...ec6c7d`; ethereum `0x837c4a...07d270`; sonic `0x1fbc97...4314c7`; sonic `0x328b0a...4b43fd`; sonic `0x863a66...f10fd2`; sonic `0xaec328...1af003`; fraxtal [`0x09ddf5...52bb14`](./contracts/fraxtal-252/0x09ddf55a7ec642635788970dcbf4b6aa2552bb14/); fraxtal `0x8b7d6b...6e98c6`; fraxtal `0xeef617...e4019c` | ⚠️ Unaudited |
| DStakeCollateralVaultV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x4acbcf...30f6fe`](./contracts/ethereum-1/0x4acbcfa29fb085097c5f31783403ef7a7930f6fe/); ethereum `0xf93fb0...a1a5b9` | ⚠️ Unaudited |
| DStakeProxyAdmin | governance | sonic | n/a | 4 deployments: sonic [`0x6eb812...51029c`](./contracts/sonic-146/0x6eb812c452a20d58f85f010c1f56356df951029c/); sonic `0xbcafae...57b18c`; sonic `0xff3df1...40e01b`; fraxtal `0xde914e...f4733b` | ⚠️ Unaudited |
| DStakeRouterV2 | adapter | ethereum | n/a | 2 deployments: ethereum [`0x2e89df...cf64a8`](./contracts/ethereum-1/0x2e89df2934aff1b671923a45bacf2b21f3cf64a8/); ethereum `0xdd26c2...e9be5a` | ⚠️ Unaudited |
| DStakeRouterV2GovernanceModule | adapter | ethereum | n/a | 2 deployments: ethereum [`0x8cf140...7b6703`](./contracts/ethereum-1/0x8cf140bde76323a5785d87645fc3ddfe837b6703/); ethereum `0xedbccd...28a88b` | ⚠️ Unaudited |
| DStakeRouterV2RebalanceModule | adapter | ethereum | n/a | 3 deployments: ethereum [`0x6f3b7c...a61dde`](./contracts/ethereum-1/0x6f3b7cc3d3c8c201373900402ea0f5a61da61dde/); ethereum `0x7aefde...89c55f`; ethereum `0xc792f2...e18cc6` | ⚠️ Unaudited |
| EmissionManager | operational_periphery | ethereum | n/a | [`0xcea995...1d1396`](./contracts/ethereum-1/0xcea995daf89500fe165bc86d829552b03a1d1396/) | ⚠️ Unaudited |
| EModeLogic | unknown | ethereum | n/a | [`0x26326b...239b4b`](./contracts/ethereum-1/0x26326b406208e206cbe9a2417bf61700b4239b4b/) | ⚠️ Unaudited |
| ERC4626BalanceChecker | unknown | fraxtal | n/a | 2 deployments: fraxtal [`0x09c418...5e44dd`](./contracts/fraxtal-252/0x09c418a9d8027ef890a91ccdfce3c14d055e44dd/); fraxtal `0x7a2949...2ab7d9` | ⚠️ Unaudited |
| ERC4626OracleWrapperV1_1 | operational_periphery | ethereum | n/a | [`0x889bf3...913f37`](./contracts/ethereum-1/0x889bf3e00e93bc9ce17a7f8141ef109283913f37/) | ⚠️ Unaudited |
| FlashLoanLogic | unknown | fraxtal | n/a | 2 deployments: ethereum `0x8d369c...9b7688`; fraxtal [`0x2e92fc...83c4e5`](./contracts/fraxtal-252/0x2e92fc14ef948fb8653eb91d2d49d9480883c4e5/) | ⚠️ Unaudited |
| FrxEthFundamentalOracleWrapperV1_1 | operational_periphery | ethereum | n/a | [`0xdfd607...44c936`](./contracts/ethereum-1/0xdfd607a73f6d73dbce8adf71de5e9fd56944c936/) | ⚠️ Unaudited |
| GenericERC4626ConversionAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0xa51fa5...2c2b56`](./contracts/ethereum-1/0xa51fa58c76d92f1b0d4d6e3b88d2ba0aff2c2b56/); ethereum `0xefd794...b5db7c` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | fraxtal | unit-22349 (2 proxies) | 2 deployments: fraxtal [`0xdb104e...d85431`](./contracts/fraxtal-252/0xdb104e0bb0b2955f69e8e092eb80831913d85431/); fraxtal `0xfc2f89...8bc8e9` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | fraxtal | n/a | 2 deployments: fraxtal [`0xa9c3cf...a03d65`](./contracts/fraxtal-252/0xa9c3cf89d9b7680cc2433e2a2bf8e2b357a03d65/); fraxtal `0xabfbcf...067af9` | ⚠️ Unaudited |
| HardPegOracleWrapperV1_1 | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x1e5be5...36cc95`](./contracts/ethereum-1/0x1e5be5059d4a95297604355dc6abd0baf036cc95/); ethereum `0x4ef480...2aa54a`; ethereum `0x788d96...614d4a`; ethereum `0x837c1c...fc638a` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | 11 deployments: ethereum [`0x2b820f...5dff35`](./contracts/ethereum-1/0x2b820fd4911876160c3988e57a10d8a5b85dff35/); ethereum `0x7f9098...9d7cf1`; ethereum `0x88a4ee...a1c748`; ethereum `0x947729...bfb59b`; ethereum `0x979fb7...efaad8`; ethereum `0xa17571...dfe493`; ethereum `0xa5535f...a26eae`; ethereum `0xb33276...a8029c`; ethereum `0xc24773...0e9011`; ethereum `0xdfaee6...a5877f`; sonic `0xf177ef...0d0bd1` | ⚠️ Unaudited |
| IssuerV2 | unknown | sonic | n/a | 3 deployments: sonic [`0x36b535...76fa97`](./contracts/sonic-146/0x36b535bc79defb00d348658ad7e68d9b1176fa97/); sonic `0x9b93c3...725ddc`; fraxtal `0xd95f1c...f9fbca` | ⚠️ Unaudited |
| IssuerV2_2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x70bfbe...8a5a8d`](./contracts/ethereum-1/0x70bfbe78548f1159cb9b453e4d6ad0e3648a5a8d/); ethereum `0xf84cc8...84ff85`; fraxtal `0x9e8d87...abdc3a` | ⚠️ Unaudited |
| L2Pool | core_logic | fraxtal | n/a | 2 deployments: ethereum `0xfda3a0...e19e84`; fraxtal [`0x20a24d...91a6d7`](./contracts/fraxtal-252/0x20a24d51aded06b5ccbc3cc8f71d1e141391a6d7/) | ⚠️ Unaudited |
| LiquidationLogic | unknown | ethereum | n/a | [`0xce697c...7d9570`](./contracts/ethereum-1/0xce697c602e613bcf728a439ec4a0f831667d9570/) | ⚠️ Unaudited |
| LiquidityGaugeV6 | operational_periphery | ethereum | n/a | [`0x91c95b...06447c`](./contracts/ethereum-1/0x91c95bb84aa561d93d165ff24d0e54e6b006447c/) | ⚠️ Unaudited |
| OracleAggregatorV1_1 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x02165d...5b186c`](./contracts/ethereum-1/0x02165d665e171566629822d9380ad93b975b186c/); ethereum `0xc40f43...0a9d9c` | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | ethereum | n/a | [`0xa5cae8...42e751`](./contracts/ethereum-1/0xa5cae880272183d7c8b69f8b0edf395f8e42e751/) | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | registry | ethereum | n/a | [`0xfdb85f...336207`](./contracts/ethereum-1/0xfdb85fdfcee413eb05287f9d4157c1ef1f336207/) | ⚠️ Unaudited |
| PoolConfigurator | core_logic | ethereum | n/a | [`0x185e9c...ded6b9`](./contracts/ethereum-1/0x185e9c639dea54d77d62dcb87466fb8de6ded6b9/) | ⚠️ Unaudited |
| PoolLogic | core_logic | ethereum | n/a | [`0x44c69f...c5e7a2`](./contracts/ethereum-1/0x44c69f0ef7a0d96b77437ec2e1bf9d74f5c5e7a2/) | ⚠️ Unaudited |
| ProxyAdmin | governance | fraxtal | n/a | 3 deployments: ethereum `0xbe90db...2c65be`; sonic `0xaf3bb4...694cb8`; fraxtal [`0x1e5be5...36cc95`](./contracts/fraxtal-252/0x1e5be5059d4a95297604355dc6abd0baf036cc95/) | ⚠️ Unaudited |
| PullRewardsTransferStrategy | core_logic | ethereum | n/a | [`0x31bf6b...6e6316`](./contracts/ethereum-1/0x31bf6b030d20af8a92d169632ffd8077456e6316/) | ⚠️ Unaudited |
| RebasingTokenWrapperFactory | registry | fraxtal | n/a | [`0x85c728...ec0f85`](./contracts/fraxtal-252/0x85c7287fc53a06ec7995db5ae6f2610200ec0f85/) | ⚠️ Unaudited |
| Redeemer | unknown | fraxtal | n/a | 3 deployments: sonic `0xe78185...daa5cf`; sonic `0xf5a894...c386ff`; fraxtal [`0x242921...4450a3`](./contracts/fraxtal-252/0x2429213235b5b4504d41bc9aa64fc2659e4450a3/) | ⚠️ Unaudited |
| RedeemerV2 | unknown | sonic | n/a | 7 deployments: ethereum `0x093e9d...ba90cd`; ethereum `0x683f18...ce9809`; ethereum `0xd66c16...036cac`; ethereum `0xdc43d5...afae4b`; sonic [`0x090598...d38b88`](./contracts/sonic-146/0x09059859d2b91cc840bd2c86f841defa19d38b88/); sonic `0x6b0579...6f5935`; fraxtal `0xacd97c...2ec949` | ⚠️ Unaudited |
| ReservesSetupHelper | periphery | fraxtal | n/a | 3 deployments: ethereum `0x18ae2d...dfd5e1`; sonic `0x95e9b3...10a447`; fraxtal [`0x145555...7d2662`](./contracts/fraxtal-252/0x145555c56718437093c020cef4e8dd11cd7d2662/) | ⚠️ Unaudited |
| RewardsController | governance | ethereum | n/a | [`0x06f0c6...5a0ea8`](./contracts/ethereum-1/0x06f0c640c47fcfe030da1cdd7dfb5080cb5a0ea8/) | ⚠️ Unaudited |
| RewardVault | core_logic | fraxtal | n/a | [`0x464785...6f2e54`](./contracts/fraxtal-252/0x46478563d4532ef2b68a328c3f528b19626f2e54/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-22321 (5 proxies) | 5 deployments: ethereum [`0x044015...e79804`](./contracts/ethereum-1/0x04401537ca997a43ebcfec8194c7e88c7ee79804/); ethereum `0x38262e...02f3db`; ethereum `0x43b1bc...06c118`; ethereum `0x4b4b5c...0d3ef6`; ethereum `0xe83c18...f30262` | ⚠️ Unaudited |
| SafeL2 | unknown | sonic | unit-22339 | [`0xe83c18...f30262`](./contracts/sonic-146/0xe83c188a7be46b90715c757a06cf917175f30262/) | ⚠️ Unaudited |
| SanitizableAToken | token | ethereum | unit-22325 | [`0x504d0e...483acc`](./contracts/ethereum-1/0x504d0eacbf9ea5645a8a9da1b15f3708a5483acc/) | ⚠️ Unaudited |
| StableDebtToken | token | ethereum | n/a | [`0x391afc...eb8631`](./contracts/ethereum-1/0x391afc4190a92350b5c812434b7fbf381feb8631/) | ⚠️ Unaudited |
| StaticATokenFactory | registry | fraxtal | n/a | 2 deployments: ethereum `0xcb8f92...e1d877`; fraxtal [`0x2a0f31...1b2768`](./contracts/fraxtal-252/0x2a0f31cecfd18ccb28e66c7cddfe3a12ad1b2768/) | ⚠️ Unaudited |
| SupplyLogic | unknown | ethereum | n/a | [`0xe58dec...817ddb`](./contracts/ethereum-1/0xe58dec03a5c25bab45daf83dc8917a29b4817ddb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sonic | n/a | 3 deployments: sonic [`0x2e093b...1ba642`](./contracts/sonic-146/0x2e093bf098dc3de208ab23a3b2dbc7cd911ba642/); sonic `0x4ebab4...f50a83`; sonic `0x84670d...7e6a51` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | ethereum | n/a | [`0xe3ee2d...df479e`](./contracts/ethereum-1/0xe3ee2d4bde6695cc1ae4a4cda466bdc6d5df479e/) | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | ethereum | n/a | [`0x1c4be7...7867e2`](./contracts/ethereum-1/0x1c4be7d7f0184ba6cc458fc99880198c537867e2/) | ⚠️ Unaudited |
| VariableDebtToken | token | ethereum | n/a | [`0xf5e96f...da27ef`](./contracts/ethereum-1/0xf5e96f92354de544c2b0b0c4328ef5ded8da27ef/) | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | ethereum | n/a | [`0xe5ae87...00cbc4`](./contracts/ethereum-1/0xe5ae8775a23293dbf5a59019aa32ba358900cbc4/) | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | ethereum | n/a | [`0xb1c1d6...c6ac2d`](./contracts/ethereum-1/0xb1c1d6150c4f072f5426aa918f7924ee73c6ac2d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DStakeToken | token | sonic | n/a | 2 deployments: sonic [`0x5a5ce9...882bae`](./contracts/sonic-146/0x5a5ce9fc488a17618d5fdef867fa67c1b7882bae/); sonic `0x83cf77...98c3f0` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x5d5543...2a9e7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93d2e5...a3acdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d286f...9352b1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x05281f...a2d972` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x101af0...4240d9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2b5ed9...1991a7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x353a84...b59801` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5d561d...88936e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x604f81...b078e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x673c07...b7ae6a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6df5f1...ef4f84` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x94613f...ed56b6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa29913...f408b4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb6294e...58df92` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcc4da1...9a7a06` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xda988a...518ea4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdbe361...aca375` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x074319...f01af1` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x0ad050...e73786` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x2c5e9d...2b4874` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x43a1c8...420a3b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x641956...a69447` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x918130...369d08` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xb5cc58...9bc72f` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xca52d0...f24dda` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xf1f989...a4c863` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Link](https://drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view?usp=drive_link) | Verichains | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view?usp=sharing) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view?usp=sharing) | Cyberscope | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Link](https://github.com/hats-finance/dTRINITY-0xee5c6f15e8d0b55a5eff84bb66beeee0e6140ffe/blob/report-update-20250822T111243728Z/report.md) | Hats Finance | Contest | n/a | unknown | Direct | contract_name | 26 | high |
| [Link](https://drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view?usp=sharing) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x501ce6...e8a9a1`](./contracts/ethereum-1/0x501ce63871f9bb20620233d22d0d4f539fe8a9a1/) | DStakeIdleVault | core_logic | $0.99 | Verified native implementation with $0.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x3e17fd...0e3c28`](./contracts/fraxtal-252/0x3e17fd53fcb2dbd409b92f4860326b8b880e3c28/) | AmoDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29532f...6e6880`](./contracts/ethereum-1/0x29532f74a9302e0a1e9f7d015fe355ffde6e6880/) | AmoManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x67c3ad...ad2662`](./contracts/fraxtal-252/0x67c3ad684243430ca1f7f32fe4a64eb223ad2662/) | AtomicMarketListingHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x810369...b72786`](./contracts/ethereum-1/0x81036951050a25cf6f0501ff3f981e3ed3b72786/) | BorrowLogic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1c986...c4e671`](./contracts/ethereum-1/0xe1c986e12eaa37e40a2e2cf4f52a6b786dc4e671/) | BridgeLogic | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd23431...e5776d`](./contracts/ethereum-1/0xd23431f39c88875d1cd6b517d4e54b752fe5776d/) | CalldataLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4acbcf...30f6fe`](./contracts/ethereum-1/0x4acbcfa29fb085097c5f31783403ef7a7930f6fe/) | DStakeCollateralVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6eb812...51029c`](./contracts/sonic-146/0x6eb812c452a20d58f85f010c1f56356df951029c/) | DStakeProxyAdmin | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e89df...cf64a8`](./contracts/ethereum-1/0x2e89df2934aff1b671923a45bacf2b21f3cf64a8/) | DStakeRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cf140...7b6703`](./contracts/ethereum-1/0x8cf140bde76323a5785d87645fc3ddfe837b6703/) | DStakeRouterV2GovernanceModule | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f3b7c...a61dde`](./contracts/ethereum-1/0x6f3b7cc3d3c8c201373900402ea0f5a61da61dde/) | DStakeRouterV2RebalanceModule | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26326b...239b4b`](./contracts/ethereum-1/0x26326b406208e206cbe9a2417bf61700b4239b4b/) | EModeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x09c418...5e44dd`](./contracts/fraxtal-252/0x09c418a9d8027ef890a91ccdfce3c14d055e44dd/) | ERC4626BalanceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x889bf3...913f37`](./contracts/ethereum-1/0x889bf3e00e93bc9ce17a7f8141ef109283913f37/) | ERC4626OracleWrapperV1_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfd607...44c936`](./contracts/ethereum-1/0xdfd607a73f6d73dbce8adf71de5e9fd56944c936/) | FrxEthFundamentalOracleWrapperV1_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa51fa5...2c2b56`](./contracts/ethereum-1/0xa51fa58c76d92f1b0d4d6e3b88d2ba0aff2c2b56/) | GenericERC4626ConversionAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e5be5...36cc95`](./contracts/ethereum-1/0x1e5be5059d4a95297604355dc6abd0baf036cc95/) | HardPegOracleWrapperV1_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x36b535...76fa97`](./contracts/sonic-146/0x36b535bc79defb00d348658ad7e68d9b1176fa97/) | IssuerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70bfbe...8a5a8d`](./contracts/ethereum-1/0x70bfbe78548f1159cb9b453e4d6ad0e3648a5a8d/) | IssuerV2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x20a24d...91a6d7`](./contracts/fraxtal-252/0x20a24d51aded06b5ccbc3cc8f71d1e141391a6d7/) | L2Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce697c...7d9570`](./contracts/ethereum-1/0xce697c602e613bcf728a439ec4a0f831667d9570/) | LiquidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02165d...5b186c`](./contracts/ethereum-1/0x02165d665e171566629822d9380ad93b975b186c/) | OracleAggregatorV1_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44c69f...c5e7a2`](./contracts/ethereum-1/0x44c69f0ef7a0d96b77437ec2e1bf9d74f5c5e7a2/) | PoolLogic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x85c728...ec0f85`](./contracts/fraxtal-252/0x85c7287fc53a06ec7995db5ae6f2610200ec0f85/) | RebasingTokenWrapperFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x090598...d38b88`](./contracts/sonic-146/0x09059859d2b91cc840bd2c86f841defa19d38b88/) | RedeemerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x464785...6f2e54`](./contracts/fraxtal-252/0x46478563d4532ef2b68a328c3f528b19626f2e54/) | RewardVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe58dec...817ddb`](./contracts/ethereum-1/0xe58dec03a5c25bab45daf83dc8917a29b4817ddb/) | SupplyLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 24 |
| standard_library | 5 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=116

Zero-match audit list:

- [11573] Link
- [11574] Link
- [11575] Link
- [11577] Link

Fork inheritance lineage and inherited audits are included when available.
