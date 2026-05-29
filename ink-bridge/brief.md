# Agentic Audit Brief: Ink Bridge

## Project Overview

- Project: Ink Bridge (`ink-bridge`)
- Website: [https://inkonchain.com/bridge](https://inkonchain.com/bridge)
- Lifecycle: active (Tier 0, 60.5% below peak)
- Generated: 2026-05-29T09:17:08.061Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: ethereum, ink, optimism
- Contract surface: 68 unique implementations (70 raw deployments)
- DeFi Llama TVL: $59,290,618.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Ink Bridge is a canonical bridge protocol enabling asset transfers between Ethereum, Ink, and Optimism chains. It uses the OP Stack framework with dispute games, cross-domain messaging, and standard token bridges to facilitate secure cross-chain communication.

### Architecture

The Ethereum Mainnet family provides the L1 bridge infrastructure, while Ink Bridge and Ink Contracts operate on the Ink L2. Ink Mainnet contains shared deployer and utility contracts used across the protocol, and the Security considerations family may enforce access controls across families.

## Audit Coverage Summary

- Verified implementations audited: 12/25 (48.0%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 68
- Raw deployments: 70
- Audits discovered: 34
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 10 aging, 19 stale, 5 unknown
- Tier 1 coverage: 44.0% (Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 12 | 48.0% | 2025-01 |
| Spearbit | Tier 1 | 11 | 44.0% | 2025-03 |
| Trail of Bits | Tier 1 | 1 | 4.0% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AnchorStateRegistry | registry | ethereum | [`0xde7444...5e2509`](./contracts/ethereum-1/0xde744491bcf6b2dd2f32146364ea1487d75e2509/) | ✅ Audited |
| DelayedWETH | token | ethereum | [`0x14773a...920d38`](./contracts/ethereum-1/0x14773a8040ff22e3dcbb0c83ec8e33be7d920d38/) | ✅ Audited |
| DisputeGameFactory | registry | ethereum | [`0x10d7b3...5b12cd`](./contracts/ethereum-1/0x10d7b35078d3baabb96dd45a9143b94be65b12cd/) | ✅ Audited |
| ETHLockbox | unknown | ethereum | [`0xbd4abb...325a14`](./contracts/ethereum-1/0xbd4abb321138e8eddc399ce64e66451294325a14/) | ✅ Audited |
| L1CrossDomainMessenger | unknown | ethereum | [`0x69d3cf...6c171f`](./contracts/ethereum-1/0x69d3cf86b2bf1a9e99875b7e2d9b6a84426c171f/) | ✅ Audited |
| L1ERC721Bridge | operational_periphery | ethereum | [`0x661235...21e0be`](./contracts/ethereum-1/0x661235a238b11191211fa95d4dd9e423d521e0be/) | ✅ Audited |
| L1StandardBridge | bridge_template | ethereum | [`0x88ff1e...7663f0`](./contracts/ethereum-1/0x88ff1e5b602916615391f55854588efcbb7663f0/) | ✅ Audited |
| OptimismMintableERC20Factory | registry | ethereum | [`0xa8b389...d34d29`](./contracts/ethereum-1/0xa8b389a82e088b164cd03230e900980cced34d29/) | ✅ Audited |
| OptimismPortal2 | unknown | ethereum | [`0x5d66c1...5d3e4f`](./contracts/ethereum-1/0x5d66c1782664115999c47c9fa5cd031f495d3e4f/) | ✅ Audited |
| Proxy | proxy | optimism | [`0x420000...000028`](./contracts/optimism-10/0x4200000000000000000000000000000000000028/) | ✅ Audited |
| ProxyAdmin | governance | ethereum | [`0xd56045...241f79`](./contracts/ethereum-1/0xd56045e68956fce2576e680c95a4750cf8241f79/) | ✅ Audited |
| SystemConfig | governance | ethereum | [`0x62c0a1...6e8364`](./contracts/ethereum-1/0x62c0a111929fa32cec2f76adba54c16afb6e8364/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AddressManager | governance | ethereum | [`0x9b7c9b...a71153`](./contracts/ethereum-1/0x9b7c9bbd6d540a8a4dedd935819fc4408ba71153/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | [`0x13b0d8...e9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| CreateX | unknown | ethereum | [`0xba5ed0...8ba5ed`](./contracts/ethereum-1/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/) | ⚠️ Unaudited |
| EntryPoint | unknown | ethereum | 2 deployments: ethereum [`0x000000...7da032`](./contracts/ethereum-1/0x0000000071727de22e5e9d8baf0edac6f37da032/); ethereum `0x5ff137...6d2789` | ⚠️ Unaudited |
| ERC5564Announcer | unknown | ethereum | [`0x55649e...d45564`](./contracts/ethereum-1/0x55649e01b5df198d18d95b5cc5051630cfd45564/) | ⚠️ Unaudited |
| ERC6538Registry | registry | ethereum | [`0x6538e6...5d6538`](./contracts/ethereum-1/0x6538e6bf4b0ebd30a8ea093027ac2422ce5d6538/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x69f4d1...6e2938`](./contracts/ethereum-1/0x69f4d1788e39c87893c980c06edf4b7f686e2938/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | [`0xfb1bff...7191ea`](./contracts/ethereum-1/0xfb1bffc9d739b8d520daf37df666da4c687191ea/) | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | [`0x998739...8f9eda`](./contracts/ethereum-1/0x998739bfdaadde7c933b942a68053933098f9eda/) | ⚠️ Unaudited |
| MultiSendCallOnly | unknown | ethereum | [`0xa1dabe...44102b`](./contracts/ethereum-1/0xa1dabef33b3b82c7814b6d82a79e50f4ac44102b/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| SenderCreator | unknown | ethereum | 2 deployments: ethereum [`0x7fc984...088348`](./contracts/ethereum-1/0x7fc98430eaedbb6070b35b39d798725049088348/); ethereum `0xefc2c1...7a167c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x914d7f...5643d7` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x000000...7da032` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x0200c2...8470c1` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x13b0d8...e9bef2` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x39fec5...f2344d` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x3ec384...7fde45` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...000007` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...00000f` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...000010` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...000011` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...000012` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...000014` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...000016` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...000017` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...000018` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...000019` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...00001a` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...000020` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...000021` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x420000...000028` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x43edd7...5a9050` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x55649e...d45564` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x5bff88...c070c0` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x5ff137...6d2789` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x64445f...4e561a` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x6538e6...5d6538` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x69f4d1...6e2938` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x7fc984...088348` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x90581e...cf7927` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x914d7f...5643d7` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x998739...8f9eda` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xa1dabe...44102b` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xac7367...c2ccb3` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xba5ed0...8ba5ed` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xca11bd...76ca11` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xefc2c1...7a167c` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xf1815b...045d14` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xfb1bff...7191ea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pr-guidelines.md](https://github.com/inkonchain/optimism/blob/develop/docs/handbook/pr-guidelines.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2022-02-02-inflation-vuln.md](https://github.com/inkonchain/optimism/blob/develop/docs/postmortems/2022-02-02-inflation-vuln.md) | unknown | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [2022-05-31-drop-1.md](https://github.com/inkonchain/optimism/blob/develop/docs/postmortems/2022-05-31-drop-1.md) | unknown | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [2023-04-26-transaction-delays.md](https://github.com/inkonchain/optimism/blob/develop/docs/postmortems/2023-04-26-transaction-delays.md) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [2020_10-Rollup-TrailOfBits.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2020_10-Rollup-TrailOfBits.pdf) | Trail of Bits | Audit | 2020-10 | stale | Direct | n/a | 0 | n/a |
| [2020_11-Dapphub-ECDSA_Wallet.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2020_11-Dapphub-ECDSA_Wallet.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [2021_03-OVM_and_Rollup-OpenZeppelin.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2021_03-OVM_and_Rollup-OpenZeppelin.pdf) | OpenZeppelin | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [2021_03-SafetyChecker-ConsenSysDiligence.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2021_03-SafetyChecker-ConsenSysDiligence.pdf) | Consensys Diligence | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [2022_05-Bedrock_Contracts-Zeppelin.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_05-Bedrock_Contracts-Zeppelin.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | 1 | low |
| [2022_05-OpNode-TrailOfBits.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_05-OpNode-TrailOfBits.pdf) | Trail of Bits | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [2022_08-Bedrock_GoLang-SigmaPrime.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_08-Bedrock_GoLang-SigmaPrime.pdf) | Sigma Prime | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [2022_09-Bedrock_and_Periphery-Zeppelin.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_09-Bedrock_and_Periphery-Zeppelin.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 12 | high |
| [2022_10-Drippie-Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_10-Drippie-Spearbit.pdf) | Spearbit | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [2022_11-Invariant_Testing-TrailOfBits.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_11-Invariant_Testing-TrailOfBits.pdf) | Trail of Bits | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [2022_12-DepositTransaction-RuntimeVerification.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2022_12-DepositTransaction-RuntimeVerification.pdf) | unknown | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [2023_01-Bedrock_Updates-TrailOfBits.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2023_01-Bedrock_Updates-TrailOfBits.pdf) | Trail of Bits | Audit | 2023-01 | stale | Direct | contract_name | 1 | high |
| [2023_12_SuperchainConfigUpgrade_Trust.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2023_12_SuperchainConfigUpgrade_Trust.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [2024_02-MCP_L1-Cantina.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_02-MCP_L1-Cantina.pdf) | Spearbit | Audit | 2024-02 | stale | Direct | contract_name | 11 | medium |
| [2024_05-FaultProofs-Sherlock.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_05-FaultProofs-Sherlock.pdf) | Sherlock | Contest | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [2024_05_SafeLivenessExtensions-Cantina.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_05_SafeLivenessExtensions-Cantina.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [2024_08_Fault-Proofs-MIPS_Cantina.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_08_Fault-Proofs-MIPS_Cantina.pdf) | Spearbit | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_08_Fault-Proofs-No-MIPS_Spearbit.pdf) | Spearbit | Audit | 2024-08 | aging | Direct | contract_name | 2 | medium |
| [2024_10-Cannon-FGETFD-3DocSecurity.md](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_10-Cannon-FGETFD-3DocSecurity.md) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [2024_12-DPM-MiloTruck.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_12-DPM-MiloTruck.pdf) | MiloTruck | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [2024_12-DPM-RadiantLabs.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2024_12-DPM-RadiantLabs.pdf) | unknown | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [2025_01-IRI-OffbeatLabs.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2025_01-IRI-OffbeatLabs.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2025_01-MT-Cannon-Base.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2025_01-MT-Cannon-Base.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2025_01-MT-Cannon-Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2025_01-MT-Cannon-Spearbit.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2025_02-Upgrade13-Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2025_02-Upgrade13-Spearbit.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 6 | high |
| [2025_03-Interop-Contracts-Spearbit.pdf](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/2025_03-Interop-Contracts-Spearbit.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 2 | medium |
| [README.md (also discovered via alternate URL)](https://github.com/inkonchain/optimism/blob/develop/docs/security-reviews/README.md) | unknown | Audit | n/a | unknown | Direct | contract_name|n/a | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9b7c9b...a71153`](./contracts/ethereum-1/0x9b7c9bbd6d540a8a4dedd935819fc4408ba71153/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 1 |
| standard_library | 29 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 26
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4, low=1, medium=3
- Match method counts: extraction_exact=40

Zero-match audit list:

- [5522] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [5523] 0002-metadata-manifest-and-pull-command.md
- [5524] 0003-bun-package-manager-node-runtime.md
- [5527] pr-guidelines.md
- [5528] 2022-02-02-inflation-vuln.md
- [5529] 2022-05-31-drop-1.md
- [5530] 2023-04-26-transaction-delays.md
- [5531] 2020_10-Rollup-TrailOfBits.pdf
- [5532] 2020_11-Dapphub-ECDSA_Wallet.pdf
- [5533] 2021_03-OVM_and_Rollup-OpenZeppelin.pdf
- [5534] 2021_03-SafetyChecker-ConsenSysDiligence.pdf
- [5536] 2022_05-OpNode-TrailOfBits.pdf
- [5537] 2022_08-Bedrock_GoLang-SigmaPrime.pdf
- [5539] 2022_10-Drippie-Spearbit.pdf
- [5540] 2022_11-Invariant_Testing-TrailOfBits.pdf
- [5541] 2022_12-DepositTransaction-RuntimeVerification.pdf
- [5543] 2023_12_SuperchainConfigUpgrade_Trust.pdf
- [5545] 2024_05-FaultProofs-Sherlock.pdf
- [5546] 2024_05_SafeLivenessExtensions-Cantina.pdf
- [5547] 2024_08_Fault-Proofs-MIPS_Cantina.pdf
- [5549] 2024_10-Cannon-FGETFD-3DocSecurity.md
- [5550] 2024_12-DPM-MiloTruck.pdf
- [5551] 2024_12-DPM-RadiantLabs.pdf
- [5552] 2025_01-IRI-OffbeatLabs.pdf
- [5553] 2025_01-MT-Cannon-Base.pdf
- [5554] 2025_01-MT-Cannon-Spearbit.pdf

Fork inheritance lineage and inherited audits are included when available.
