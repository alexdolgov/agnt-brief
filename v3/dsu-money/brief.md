# Agentic Audit Brief: DSU Money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: DSU Money (`dsu-money`)
- Website: [https://app.dsu.money](https://app.dsu.money)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 351 unique implementations (354 raw deployments)
- Coverage basis: 3/17 confirmed own live verified implementations (17.6%); conservative 17.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $469,285.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for DSU Money. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across arbitrum, base, ethereum, optimism. Structural roles: 10 core, 3 supporting, 2 infra, 2 unclassified. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (10), supporting (3), infra (2), unclassified (2)
- Contract kinds: contract (16), unclassified (1)
- Detected standards: ownable (6), erc20 (4), erc1967proxy (3), erc20permit (2), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (13), uniswap-v2 (4)
- Upgradeable-pattern rows: 3

## Fork Analysis

1 of 27 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

**Incentivizer** (`0x0d49c416103cbd276d9c3cd96710db264e3a0c27`, chain 1)
Origin: perennial (`0x5b495f...fa92b4`)
Containment: 94.7% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- claimFor(address,IProduct,uint256[])

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x52c64b8998eb7c80b6f526e99e29abdcc86b841b`, chain 1)
- UnnamedContract (`0x605d26fbd5be761089281d5cec2ce86eea667109`, chain 1)
- UnnamedContract (`0xc6e09feb984acab2c956c9af56b9b3729a1bf3c8`, chain 1)
- UnnamedContract (`0xd05ace63789ccb35b9ce71d01e4d632a0486da4b`, chain 1)
- UnnamedContract (`0xd353a618abd6b39e8c334291c74a52ceb19b18fd`, chain 1)
- UnnamedContract (`0x5fa881826ad000d010977645450292701bc2f56d`, chain 8453)
- UnnamedContract (`0x7b4adf64b0d60ff97d672e473420203d52562a84`, chain 8453)
- UnnamedContract (`0x0d49c416103cbd276d9c3cd96710db264e3a0c27`, chain 42161)
- UnnamedContract (`0x52c64b8998eb7c80b6f526e99e29abdcc86b841b`, chain 42161)
- UnnamedContract (`0xaf88d065e77c8cc2239327c5edb3a432268e5831`, chain 42161)
- Dollar (`0x36f3fd68e7325a35eb768f1aedaae9ea0689d723`, chain 1)
- DSU (`0x52c64b8998eb7c80b6f526e99e29abdcc86b841b`, chain 10)
- FiatTokenProxy (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- Funder (`0x87f6b212a25677b9b12e7fcfa8c08fb3df25bc4c`, chain 1)
- GovernorAlpha (`0x0599f087df7900a1f806c5d149387ee6e0a8bfcb`, chain 1)
- Implementation (`0x443d2f2755db5942601fa062cc248aaa153313d3`, chain 1)
- MigrationReserve (`0x0d49c416103cbd276d9c3cd96710db264e3a0c27`, chain 10)
- Migrator (`0xc61d12896421613b30d56f85c093cdda43ab2ce7`, chain 1)
- OVMFiatToken (`0x7f5c764cbc14f9669b88837ca1490cca17c31607`, chain 10)
- ProxyRoot (`0x4d2a5e3b7831156f62c8df47604e321cdaf35fec`, chain 1)
- Registry (`0xc5285ee6d5c9adf4e04f5ccb47d0501ae638c7a9`, chain 1)
- ReserveImpl (`0x42340c735e4b6018661183dcd5b267f3bb5f9ee4`, chain 1)
- Stake (`0x24ae124c4cc33d6791f8e8b63520ed7107ac8b3e`, chain 1)
- Timelock (`0x1bba92f379375387bf8f927058da14d47464cb7a`, chain 1)
- UniswapV2Pair (`0xcadd30b39f01cfdfb848174b19bbb5b1b7486159`, chain 1)
- Vyper_contract (`0x6ec80df362d7042c50d4469bcfbc174c9dd9109a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/28 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/17 (17.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 324 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 27 of 351 unique; 324 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/97
- Verified + Unaudited implementations: 94
- Verified by bytecode match: 0
- Unverified implementations: 254
- Unique implementations: 351
- Raw deployments: 354
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 17.6% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 3 | 3.1% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Dollar | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384075 | `0x36f3fd68e7325a35eb768f1aedaae9ea0689d723` | ✅ Audited |
| GovernorAlpha | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384071 | `0x0599f087df7900a1f806c5d149387ee6e0a8bfcb` | ✅ Audited |
| Stake | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384074 | `0x24ae124c4cc33d6791f8e8b63520ed7107ac8b3e` | ✅ Audited |

### ⚠️ Verified + Unaudited (94)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca7fb0afb7622a982a70c5efd2aa387257a0e826` | ⚠️ Unaudited |
| BalancedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x477fb965d22b82b02c3fe853cf33bc1c5708385e` | ⚠️ Unaudited |
| BatchKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a8557449c05fa515fea099178d42b9415b9f118` | ⚠️ Unaudited |
| CentimilliPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33117f64e6faca60605988f0ffdbd11074116d1c` | ⚠️ Unaudited |
| ChainlinkFeedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc518208c11159844188f647413a427cbd70a3b6` | ⚠️ Unaudited |
| CheckpointLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x609f9888e9c1691abe1b2ce1a228f193c093a1d2` | ⚠️ Unaudited |
| CheckpointStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x074fb1073b24f85b52337b7dfea2d2cb5b9406d9` | ⚠️ Unaudited |
| Claimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9c962be526ecbde40259c58a48e2362a96851f5` | ⚠️ Unaudited |
| Collateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b99224dad73d7d84b7c74e9161bbd0d01a2a15b` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1593318424df66128cb7d0c5574b1283c3a74c3d` | ⚠️ Unaudited |
| Coordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ecb017ed5d35807ce6b6f0c8308edb8b7edcc5e` | ⚠️ Unaudited |
| Deployer1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x408a45844cfe015e0e4afb2116475620dc4f1df3` | ⚠️ Unaudited |
| Deployer2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabbc87e789a3d5ba5a9e976867e686dbf3f3121f` | ⚠️ Unaudited |
| Deployer3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71fac51091a5dc87e02419ce22ab922d8c7e897a` | ⚠️ Unaudited |
| DSU | unknown | project_anchor | own_supporting | 0 | optimism | unit-384089 | `0x52c64b8998eb7c80b6f526e99e29abdcc86b841b` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | base | unit-384098 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f4fb9474303d10905ab86aa8d5a65fe44b6e04a` | ⚠️ Unaudited |
| Forwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc20bcca96bde758e9c69151d99cecfeae3ab37e` | ⚠️ Unaudited |
| Funder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384081 | `0x87f6b212a25677b9b12e7fcfa8c08fb3df25bc4c` | ⚠️ Unaudited |
| GasOracle_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x038901cc5d0ae04603e6f44819600badbf4a2bc7` | ⚠️ Unaudited |
| Giga | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x234253280a5427cb9e198367b6804dba9fcab7dc` | ⚠️ Unaudited |
| GlobalStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b18a9a54bb159f4e5f7b6db57445be255291ed0` | ⚠️ Unaudited |
| Implementation | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384096 | `0x443d2f2755db5942601fa062cc248aaa153313d3` | ⚠️ Unaudited |
| Incentivizer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384072 | `0x0d49c416103cbd276d9c3cd96710db264e3a0c27` | ⚠️ Unaudited |
| InvariantLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1451bacef80518fea01fded8e32ccccc68c1a8c8` | ⚠️ Unaudited |
| Inverse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd166f9972dd6f95aaac6710716d45bb30430b5e9` | ⚠️ Unaudited |
| KeeperOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1990fa13ccef6100703a6999c90c0493a740f1d8` | ⚠️ Unaudited |
| KeeperOracle_Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3186bcc1a64edabd13b7de0faaecbce3e12641b` | ⚠️ Unaudited |
| Kilo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde7e2d1005ea46a0e261e243f762fc7ca849acab` | ⚠️ Unaudited |
| KiloPowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7aaf9184ee1299226d46ffeb36595bb8d0edf753` | ⚠️ Unaudited |
| KiloPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf94f18fe7ef42eee309ebfc287f2f425cb16cbc9` | ⚠️ Unaudited |
| MagicValueLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28158dcebbb6b5e69a5a5a26f5fe9a8d199df48c` | ⚠️ Unaudited |
| Manager_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3af57c0f8e76277f58ca09d03ace050c5dca4671` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17ebca0060c3e84812ab4e208cc33e5fd8a3b255` | ⚠️ Unaudited |
| MarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x046d6038811c6c14e81d5de5b107d4b7ee9b4cde` | ⚠️ Unaudited |
| MarketParameterStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d07e3a272f5666d10aefc611d0f693b4a8f2e16` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2230393edad0299b7e7b59f20aa856cd1bed52e1` | ⚠️ Unaudited |
| Mega | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffb33f838096cf3c3c7dd21c1f941bb2705248e1` | ⚠️ Unaudited |
| MegaPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe833e9bd294d9f1e1760bdc88c01c8dea4f0f7d7` | ⚠️ Unaudited |
| MetaQuantsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x309ad3771baea8de1bf1cf6a1bfb4ceeb65687f1` | ⚠️ Unaudited |
| MetaQuantsFactory_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7df5fb2fb55671d22d78a188d9301e383ca0b5c` | ⚠️ Unaudited |
| Micro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f7a6cced29712fc5b102e730c27324a01e74179` | ⚠️ Unaudited |
| MicroPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18ad45bdda468259257e46ba07de6cd3d88cd632` | ⚠️ Unaudited |
| MigrationReserve | unknown | project_anchor | own_supporting | 1 | optimism | unit-384097 | `0x0d49c416103cbd276d9c3cd96710db264e3a0c27` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e6472157b68cb71bfbe6094c3e1537fb5a765ad` | ⚠️ Unaudited |
| Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384084 | `0xc61d12896421613b30d56f85c093cdda43ab2ce7` | ⚠️ Unaudited |
| Milli | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae794c750991b19485e17788d1a19b83ba68bd62` | ⚠️ Unaudited |
| MilliPowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbca65ce3629167600d52492b61a97627305f4e0e` | ⚠️ Unaudited |
| MilliPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x443cef645e29ae12c053f358b2875df0b9a43166` | ⚠️ Unaudited |
| MilliSqueethPayoff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x560276178203095afe2b055eb06e4e9eaf4ce0b1` | ⚠️ Unaudited |
| Multicall4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b12ff03edd05318b84b0d89cb3e5c40138fe607` | ⚠️ Unaudited |
| MultiInvoker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14c4448239175ca72dea15c23615ad6f5144c26a` | ⚠️ Unaudited |
| MultiInvoker_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0092f3a5f211333c5427605a6df76b35dcfdd873` | ⚠️ Unaudited |
| Names | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x298e0b0a38ff8b99bf1a3b697b0efb2195cfe47d` | ⚠️ Unaudited |
| Nano | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cc0e7883dc01cca0cc7a04b1eb3e51c290645e7` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a47bb5e5260619204a578bd477204fce6246bb7` | ⚠️ Unaudited |
| OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19a4010e859ca3d10f0d928c6665f9a9e3be4b22` | ⚠️ Unaudited |
| OrderVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x886e59002dff8b10f4e777ca3a6ca6c3e6908581` | ⚠️ Unaudited |
| OVMFiatToken | unknown | project_anchor | own_supporting | 0 | optimism | unit-384090 | `0x7f5c764cbc14f9669b88837ca1490cca17c31607` | ⚠️ Unaudited |
| PayoffFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf817521610600c4674364246a5cf4af8e627805d` | ⚠️ Unaudited |
| PerennialLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1593318424df66128cb7d0c5574b1283c3a74c3d` | ⚠️ Unaudited |
| PositionStorageLocalLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d43c9b84546c9658cdfd184478ecb5d3b745a4c` | ⚠️ Unaudited |
| PowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07b891ae5e0eeaf7fb407552c28eac785ac8af9c` | ⚠️ Unaudited |
| PowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b1c4978142a9bc9dd5777866aa8ad610ded696c` | ⚠️ Unaudited |
| Product | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc5f9025dad9651425deab8d03a33f71a286f53` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x16b38364ba6f55b6e150cc7f52d22e89643f3535` | ⚠️ Unaudited |
| ProxyRoot | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384077 | `0x4d2a5e3b7831156f62c8df47604e321cdaf35fec` | ⚠️ Unaudited |
| PythFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63dd4059971a9e24810a2aea222460aca6687bb6` | ⚠️ Unaudited |
| PythFactory_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x143c5ec02fde403c73245b94dec621f05c74c1ad` | ⚠️ Unaudited |
| PythOracle_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a18a52ef9ab4e2ede9113ef13483ed18b395ca7` | ⚠️ Unaudited |
| Registry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384083 | `0xc5285ee6d5c9adf4e04f5ccb47d0501ae638c7a9` | ⚠️ Unaudited |
| ReserveImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384076 | `0x42340c735e4b6018661183dcd5b267f3bb5f9ee4` | ⚠️ Unaudited |
| RiskParameterStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02608dd5a2627cb5908f948b3adb9ce437aa0ca7` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb80ad6c00bd663c2b7893cd6ede3f3c5c055e014` | ⚠️ Unaudited |
| SeasonalMerkleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fc1cc62e5d0b12f5a9e3213b4177d2edb301f30` | ⚠️ Unaudited |
| SimpleReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x58e0c542ab540e0dd3b4fd96cc46b0aad1196bfe` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384073 | `0x1bba92f379375387bf8f927058da14d47464cb7a` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b7a79e050ef2c3fdc858efd5c066c3655be841` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0e9d1df540acb30a321d3d3edd4996e0248aaf5c`; arbitrum `0x5012e7c9615d9086d2516e1722514c40253c67b7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1960628db367281b1a186dd5b80b5dd6978f016f`; arbitrum `0x9ba0463b641909f68d9e670645bfbf84909ec17a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x197de1b26ad733380fd22159a2671f497a6ddd7c`; arbitrum `0x28046a0bbc1b655a915fb110aa5ffeeae40d5410` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b87c59f5220ee51616ad2273b5f683d5ea27cbc` | ⚠️ Unaudited |
| TwoWayBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef566ca7e84d1e736f999765a804687f39d9094` | ⚠️ Unaudited |
| UCrossChainOwner_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a0f50b19b02ac927911c559629536b9a24d9314` | ⚠️ Unaudited |
| UCrossChainOwner_Optimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b4adf64b0d60ff97d672e473420203d52562a84` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384086 | `0xcadd30b39f01cfdfb848174b19bbb5b1b7486159` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc12b0fe62441baad525cd7d770cf21c883c77bc6` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03557b122c71744e7226d68f6ef6b5915e61a0d7` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d6a633827666b0d0eda6249cd66f1850f9e0067` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x492bf4b1e07c440f68eb35a5237dc0a858babd73` | ⚠️ Unaudited |
| VersionLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fd2b0a8a40a1be8510cb5f39efd72cfca3b45be` | ⚠️ Unaudited |
| VersionStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x107507a3268eec24dd3ffa223777b94552ead05b` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035a24be9a1d797f54f4558985a072bf66d6d158` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384080 | `0x6ec80df362d7042c50d4469bcfbc174c9dd9109a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (254)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045f180dedef3d28041c9d7a27bfdf41ced593d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b38364ba6f55b6e150cc7f52d22e89643f3535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17abb7df4cdcdda78039d51abacfd2b75f82434f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19890cf5c9a0b8d2f71eb71347d126b6f7d78b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26f70e5fa46ad10df9d43ba469cfabc79b073a01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d264ebdb6632a06a1726193d4d37fef1e5dbdcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32f3ab7b3c5bba0738b72fdb83fce6bb1a1a943c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4078c4523af1a3288e48aaf82284e310f0d53a35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f97622b8fe23de1abb44cc7fa84eb6b71d78311` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384078 | `0x52c64b8998eb7c80b6f526e99e29abdcc86b841b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58e0c542ab540e0dd3b4fd96cc46b0aad1196bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fa881826ad000d010977645450292701bc2f56d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384079 | `0x605d26fbd5be761089281d5cec2ce86eea667109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69a682f90d58c8d1abea18ae1bc98c9a1be4f2eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72c7df5fcf97269990838fc835e76211fe2aaa36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d72243247aedb0d1d35787a2942107dd76338d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83597765904e28e3a360c17cb1f5635cbcbfdd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x841d7c994ac0bb17ccd65a021e686e3cfafe2118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x955f5bc8aa8528d0949ac88941f36c6c8dc38d72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9df509186b6d3b7d033359f94c8b1bb5544d51b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1c897eaf049d7e9bb22e9d75d0d146a92bee653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5492624f46f7ef346bfc46a0fb364eba3b1f525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac4673a22a0a292da0c975690d1463253ad26ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf8ced28fce00abd30463d55da81156aa5aeeec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6c413686b7e2084b784739e4988959750df611a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384085 | `0xc6e09feb984acab2c956c9af56b9b3729a1bf3c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc86b11f101313f66cc743de06dfc0f78cfff0bec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384087 | `0xd05ace63789ccb35b9ce71d01e4d632a0486da4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd260a68a081f1d92f5eb1f0afdb29f00836dfa6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384088 | `0xd353a618abd6b39e8c334291c74a52ceb19b18fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe547a6d15e5d28437dd1fef67a3545ade6c53aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe72e82b672d7d3e206327c0762e9805fbfcbca92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe77076d3eee12da1d7402ff4e6ca12a8d99fce8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4a0f50b19b02ac927911c559629536b9a24d9314` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-384094 | `0x5fa881826ad000d010977645450292701bc2f56d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-384095 | `0x7b4adf64b0d60ff97d672e473420203d52562a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05075e459220b28e817b2f64cc48d0e444636967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06fc26a1df490cc276171b960004178fce31bf41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09928519f6cf2f784168c36dcb3e8b8961d09aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09d0602bb7dfc4597192eeae7faf192377da5d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c698e79c2fd7cde1505f3177c7f3db69c095176` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-384091 | `0x0d49c416103cbd276d9c3cd96710db264e3a0c27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1016b0e925078ccd844ea7931bcf942033a1b47f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x111cf6ebe15371f81deef05e31c8071903c6fe10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x154ae7c2af949357e0713d3676fc220fe7ea4403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x161cb5f6845c7ee7442322fb3a3c2fec960faac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16b38364ba6f55b6e150cc7f52d22e89643f3535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17bf3d01a17450762cfb1a19b16198e67006b46a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18d1e8c75d7d3b91307bc08d85eb746a418dd2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ad5204ef17204ad28b728e7826951241587cd1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b0d2f2bb3016c3d62d60a9bbffd947803991d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1da92fdee7642bbdc1a0dc5f26f3bcb942579ea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2071ff1631284a2b7f63c2d94a18780a7420a996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21d8b5c0a14e22601871512229030113099e102f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25f7ee535010c82764d0ea582af0deafcbd43a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28876df471f5d1ce9ccb20e334355c9707368599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a9cd101b90cae856f8484062516035f4ecba3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b99224dad73d7d84b7c74e9161bbd0d01a2a15b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2dddd13474b40b263543c8e931dda14d74f353c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31e1d5c8e8646cd581a4d930b3e5bfe12069c189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32761c1dbd438ca0511429c6f907441df4969561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x346adae24af745cb449995c99068dfce67a7afd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37fa204b282e46f54744660bf3df48b43a554ebc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x394858f7d5ca94f9a85dfb77be2d4889799f72c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b4b4ebcd2aa610173243adbb1ffafd1fab9e479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bd11e7d651944870c4cb793f5292876dd089151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d3761151b5e568e824c582668804368f28fd819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3dd09c846149e50d412cdce968e1d912117ff937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e32946498aed14710c9e7504679cc712c581016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f96f8411454c2764742131b95868de422a3ab6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40e52d4dee5fb7a703fc61f6174a9212bd65f091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40ffe6eb459a50fea7d0f5aabcd833764130bcf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x427bc8694ea59f063b7caa43e3dd77d416922250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x431603567ecbb4aa1ce5a4fdbe5554caea658832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x462a32c5d795dafd4dc9622321a1970c8bae0d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a8282815c6f632458399186d10dd9cc959b7b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4aa8b447417815807b955757a6d1b78b86f3ad22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d635747d326017caff996aa19c75c1fa9c2a75c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e933d928d1dfc1912e4076fd3d6234ef39bcff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f75cfbfc8b4a109659471b8d4593f5b19be169b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-384092 | `0x52c64b8998eb7c80b6f526e99e29abdcc86b841b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x548574813a4ae34e6e65ba7dd1fa3d0a20f0ff5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x563d459672e87a8e89b41942616751c795de30bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x566aded4e644f40a6a943c40bd40a2419d5d517f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56ccf5b7041d70394339089966c12dbd043dca04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x581765258b263cecbad7ba1186b60a2aa2dbd04a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x581c684376a3f23f930cc33b217f2099a7a2ad34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58d8dabbb940d0fd89298831db45d566cd958102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58e0c542ab540e0dd3b4fd96cc46b0aad1196bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58f04fb12ffa179be19c4bccdf7fb2a47ac9f3eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x592f4615862bc6b2d6e2fdaec682a9b25b07bfad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a572b5fbbc43387b5ef8de2c4728a4108ef24a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b495f170bfcba51db96ff16ba8bc4686cfa92b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bea99bf18624aa504580546ac9d9ac3b9aeb747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cb82695a206b5c7d0a8fa5c747ea4414614f650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f52a20d8126ef29d813f522aa254f92500e0b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x613824a5b77602a8311748b18497a18b84d60d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61fcc50003b0fbabad47b5ac74becb6d1e0361d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62fb1dc193ab898e5984afcb53d25f580f4fc2de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63f314ed6b017c9a42138a59577609f05a140c95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64bd54a16b80151a07548b5f06735af35a17a4ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x663b38a93fdc2164d45f35051b0f905211d1c9e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x672a82d9177de46db778a7b2cca389d0f4fb26af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67ae97db22bb707ada7993a16d2fc7a905215ea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68f680607a5c32cab860f84f5f5e9f9497f66535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69a682f90d58c8d1abea18ae1bc98c9a1be4f2eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b60e7c96b4d11a63891f249ea826f8a73ef4e6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c5b8e5cb250eaca81a1c36035206b44e90522b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x709e67f0080e0064458164f13b0abf342efde10d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70d803f5f3681aa6384550562b56d60176c96e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73ff980b20696ee07827146c76f71e4872783594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x741fc06b5de25ac5b31f54b92ee3bf1c97bf8666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x747fb50b26edd63bfd454ddd6b4da14424c72533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7627f62dd8a31dcfb300424f00e7819b503f2cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76ad42cfb3b32a5a4b8e1a8b1fcbe24498ef767e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x783e7cf70ebd9bbfcdb8fbb50c3f697e82e109c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7869fd0edcfff8c05600cb71826e59a3ad860938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7892017b39ab87151e328060c0a77607ffe2648a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a98efce4a399794ae7524faeb2cc6a8ef730fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b4adf64b0d60ff97d672e473420203d52562a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c65ab8fc1f2d31c7144e148dd900ea4edc7edd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7fdf2932648635ff31851eb417a9ea6ec37fe834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x819622f140f076e4db68cfaa9982301ef181894e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81e521e3fbb970255bbfd312d95fa942db39a1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x822900eb10400ec1922a60ee2ffcfc1847d2dc71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x825b2f8c2b992891f0c9a835d5793e09602f212e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82853abe11f6139978bef4e84b169cd9fab2c794` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x864a9a27cfcb4609a6e2d52b1a4b27f575813712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86570720a51f82243bce3208581655c87ddeb367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86a2b58445986ed5e6c43be8f2e7b9dcb0128092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8747a900de237ed9a478fc1d9325e41a17e05d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89cbd5bb980dbe1b9ae960b987ae71f18d991b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a159cdb5fa8af4a71f987f3fb2d5229ec63c758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8af5dcbc8affbf0671a4cfc3d7539f9a6cfed9b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b4e6f5e1b2be9c4a9fd4dee216fdbbdd67b05b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bf8a44a6b2f4a174404854ec14c05204cf31da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c832620b38b15e5bb70341dd93cd311d5b82a1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cda59615c993f925915d3eb4394badb3feef413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d3ff02d6a11f2517b00d6cb1d789c197e4b1e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8da96a2ede1dd5af8bd3bd142226820f6bb09751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x920cd4ff5496d270691216596502d803c59d120a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x922c700d3adcd7157a3fa64d1252f8c6e498d8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x937c6a0e76d424680685e5bd660b6dc0a9b8d8bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93834cc1371e92de58a76e05e78ab38834ed1d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9553e2943256f877824f2db39415290037b98653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x960e20a297fce472b9e060428fc92fce34d83bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x96626b5f8cde99c14f06e35d4de5e64871967ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x973f2a9e1d6e58c7fe07e0eb7ccbd2cfe02c5a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97b0723bb3a8939e34674f6ab1d5760723e17e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x991069f93212f0f640243a33c5d8dd1306425c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d2725bca77a816929794ea1c7ddfe2e5c1d8542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d9be6c52647ed63d72da876f1112be8b3602cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9df509186b6d3b7d033359f94c8b1bb5544d51b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e5345409e2a7e6cf0417a3f6a6a680340adbcf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f35b78c6502e2b19d45dc275f24462b0fa577b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa092f444ed2908b75f09da636e9e70c440642b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0f11b2735fd8f5ec8d3f3ef6d7853f59398e94b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa19621c0a3f6451235672c7fe389d3e85d89b43e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa24ee2f2f3b5596cf9e32a6c3912bef0e7a79415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa25a2e1a8b67c3f6edca99d59168ce6741949970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa594130ed88271ae0e5eccb782555fe4bbe59020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa59ef0208418559770a48d7ae4f260a28763167b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa70eb2dbe380467175d7d793b0875887abb2d660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7e49ff62c323d565dc02bef7ee59cf5362feffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8b58125953c7f2948e82a4558c745c1cd3237ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa910e37d012a07f7a18a97e99f6a81a0637b1443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9e35cdcf878623c7a2aa19efebad73634dfb76d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaad878cd67f6332a222253aad31f11e13337026d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaae7b0f787f4dc03db1cc5bd6ffb0b065afdeb0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac8ab380eb8462e132a8ab858ea4e9072067430c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad335343ea59e0d3eb8ce91b95779c6647f10dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad3565680aecee27a39249d8c2d55dac79be5ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad4a7b0d821b955492d9bea6776cdcc33ee8cac6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-384093 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf8ced28fce00abd30463d55da81156aa5aeeec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaff9b28730779f5027ee08a4e8823f983697e1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb092493412fcae3432487efb33204f7b4fef12ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb1c72d544c725dd240aaba4eb48d670ca839ad0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb43e8290fe8239cf5f9b7e30d5cb52a6fe061efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4bd01c82d7bb375423dc042c6f9a00ed372e556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5aa1d6f7b6ba69176a38accf4012fd865fcfc06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5ae2b4e766f2714129720d88a0934feb6c90ea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5cb0bbe900feee7f23f7bd785cd07032928b334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb744f7e8e97bb6cea1698147771d98233579a230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb87e6dca77c3d640b06fd519f1d669e18841cbeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb93ac2c7f99c45873625952f3069834df20b65be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba313a198c18ced2c3a05e48e9fb065e079df207` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbf8a9d4961496ffe3f9c35f76106ec697af2261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbca6d5de39c50a863d603702101ab776ce525c3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd454fbad8f0e9fae5c830d0cc1e698444445773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbda0b3e2b24b52b852f86385dbfd6e376ab882d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfda7ce3e86d3f26432a77717c3e6655a878b018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfe123f0fa484109b548de0779077763c01d0ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc034adcc3b93070eb97749c893aa9b7f8486c751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc084289433305121e6e997877dac4f8ee5f25656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1c1682d396f317c61b5001fb7169b95f3b1ba8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc24fef7bb2f7ab454a3f982ed3b4b8268ff850bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2c50f1f6b9490896bbe8476b1faac2dd455b461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5432d3d6ce0e8428c8e60ee2d4d7e2b8695ec1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5764cae343e6649e630818d89df8d08bd9d38e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5e9ef91dc7e1d99bd44f9690ff0b982caf846b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc67c133685a5aa3b0157045a009548b9e8671219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb3b6a451ca973f99be29cc616bd9fd1d35ef048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdca57391e51cc0b6282192212ca940a7ea314b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf1384b31af4dce7a52f34550a876e062d1f697d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf64b7c235f819a3be0bb47c8df014003ef1bc43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd16882eb785140710ae5e037241d1e859b2a5514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4ccf675b3bf6536990cc0b1d937f6db8a8b2541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd51013f4a3bd69b108f84b1215d666fe96138d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5b029f7e08ffa6c4cedaf6381c2ea7c5733463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5fbf1e37786a4507ec115bb35a938ddcbae137d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6300bc8231145d01048a49c83abaf32fb010528` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6bf5e65c5e665e82725e4d659bfe99e8831a9b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6c0026a134891304e1df7ea61f95e99c66a8c03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda17b128bfd23112e946fb4e7ba162029d7d1cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda381aed086f544bac66e73c071e158374cc105b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdac72dc1f266032082df3c494a167e0f57189bea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdad8a103473dfd47f90168a0e46766ed48e26ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdae2f174c58961f08a59f339c660c044e74857a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdba1477add123a749c0cda3ffa985d799049df4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc15211a60d4c17f83538e5914ec8464164edd14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd379e802edf38fbeae6d007d7d122b2a8ef57c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde46f8407772a2244befc1bda3e6cf37feb53749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdecec72b6bede55ed2865a38346bf96fcc3b4a8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdeeb41dc9c86575aa093a6b091e92b8256d8fd31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe022bf9ae45f0c3657c88a256fdf0f8419bdb1be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe02bade78ae492e78383b04d6f25d521ff961d20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe299ac46738974689fcd42e4ba41c3ed9b41c7bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5fa0ebd7c0a5484a4717e9077c2876ea0493d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe72e82b672d7d3e206327c0762e9805fbfcbca92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8497afdfc1044f7f5acc585a0e637f96df5d2ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebd02f02f147cc5f2db4a6b7ebddb8f45b10135a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec67a2c239a35ff924214cc3a22e587696ac7290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed4b2545510336236760f523890dc38b3e01ff26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xedfc300c9a1a33b014c8cc360e71555ccae667ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee590e6e3a39fefac33f21462938c621c08a8d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeea68dbe228210454d4443f4e1b37e842b848c3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf12a4acda6ca2e777b353538cb8e5ad6f05e0437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1afdcfece23e25b9aa420cf5b3946cce61cd5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2accbc4cd9c8b669bcf69230abfcac2253d7a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2f4d5a14d948dcbe055b957104100eca7d1b676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf40e1f81277cfb4d26526fb4f3f9cba4a417e0c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf56f08bbddd53a2151be08e32f43f91f657c9b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf733681de4c6ec0ae28354c4cd1a0698c534e35a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf864f016ae109f6a0c6c0e156b6eb0ff551524fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8b26ce5e0b70d7e49a271a882d7e48404e5fd43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf94719f0451d872d651e49e6fa6458c0eccfe9ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb4a12e285bbf9eff066362aea7bf4e4d20b0e3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc20bcca96bde758e9c69151d99cecfeae3ab37e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd12a71a02154b44f70bcbe9990bfe20d53b05e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe8fa955f5b42b6db237ad84f9a20b7beac9ea25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfeb35f293d2114df6b284876dc8fbfcffb873b7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfec741688146382489c4266e08bcbf4733fb6d84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffe829f928cb8c07961bfff04512ac0749d65d27` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 247
- Live contracts: 0
- Unknown liveness contracts: 247
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=247

Showing first 200 of 247 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x05075e459220b28e817b2f64cc48d0e444636967` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x06fc26a1df490cc276171b960004178fce31bf41` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x09928519f6cf2f784168c36dcb3e8b8961d09aed` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x09d0602bb7dfc4597192eeae7faf192377da5d7d` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0c698e79c2fd7cde1505f3177c7f3db69c095176` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1016b0e925078ccd844ea7931bcf942033a1b47f` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x111cf6ebe15371f81deef05e31c8071903c6fe10` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x154ae7c2af949357e0713d3676fc220fe7ea4403` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x161cb5f6845c7ee7442322fb3a3c2fec960faac8` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x16b38364ba6f55b6e150cc7f52d22e89643f3535` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17bf3d01a17450762cfb1a19b16198e67006b46a` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x18d1e8c75d7d3b91307bc08d85eb746a418dd2d3` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1ad5204ef17204ad28b728e7826951241587cd1f` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1b0d2f2bb3016c3d62d60a9bbffd947803991d1c` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1da92fdee7642bbdc1a0dc5f26f3bcb942579ea1` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2071ff1631284a2b7f63c2d94a18780a7420a996` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x21d8b5c0a14e22601871512229030113099e102f` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x25f7ee535010c82764d0ea582af0deafcbd43a96` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x28046a0bbc1b655a915fb110aa5ffeeae40d5410` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x28876df471f5d1ce9ccb20e334355c9707368599` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2a9cd101b90cae856f8484062516035f4ecba3de` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2b99224dad73d7d84b7c74e9161bbd0d01a2a15b` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2dddd13474b40b263543c8e931dda14d74f353c8` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x31e1d5c8e8646cd581a4d930b3e5bfe12069c189` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x32761c1dbd438ca0511429c6f907441df4969561` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x346adae24af745cb449995c99068dfce67a7afd5` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x37fa204b282e46f54744660bf3df48b43a554ebc` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x394858f7d5ca94f9a85dfb77be2d4889799f72c9` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3b4b4ebcd2aa610173243adbb1ffafd1fab9e479` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3bd11e7d651944870c4cb793f5292876dd089151` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3d3761151b5e568e824c582668804368f28fd819` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3dd09c846149e50d412cdce968e1d912117ff937` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3e32946498aed14710c9e7504679cc712c581016` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3f96f8411454c2764742131b95868de422a3ab6d` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x40e52d4dee5fb7a703fc61f6174a9212bd65f091` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x40ffe6eb459a50fea7d0f5aabcd833764130bcf1` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x427bc8694ea59f063b7caa43e3dd77d416922250` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x431603567ecbb4aa1ce5a4fdbe5554caea658832` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x462a32c5d795dafd4dc9622321a1970c8bae0d79` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4a8282815c6f632458399186d10dd9cc959b7b16` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4aa8b447417815807b955757a6d1b78b86f3ad22` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4d635747d326017caff996aa19c75c1fa9c2a75c` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4e933d928d1dfc1912e4076fd3d6234ef39bcff6` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4f75cfbfc8b4a109659471b8d4593f5b19be169b` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5012e7c9615d9086d2516e1722514c40253c67b7` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x548574813a4ae34e6e65ba7dd1fa3d0a20f0ff5c` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x563d459672e87a8e89b41942616751c795de30bf` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x566aded4e644f40a6a943c40bd40a2419d5d517f` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x56ccf5b7041d70394339089966c12dbd043dca04` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x581765258b263cecbad7ba1186b60a2aa2dbd04a` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x581c684376a3f23f930cc33b217f2099a7a2ad34` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58d8dabbb940d0fd89298831db45d566cd958102` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58e0c542ab540e0dd3b4fd96cc46b0aad1196bfe` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58f04fb12ffa179be19c4bccdf7fb2a47ac9f3eb` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x592f4615862bc6b2d6e2fdaec682a9b25b07bfad` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5a572b5fbbc43387b5ef8de2c4728a4108ef24a6` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5b495f170bfcba51db96ff16ba8bc4686cfa92b4` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5bea99bf18624aa504580546ac9d9ac3b9aeb747` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5cb82695a206b5c7d0a8fa5c747ea4414614f650` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5f52a20d8126ef29d813f522aa254f92500e0b92` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x613824a5b77602a8311748b18497a18b84d60d26` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x61fcc50003b0fbabad47b5ac74becb6d1e0361d1` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x62fb1dc193ab898e5984afcb53d25f580f4fc2de` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x63f314ed6b017c9a42138a59577609f05a140c95` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x64bd54a16b80151a07548b5f06735af35a17a4ef` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x663b38a93fdc2164d45f35051b0f905211d1c9e4` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x672a82d9177de46db778a7b2cca389d0f4fb26af` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x67ae97db22bb707ada7993a16d2fc7a905215ea6` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x68f680607a5c32cab860f84f5f5e9f9497f66535` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x69a682f90d58c8d1abea18ae1bc98c9a1be4f2eb` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6b60e7c96b4d11a63891f249ea826f8a73ef4e6e` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6c5b8e5cb250eaca81a1c36035206b44e90522b9` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x709e67f0080e0064458164f13b0abf342efde10d` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x70d803f5f3681aa6384550562b56d60176c96e71` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x73ff980b20696ee07827146c76f71e4872783594` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x741fc06b5de25ac5b31f54b92ee3bf1c97bf8666` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x747fb50b26edd63bfd454ddd6b4da14424c72533` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7627f62dd8a31dcfb300424f00e7819b503f2cd8` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x76ad42cfb3b32a5a4b8e1a8b1fcbe24498ef767e` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x783e7cf70ebd9bbfcdb8fbb50c3f697e82e109c7` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7869fd0edcfff8c05600cb71826e59a3ad860938` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7892017b39ab87151e328060c0a77607ffe2648a` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7a98efce4a399794ae7524faeb2cc6a8ef730fcf` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7b4adf64b0d60ff97d672e473420203d52562a84` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7c65ab8fc1f2d31c7144e148dd900ea4edc7edd3` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7fdf2932648635ff31851eb417a9ea6ec37fe834` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x819622f140f076e4db68cfaa9982301ef181894e` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x81e521e3fbb970255bbfd312d95fa942db39a1c7` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x822900eb10400ec1922a60ee2ffcfc1847d2dc71` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x825b2f8c2b992891f0c9a835d5793e09602f212e` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x82853abe11f6139978bef4e84b169cd9fab2c794` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x864a9a27cfcb4609a6e2d52b1a4b27f575813712` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86570720a51f82243bce3208581655c87ddeb367` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86a2b58445986ed5e6c43be8f2e7b9dcb0128092` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8747a900de237ed9a478fc1d9325e41a17e05d3d` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x89cbd5bb980dbe1b9ae960b987ae71f18d991b83` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8a159cdb5fa8af4a71f987f3fb2d5229ec63c758` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8af5dcbc8affbf0671a4cfc3d7539f9a6cfed9b7` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8b4e6f5e1b2be9c4a9fd4dee216fdbbdd67b05b6` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8bf8a44a6b2f4a174404854ec14c05204cf31da9` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8c832620b38b15e5bb70341dd93cd311d5b82a1b` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8cda59615c993f925915d3eb4394badb3feef413` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8d3ff02d6a11f2517b00d6cb1d789c197e4b1e11` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8da96a2ede1dd5af8bd3bd142226820f6bb09751` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x920cd4ff5496d270691216596502d803c59d120a` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x922c700d3adcd7157a3fa64d1252f8c6e498d8d9` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x937c6a0e76d424680685e5bd660b6dc0a9b8d8bc` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x93834cc1371e92de58a76e05e78ab38834ed1d97` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9553e2943256f877824f2db39415290037b98653` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x960e20a297fce472b9e060428fc92fce34d83bee` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x96626b5f8cde99c14f06e35d4de5e64871967ab6` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x973f2a9e1d6e58c7fe07e0eb7ccbd2cfe02c5a3a` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x97b0723bb3a8939e34674f6ab1d5760723e17e8b` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x991069f93212f0f640243a33c5d8dd1306425c4d` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ba0463b641909f68d9e670645bfbf84909ec17a` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d2725bca77a816929794ea1c7ddfe2e5c1d8542` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d9be6c52647ed63d72da876f1112be8b3602cf8` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9df509186b6d3b7d033359f94c8b1bb5544d51b3` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9e5345409e2a7e6cf0417a3f6a6a680340adbcf2` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9f35b78c6502e2b19d45dc275f24462b0fa577b4` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa092f444ed2908b75f09da636e9e70c440642b43` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa0f11b2735fd8f5ec8d3f3ef6d7853f59398e94b` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa19621c0a3f6451235672c7fe389d3e85d89b43e` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa24ee2f2f3b5596cf9e32a6c3912bef0e7a79415` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa25a2e1a8b67c3f6edca99d59168ce6741949970` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa594130ed88271ae0e5eccb782555fe4bbe59020` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa59ef0208418559770a48d7ae4f260a28763167b` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa70eb2dbe380467175d7d793b0875887abb2d660` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa7e49ff62c323d565dc02bef7ee59cf5362feffe` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa8b58125953c7f2948e82a4558c745c1cd3237ee` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa910e37d012a07f7a18a97e99f6a81a0637b1443` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa9e35cdcf878623c7a2aa19efebad73634dfb76d` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaad878cd67f6332a222253aad31f11e13337026d` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaae7b0f787f4dc03db1cc5bd6ffb0b065afdeb0a` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xac8ab380eb8462e132a8ab858ea4e9072067430c` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xad335343ea59e0d3eb8ce91b95779c6647f10dde` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xad3565680aecee27a39249d8c2d55dac79be5ad0` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xad4a7b0d821b955492d9bea6776cdcc33ee8cac6` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaf8ced28fce00abd30463d55da81156aa5aeeec2` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaff9b28730779f5027ee08a4e8823f983697e1dc` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb092493412fcae3432487efb33204f7b4fef12ff` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb1c72d544c725dd240aaba4eb48d670ca839ad0c` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb43e8290fe8239cf5f9b7e30d5cb52a6fe061efa` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb4bd01c82d7bb375423dc042c6f9a00ed372e556` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb5aa1d6f7b6ba69176a38accf4012fd865fcfc06` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb5ae2b4e766f2714129720d88a0934feb6c90ea6` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb5cb0bbe900feee7f23f7bd785cd07032928b334` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb744f7e8e97bb6cea1698147771d98233579a230` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb87e6dca77c3d640b06fd519f1d669e18841cbeb` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb93ac2c7f99c45873625952f3069834df20b65be` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xba313a198c18ced2c3a05e48e9fb065e079df207` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbbf8a9d4961496ffe3f9c35f76106ec697af2261` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbca6d5de39c50a863d603702101ab776ce525c3a` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbd454fbad8f0e9fae5c830d0cc1e698444445773` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbda0b3e2b24b52b852f86385dbfd6e376ab882d7` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbfda7ce3e86d3f26432a77717c3e6655a878b018` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbfe123f0fa484109b548de0779077763c01d0ac4` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc034adcc3b93070eb97749c893aa9b7f8486c751` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc084289433305121e6e997877dac4f8ee5f25656` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc1c1682d396f317c61b5001fb7169b95f3b1ba8b` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc24fef7bb2f7ab454a3f982ed3b4b8268ff850bd` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc2c50f1f6b9490896bbe8476b1faac2dd455b461` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc5432d3d6ce0e8428c8e60ee2d4d7e2b8695ec1f` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc5764cae343e6649e630818d89df8d08bd9d38e1` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc5e9ef91dc7e1d99bd44f9690ff0b982caf846b9` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc67c133685a5aa3b0157045a009548b9e8671219` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcb3b6a451ca973f99be29cc616bd9fd1d35ef048` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcdca57391e51cc0b6282192212ca940a7ea314b3` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcf1384b31af4dce7a52f34550a876e062d1f697d` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcf64b7c235f819a3be0bb47c8df014003ef1bc43` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd16882eb785140710ae5e037241d1e859b2a5514` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd4ccf675b3bf6536990cc0b1d937f6db8a8b2541` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd51013f4a3bd69b108f84b1215d666fe96138d5c` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd5b029f7e08ffa6c4cedaf6381c2ea7c5733463f` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd5fbf1e37786a4507ec115bb35a938ddcbae137d` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd6300bc8231145d01048a49c83abaf32fb010528` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd6bf5e65c5e665e82725e4d659bfe99e8831a9b5` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd6c0026a134891304e1df7ea61f95e99c66a8c03` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xda17b128bfd23112e946fb4e7ba162029d7d1cde` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xda381aed086f544bac66e73c071e158374cc105b` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdac72dc1f266032082df3c494a167e0f57189bea` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdad8a103473dfd47f90168a0e46766ed48e26ec7` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdae2f174c58961f08a59f339c660c044e74857a3` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdba1477add123a749c0cda3ffa985d799049df4a` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdc15211a60d4c17f83538e5914ec8464164edd14` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdd379e802edf38fbeae6d007d7d122b2a8ef57c1` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xde46f8407772a2244befc1bda3e6cf37feb53749` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdecec72b6bede55ed2865a38346bf96fcc3b4a8f` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdeeb41dc9c86575aa093a6b091e92b8256d8fd31` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe022bf9ae45f0c3657c88a256fdf0f8419bdb1be` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe02bade78ae492e78383b04d6f25d521ff961d20` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe299ac46738974689fcd42e4ba41c3ed9b41c7bd` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe5fa0ebd7c0a5484a4717e9077c2876ea0493d7d` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe72e82b672d7d3e206327c0762e9805fbfcbca92` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe8497afdfc1044f7f5acc585a0e637f96df5d2ab` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xebd02f02f147cc5f2db4a6b7ebddb8f45b10135a` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xec67a2c239a35ff924214cc3a22e587696ac7290` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xed4b2545510336236760f523890dc38b3e01ff26` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xedfc300c9a1a33b014c8cc360e71555ccae667ca` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xee590e6e3a39fefac33f21462938c621c08a8d8c` | non_address_book | unknown | unknown | unverified | n/a | `0x66a7fdb96c583c59597de16d8b2b989231415339` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [result.md](https://github.com/emptysetsquad/emptyset/blob/master/audit/result.md) | OpenZeppelin | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [scope.md](https://github.com/emptysetsquad/emptyset/blob/master/audit/scope.md) | OpenZeppelin | Audit | 2021-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21385] result.md — no match: No explicit scope section or contract names found; only findings and fixes mentioned.
- [21386] scope.md — matched: Extracted contract names from scope sections; directories like common/*, incentivizer/*, migrator/*, oracle/*, registry/*, reserve/*, stabilizer/* are not individual contracts. Date from header [4/1/21].

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| scope.md | Decimal | unmatched — not counted | — | listed in scope | no |
| scope.md | TimeUtils | unmatched — not counted | — | listed in scope | no |
| scope.md | Dollar | own contract | Dollar (selected) `0x36f3fd68e7325a35eb768f1aedaae9ea0689d723` — deployed 2020-08-24 13:31:00+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| scope.md | Vester | unmatched — not counted | — | listed in scope | no |
| scope.md | GovernorAlpha | own contract | GovernorAlpha (selected) `0x0599f087df7900a1f806c5d149387ee6e0a8bfcb` — deployed 2021-07-27 20:22:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| scope.md | Stake | own contract | Stake (selected) `0x24ae124c4cc33d6791f8e8b63520ed7107ac8b3e` — deployed 2021-07-27 20:21:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x52c64b8998eb7c80b6f526e99e29abdcc86b841b` | DSU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x87f6b212a25677b9b12e7fcfa8c08fb3df25bc4c` | Funder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x443d2f2755db5942601fa062cc248aaa153313d3` | Implementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d49c416103cbd276d9c3cd96710db264e3a0c27` | Incentivizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0d49c416103cbd276d9c3cd96710db264e3a0c27` | MigrationReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc61d12896421613b30d56f85c093cdda43ab2ce7` | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7f5c764cbc14f9669b88837ca1490cca17c31607` | OVMFiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d2a5e3b7831156f62c8df47604e321cdaf35fec` | ProxyRoot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc5285ee6d5c9adf4e04f5ccb47d0501ae638c7a9` | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x42340c735e4b6018661183dcd5b267f3bb5f9ee4` | ReserveImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1bba92f379375387bf8f927058da14d47464cb7a` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ec80df362d7042c50d4469bcfbc174c9dd9109a` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 88 |
| upstream | 2 |
| standard_library | 7 |
| needs_review | 254 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [21385] result.md

Fork inheritance lineage and inherited audits are included when available.
