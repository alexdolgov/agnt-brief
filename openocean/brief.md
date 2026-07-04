# Agentic Audit Brief: openocean

## Project Overview

- Project: openocean (`openocean`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.086Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, avalanche, bsc, ethereum, hyperliquid, optimism
- Contract surface: 33 unique implementations (33 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 33 project-authored contract(s) across 6 chain(s); 4 ERC20 tokens, 3 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (proxy, erc1967upgrade, administrable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 33 (31 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/27 (0.0%)
- Deployed-live implementations: 31 of 33 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 33
- Raw deployments: 33
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnycallExecutor | unknown | avalanche | n/a | [`0x70d6b3...a72c40`](./contracts/avalanche-43114/0x70d6b3cfaabd6c0eb6b99b80c6540fa754a72c40/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | avalanche | n/a | [`0x0ebd95...191469`](./contracts/avalanche-43114/0x0ebd9537a25f56713e34c45b38f421a1e7191469/) | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | avalanche | n/a | [`0xe0560d...835705`](./contracts/avalanche-43114/0xe0560dfce5e73ccea36f0df586e5a07e07835705/) | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | avalanche | n/a | [`0x4643d9...b0df5a`](./contracts/avalanche-43114/0x4643d976e9b32dc26a316c5b5c75d7c57db0df5a/) | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | avalanche | n/a | [`0x12e994...1d8f3e`](./contracts/avalanche-43114/0x12e994e89c92b03df6c15fb8340f624aec1d8f3e/) | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | avalanche | n/a | [`0x17e2e3...49e49e`](./contracts/avalanche-43114/0x17e2e3d4a27e8e0790c85ff2ec13d001e749e49e/) | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | avalanche | n/a | [`0x869ec6...0d4964`](./contracts/avalanche-43114/0x869ec639a622a1bbdaf44d3b1fe0cc2b210d4964/) | ⚠️ Unaudited |
| FactoryPortal | unknown | avalanche | n/a | [`0x2ac03b...c3f056`](./contracts/avalanche-43114/0x2ac03bf434db503f6f5f85c3954773731fc3f056/) | ⚠️ Unaudited |
| FantomAnimals | unknown | avalanche | n/a | [`0x3cb196...bb6dda`](./contracts/avalanche-43114/0x3cb1967b36c318510cc06ab901b428a166bb6dda/) | ⚠️ Unaudited |
| LimitOrderProtocol | unknown | hyperliquid | n/a | [`0x12cfe6...c9ecb1`](./contracts/hyperliquid-999/0x12cfe671e9b186f21d9852d69bdbfe3f8ac9ecb1/) | ⚠️ Unaudited |
| LiquidityMigrator | unknown | bsc | n/a | [`0x4c96cb...fa572c`](./contracts/bsc-56/0x4c96cb3d5948c4872f5a60f58c486d9d22fa572c/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x132109...6eb3ed`](./contracts/ethereum-1/0x1321096ee131a219915fdba172324808b16eb3ed/) | ⚠️ Unaudited |
| NFTRouter | unknown | avalanche | n/a | [`0x1fbbc7...692cd8`](./contracts/avalanche-43114/0x1fbbc7dba1ef75ff43f955a5b9ceec3cc1692cd8/) | ⚠️ Unaudited |
| OFTV2 | unknown | arbitrum | n/a | [`0x0838d9...58383a`](./contracts/arbitrum-42161/0x0838d98f275559561b7efd1c440bbcaa6758383a/) | ⚠️ Unaudited |
| OOEStakePool | unknown | bsc | n/a | [`0xec1139...1fe5c2`](./contracts/bsc-56/0xec11395462bc83e7a2a313f20c816593831fe5c2/) | ⚠️ Unaudited |
| OOSwapRouter | unknown | ethereum | n/a | [`0x82222b...ffcc41`](./contracts/ethereum-1/0x82222bc862854641e08a3201a1f2579fb1ffcc41/) | ⚠️ Unaudited |
| OpenOcean | unknown | ethereum | n/a | [`0x777836...e5396b`](./contracts/ethereum-1/0x7778360f035c589fce2f4ea5786cbd8b36e5396b/) | ⚠️ Unaudited |
| OpenOceanDistributor | unknown | bsc | n/a | [`0xf2dff3...49b7ab`](./contracts/bsc-56/0xf2dff3e743f23eb9eb1cf1bb141134ac0049b7ab/) | ⚠️ Unaudited |
| OpenOceanExchange | unknown | optimism | n/a | [`0x018fea...3c4377`](./contracts/optimism-10/0x018feadd83a8f2ad4d2508469a3a3215483c4377/) | ⚠️ Unaudited |
| OpenOceanExchangeProxy | unknown | optimism | n/a | [`0x6352a5...304e64`](./contracts/optimism-10/0x6352a56caadc4f1e25cd6c75970fa768a3304e64/) | ⚠️ Unaudited |
| OpenOceanExchangeProxyAdmin | unknown | ethereum | n/a | [`0xc979fe...31502d`](./contracts/ethereum-1/0xc979fec5bf053d0d52cada4cfe1c25737731502d/) | ⚠️ Unaudited |
| OpenOceanMigrator | unknown | bsc | n/a | [`0xc0b4d9...85339b`](./contracts/bsc-56/0xc0b4d970db822a8692eda3fbba074978ff85339b/) | ⚠️ Unaudited |
| OpenOceanTokenImpl | unknown | bsc | n/a | [`0x8ea521...0347c5`](./contracts/bsc-56/0x8ea5219a16c2dbf1d6335a6aa0c6bd45c50347c5/) | ⚠️ Unaudited |
| OpenOceanTokenProxyAdmin | unknown | bsc | n/a | [`0xa9047d...345a7c`](./contracts/bsc-56/0xa9047db4b3be2d445c17a7d84f156c092a345a7c/) | ⚠️ Unaudited |
| PancakeFactory | unknown | arbitrum | n/a | [`0x01ec93...3f8905`](./contracts/arbitrum-42161/0x01ec93c289cb003e741f621cdd4fe837243f8905/) | ⚠️ Unaudited |
| PancakeRouter | unknown | arbitrum | n/a | [`0x1dd8fa...c33fe4`](./contracts/arbitrum-42161/0x1dd8fa2d9965a0b99f15c1dfc1a54a0296c33fe4/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x35b9b1...c8adfb`](./contracts/bsc-56/0x35b9b14fc89b31e99b032310aad0956614c8adfb/) | ⚠️ Unaudited |
| ProxyOFTV2 | unknown | bsc | n/a | [`0x201263...45e2af`](./contracts/bsc-56/0x201263cea08e8f1d6e2fdd1fd2ca44bf6145e2af/) | ⚠️ Unaudited |
| SimpleStaking | unknown | ethereum | n/a | [`0x0d21a1...54ba44`](./contracts/ethereum-1/0x0d21a1db4d4befd575e77d5d3f0d0d5f9e54ba44/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x44eb0f...db7e6a`](./contracts/bsc-56/0x44eb0f1ce777394564070f9e50dd8784fcdb7e6a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x1b9cf9...2df6c5`](./contracts/avalanche-43114/0x1b9cf9c2a6c45271f7275ba0c879917fa52df6c5/) | ⚠️ Unaudited |
| UniswapV4TickLens | unknown | bsc | n/a | [`0x2e39af...b72357`](./contracts/bsc-56/0x2e39af5d3ffc2da5a833749e0da44450afb72357/) | ⚠️ Unaudited |
| XrpSwapAsset | unknown | avalanche | n/a | [`0xfb288d...4269aa`](./contracts/avalanche-43114/0xfb288d60d3b66f9c3e231a9a39ed3f158a4269aa/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x70d6b3...a72c40`](./contracts/avalanche-43114/0x70d6b3cfaabd6c0eb6b99b80c6540fa754a72c40/) | AnycallExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe0560d...835705`](./contracts/avalanche-43114/0xe0560dfce5e73ccea36f0df586e5a07e07835705/) | ERC1155GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4643d9...b0df5a`](./contracts/avalanche-43114/0x4643d976e9b32dc26a316c5b5c75d7c57db0df5a/) | ERC20GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x12e994...1d8f3e`](./contracts/avalanche-43114/0x12e994e89c92b03df6c15fb8340f624aec1d8f3e/) | ERC677GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x17e2e3...49e49e`](./contracts/avalanche-43114/0x17e2e3d4a27e8e0790c85ff2ec13d001e749e49e/) | ERC721Gateway_MintBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x869ec6...0d4964`](./contracts/avalanche-43114/0x869ec639a622a1bbdaf44d3b1fe0cc2b210d4964/) | ERC721GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2ac03b...c3f056`](./contracts/avalanche-43114/0x2ac03bf434db503f6f5f85c3954773731fc3f056/) | FactoryPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3cb196...bb6dda`](./contracts/avalanche-43114/0x3cb1967b36c318510cc06ab901b428a166bb6dda/) | FantomAnimals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x12cfe6...c9ecb1`](./contracts/hyperliquid-999/0x12cfe671e9b186f21d9852d69bdbfe3f8ac9ecb1/) | LimitOrderProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4c96cb...fa572c`](./contracts/bsc-56/0x4c96cb3d5948c4872f5a60f58c486d9d22fa572c/) | LiquidityMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x132109...6eb3ed`](./contracts/ethereum-1/0x1321096ee131a219915fdba172324808b16eb3ed/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1fbbc7...692cd8`](./contracts/avalanche-43114/0x1fbbc7dba1ef75ff43f955a5b9ceec3cc1692cd8/) | NFTRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0838d9...58383a`](./contracts/arbitrum-42161/0x0838d98f275559561b7efd1c440bbcaa6758383a/) | OFTV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xec1139...1fe5c2`](./contracts/bsc-56/0xec11395462bc83e7a2a313f20c816593831fe5c2/) | OOEStakePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82222b...ffcc41`](./contracts/ethereum-1/0x82222bc862854641e08a3201a1f2579fb1ffcc41/) | OOSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x777836...e5396b`](./contracts/ethereum-1/0x7778360f035c589fce2f4ea5786cbd8b36e5396b/) | OpenOcean | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf2dff3...49b7ab`](./contracts/bsc-56/0xf2dff3e743f23eb9eb1cf1bb141134ac0049b7ab/) | OpenOceanDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x018fea...3c4377`](./contracts/optimism-10/0x018feadd83a8f2ad4d2508469a3a3215483c4377/) | OpenOceanExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6352a5...304e64`](./contracts/optimism-10/0x6352a56caadc4f1e25cd6c75970fa768a3304e64/) | OpenOceanExchangeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc979fe...31502d`](./contracts/ethereum-1/0xc979fec5bf053d0d52cada4cfe1c25737731502d/) | OpenOceanExchangeProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc0b4d9...85339b`](./contracts/bsc-56/0xc0b4d970db822a8692eda3fbba074978ff85339b/) | OpenOceanMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8ea521...0347c5`](./contracts/bsc-56/0x8ea5219a16c2dbf1d6335a6aa0c6bd45c50347c5/) | OpenOceanTokenImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa9047d...345a7c`](./contracts/bsc-56/0xa9047db4b3be2d445c17a7d84f156c092a345a7c/) | OpenOceanTokenProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01ec93...3f8905`](./contracts/arbitrum-42161/0x01ec93c289cb003e741f621cdd4fe837243f8905/) | PancakeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1dd8fa...c33fe4`](./contracts/arbitrum-42161/0x1dd8fa2d9965a0b99f15c1dfc1a54a0296c33fe4/) | PancakeRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x201263...45e2af`](./contracts/bsc-56/0x201263cea08e8f1d6e2fdd1fd2ca44bf6145e2af/) | ProxyOFTV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d21a1...54ba44`](./contracts/ethereum-1/0x0d21a1db4d4befd575e77d5d3f0d0d5f9e54ba44/) | SimpleStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xfb288d...4269aa`](./contracts/avalanche-43114/0xfb288d60d3b66f9c3e231a9a39ed3f158a4269aa/) | XrpSwapAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
