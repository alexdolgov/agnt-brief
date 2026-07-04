# Agentic Audit Brief: Ink Bridge

## Project Overview

- Project: Ink Bridge (`ink-bridge`)
- Website: [https://inkonchain.com/bridge](https://inkonchain.com/bridge)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:01.329Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum, ink, optimism
- Contract surface: 35 unique implementations (80 raw deployments)
- DeFi Llama TVL: $41,858,116.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 33 project-authored contract(s) across 2 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 14 common project-authored base contract(s) (etherpaymentfallback, singleton, modulemanager). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 80; live-surface contracts included: 80 (36 live, 44 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 13/31 (41.9%)
- Deployed-live implementations: 31 of 35 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 13/31
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 35
- Raw deployments: 80
- Audits discovered: 17 (17 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 41.9% (Sherlock, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 13 | 41.9% | 2025-03 |
| Sherlock | Tier 1 | 4 | 12.9% | 2024-05 |
| Trail of Bits | Tier 1 | 2 | 6.5% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnchorStateRegistry | registry | ethereum | n/a | [`0xde7444...5e2509`](./contracts/ethereum-1/0xde744491bcf6b2dd2f32146364ea1487d75e2509/) | ✅ Audited |
| DelayedWETH | token | ethereum | n/a | [`0x14773a...920d38`](./contracts/ethereum-1/0x14773a8040ff22e3dcbb0c83ec8e33be7d920d38/) | ✅ Audited |
| DisputeGameFactory | registry | ethereum | n/a | [`0x10d7b3...5b12cd`](./contracts/ethereum-1/0x10d7b35078d3baabb96dd45a9143b94be65b12cd/) | ✅ Audited |
| ETHLockbox | unknown | ethereum | n/a | [`0xbd4abb...325a14`](./contracts/ethereum-1/0xbd4abb321138e8eddc399ce64e66451294325a14/) | ✅ Audited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x69d3cf...6c171f`](./contracts/ethereum-1/0x69d3cf86b2bf1a9e99875b7e2d9b6a84426c171f/) | ✅ Audited |
| L1ERC721Bridge | operational_periphery | ethereum | n/a | [`0x661235...21e0be`](./contracts/ethereum-1/0x661235a238b11191211fa95d4dd9e423d521e0be/) | ✅ Audited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x88ff1e...7663f0`](./contracts/ethereum-1/0x88ff1e5b602916615391f55854588efcbb7663f0/) | ✅ Audited |
| LivenessGuard | unknown | ethereum | n/a | [`0x244243...d14a25`](./contracts/ethereum-1/0x24424336f04440b1c28685a38303ac33c9d14a25/) | ✅ Audited |
| LivenessModule | unknown | ethereum | n/a | [`0x045409...c8a748`](./contracts/ethereum-1/0x0454092516c9a4d636d3cafa1e82161376c8a748/) | ✅ Audited |
| OptimismMintableERC20Factory | registry | ethereum | n/a | [`0xa8b389...d34d29`](./contracts/ethereum-1/0xa8b389a82e088b164cd03230e900980cced34d29/) | ✅ Audited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x5d66c1...5d3e4f`](./contracts/ethereum-1/0x5d66c1782664115999c47c9fa5cd031f495d3e4f/) | ✅ Audited |
| Proxy | proxy | optimism | n/a | [`0x420000...000028`](./contracts/optimism-10/0x4200000000000000000000000000000000000028/) | ✅ Audited |
| SystemConfig | governance | ethereum | n/a | [`0x62c0a1...6e8364`](./contracts/ethereum-1/0x62c0a111929fa32cec2f76adba54c16afb6e8364/) | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | governance | ethereum | n/a | [`0x9b7c9b...a71153`](./contracts/ethereum-1/0x9b7c9bbd6d540a8a4dedd935819fc4408ba71153/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | n/a | [`0x13b0d8...e9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| CreateX | unknown | ethereum | n/a | [`0xba5ed0...8ba5ed`](./contracts/ethereum-1/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/) | ⚠️ Unaudited |
| DeputyGuardianModule | unknown | ethereum | n/a | [`0x5dc91d...e4d2a8`](./contracts/ethereum-1/0x5dc91d01290af474ce21de14c17335a6dee4d2a8/) | ⚠️ Unaudited |
| EntryPoint | unknown | ethereum | n/a | 2 deployments: ethereum [`0x000000...7da032`](./contracts/ethereum-1/0x0000000071727de22e5e9d8baf0edac6f37da032/); ethereum `0x5ff137...6d2789` | ⚠️ Unaudited |
| ERC5564Announcer | unknown | ethereum | n/a | [`0x55649e...d45564`](./contracts/ethereum-1/0x55649e01b5df198d18d95b5cc5051630cfd45564/) | ⚠️ Unaudited |
| ERC6538Registry | registry | ethereum | n/a | [`0x6538e6...5d6538`](./contracts/ethereum-1/0x6538e6bf4b0ebd30a8ea093027ac2422ce5d6538/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 4 deployments: ethereum [`0x5a0aae...7c3d2a`](./contracts/ethereum-1/0x5a0aae59d09fccbddb6c6cceb07b7279367c3d2a/); ethereum `0x847b5c...5b9d92`; ethereum `0xbea2bc...fa9bbb`; ethereum `0xc2819d...e3bd03` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x69f4d1...6e2938`](./contracts/ethereum-1/0x69f4d1788e39c87893c980c06edf4b7f686e2938/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | n/a | [`0xfb1bff...7191ea`](./contracts/ethereum-1/0xfb1bffc9d739b8d520daf37df666da4c687191ea/) | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | n/a | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | n/a | [`0x998739...8f9eda`](./contracts/ethereum-1/0x998739bfdaadde7c933b942a68053933098f9eda/) | ⚠️ Unaudited |
| MultiSendCallOnly | unknown | ethereum | n/a | [`0xa1dabe...44102b`](./contracts/ethereum-1/0xa1dabef33b3b82c7814b6d82a79e50f4ac44102b/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0xd56045...241f79`](./contracts/ethereum-1/0xd56045e68956fce2576e680c95a4750cf8241f79/) | ⚠️ Unaudited |
| SenderCreator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7fc984...088348`](./contracts/ethereum-1/0x7fc98430eaedbb6070b35b39d798725049088348/); ethereum `0xefc2c1...7a167c` | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | n/a | [`0x95703e...f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x33a032...e5a314`](./contracts/ethereum-1/0x33a032ec93ec0c492ec4bf0b30d5f51986e5a314/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x914d7f...5643d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd525bc...547c44` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | 41 deployments: ink `0x000000...c78ba3`; ink `0x000000...7da032`; ink `0x0200c2...8470c1`; ink `0x13b0d8...e9bef2`; ink `0x39fec5...f2344d`; ink `0x3ec384...7fde45`; ink `0x420000...000006`; ink `0x420000...000007`; ink `0x420000...00000f`; ink `0x420000...000010`; ink `0x420000...000011`; ink `0x420000...000012`; ink `0x420000...000014`; ink `0x420000...000016`; ink `0x420000...000017`; ink `0x420000...000018`; ink `0x420000...000019`; ink `0x420000...00001a`; ink `0x420000...000020`; ink `0x420000...000021`; ink `0x420000...000028`; ink `0x43edd7...5a9050`; ink `0x4e59b4...b4956c`; ink `0x55649e...d45564`; ink `0x5bff88...c070c0`; ink `0x5ff137...6d2789`; ink `0x64445f...4e561a`; ink `0x6538e6...5d6538`; ink `0x69f4d1...6e2938`; ink `0x7fc984...088348`; ink `0x80eede...d600df`; ink `0x90581e...cf7927`; ink `0x914d7f...5643d7`; ink `0x998739...8f9eda`; ink `0xa1dabe...44102b`; ink `0xac7367...c2ccb3`; ink `0xba5ed0...8ba5ed`; ink `0xca11bd...76ca11`; ink `0xefc2c1...7a167c`; ink `0xf1815b...045d14`; ink `0xfb1bff...7191ea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2020_10-Rollup-TrailOfBits.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2020_10-Rollup-TrailOfBits.pdf) | Trail of Bits | Audit | 2020-10 | stale | Direct | n/a | 0 | n/a |
| [2021_03-OVM_and_Rollup-OpenZeppelin.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2021_03-OVM_and_Rollup-OpenZeppelin.pdf) | OpenZeppelin | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [2021_03-SafetyChecker-ConsenSysDiligence.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2021_03-SafetyChecker-ConsenSysDiligence.pdf) | Consensys Diligence | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [2022_05-OpNode-TrailOfBits.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_05-OpNode-TrailOfBits.pdf) | Trail of Bits | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [2022_08-Bedrock_GoLang-SigmaPrime.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_08-Bedrock_GoLang-SigmaPrime.pdf) | Sigma Prime | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [2022_10-Drippie-Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_10-Drippie-Spearbit.pdf) | Spearbit | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [2022_11-Invariant_Testing-TrailOfBits.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_11-Invariant_Testing-TrailOfBits.pdf) | Trail of Bits | Audit | 2022-11 | stale | Direct | contract_name | 1 | high |
| [2023_01-Bedrock_Updates-TrailOfBits.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2023_01-Bedrock_Updates-TrailOfBits.pdf) | Trail of Bits | Audit | 2023-01 | stale | Direct | contract_name | 1 | n/a |
| [2024_02-MCP_L1-Cantina.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_02-MCP_L1-Cantina.pdf) | Spearbit | Audit | 2024-02 | stale | Direct | contract_name | 11 | n/a |
| [2024_05-FaultProofs-Sherlock.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_05-FaultProofs-Sherlock.pdf) | Sherlock | Contest | 2024-05 | stale | Direct | contract_name | 4 | n/a |
| [2024_05_SafeLivenessExtensions-Cantina.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_05_SafeLivenessExtensions-Cantina.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | 2 | medium |
| [2024_08_Fault-Proofs-MIPS_Cantina.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_08_Fault-Proofs-MIPS_Cantina.pdf) | Spearbit | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf) | Spearbit | Audit | 2024-08 | aging | Direct | contract_name | 2 | n/a |
| [2024_12-DPM-MiloTruck.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_12-DPM-MiloTruck.pdf) | MiloTruck | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [2025_01-MT-Cannon-Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2025_01-MT-Cannon-Spearbit.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2025_02-Upgrade13-Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2025_02-Upgrade13-Spearbit.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 6 | n/a |
| [2025_03-Interop-Contracts-Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2025_03-Interop-Contracts-Spearbit.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: contract_name=26, extraction_exact=3

Zero-match audit list:

- [5531] 2020_10-Rollup-TrailOfBits.pdf
- [5533] 2021_03-OVM_and_Rollup-OpenZeppelin.pdf
- [5534] 2021_03-SafetyChecker-ConsenSysDiligence.pdf
- [5536] 2022_05-OpNode-TrailOfBits.pdf
- [5537] 2022_08-Bedrock_GoLang-SigmaPrime.pdf
- [5539] 2022_10-Drippie-Spearbit.pdf
- [5547] 2024_08_Fault-Proofs-MIPS_Cantina.pdf
- [5550] 2024_12-DPM-MiloTruck.pdf
- [5554] 2025_01-MT-Cannon-Spearbit.pdf

Fork inheritance lineage and inherited audits are included when available.
