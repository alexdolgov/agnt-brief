# Agentic Audit Brief: Volta Club

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Volta Club (`volta-club`)
- Website: [https://volta.club/](https://volta.club/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:44.934Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche, ethereum
- Contract surface: 66 unique implementations (100 raw deployments)
- DeFi Llama TVL: $286,902.01
- On-chain TVL (included contracts): $612,485,299.01
- TVL by chain: Ethereum $612,485,299.01

## Project Description

Volta Club is a decentralized lending protocol that enables users to borrow against a wide range of NFT and fungible token collateral. It uses isolated vaults, specialized valuation helpers, and aggregation layers to manage risk and liquidity across multiple chains.

### Architecture

The Lending family relies on the Token Ecosystem for borrowing assets and fee tokens, while governance multisigs (GnosisSafeProxy) control upgrades across both families. Shared infrastructure includes oracle and aggregation contracts that feed pricing data into vaults and liquidators.

## Contract Surface Quality

- Indexed contracts: 641; live-surface contracts included: 100 (100 live, 0 unknown).
- Excluded by liveness: 346 inactive, 195 singleton, 0 uninitialized.
- Deployment units: 4/70 live.
- Detected codebases: compound-v2, uniswap-v2
- Unverified dependencies: 6/176.

## Audit Coverage Summary

- Verified implementations audited: 0/65 (0.0%)
- Verified + Unaudited implementations: 65
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 66
- Raw deployments: 100
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $612,485,299.01
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $612,485,299.01 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (65)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Immutable | token | ethereum | n/a | 4 deployments: ethereum [`0x0bc08f...a0f60b`](./contracts/ethereum-1/0x0bc08f2433965ea88d977d7bfded0917f3a0f60b/); ethereum `0x17786f...14f28b`; ethereum `0xa978d8...617880`; ethereum `0xd60b06...288326` | ⚠️ Unaudited |
| StargateToken | token | ethereum | n/a | [`0xaf5191...ba2cd6`](./contracts/ethereum-1/0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6/) | ⚠️ Unaudited |
| EURSToken | token | ethereum | unit-27243 | [`0xdb25f2...807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | ⚠️ Unaudited |
| ERC20 | token | ethereum | n/a | [`0x865377...dc9ce4`](./contracts/ethereum-1/0x865377367054516e17014ccded1e7d814edc9ce4/) | ⚠️ Unaudited |
| AlchemixToken | token | ethereum | n/a | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | ⚠️ Unaudited |
| DSDelegateToken | token | ethereum | n/a | [`0x6243d8...8391f4`](./contracts/ethereum-1/0x6243d8cea23066d098a15582d81a598b4e8391f4/) | ⚠️ Unaudited |
| CPOOL | core_logic | ethereum | n/a | [`0x66761f...c2fac5`](./contracts/ethereum-1/0x66761fa41377003622aee3c7675fc7b5c1c2fac5/) | ⚠️ Unaudited |
| StableCoin | token | ethereum | n/a | [`0x466a75...ea0a54`](./contracts/ethereum-1/0x466a756e9a7401b5e2444a3fcb3c2c12fbea0a54/) | ⚠️ Unaudited |
| EthVault | core_logic | ethereum | n/a | [`0x2dcdca...d8b277`](./contracts/ethereum-1/0x2dcdca085af2e258654e47204e483127e0d8b277/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x41d079...371f9b`](./contracts/ethereum-1/0x41d079ce7282d49bf4888c71b5d9e4a02c371f9b/); ethereum `0xc8f2e9...beac34` | ⚠️ Unaudited |
| Auction | unknown | ethereum | n/a | [`0x7cac7f...89d613`](./contracts/ethereum-1/0x7cac7f6be1f74d00d874bbacb98b531fa889d613/) | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | n/a | [`0x296f55...cb3f97`](./contracts/ethereum-1/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/) | ⚠️ Unaudited |
| BridgeToken | operational_periphery | avalanche | n/a | 18 deployments: avalanche [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/); avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70` | ⚠️ Unaudited |
| BSGG | unknown | ethereum | n/a | [`0x69570f...735a25`](./contracts/ethereum-1/0x69570f3e84f51ea70b7b68055c8d667e77735a25/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x697b4a...fa1fb8`](./contracts/ethereum-1/0x697b4acaa24430f254224eb794d2a85ba1fa1fb8/) | ⚠️ Unaudited |
| CollateralJoin1 | unknown | ethereum | n/a | [`0x2d3cd7...226e3a`](./contracts/ethereum-1/0x2d3cd7b81c93f188f3cb8ad87c8acc73d6226e3a/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | unit-27211 | [`0x4dcf74...667339`](./contracts/ethereum-1/0x4dcf7407ae5c07f8681e1659f626e114a7667339/) | ⚠️ Unaudited |
| ConvertibleFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x6525fc...bd0769`](./contracts/ethereum-1/0x6525fc98f2a43633c2a36d5cca0abbdaa6bd0769/); ethereum `0x671f13...ab1424` | ⚠️ Unaudited |
| CYFI | unknown | ethereum | n/a | [`0xde2af8...34b4a4`](./contracts/ethereum-1/0xde2af899040536884e062d3a334f2dd36f34b4a4/) | ⚠️ Unaudited |
| DolaBorrowingRights | core_logic | ethereum | n/a | [`0xad038e...c5d710`](./contracts/ethereum-1/0xad038eb671c44b853887a7e32528fab35dc5d710/) | ⚠️ Unaudited |
| DolaPayroll | unknown | ethereum | n/a | [`0x32eddd...15358f`](./contracts/ethereum-1/0x32eddd879b199503c6fc37df95b8920cd415358f/) | ⚠️ Unaudited |
| EthRepayAllHelper | periphery | ethereum | n/a | [`0xbe0c96...adfeae`](./contracts/ethereum-1/0xbe0c9650cf8ce5279b990e7a6634c63323adfeae/) | ⚠️ Unaudited |
| Factory | registry | ethereum | n/a | 2 deployments: ethereum [`0x683280...1c39e2`](./contracts/ethereum-1/0x6832802996e177660ede6095f184ec34d91c39e2/); ethereum `0x9d556a...5419b1` | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x09dcde...70199f`](./contracts/ethereum-1/0x09dcdeed84106f894412228479caffc3dd70199f/); ethereum `0xd24364...2fcaa3` | ⚠️ Unaudited |
| FixedRateIRM | unknown | ethereum | n/a | [`0xd3d6dd...e6f1a7`](./contracts/ethereum-1/0xd3d6ddb266dc9db2b71b095840c3b98e17e6f1a7/) | ⚠️ Unaudited |
| FoundationFunder | unknown | ethereum | n/a | [`0xadd84d...480993`](./contracts/ethereum-1/0xadd84d9312ed1961ce80a1ceb17446737f480993/) | ⚠️ Unaudited |
| GebProxyActionsGlobalSettlement | unknown | ethereum | n/a | [`0x17b5d9...92cb93`](./contracts/ethereum-1/0x17b5d9914194a08c7ef14451ba15e8ae4f92cb93/) | ⚠️ Unaudited |
| GebSafeManager | governance | ethereum | n/a | [`0xefe0b4...94f185`](./contracts/ethereum-1/0xefe0b4ca532769a3ae758fd82e1426a03a94f185/) | ⚠️ Unaudited |
| GovernorMills | governance | ethereum | n/a | [`0xbeccb6...359bf6`](./contracts/ethereum-1/0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6/) | ⚠️ Unaudited |
| Guardian | governance | ethereum | n/a | [`0x941c26...39259d`](./contracts/ethereum-1/0x941c2699ec7e55a50bde030d8e1e70649839259d/) | ⚠️ Unaudited |
| Helper | periphery | ethereum | n/a | [`0x658890...a1c266`](./contracts/ethereum-1/0x658890f633b6892c1ba13247502791ad6da1c266/) | ⚠️ Unaudited |
| INV | unknown | ethereum | n/a | 2 deployments: ethereum [`0x41d5d7...9dfb68`](./contracts/ethereum-1/0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68/); ethereum `0x8805c8...82a9cb` | ⚠️ Unaudited |
| JPEG | unknown | ethereum | n/a | [`0xe80c0c...8345a3`](./contracts/ethereum-1/0xe80c0cd204d654cebe8dd64a4857cab6be8345a3/) | ⚠️ Unaudited |
| JPEGC | unknown | ethereum | n/a | [`0x839795...eba6f4`](./contracts/ethereum-1/0x83979584ec8c6d94d93f838a524049173deba6f4/) | ⚠️ Unaudited |
| JPEGIndex | unknown | ethereum | n/a | [`0x3415cf...5ac0ac`](./contracts/ethereum-1/0x3415cf1a6459b62a34656e53e4048233775ac0ac/) | ⚠️ Unaudited |
| JPGD | unknown | ethereum | n/a | [`0xce722f...a89dd6`](./contracts/ethereum-1/0xce722f60f35c37ab295adc4e6ba45bcc7ca89dd6/) | ⚠️ Unaudited |
| JPGDStaking | unknown | ethereum | n/a | [`0x05fc48...fdf6cb`](./contracts/ethereum-1/0x05fc48447e0ac445042823dd36e3e4ed2ffdf6cb/) | ⚠️ Unaudited |
| Lens | periphery | ethereum | n/a | [`0xedb597...d7f6c8`](./contracts/ethereum-1/0xedb597c9715c648e4cf546464d365d5923d7f6c8/) | ⚠️ Unaudited |
| LPFarming | unknown | ethereum | n/a | [`0xb271d2...29e4ca`](./contracts/ethereum-1/0xb271d2c9e693dde033d97f8a3c9911781329e4ca/) | ⚠️ Unaudited |
| LPStaking | unknown | ethereum | n/a | [`0xb0d502...31d62b`](./contracts/ethereum-1/0xb0d502e938ed5f4df2e681fe6e419ff29631d62b/) | ⚠️ Unaudited |
| LPStakingTime | unknown | ethereum | n/a | [`0x1c3000...3122fc`](./contracts/ethereum-1/0x1c3000b8f475a958b87c73a5cc5780ab763122fc/) | ⚠️ Unaudited |
| Market | unknown | ethereum | n/a | [`0x63df5e...d37035`](./contracts/ethereum-1/0x63df5e23db45a2066508318f172ba45b9cd37035/) | ⚠️ Unaudited |
| MultiRewards | unknown | avalanche | n/a | [`0xc172c8...2bc0f6`](./contracts/avalanche-43114/0xc172c84587bea6d593269bfe08632bf2da2bc0f6/) | ⚠️ Unaudited |
| OracleFeed | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x022abb...aad735`](./contracts/ethereum-1/0x022abb391ddcc80a17cd0a3873ff88dd06aad735/); ethereum `0x55ccd1...aaa993`; ethereum `0x6ec59c...2df76d`; ethereum `0xbf59e0...e8f4a1`; ethereum `0xdee8e4...1a25cd` | ⚠️ Unaudited |
| Payroll | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e802c...4e560e`](./contracts/ethereum-1/0x4e802cedf01f9c83d5dba3caf7e7b70deb4e560e/); ethereum `0xabfbf3...372f2f` | ⚠️ Unaudited |
| PETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x821a27...195c0c`](./contracts/ethereum-1/0x821a278dfff762c76410264303f25bf42e195c0c/); ethereum `0x836a80...5078c7` | ⚠️ Unaudited |
| PETHNFTVault | core_logic | ethereum | n/a | [`0x75e96d...7792a6`](./contracts/ethereum-1/0x75e96dcf24d95b6a69a5c62ad75e1060607792a6/) | ⚠️ Unaudited |
| PETHVaultForDAO | core_logic | ethereum | n/a | [`0x9a4a82...51b157`](./contracts/ethereum-1/0x9a4a82bc6668795b17182380de5666c76c51b157/) | ⚠️ Unaudited |
| Redemption | unknown | ethereum | n/a | [`0xc003be...93faa3`](./contracts/ethereum-1/0xc003be0faf0b06f66fdf8264540b6a1e2e93faa3/) | ⚠️ Unaudited |
| Router | adapter | ethereum | n/a | [`0x8731d5...e01e98`](./contracts/ethereum-1/0x8731d54e9d02c286767d56ac03e8037c07e01e98/) | ⚠️ Unaudited |
| RouterETH | adapter | ethereum | n/a | [`0x150f94...cc2376`](./contracts/ethereum-1/0x150f94b44927f078737562f0fcf3c95c01cc2376/) | ⚠️ Unaudited |
| sOlympus | unknown | ethereum | n/a | [`0x049066...ccd460`](./contracts/ethereum-1/0x04906695d6d12cf5459975d7c3c03356e4ccd460/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | 3 deployments: ethereum [`0x458195...f5a9f4`](./contracts/ethereum-1/0x4581958737c58a632621c82095664de7f4f5a9f4/); ethereum `0x5c1245...11fe89`; ethereum `0xa88948...eed197` | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TimeStaking | unknown | avalanche | n/a | [`0x4456b8...2168b9`](./contracts/avalanche-43114/0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9/) | ⚠️ Unaudited |
| TokenMintERC20Token | token | ethereum | n/a | [`0x29127f...eac313`](./contracts/ethereum-1/0x29127fe04ffa4c32acac0ffe17280abd74eac313/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | unit-27186 | [`0x02eed6...d6e826`](./contracts/ethereum-1/0x02eed6fdde3d2115795c7f6bef3a352462d6e826/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | unit-27231 | [`0x99a5c7...12e9a1`](./contracts/ethereum-1/0x99a5c731a6cd951ca91cd0720b3168d1c812e9a1/) | ⚠️ Unaudited |
| USDD | unknown | ethereum | n/a | [`0x0c10bf...60b5c6`](./contracts/ethereum-1/0x0c10bf8fcb7bf5412187a595ab97a3609160b5c6/) | ⚠️ Unaudited |
| UwU | unknown | ethereum | n/a | [`0x55c08c...765257`](./contracts/ethereum-1/0x55c08ca52497e2f1534b59e2917bf524d4765257/) | ⚠️ Unaudited |
| VaultFed | core_logic | ethereum | n/a | [`0xe082eb...2734fc`](./contracts/ethereum-1/0xe082eb109fad53ea8db9827ce6b8ef74882734fc/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | n/a | [`0x0e42ac...fbd58e`](./contracts/ethereum-1/0x0e42acbd23faee03249daff896b78d7e79fbd58e/) | ⚠️ Unaudited |
| WhitelistAuction | unknown | ethereum | n/a | [`0x4dfcad...65e55e`](./contracts/ethereum-1/0x4dfcad285ef39fed84e77edf1b7dbc442565e55e/) | ⚠️ Unaudited |
| Wonderland | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9b06f3...c68a76`](./contracts/ethereum-1/0x9b06f3c5de42d4623d7a2bd940ec735103c68a76/); avalanche [`0x9b06f3...c68a76`](./contracts/avalanche-43114/0x9b06f3c5de42d4623d7a2bd940ec735103c68a76/) | ⚠️ Unaudited |
| XINV | unknown | ethereum | n/a | [`0x1637e4...dcd61b`](./contracts/ethereum-1/0x1637e4e9941d55703a7a5e7807d6ada3f7dcd61b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x215587...668d8b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | AlchemixToken | token | $11,284,224.26 | Verified native implementation with $11,284,224.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6243d8...8391f4`](./contracts/ethereum-1/0x6243d8cea23066d098a15582d81a598b4e8391f4/) | DSDelegateToken | token | $1,338,673.83 | Verified native implementation with $1,338,673.83 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x466a75...ea0a54`](./contracts/ethereum-1/0x466a756e9a7401b5e2444a3fcb3c2c12fbea0a54/) | StableCoin | token | $7,035.00 | Verified native implementation with $7,035.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dcdca...d8b277`](./contracts/ethereum-1/0x2dcdca085af2e258654e47204e483127e0d8b277/) | EthVault | core_logic | $6,550.23 | Verified native implementation with $6,550.23 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d079...371f9b`](./contracts/ethereum-1/0x41d079ce7282d49bf4888c71b5d9e4a02c371f9b/) | Vault | core_logic | $5,033.99 | Verified native implementation with $5,033.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x296f55...cb3f97`](./contracts/ethereum-1/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/) | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69570f...735a25`](./contracts/ethereum-1/0x69570f3e84f51ea70b7b68055c8d667e77735a25/) | BSGG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x697b4a...fa1fb8`](./contracts/ethereum-1/0x697b4acaa24430f254224eb794d2a85ba1fa1fb8/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dcf74...667339`](./contracts/ethereum-1/0x4dcf7407ae5c07f8681e1659f626e114a7667339/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6525fc...bd0769`](./contracts/ethereum-1/0x6525fc98f2a43633c2a36d5cca0abbdaa6bd0769/) | ConvertibleFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad038e...c5d710`](./contracts/ethereum-1/0xad038eb671c44b853887a7e32528fab35dc5d710/) | DolaBorrowingRights | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32eddd...15358f`](./contracts/ethereum-1/0x32eddd879b199503c6fc37df95b8920cd415358f/) | DolaPayroll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe0c96...adfeae`](./contracts/ethereum-1/0xbe0c9650cf8ce5279b990e7a6634c63323adfeae/) | EthRepayAllHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x683280...1c39e2`](./contracts/ethereum-1/0x6832802996e177660ede6095f184ec34d91c39e2/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09dcde...70199f`](./contracts/ethereum-1/0x09dcdeed84106f894412228479caffc3dd70199f/) | FeeSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3d6dd...e6f1a7`](./contracts/ethereum-1/0xd3d6ddb266dc9db2b71b095840c3b98e17e6f1a7/) | FixedRateIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadd84d...480993`](./contracts/ethereum-1/0xadd84d9312ed1961ce80a1ceb17446737f480993/) | FoundationFunder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbeccb6...359bf6`](./contracts/ethereum-1/0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6/) | GovernorMills | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x941c26...39259d`](./contracts/ethereum-1/0x941c2699ec7e55a50bde030d8e1e70649839259d/) | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x658890...a1c266`](./contracts/ethereum-1/0x658890f633b6892c1ba13247502791ad6da1c266/) | Helper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d5d7...9dfb68`](./contracts/ethereum-1/0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68/) | INV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe80c0c...8345a3`](./contracts/ethereum-1/0xe80c0cd204d654cebe8dd64a4857cab6be8345a3/) | JPEG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x839795...eba6f4`](./contracts/ethereum-1/0x83979584ec8c6d94d93f838a524049173deba6f4/) | JPEGC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3415cf...5ac0ac`](./contracts/ethereum-1/0x3415cf1a6459b62a34656e53e4048233775ac0ac/) | JPEGIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce722f...a89dd6`](./contracts/ethereum-1/0xce722f60f35c37ab295adc4e6ba45bcc7ca89dd6/) | JPGD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05fc48...fdf6cb`](./contracts/ethereum-1/0x05fc48447e0ac445042823dd36e3e4ed2ffdf6cb/) | JPGDStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedb597...d7f6c8`](./contracts/ethereum-1/0xedb597c9715c648e4cf546464d365d5923d7f6c8/) | Lens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb271d2...29e4ca`](./contracts/ethereum-1/0xb271d2c9e693dde033d97f8a3c9911781329e4ca/) | LPFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0d502...31d62b`](./contracts/ethereum-1/0xb0d502e938ed5f4df2e681fe6e419ff29631d62b/) | LPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63df5e...d37035`](./contracts/ethereum-1/0x63df5e23db45a2066508318f172ba45b9cd37035/) | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e802c...4e560e`](./contracts/ethereum-1/0x4e802cedf01f9c83d5dba3caf7e7b70deb4e560e/) | Payroll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x821a27...195c0c`](./contracts/ethereum-1/0x821a278dfff762c76410264303f25bf42e195c0c/) | PETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75e96d...7792a6`](./contracts/ethereum-1/0x75e96dcf24d95b6a69a5c62ad75e1060607792a6/) | PETHNFTVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a4a82...51b157`](./contracts/ethereum-1/0x9a4a82bc6668795b17182380de5666c76c51b157/) | PETHVaultForDAO | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc003be...93faa3`](./contracts/ethereum-1/0xc003be0faf0b06f66fdf8264540b6a1e2e93faa3/) | Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8731d5...e01e98`](./contracts/ethereum-1/0x8731d54e9d02c286767d56ac03e8037c07e01e98/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x049066...ccd460`](./contracts/ethereum-1/0x04906695d6d12cf5459975d7c3c03356e4ccd460/) | sOlympus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x458195...f5a9f4`](./contracts/ethereum-1/0x4581958737c58a632621c82095664de7f4f5a9f4/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4456b8...2168b9`](./contracts/avalanche-43114/0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9/) | TimeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29127f...eac313`](./contracts/ethereum-1/0x29127fe04ffa4c32acac0ffe17280abd74eac313/) | TokenMintERC20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c10bf...60b5c6`](./contracts/ethereum-1/0x0c10bf8fcb7bf5412187a595ab97a3609160b5c6/) | USDD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55c08c...765257`](./contracts/ethereum-1/0x55c08ca52497e2f1534b59e2917bf524d4765257/) | UwU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe082eb...2734fc`](./contracts/ethereum-1/0xe082eb109fad53ea8db9827ce6b8ef74882734fc/) | VaultFed | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e42ac...fbd58e`](./contracts/ethereum-1/0x0e42acbd23faee03249daff896b78d7e79fbd58e/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dfcad...65e55e`](./contracts/ethereum-1/0x4dfcad285ef39fed84e77edf1b7dbc442565e55e/) | WhitelistAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b06f3...c68a76`](./contracts/ethereum-1/0x9b06f3c5de42d4623d7a2bd940ec735103c68a76/) | Wonderland | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1637e4...dcd61b`](./contracts/ethereum-1/0x1637e4e9941d55703a7a5e7807d6ada3f7dcd61b/) | XINV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 7 |
| standard_library | 3 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
