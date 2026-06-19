# Agentic Audit Brief: Swellchain Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 82.0% over 90 days

## Project Overview

- Project: Swellchain Bridge (`swellchain-bridge`)
- Website: [https://superbridge.swellnetwork.io](https://superbridge.swellnetwork.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T06:14:46.599Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: ethereum
- Contract surface: 21 unique implementations (21 raw deployments)
- DeFi Llama TVL: $612,381.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Swellchain Bridge is the canonical bridge for Swellchain, enabling asset transfers between Ethereum and the Swellchain L2. It uses the OP Stack bridge architecture to lock assets on L1 and mint equivalent representations on L2.

### Architecture

The bridge family consists of core OP Stack contracts (L1StandardBridge, OptimismPortal2) and an additional L1ERC20TokenBridge for token bridging, all deployed via proxies. These contracts share the same deployer cluster and form a unified bridge infrastructure.

## Contract Surface Quality

- Indexed contracts: 32; live-surface contracts included: 21 (11 live, 10 unknown).
- Excluded by liveness: 9 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 7/17 live.
- Detected codebases: none
- Unverified dependencies: 8/18.

## Audit Coverage Summary

- Verified implementations audited: 0/21 (0.0%)
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | governance | ethereum | n/a | [`0xa54a84...dafc8a`](./contracts/ethereum-1/0xa54a84f17c2180148c762d79bc57bdff7fdafc8a/) | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | ethereum | unit-23679 | [`0x143874...174dd1`](./contracts/ethereum-1/0x14387438ee964e826a4eaeb95b2bce7754174dd1/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | unit-23687 | [`0x876906...2f0f57`](./contracts/ethereum-1/0x87690676786cdc8cca75a472e483af7c8f2f0f57/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-23682 | [`0x5a0aae...7c3d2a`](./contracts/ethereum-1/0x5a0aae59d09fccbddb6c6cceb07b7279367c3d2a/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-23689 | [`0x9ba6e0...006b3a`](./contracts/ethereum-1/0x9ba6e03d8b90de867373db8cf1a58d2f7f006b3a/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | unit-23692 | [`0xe6a99e...903759`](./contracts/ethereum-1/0xe6a99ef12995defc5ff47ec0e13252f0e6903759/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | unit-23694 | [`0xfd7618...44bc1e`](./contracts/ethereum-1/0xfd7618330e63b493070dc8c491ad4ad26144bc1e/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | unit-23684 | [`0x7aa496...5aacc8`](./contracts/ethereum-1/0x7aa4960908b13d104bf056b23e2c76b43c5aacc8/) | ⚠️ Unaudited |
| MIPS | unknown | ethereum | n/a | [`0x16e83c...344ce4`](./contracts/ethereum-1/0x16e83ce5ce29bf90ad9da06d2fe6a15d5f344ce4/) | ⚠️ Unaudited |
| OFTAdapterSwETH | adapter | ethereum | n/a | [`0x2c1b34...6f94e2`](./contracts/ethereum-1/0x2c1b3426e557d6756d8a8859a0779373236f94e2/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | unit-23690 | [`0xc2b228...f3f603`](./contracts/ethereum-1/0xc2b228cd433ebae788de287ede2abe55b3f3f603/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | unit-23683 | [`0x758e0e...b87812`](./contracts/ethereum-1/0x758e0ee66102816f5c3ec9ecc1188860fbb87812/) | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | ethereum | n/a | [`0xa0cfbe...fa6893`](./contracts/ethereum-1/0xa0cfbe3402d6e0a74e96d3c360f74d5ea4fa6893/) | ⚠️ Unaudited |
| PreimageOracle | unknown | ethereum | n/a | [`0x9c065e...1be277`](./contracts/ethereum-1/0x9c065e11870b891d214bc2da7ef1f9ddfa1be277/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0x4c4710...269dd6`](./contracts/ethereum-1/0x4c4710a4ec3f514a492cc6460818c4a6a6269dd6/) | ⚠️ Unaudited |
| RSwellOFTAdapter | adapter | ethereum | n/a | [`0x428cda...b2ac58`](./contracts/ethereum-1/0x428cda6c1994b926f75a4830d5baedee9db2ac58/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-23678 | [`0x06f7fb...038d0e`](./contracts/ethereum-1/0x06f7fb1c74147e34fce04a6828c7bf809b038d0e/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | unit-23688 | [`0x95703e...f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | ⚠️ Unaudited |
| SwBtcOFTAdapter | adapter | ethereum | n/a | [`0x584cd3...e7dae2`](./contracts/ethereum-1/0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2/) | ⚠️ Unaudited |
| SwellOFTAdapter | adapter | ethereum | n/a | [`0x093410...9d85b7`](./contracts/ethereum-1/0x09341022ea237a4db1644de7ccf8fa0e489d85b7/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | unit-23691 | [`0xd3d4c6...7ff1a4`](./contracts/ethereum-1/0xd3d4c6b703978a5d24fecf3a70a51127667ff1a4/) | ⚠️ Unaudited |

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
| ethereum | [`0xa54a84...dafc8a`](./contracts/ethereum-1/0xa54a84f17c2180148c762d79bc57bdff7fdafc8a/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ba6e0...006b3a`](./contracts/ethereum-1/0x9ba6e03d8b90de867373db8cf1a58d2f7f006b3a/) | GnosisSafe | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6a99e...903759`](./contracts/ethereum-1/0xe6a99ef12995defc5ff47ec0e13252f0e6903759/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c1b34...6f94e2`](./contracts/ethereum-1/0x2c1b3426e557d6756d8a8859a0779373236f94e2/) | OFTAdapterSwETH | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x428cda...b2ac58`](./contracts/ethereum-1/0x428cda6c1994b926f75a4830d5baedee9db2ac58/) | RSwellOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x584cd3...e7dae2`](./contracts/ethereum-1/0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2/) | SwBtcOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x093410...9d85b7`](./contracts/ethereum-1/0x09341022ea237a4db1644de7ccf8fa0e489d85b7/) | SwellOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 3 |
| standard_library | 4 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
