# Agentic Audit Brief: Shape Bridge

## Project Overview

- Project: Shape Bridge (`shape-bridge`)
- Website: [https://shape.network/bridge](https://shape.network/bridge)
- Lifecycle: active (Tier 0, 57.7% below peak)
- Generated: 2026-06-10T20:59:14.917Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 26 unique implementations (27 raw deployments)
- DeFi Llama TVL: $1,055,412.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Shape Bridge refers to Shape Network's OP Stack canonical bridge infrastructure for asset transfers between Ethereum L1 and Shape Mainnet. The public Shape bridge page currently routes users to independent third-party bridge providers such as Relay and Superbridge and disclaims responsibility for their operation, so those providers should be distinguished from Shape-operated canonical bridge contracts.

### Architecture

The L1 family provides the canonical bridge infrastructure that secures and relays messages to the L2 family. Shared governance contracts like SuperchainConfig and SystemConfig configure both layers, while the L2 family relies on L1 for finality and dispute resolution.

## Audit Coverage Summary

- Verified implementations audited: 0/22 (0.0%)
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 26
- Raw deployments: 27
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AddressManager | governance | ethereum | [`0xcee784...fd7479`](./contracts/ethereum-1/0xcee78437ae9e15cee9c78e63757e0153c0fd7479/) | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | [`0x02987e...6222d1`](./contracts/ethereum-1/0x02987e7294379b9dda99d593b0c94c68266222d1/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | [`0x13b0d8...e9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | [`0x575aec...0bd8b0`](./contracts/ethereum-1/0x575aecd84083f93877291901907698f7db0bd8b0/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xacaf17...90a005`](./contracts/ethereum-1/0xacaf178b5048cb56712dc59e95fba72f7990a005/) | ⚠️ Unaudited |
| IdentityStaking | unknown | ethereum | 2 deployments: ethereum [`0x5aec6d...1b1604`](./contracts/ethereum-1/0x5aec6db5fc9490120f209a313ebb8d15c91b1604/); ethereum `0xcc9010...1df422` | ⚠️ Unaudited |
| ImmutableCreate2Factory | registry | ethereum | [`0x000000...439497`](./contracts/ethereum-1/0x0000000000ffe8b47b3e2130213b802212439497/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | [`0x2b1860...3788e3`](./contracts/ethereum-1/0x2b18602877181c3cb72c687e2a771e123a3788e3/) | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | [`0xe9d3e4...9f15af`](./contracts/ethereum-1/0xe9d3e49b0636016c5fe9eaa2347948d0ba9f15af/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | [`0x62edd5...76b57b`](./contracts/ethereum-1/0x62edd5f4930ea92dca3fb81689bdd9b9d076b57b/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | [`0x6ef8c6...6e724d`](./contracts/ethereum-1/0x6ef8c69cfe4635d866e3e02732068022c06e724d/) | ⚠️ Unaudited |
| Merge | unknown | ethereum | [`0x17fef0...319618`](./contracts/ethereum-1/0x17fef0d05ffed818af08ae00bec06b65c4319618/) | ⚠️ Unaudited |
| MIPS | unknown | ethereum | [`0xd30c2c...e5c91f`](./contracts/ethereum-1/0xd30c2cd3cd6112e61fdfb03e4b232564d7e5c91f/) | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | [`0x319322...b1adc1`](./contracts/ethereum-1/0x319322906beadf69df5d4607169c63d692b1adc1/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | [`0xeb06ff...741dd3`](./contracts/ethereum-1/0xeb06ffa16011b5628bab98e29776361c83741dd3/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | [`0xdf6a16...448a5b`](./contracts/ethereum-1/0xdf6a16a71d0bc7a1bbe8fffb33700ec3d9448a5b/) | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | [`0xa77995...a32ddd`](./contracts/ethereum-1/0xa77995e10b0a833cdd4fa414c26e869f7aa32ddd/) | ⚠️ Unaudited |
| Proxy | proxy | ethereum | [`0xfec786...1c2d57`](./contracts/ethereum-1/0xfec7865dac5139886585f03146ff61d9b31c2d57/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x11b190...db842e`](./contracts/ethereum-1/0x11b190ae661c6d6884dfee48e215691e0ddb842e/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | [`0x125664...ccde09`](./contracts/ethereum-1/0x125664bef08177ca43f6f301e63118b1e4ccde09/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | [`0xff11e4...8f7355`](./contracts/ethereum-1/0xff11e41d5c4f522e423ff6c064ff8d55af8f7355/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x000f3d...beac02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x84e2fd...96467c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb7c77...df294a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xcee784...fd7479`](./contracts/ethereum-1/0xcee78437ae9e15cee9c78e63757e0153c0fd7479/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02987e...6222d1`](./contracts/ethereum-1/0x02987e7294379b9dda99d593b0c94c68266222d1/) | AnchorStateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x575aec...0bd8b0`](./contracts/ethereum-1/0x575aecd84083f93877291901907698f7db0bd8b0/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5aec6d...1b1604`](./contracts/ethereum-1/0x5aec6db5fc9490120f209a313ebb8d15c91b1604/) | IdentityStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b1860...3788e3`](./contracts/ethereum-1/0x2b18602877181c3cb72c687e2a771e123a3788e3/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9d3e4...9f15af`](./contracts/ethereum-1/0xe9d3e49b0636016c5fe9eaa2347948d0ba9f15af/) | L1ERC721Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62edd5...76b57b`](./contracts/ethereum-1/0x62edd5f4930ea92dca3fb81689bdd9b9d076b57b/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ef8c6...6e724d`](./contracts/ethereum-1/0x6ef8c69cfe4635d866e3e02732068022c06e724d/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17fef0...319618`](./contracts/ethereum-1/0x17fef0d05ffed818af08ae00bec06b65c4319618/) | Merge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd30c2c...e5c91f`](./contracts/ethereum-1/0xd30c2cd3cd6112e61fdfb03e4b232564d7e5c91f/) | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x319322...b1adc1`](./contracts/ethereum-1/0x319322906beadf69df5d4607169c63d692b1adc1/) | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb06ff...741dd3`](./contracts/ethereum-1/0xeb06ffa16011b5628bab98e29776361c83741dd3/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf6a16...448a5b`](./contracts/ethereum-1/0xdf6a16a71d0bc7a1bbe8fffb33700ec3d9448a5b/) | PreimageOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa77995...a32ddd`](./contracts/ethereum-1/0xa77995e10b0a833cdd4fa414c26e869f7aa32ddd/) | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfec786...1c2d57`](./contracts/ethereum-1/0xfec7865dac5139886585f03146ff61d9b31c2d57/) | Proxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x125664...ccde09`](./contracts/ethereum-1/0x125664bef08177ca43f6f301e63118b1e4ccde09/) | SuperchainConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff11e4...8f7355`](./contracts/ethereum-1/0xff11e41d5c4f522e423ff6c064ff8d55af8f7355/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
