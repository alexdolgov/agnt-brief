# Agentic Audit Brief: DSU Money

## Project Overview

- Project: DSU Money (`dsu-money`)
- Website: [https://app.dsu.money](https://app.dsu.money)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:44.093Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 97 unique implementations (97 raw deployments)
- DeFi Llama TVL: $469,285.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 77 project-authored contract(s) across 4 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 11 common project-authored base contract(s) (uinitializable, ucontrollerprovider, ureentrancyguard). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 97; live-surface contracts included: 97 (97 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/97 (0.0%)
- Deployed-live implementations: 97 of 97 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/97
- Verified + Unaudited implementations: 97
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 97
- Raw deployments: 97
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (97)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Account | unknown | arbitrum | n/a | [`0xca7fb0...a0e826`](./contracts/arbitrum-42161/0xca7fb0afb7622a982a70c5efd2aa387257a0e826/) | ⚠️ Unaudited |
| BalancedVault | unknown | arbitrum | n/a | [`0x477fb9...08385e`](./contracts/arbitrum-42161/0x477fb965d22b82b02c3fe853cf33bc1c5708385e/) | ⚠️ Unaudited |
| BatchKeeper | unknown | arbitrum | n/a | [`0x5a8557...b9f118`](./contracts/arbitrum-42161/0x5a8557449c05fa515fea099178d42b9415b9f118/) | ⚠️ Unaudited |
| CentimilliPowerTwo | unknown | arbitrum | n/a | [`0x33117f...116d1c`](./contracts/arbitrum-42161/0x33117f64e6faca60605988f0ffdbd11074116d1c/) | ⚠️ Unaudited |
| ChainlinkFeedOracle | unknown | arbitrum | n/a | [`0xdc5182...70a3b6`](./contracts/arbitrum-42161/0xdc518208c11159844188f647413a427cbd70a3b6/) | ⚠️ Unaudited |
| CheckpointLib | unknown | arbitrum | n/a | [`0x609f98...93a1d2`](./contracts/arbitrum-42161/0x609f9888e9c1691abe1b2ce1a228f193c093a1d2/) | ⚠️ Unaudited |
| CheckpointStorageLib | unknown | arbitrum | n/a | [`0x074fb1...9406d9`](./contracts/arbitrum-42161/0x074fb1073b24f85b52337b7dfea2d2cb5b9406d9/) | ⚠️ Unaudited |
| Claimer | unknown | ethereum | n/a | [`0xa9c962...6851f5`](./contracts/ethereum-1/0xa9c962be526ecbde40259c58a48e2362a96851f5/) | ⚠️ Unaudited |
| Collateral | unknown | ethereum | n/a | [`0x2b9922...a2a15b`](./contracts/ethereum-1/0x2b99224dad73d7d84b7c74e9161bbd0d01a2a15b/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0x159331...a74c3d`](./contracts/ethereum-1/0x1593318424df66128cb7d0c5574b1283c3a74c3d/) | ⚠️ Unaudited |
| Coordinator | unknown | arbitrum | n/a | [`0x0ecb01...edcc5e`](./contracts/arbitrum-42161/0x0ecb017ed5d35807ce6b6f0c8308edb8b7edcc5e/) | ⚠️ Unaudited |
| Deployer1 | unknown | ethereum | n/a | [`0x408a45...4f1df3`](./contracts/ethereum-1/0x408a45844cfe015e0e4afb2116475620dc4f1df3/) | ⚠️ Unaudited |
| Deployer2 | unknown | ethereum | n/a | [`0xabbc87...f3121f`](./contracts/ethereum-1/0xabbc87e789a3d5ba5a9e976867e686dbf3f3121f/) | ⚠️ Unaudited |
| Deployer3 | unknown | ethereum | n/a | [`0x71fac5...7e897a`](./contracts/ethereum-1/0x71fac51091a5dc87e02419ce22ab922d8c7e897a/) | ⚠️ Unaudited |
| Dollar | unknown | ethereum | n/a | [`0x36f3fd...89d723`](./contracts/ethereum-1/0x36f3fd68e7325a35eb768f1aedaae9ea0689d723/) | ⚠️ Unaudited |
| DSU | unknown | optimism | n/a | [`0x52c64b...6b841b`](./contracts/optimism-10/0x52c64b8998eb7c80b6f526e99e29abdcc86b841b/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | base | n/a | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | arbitrum | n/a | [`0x0f4fb9...b6e04a`](./contracts/arbitrum-42161/0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a/) | ⚠️ Unaudited |
| Forwarder | unknown | ethereum | n/a | [`0xfc20bc...3ab37e`](./contracts/ethereum-1/0xfc20bcca96bde758e9c69151d99cecfeae3ab37e/) | ⚠️ Unaudited |
| Funder | unknown | ethereum | n/a | [`0x87f6b2...25bc4c`](./contracts/ethereum-1/0x87f6b212a25677b9b12e7fcfa8c08fb3df25bc4c/) | ⚠️ Unaudited |
| GasOracle_Arbitrum | unknown | arbitrum | n/a | [`0x038901...4a2bc7`](./contracts/arbitrum-42161/0x038901cc5d0ae04603e6f44819600badbf4a2bc7/) | ⚠️ Unaudited |
| Giga | unknown | arbitrum | n/a | [`0x234253...cab7dc`](./contracts/arbitrum-42161/0x234253280a5427cb9e198367b6804dba9fcab7dc/) | ⚠️ Unaudited |
| GlobalStorageLib | unknown | arbitrum | n/a | [`0x0b18a9...291ed0`](./contracts/arbitrum-42161/0x0b18a9a54bb159f4e5f7b6db57445be255291ed0/) | ⚠️ Unaudited |
| GovernorAlpha | unknown | ethereum | n/a | [`0x0599f0...a8bfcb`](./contracts/ethereum-1/0x0599f087df7900a1f806c5d149387ee6e0a8bfcb/) | ⚠️ Unaudited |
| Implementation | unknown | ethereum | n/a | [`0x443d2f...3313d3`](./contracts/ethereum-1/0x443d2f2755db5942601fa062cc248aaa153313d3/) | ⚠️ Unaudited |
| Incentivizer | unknown | ethereum | n/a | [`0x0d49c4...3a0c27`](./contracts/ethereum-1/0x0d49c416103cbd276d9c3cd96710db264e3a0c27/) | ⚠️ Unaudited |
| InvariantLib | unknown | arbitrum | n/a | [`0x1451ba...c1a8c8`](./contracts/arbitrum-42161/0x1451bacef80518fea01fded8e32ccccc68c1a8c8/) | ⚠️ Unaudited |
| Inverse | unknown | arbitrum | n/a | [`0xd166f9...30b5e9`](./contracts/arbitrum-42161/0xd166f9972dd6f95aaac6710716d45bb30430b5e9/) | ⚠️ Unaudited |
| KeeperOracle | unknown | arbitrum | n/a | [`0x1990fa...40f1d8`](./contracts/arbitrum-42161/0x1990fa13ccef6100703a6999c90c0493a740f1d8/) | ⚠️ Unaudited |
| KeeperOracle_Migration | unknown | arbitrum | n/a | [`0xa3186b...12641b`](./contracts/arbitrum-42161/0xa3186bcc1a64edabd13b7de0faaecbce3e12641b/) | ⚠️ Unaudited |
| Kilo | unknown | arbitrum | n/a | [`0xde7e2d...49acab`](./contracts/arbitrum-42161/0xde7e2d1005ea46a0e261e243f762fc7ca849acab/) | ⚠️ Unaudited |
| KiloPowerHalf | unknown | arbitrum | n/a | [`0x7aaf91...edf753`](./contracts/arbitrum-42161/0x7aaf9184ee1299226d46ffeb36595bb8d0edf753/) | ⚠️ Unaudited |
| KiloPowerTwo | unknown | arbitrum | n/a | [`0xf94f18...16cbc9`](./contracts/arbitrum-42161/0xf94f18fe7ef42eee309ebfc287f2f425cb16cbc9/) | ⚠️ Unaudited |
| MagicValueLib | unknown | arbitrum | n/a | [`0x28158d...9df48c`](./contracts/arbitrum-42161/0x28158dcebbb6b5e69a5a5a26f5fe9a8d199df48c/) | ⚠️ Unaudited |
| Manager_Arbitrum | unknown | arbitrum | n/a | [`0x3af57c...ca4671`](./contracts/arbitrum-42161/0x3af57c0f8e76277f58ca09d03ace050c5dca4671/) | ⚠️ Unaudited |
| Market | unknown | arbitrum | n/a | [`0x17ebca...a3b255`](./contracts/arbitrum-42161/0x17ebca0060c3e84812ab4e208cc33e5fd8a3b255/) | ⚠️ Unaudited |
| MarketFactory | unknown | arbitrum | n/a | [`0x046d60...9b4cde`](./contracts/arbitrum-42161/0x046d6038811c6c14e81d5de5b107d4b7ee9b4cde/) | ⚠️ Unaudited |
| MarketParameterStorageLib | unknown | arbitrum | n/a | [`0x0d07e3...8f2e16`](./contracts/arbitrum-42161/0x0d07e3a272f5666d10aefc611d0f693b4a8f2e16/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | n/a | [`0x223039...ed52e1`](./contracts/base-8453/0x2230393edad0299b7e7b59f20aa856cd1bed52e1/) | ⚠️ Unaudited |
| Mega | unknown | arbitrum | n/a | [`0xffb33f...5248e1`](./contracts/arbitrum-42161/0xffb33f838096cf3c3c7dd21c1f941bb2705248e1/) | ⚠️ Unaudited |
| MegaPowerTwo | unknown | arbitrum | n/a | [`0xe833e9...f0f7d7`](./contracts/arbitrum-42161/0xe833e9bd294d9f1e1760bdc88c01c8dea4f0f7d7/) | ⚠️ Unaudited |
| MetaQuantsFactory | unknown | arbitrum | n/a | [`0x309ad3...5687f1`](./contracts/arbitrum-42161/0x309ad3771baea8de1bf1cf6a1bfb4ceeb65687f1/) | ⚠️ Unaudited |
| MetaQuantsFactory_Arbitrum | unknown | arbitrum | n/a | [`0xa7df5f...ca0b5c`](./contracts/arbitrum-42161/0xa7df5fb2fb55671d22d78a188d9301e383ca0b5c/) | ⚠️ Unaudited |
| Micro | unknown | arbitrum | n/a | [`0x4f7a6c...e74179`](./contracts/arbitrum-42161/0x4f7a6cced29712fc5b102e730c27324a01e74179/) | ⚠️ Unaudited |
| MicroPowerTwo | unknown | arbitrum | n/a | [`0x18ad45...8cd632`](./contracts/arbitrum-42161/0x18ad45bdda468259257e46ba07de6cd3d88cd632/) | ⚠️ Unaudited |
| MigrationReserve | unknown | optimism | n/a | [`0x0d49c4...3a0c27`](./contracts/optimism-10/0x0d49c416103cbd276d9c3cd96710db264e3a0c27/) | ⚠️ Unaudited |
| Migrations | unknown | ethereum | n/a | [`0x0e6472...a765ad`](./contracts/ethereum-1/0x0e6472157b68cb71bfbe6094c3e1537fb5a765ad/) | ⚠️ Unaudited |
| Migrator | unknown | ethereum | n/a | [`0xc61d12...ab2ce7`](./contracts/ethereum-1/0xc61d12896421613b30d56f85c093cdda43ab2ce7/) | ⚠️ Unaudited |
| Milli | unknown | arbitrum | n/a | [`0xae794c...68bd62`](./contracts/arbitrum-42161/0xae794c750991b19485e17788d1a19b83ba68bd62/) | ⚠️ Unaudited |
| MilliPowerHalf | unknown | arbitrum | n/a | [`0xbca65c...5f4e0e`](./contracts/arbitrum-42161/0xbca65ce3629167600d52492b61a97627305f4e0e/) | ⚠️ Unaudited |
| MilliPowerTwo | unknown | arbitrum | n/a | [`0x443cef...a43166`](./contracts/arbitrum-42161/0x443cef645e29ae12c053f358b2875df0b9a43166/) | ⚠️ Unaudited |
| MilliSqueethPayoff | unknown | ethereum | n/a | [`0x560276...4ce0b1`](./contracts/ethereum-1/0x560276178203095afe2b055eb06e4e9eaf4ce0b1/) | ⚠️ Unaudited |
| Multicall4 | unknown | arbitrum | n/a | [`0x9b12ff...8fe607`](./contracts/arbitrum-42161/0x9b12ff03edd05318b84b0d89cb3e5c40138fe607/) | ⚠️ Unaudited |
| MultiInvoker | unknown | arbitrum | n/a | [`0x14c444...44c26a`](./contracts/arbitrum-42161/0x14c4448239175ca72dea15c23615ad6f5144c26a/) | ⚠️ Unaudited |
| MultiInvoker_Arbitrum | unknown | arbitrum | n/a | [`0x0092f3...fdd873`](./contracts/arbitrum-42161/0x0092f3a5f211333c5427605a6df76b35dcfdd873/) | ⚠️ Unaudited |
| Names | unknown | ethereum | n/a | [`0x298e0b...cfe47d`](./contracts/ethereum-1/0x298e0b0a38ff8b99bf1a3b697b0efb2195cfe47d/) | ⚠️ Unaudited |
| Nano | unknown | arbitrum | n/a | [`0x1cc0e7...0645e7`](./contracts/arbitrum-42161/0x1cc0e7883dc01cca0cc7a04b1eb3e51c290645e7/) | ⚠️ Unaudited |
| Oracle | unknown | arbitrum | n/a | [`0x0a47bb...246bb7`](./contracts/arbitrum-42161/0x0a47bb5e5260619204a578bd477204fce6246bb7/) | ⚠️ Unaudited |
| OracleFactory | unknown | arbitrum | n/a | [`0x19a401...be4b22`](./contracts/arbitrum-42161/0x19a4010e859ca3d10f0d928c6665f9a9e3be4b22/) | ⚠️ Unaudited |
| OrderVerifier | unknown | arbitrum | n/a | [`0x886e59...908581`](./contracts/arbitrum-42161/0x886e59002dff8b10f4e777ca3a6ca6c3e6908581/) | ⚠️ Unaudited |
| OVMFiatToken | unknown | optimism | n/a | [`0x7f5c76...c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | ⚠️ Unaudited |
| PayoffFactory | unknown | arbitrum | n/a | [`0xf81752...27805d`](./contracts/arbitrum-42161/0xf817521610600c4674364246a5cf4af8e627805d/) | ⚠️ Unaudited |
| PerennialLens | unknown | arbitrum | n/a | [`0x159331...a74c3d`](./contracts/arbitrum-42161/0x1593318424df66128cb7d0c5574b1283c3a74c3d/) | ⚠️ Unaudited |
| PositionStorageLocalLib | unknown | arbitrum | n/a | [`0x3d43c9...745a4c`](./contracts/arbitrum-42161/0x3d43c9b84546c9658cdfd184478ecb5d3b745a4c/) | ⚠️ Unaudited |
| PowerHalf | unknown | arbitrum | n/a | [`0x07b891...c8af9c`](./contracts/arbitrum-42161/0x07b891ae5e0eeaf7fb407552c28eac785ac8af9c/) | ⚠️ Unaudited |
| PowerTwo | unknown | arbitrum | n/a | [`0x6b1c49...ed696c`](./contracts/arbitrum-42161/0x6b1c4978142a9bc9dd5777866aa8ad610ded696c/) | ⚠️ Unaudited |
| Product | unknown | ethereum | n/a | [`0x0bc5f9...286f53`](./contracts/ethereum-1/0x0bc5f9025dad9651425deab8d03a33f71a286f53/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | optimism | n/a | [`0x16b383...3f3535`](./contracts/optimism-10/0x16b38364ba6f55b6e150cc7f52d22e89643f3535/) | ⚠️ Unaudited |
| ProxyRoot | unknown | ethereum | n/a | [`0x4d2a5e...f35fec`](./contracts/ethereum-1/0x4d2a5e3b7831156f62c8df47604e321cdaf35fec/) | ⚠️ Unaudited |
| PythFactory | unknown | arbitrum | n/a | [`0x63dd40...687bb6`](./contracts/arbitrum-42161/0x63dd4059971a9e24810a2aea222460aca6687bb6/) | ⚠️ Unaudited |
| PythFactory_Arbitrum | unknown | arbitrum | n/a | [`0x143c5e...74c1ad`](./contracts/arbitrum-42161/0x143c5ec02fde403c73245b94dec621f05c74c1ad/) | ⚠️ Unaudited |
| PythOracle_Arbitrum | unknown | arbitrum | n/a | [`0x7a18a5...395ca7`](./contracts/arbitrum-42161/0x7a18a52ef9ab4e2ede9113ef13483ed18b395ca7/) | ⚠️ Unaudited |
| Registry | unknown | ethereum | n/a | [`0xc5285e...38c7a9`](./contracts/ethereum-1/0xc5285ee6d5c9adf4e04f5ccb47d0501ae638c7a9/) | ⚠️ Unaudited |
| ReserveImpl | unknown | ethereum | n/a | [`0x42340c...5f9ee4`](./contracts/ethereum-1/0x42340c735e4b6018661183dcd5b267f3bb5f9ee4/) | ⚠️ Unaudited |
| RiskParameterStorageLib | unknown | arbitrum | n/a | [`0x02608d...aa0ca7`](./contracts/arbitrum-42161/0x02608dd5a2627cb5908f948b3adb9ce437aa0ca7/) | ⚠️ Unaudited |
| Root | unknown | ethereum | n/a | [`0xb80ad6...55e014`](./contracts/ethereum-1/0xb80ad6c00bd663c2b7893cd6ede3f3c5c055e014/) | ⚠️ Unaudited |
| SeasonalMerkleClaim | unknown | arbitrum | n/a | [`0x4fc1cc...301f30`](./contracts/arbitrum-42161/0x4fc1cc62e5d0b12f5a9e3213b4177d2edb301f30/) | ⚠️ Unaudited |
| SimpleReserve | unknown | optimism | n/a | [`0x58e0c5...196bfe`](./contracts/optimism-10/0x58e0c542ab540e0dd3b4fd96cc46b0aad1196bfe/) | ⚠️ Unaudited |
| Stake | unknown | ethereum | n/a | [`0x24ae12...ac8b3e`](./contracts/ethereum-1/0x24ae124c4cc33d6791f8e8b63520ed7107ac8b3e/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x1bba92...64cb7a`](./contracts/ethereum-1/0x1bba92f379375387bf8f927058da14d47464cb7a/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x13b7a7...5be841`](./contracts/ethereum-1/0x13b7a79e050ef2c3fdc858efd5c066c3655be841/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x0e9d1d...8aaf5c`](./contracts/arbitrum-42161/0x0e9d1df540acb30a321d3d3edd4996e0248aaf5c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x196062...8f016f`](./contracts/arbitrum-42161/0x1960628db367281b1a186dd5b80b5dd6978f016f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x197de1...6ddd7c`](./contracts/arbitrum-42161/0x197de1b26ad733380fd22159a2671f497a6ddd7c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x2b87c5...a27cbc`](./contracts/arbitrum-42161/0x2b87c59f5220ee51616ad2273b5f683d5ea27cbc/) | ⚠️ Unaudited |
| TwoWayBatcher | unknown | ethereum | n/a | [`0xaef566...9d9094`](./contracts/ethereum-1/0xaef566ca7e84d1e736f999765a804687f39d9094/) | ⚠️ Unaudited |
| UCrossChainOwner_Arbitrum | unknown | arbitrum | n/a | [`0x4a0f50...4d9314`](./contracts/arbitrum-42161/0x4a0f50b19b02ac927911c559629536b9a24d9314/) | ⚠️ Unaudited |
| UCrossChainOwner_Optimism | unknown | optimism | n/a | [`0x7b4adf...562a84`](./contracts/optimism-10/0x7b4adf64b0d60ff97d672e473420203d52562a84/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xcadd30...486159`](./contracts/ethereum-1/0xcadd30b39f01cfdfb848174b19bbb5b1b7486159/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | arbitrum | n/a | [`0xc12b0f...c77bc6`](./contracts/arbitrum-42161/0xc12b0fe62441baad525cd7d770cf21c883c77bc6/) | ⚠️ Unaudited |
| Vault | unknown | arbitrum | n/a | [`0x03557b...61a0d7`](./contracts/arbitrum-42161/0x03557b122c71744e7226d68f6ef6b5915e61a0d7/) | ⚠️ Unaudited |
| VaultFactory | unknown | arbitrum | n/a | [`0x1d6a63...9e0067`](./contracts/arbitrum-42161/0x1d6a633827666b0d0eda6249cd66f1850f9e0067/) | ⚠️ Unaudited |
| Verifier | unknown | arbitrum | n/a | [`0x492bf4...babd73`](./contracts/arbitrum-42161/0x492bf4b1e07c440f68eb35a5237dc0a858babd73/) | ⚠️ Unaudited |
| VersionLib | unknown | arbitrum | n/a | [`0x6fd2b0...3b45be`](./contracts/arbitrum-42161/0x6fd2b0a8a40a1be8510cb5f39efd72cfca3b45be/) | ⚠️ Unaudited |
| VersionStorageLib | unknown | arbitrum | n/a | [`0x107507...ead05b`](./contracts/arbitrum-42161/0x107507a3268eec24dd3ffa223777b94552ead05b/) | ⚠️ Unaudited |
| Vester | unknown | ethereum | n/a | [`0x035a24...d6d158`](./contracts/ethereum-1/0x035a24be9a1d797f54f4558985a072bf66d6d158/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x6ec80d...d9109a`](./contracts/ethereum-1/0x6ec80df362d7042c50d4469bcfbc174c9dd9109a/) | ⚠️ Unaudited |

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
| [www.openzeppelin.com/news/empty-set-v2-audit](https://www.openzeppelin.com/news/empty-set-v2-audit) | OpenZeppelin | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |
| [result.md](https://github.com/emptysetsquad/emptyset/blob/master/audit/result.md) | OpenZeppelin | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |
| [scope.md](https://github.com/emptysetsquad/emptyset/blob/master/audit/scope.md) | OpenZeppelin | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 97 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21384] www.openzeppelin.com/news/empty-set-v2-audit
- [21385] result.md
- [21386] scope.md

Fork inheritance lineage and inherited audits are included when available.
