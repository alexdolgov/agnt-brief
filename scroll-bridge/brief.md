# Agentic Audit Brief: Scroll Bridge

⚠️ Lifecycle status: UNKNOWN - TVL dropped 49.0% over 90 days

## Project Overview

- Project: Scroll Bridge (`scroll-bridge`)
- Website: [https://portal.scroll.io/bridge](https://portal.scroll.io/bridge)
- Lifecycle: unknown (Tier 0, 93.6% below peak)
- Generated: 2026-05-31T10:31:35.577Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: ethereum
- Contract surface: 32 unique implementations (101 raw deployments)
- DeFi Llama TVL: $40,526,307.55
- On-chain TVL (included contracts): $4,984,232.30
- TVL by chain: Ethereum $4,984,232.30

## Project Description

Scroll Bridge is the canonical bridge for the Scroll zkEVM rollup, enabling users to deposit and withdraw assets between Ethereum L1 and Scroll L2. It supports ETH, ERC-20, ERC-721, ERC-1155, and specialized tokens like USDC and Lido stETH through a set of gateway contracts.

### Architecture

All gateway contracts rely on L1ScrollMessenger for cross-chain message passing and share infrastructure like L1GatewayRouter for routing, L1MessageQueue for message ordering, and ScrollChain for finalizing L2 state. PauseController and SystemConfig provide shared administrative and configuration capabilities across the bridge components.

## Audit Coverage Summary

- Verified implementations audited: 0/30 (0.0%)
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 32
- Raw deployments: 101
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,984,232.30
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $4,984,232.30 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L1StandardERC20Gateway | token | ethereum | 4 deployments: ethereum [`0x4015fc...f6239c`](./contracts/ethereum-1/0x4015fc868c06689abeba4a9dc8fa43b804f6239c/); ethereum `0x921873...63564a`; ethereum `0xd8a791...b3f8f9`; ethereum `0xff8238...8c0ee9` | ⚠️ Unaudited |
| L1CustomERC20Gateway | token | ethereum | 5 deployments: ethereum [`0x40c3c3...6d6c97`](./contracts/ethereum-1/0x40c3c3dea3b7d6d117e6713377144fd8ee6d6c97/); ethereum `0x67260a...98f515`; ethereum `0x7f512e...781c2c`; ethereum `0xb2b10a...04b6ff`; ethereum `0xbad002...4c56cb` | ⚠️ Unaudited |
| L1WETHGateway | token | ethereum | 4 deployments: ethereum [`0x7ac440...a9d4fe`](./contracts/ethereum-1/0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe/); ethereum `0xa4f400...b9fb49`; ethereum `0xd3c421...7ca307`; ethereum `0xe25eff...a86c24` | ⚠️ Unaudited |
| EmptyContract | unknown | ethereum | 2 deployments: ethereum [`0x8c8fb1...e985e3`](./contracts/ethereum-1/0x8c8fb15e0dbdae91aa426decedfb779c6ae985e3/); ethereum `0xfaf8f7...a8afca` | ⚠️ Unaudited |
| EnforcedTxGateway | unknown | ethereum | 3 deployments: ethereum [`0x642af4...806318`](./contracts/ethereum-1/0x642af405bf64660665b37977449c9c536b806318/); ethereum `0x72cacb...9d7a5d`; ethereum `0x7e87c7...bddbcc` | ⚠️ Unaudited |
| L1BatchBridgeGateway | operational_periphery | ethereum | 2 deployments: ethereum [`0x5bcfd9...852bc4`](./contracts/ethereum-1/0x5bcfd99c34cf7e06fc756f6f5ae7400504852bc4/); ethereum `0x7999cd...1e3233` | ⚠️ Unaudited |
| L1ERC1155Gateway | token | ethereum | 4 deployments: ethereum [`0x244bf7...2f8cd7`](./contracts/ethereum-1/0x244bf7aef29f03916569470a51fa0794b62f8cd7/); ethereum `0xb94f7f...d975b6`; ethereum `0xca4635...ffe38e`; ethereum `0xcb4638...863593` | ⚠️ Unaudited |
| L1ERC721Gateway | token | ethereum | 4 deployments: ethereum [`0x6260af...21554b`](./contracts/ethereum-1/0x6260af48e8948617b8fa17f4e5cea2d21d21554b/); ethereum `0x79f1bf...45a27a`; ethereum `0xd1841c...e392bb`; ethereum `0xde3be7...323dae` | ⚠️ Unaudited |
| L1ETHGateway | unknown | ethereum | 4 deployments: ethereum [`0x1fcbe0...d5c55d`](./contracts/ethereum-1/0x1fcbe079c4bbab37406dab7dfd35acae37d5c55d/); ethereum `0x1fee6a...b2a1d0`; ethereum `0x546e0b...367b42`; ethereum `0x7f2b8c...e3e905` | ⚠️ Unaudited |
| L1GatewayRouter | adapter | ethereum | 2 deployments: ethereum [`0xb93ac0...f798f3`](./contracts/ethereum-1/0xb93ac04010bd61f45bf492022a5b49a902f798f3/); ethereum `0xf8b137...e41fd6` | ⚠️ Unaudited |
| L1LidoGateway | unknown | ethereum | [`0x6625c6...a3f504`](./contracts/ethereum-1/0x6625c6332c9f91f2d27c304e729b86db87a3f504/) | ⚠️ Unaudited |
| L1MessageQueue | unknown | ethereum | [`0xbc9d74...adcf8f`](./contracts/ethereum-1/0xbc9d741501a20f962756c95bf906b4abffadcf8f/) | ⚠️ Unaudited |
| L1MessageQueueV2 | unknown | ethereum | 3 deployments: ethereum [`0x39c36c...052eca`](./contracts/ethereum-1/0x39c36c9026ac18104839a50c61a4507ea5052eca/); ethereum `0x56971d...c2d18a`; ethereum `0xefa158...38591d` | ⚠️ Unaudited |
| L1MessageQueueWithGasPriceOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0x0d7e90...39af9b`](./contracts/ethereum-1/0x0d7e906bd9cafa154b048cfa766cc1e54e39af9b/); ethereum `0x137cc5...07b374`; ethereum `0xebaed7...448e01` | ⚠️ Unaudited |
| L1ScrollMessenger | unknown | ethereum | 5 deployments: ethereum [`0x6774bc...d8b367`](./contracts/ethereum-1/0x6774bcbd5cecef1336b5300fb5186a12ddd8b367/); ethereum `0x72981f...a37fb6`; ethereum `0x79b6ea...dcbf69`; ethereum `0xaf2f89...e37845`; ethereum `0xc63261...cff868` | ⚠️ Unaudited |
| L1USDCGateway | unknown | ethereum | 6 deployments: ethereum [`0x4a5810...2b5432`](./contracts/ethereum-1/0x4a5810f71b6836027c26c25bff9708dfcd2b5432/); ethereum `0x56ce8a...2aff5e`; ethereum `0x666712...953aa8`; ethereum `0xbc4b3d...5247d2`; ethereum `0xea2e80...432ea3`; ethereum `0xf1af3b...9a5c7b` | ⚠️ Unaudited |
| L2GasPriceOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x987e30...c33852`](./contracts/ethereum-1/0x987e300fdfb06093859358522a79098848c33852/); ethereum `0xfdf1ee...1a4e9e` | ⚠️ Unaudited |
| MultipleVersionRollupVerifier | periphery | ethereum | 4 deployments: ethereum [`0x1ea29d...8998f6`](./contracts/ethereum-1/0x1ea29d57dac237152d878758bae4beb2668998f6/); ethereum `0x4cea3e...4ead3f`; ethereum `0xa2ab52...ef32a0`; ethereum `0xf94afb...a2416b` | ⚠️ Unaudited |
| PauseController | governance | ethereum | 4 deployments: ethereum [`0x22e5c2...dc83e7`](./contracts/ethereum-1/0x22e5c20bb540d68f43a6790927fab8e4fbdc83e7/); ethereum `0x57e26d...41d98d`; ethereum `0x8717b1...265afe`; ethereum `0xb8f7ea...229d8b` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 2 deployments: ethereum [`0xcc2c53...2628a9`](./contracts/ethereum-1/0xcc2c53556bc75217cf698721b29071d6f12628a9/); ethereum `0xeb803e...59d072` | ⚠️ Unaudited |
| ScrollChain | unknown | ethereum | 10 deployments: ethereum [`0x0a2070...8c3ba7`](./contracts/ethereum-1/0x0a20703878e68e587c59204cc0ea86098b8c3ba7/); ethereum `0x2e07f0...51d75f`; ethereum `0x39ef2c...2ca612`; ethereum `0x4f250b...5c628a`; ethereum `0x8f3392...db538f`; ethereum `0x9bb163...02d25f`; ethereum `0xa13baf...c1e556`; ethereum `0xaa6d0f...93cac8`; ethereum `0xb7c883...dce43f`; ethereum `0xfa1485...75539c` | ⚠️ Unaudited |
| ScrollChainCommitmentVerifier | periphery | ethereum | [`0xc43624...ddf203`](./contracts/ethereum-1/0xc4362457a91b2e55934bdcb7daaf6b1ab3ddf203/) | ⚠️ Unaudited |
| ScrollOwner | unknown | ethereum | [`0x798576...7a26a6`](./contracts/ethereum-1/0x798576400f7d662961ba15c6b3f3d813447a26a6/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | 3 deployments: ethereum [`0x6a1247...f2276a`](./contracts/ethereum-1/0x6a124779fdf107c3f6bcb992731dcaad09f2276a/); ethereum `0x843272...6c7a4d`; ethereum `0xf15a4b...515eee` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | 6 deployments: ethereum [`0x0cd4c0...feca44`](./contracts/ethereum-1/0x0cd4c0f24a0a9f3e2fe80ed385d8ad5a2ffeca44/); ethereum `0x0e5893...0ec4f4`; ethereum `0x1a658b...d4ab9c`; ethereum `0x3f9041...68a9fd`; ethereum `0x826714...49216b`; ethereum `0xdc1d11...349b1b` | ⚠️ Unaudited |
| Whitelist | unknown | ethereum | [`0x259204...eacf37`](./contracts/ethereum-1/0x259204ddd2ba29bd9b1b9a5c9b093f73d7eacf37/) | ⚠️ Unaudited |
| ZkEvmVerifierPostEuclid | periphery | ethereum | 5 deployments: ethereum [`0x011231...1466b3`](./contracts/ethereum-1/0x0112315fa1c81c35ac9a477e161b52ae4d1466b3/); ethereum `0x1dc65f...3a1357`; ethereum `0x75249b...b6b577`; ethereum `0x84f2f4...f0480c`; ethereum `0xbb08c8...6297ba` | ⚠️ Unaudited |
| ZkEvmVerifierPostFeynman | periphery | ethereum | [`0xa8d470...21f485`](./contracts/ethereum-1/0xa8d4702aa5c09af5dd1323e1842a43789021f485/) | ⚠️ Unaudited |
| ZkEvmVerifierV1 | periphery | ethereum | 4 deployments: ethereum [`0x3f7b73...c58184`](./contracts/ethereum-1/0x3f7b737155e6e0dece9cd8cd3240d15939c58184/); ethereum `0x4b289e...cdb247`; ethereum `0x585dfa...0dad2d`; ethereum `0x63fb51...acfaa2` | ⚠️ Unaudited |
| ZkEvmVerifierV2 | periphery | ethereum | 2 deployments: ethereum [`0x2d6e16...0c18fb`](./contracts/ethereum-1/0x2d6e16d8e8a0c3bc7750e774b108ec39ab0c18fb/); ethereum `0xcaecee...ce54b3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x350817...1ae63e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47a499...8a9033` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4015fc...f6239c`](./contracts/ethereum-1/0x4015fc868c06689abeba4a9dc8fa43b804f6239c/) | L1StandardERC20Gateway | token | $4,921,050.17 | Verified native implementation with $4,921,050.17 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40c3c3...6d6c97`](./contracts/ethereum-1/0x40c3c3dea3b7d6d117e6713377144fd8ee6d6c97/) | L1CustomERC20Gateway | token | $63,182.12 | Verified native implementation with $63,182.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x642af4...806318`](./contracts/ethereum-1/0x642af405bf64660665b37977449c9c536b806318/) | EnforcedTxGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x244bf7...2f8cd7`](./contracts/ethereum-1/0x244bf7aef29f03916569470a51fa0794b62f8cd7/) | L1ERC1155Gateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fcbe0...d5c55d`](./contracts/ethereum-1/0x1fcbe079c4bbab37406dab7dfd35acae37d5c55d/) | L1ETHGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb93ac0...f798f3`](./contracts/ethereum-1/0xb93ac04010bd61f45bf492022a5b49a902f798f3/) | L1GatewayRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc9d74...adcf8f`](./contracts/ethereum-1/0xbc9d741501a20f962756c95bf906b4abffadcf8f/) | L1MessageQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39c36c...052eca`](./contracts/ethereum-1/0x39c36c9026ac18104839a50c61a4507ea5052eca/) | L1MessageQueueV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a5810...2b5432`](./contracts/ethereum-1/0x4a5810f71b6836027c26c25bff9708dfcd2b5432/) | L1USDCGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ea29d...8998f6`](./contracts/ethereum-1/0x1ea29d57dac237152d878758bae4beb2668998f6/) | MultipleVersionRollupVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a2070...8c3ba7`](./contracts/ethereum-1/0x0a20703878e68e587c59204cc0ea86098b8c3ba7/) | ScrollChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc43624...ddf203`](./contracts/ethereum-1/0xc4362457a91b2e55934bdcb7daaf6b1ab3ddf203/) | ScrollChainCommitmentVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x798576...7a26a6`](./contracts/ethereum-1/0x798576400f7d662961ba15c6b3f3d813447a26a6/) | ScrollOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a1247...f2276a`](./contracts/ethereum-1/0x6a124779fdf107c3f6bcb992731dcaad09f2276a/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x259204...eacf37`](./contracts/ethereum-1/0x259204ddd2ba29bd9b1b9a5c9b093f73d7eacf37/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x011231...1466b3`](./contracts/ethereum-1/0x0112315fa1c81c35ac9a477e161b52ae4d1466b3/) | ZkEvmVerifierPostEuclid | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8d470...21f485`](./contracts/ethereum-1/0xa8d4702aa5c09af5dd1323e1842a43789021f485/) | ZkEvmVerifierPostFeynman | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f7b73...c58184`](./contracts/ethereum-1/0x3f7b737155e6e0dece9cd8cd3240d15939c58184/) | ZkEvmVerifierV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d6e16...0c18fb`](./contracts/ethereum-1/0x2d6e16d8e8a0c3bc7750e774b108ec39ab0c18fb/) | ZkEvmVerifierV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 11 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
