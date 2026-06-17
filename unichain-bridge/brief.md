# Agentic Audit Brief: Unichain Bridge

## Project Overview

- Project: Unichain Bridge (`unichain-bridge`)
- Website: [https://www.unichain.org](https://www.unichain.org)
- Lifecycle: active (Tier 1, dead)
- Generated: 2026-06-17T07:00:56.203Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum, unichain
- Contract surface: 21 unique implementations (26 raw deployments)
- DeFi Llama TVL: $2,187,503.45
- On-chain TVL (included contracts): $0.00
- TVL by chain: Unichain $0.00

## Project Description

Unichain Bridge is the canonical bridge for the Unichain network, enabling users to transfer ETH and ERC-20 tokens between Ethereum and Unichain. It uses the OP Stack's standard bridge architecture with a portal, cross-domain messenger, and dispute game factory for secure message passing and fraud proofs.

### Architecture

The bridge family shares infrastructure through the OP Stack's modular design: the OptimismPortal2 coordinates deposits and withdrawals, relying on the L1CrossDomainMessenger for message passing and the L1StandardBridge for token transfers. Supporting contracts like SystemConfig, DisputeGameFactory, and AnchorStateRegistry provide configuration, fraud proof handling, and state anchoring, all working together to secure the bridge.

## Contract Surface Quality

- Indexed contracts: 65; live-surface contracts included: 26 (20 live, 6 unknown).
- Excluded by liveness: 39 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 16/40 live.
- Detected codebases: none
- Unverified dependencies: 48/49.

## Audit Coverage Summary

- Verified implementations audited: 0/21 (0.0%)
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 26
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $0.00
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SequencerFeeVault | core_logic | unichain | unit-32349 | [`0x420000...000011`](./contracts/unichain-130/0x4200000000000000000000000000000000000011/) | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | ethereum | unit-32325 | [`0x27cf50...acaff9`](./contracts/ethereum-1/0x27cf508e4e3aa8d30b3226ac3b5ea0e8bcacaff9/) | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | unit-32323 (2 proxies) | 2 deployments: ethereum [`0x0bdbec...071a3c`](./contracts/ethereum-1/0x0bdbec6bd35571f97f96f3ed21822a4f2e071a3c/); ethereum `0xe62b02...bcd0ac` | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | unit-32326 | [`0x2f12d6...51dfe4`](./contracts/ethereum-1/0x2f12d621a16e2d3285929c9996f478508951dfe4/) | ⚠️ Unaudited |
| ETHLockbox | unknown | ethereum | unit-32321 | [`0x08ba00...2df5c5`](./contracts/ethereum-1/0x08ba0023ed60c7bd040716dd13c45fa0062df5c5/) | ⚠️ Unaudited |
| FaultDisputeGameV2 | unknown | ethereum | n/a | [`0x6ddba0...707499`](./contracts/ethereum-1/0x6ddba09bc4ccb0d6ca9fc5350580f74165707499/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-32335 (2 proxies) | 2 deployments: ethereum [`0x847b5c...5b9d92`](./contracts/ethereum-1/0x847b5c174615b1b7fdf770882256e2d3e95b9d92/); ethereum `0xc2819d...e3bd03` | ⚠️ Unaudited |
| L1LidoTokensBridge | operational_periphery | ethereum | unit-32332 | [`0x755610...aa1877`](./contracts/ethereum-1/0x755610f5be536ad7afbaa7c10f3e938ea3aa1877/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | unit-32334 | [`0x81014f...35feea`](./contracts/ethereum-1/0x81014f44b0a345033bb2b3b21c7a1a308b35feea/) | ⚠️ Unaudited |
| L2CrossDomainMessenger | unknown | unichain | unit-32346 | [`0x420000...000007`](./contracts/unichain-130/0x4200000000000000000000000000000000000007/) | ⚠️ Unaudited |
| L2StandardBridge | operational_periphery | unichain | unit-32348 | [`0x420000...000010`](./contracts/unichain-130/0x4200000000000000000000000000000000000010/) | ⚠️ Unaudited |
| L2ToL1MessagePasser | unknown | unichain | unit-32354 | [`0x420000...000016`](./contracts/unichain-130/0x4200000000000000000000000000000000000016/) | ⚠️ Unaudited |
| MIPS64 | unknown | ethereum | n/a | [`0x6463de...edb908`](./contracts/ethereum-1/0x6463dee3828677f6270d83d45408044fc5edb908/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | unichain | unit-32350 | [`0x420000...000012`](./contracts/unichain-130/0x4200000000000000000000000000000000000012/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | unit-32322 | [`0x0bd48f...56a7a2`](./contracts/ethereum-1/0x0bd48f6b86a26d3a217d0fa6ffe2b491b956a7a2/) | ⚠️ Unaudited |
| PermissionedDisputeGameV2 | unknown | ethereum | n/a | [`0x58bf35...43266a`](./contracts/ethereum-1/0x58bf355c5d4edfc723ef89d99582eccfd143266a/) | ⚠️ Unaudited |
| PreimageOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1fb8cd...87add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/); ethereum `0x9c065e...1be277` | ⚠️ Unaudited |
| Proxy | unknown | unichain | unit-32347 | [`0x420000...00000f`](./contracts/unichain-130/0x420000000000000000000000000000000000000f/) | ⚠️ Unaudited |
| Proxy | unknown | unichain | unit-32353 | [`0x420000...000015`](./contracts/unichain-130/0x4200000000000000000000000000000000000015/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-32331 (3 proxies) | 3 deployments: ethereum [`0x6d5b18...4d5833`](./contracts/ethereum-1/0x6d5b183f538abb8572f5cd17109c617b994d5833/); ethereum `0x9245d5...0ca1b1`; ethereum `0xb0c4c4...e744ec` | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | unit-32337 | [`0x95703e...f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | ⚠️ Unaudited |

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
| ethereum | [`0x27cf50...acaff9`](./contracts/ethereum-1/0x27cf508e4e3aa8d30b3226ac3b5ea0e8bcacaff9/) | AnchorStateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bdbec...071a3c`](./contracts/ethereum-1/0x0bdbec6bd35571f97f96f3ed21822a4f2e071a3c/) | DelayedWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f12d6...51dfe4`](./contracts/ethereum-1/0x2f12d621a16e2d3285929c9996f478508951dfe4/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08ba00...2df5c5`](./contracts/ethereum-1/0x08ba0023ed60c7bd040716dd13c45fa0062df5c5/) | ETHLockbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x755610...aa1877`](./contracts/ethereum-1/0x755610f5be536ad7afbaa7c10f3e938ea3aa1877/) | L1LidoTokensBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81014f...35feea`](./contracts/ethereum-1/0x81014f44b0a345033bb2b3b21c7a1a308b35feea/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bd48f...56a7a2`](./contracts/ethereum-1/0x0bd48f6b86a26d3a217d0fa6ffe2b491b956a7a2/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95703e...f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | SuperchainConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 4 |
| standard_library | 2 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
