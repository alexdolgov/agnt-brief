# Agentic Audit Brief: Symbiotic

## Project Overview

- Project: Symbiotic (`symbiotic`)
- Website: [https://symbiotic.fi](https://symbiotic.fi)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:58.262Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum
- Contract surface: 46 unique implementations (46 raw deployments)
- DeFi Llama TVL: $289,893,290.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Restaking. Structurally: 46 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 14 common project-authored base contract(s) (hints, contextupgradeable, reentrancyguardupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 46; live-surface contracts included: 46 (46 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 38/46 (82.6%)
- Deployed-live implementations: 46 of 46 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 38/46
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 46
- Raw deployments: 46
- Audits discovered: 24 (24 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 14
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 8 fresh, 13 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 38 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 65.2% (Certora, ChainSecurity, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 30 | 65.2% | 2025-04 |
| Statemind | Tier 2 | 23 | 50.0% | 2026-06 |
| Zellic | Tier 2 | 12 | 26.1% | 2024-07 |
| Certora | Tier 1 | 9 | 19.6% | 2024-08 |
| Spearbit | Tier 1 | 4 | 8.7% | 2024-12 |
| Bailsec | Tier 2 | 3 | 6.5% | 2026-06 |
| Ackee Blockchain | Tier 2 | 2 | 4.3% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BurnerRouter | unknown | ethereum | n/a | [`0x42dd40...6463c0`](./contracts/ethereum-1/0x42dd40dc2130c658ab32d9989ff8abe6c36463c0/) | ✅ Audited |
| BurnerRouterFactory | unknown | ethereum | n/a | [`0x99f2b8...ab70a0`](./contracts/ethereum-1/0x99f2b89fb3c363fbafd8d826e5aa77b28bab70a0/) | ✅ Audited |
| CuratorRegistry | unknown | ethereum | n/a | [`0x942244...13dfaa`](./contracts/ethereum-1/0x9422446ab9828821c913185ae012dfa60913dfaa/) | ✅ Audited |
| DefaultCollateral | unknown | ethereum | n/a | [`0x03bf48...ffa5ac`](./contracts/ethereum-1/0x03bf48b8a1b37fbead1ecabcf15b98b924ffa5ac/) | ✅ Audited |
| DefaultCollateralFactory | unknown | ethereum | n/a | [`0x1bc8fc...d202ec`](./contracts/ethereum-1/0x1bc8fcfbe6aa17e4a7610f51b888f34583d202ec/) | ✅ Audited |
| DefaultCollateralMigrator | unknown | ethereum | n/a | [`0x8f152f...3d4a43`](./contracts/ethereum-1/0x8f152feaa99eb6656f902e94bd4e7bcf563d4a43/) | ✅ Audited |
| DefaultOperatorRewards | unknown | ethereum | n/a | [`0x16bfd3...82aa08`](./contracts/ethereum-1/0x16bfd34813e0fdabaa7591075280e9939f82aa08/) | ✅ Audited |
| DefaultOperatorRewardsFactory | unknown | ethereum | n/a | [`0x6d52fc...22755d`](./contracts/ethereum-1/0x6d52fc402b2da2669348cc2682d85c61c122755d/) | ✅ Audited |
| DefaultStakerRewards | unknown | ethereum | n/a | [`0x41f640...21c20b`](./contracts/ethereum-1/0x41f640b4f6a12170364589bcb3835dbe0c21c20b/) | ✅ Audited |
| DefaultStakerRewardsFactory | unknown | ethereum | n/a | [`0x290cab...a0a25f`](./contracts/ethereum-1/0x290cab97a312164ccf095d75d6175df1c4a0a25f/) | ✅ Audited |
| DelegatorFactory | unknown | ethereum | n/a | [`0x985ed5...4e8c7b`](./contracts/ethereum-1/0x985ed57af9d475f1d83c1c1c8826a0e5a34e8c7b/) | ✅ Audited |
| ETHx_Burner | unknown | ethereum | n/a | [`0xcd6693...8a2b50`](./contracts/ethereum-1/0xcd669361d629380a70338d613d29c6f3a28a2b50/) | ✅ Audited |
| FeeRegistry | unknown | ethereum | n/a | [`0x3bb11a...ff6ce3`](./contracts/ethereum-1/0x3bb11a393801393f2ab37f4798add0ded5ff6ce3/) | ✅ Audited |
| FullRestakeDecreaseHook | unknown | ethereum | n/a | [`0x0786ef...62d70a`](./contracts/ethereum-1/0x0786ef079a0fc3a2d9e62bf2e8c7aef86b62d70a/) | ✅ Audited |
| FullRestakeDelegator | unknown | ethereum | n/a | [`0x1e0061...a0e3f2`](./contracts/ethereum-1/0x1e006130f9cf60e9c64942cf468e78f2f2a0e3f2/) | ✅ Audited |
| MetadataService | unknown | ethereum | n/a | [`0x97efa5...125e5d`](./contracts/ethereum-1/0x97efa50898ac1bb814fa10e09fe08a9111125e5d/) | ✅ Audited |
| mETH_Burner | unknown | ethereum | n/a | [`0x919c43...7ce231`](./contracts/ethereum-1/0x919c4329ed4d4a72c72c126ff8ae351c1e7ce231/) | ✅ Audited |
| NetworkMiddlewareService | unknown | ethereum | n/a | [`0xd7dc9b...6899ad`](./contracts/ethereum-1/0xd7dc9b366c027743d90761f71858bca83c6899ad/) | ✅ Audited |
| NetworkRegistry | unknown | ethereum | n/a | [`0xc773b1...1fd8aa`](./contracts/ethereum-1/0xc773b1011461e7314cf05f97d95aa8e92c1fd8aa/) | ✅ Audited |
| NetworkRestakeDecreaseHook | unknown | ethereum | n/a | [`0xe46d87...ef8bcf`](./contracts/ethereum-1/0xe46d876ba2f3c991f3ac3321b8c0a1c323ef8bcf/) | ✅ Audited |
| NetworkRestakeDelegator | unknown | ethereum | n/a | [`0xc583e3...e82e8a`](./contracts/ethereum-1/0xc583e3e488c3cd8738850e2e7b19ef3f23e82e8a/) | ✅ Audited |
| NetworkRestakeRedistributeHook | unknown | ethereum | n/a | [`0x8a76a3...f07845`](./contracts/ethereum-1/0x8a76a3b791d9cfcd17304d31e04304a54bf07845/) | ✅ Audited |
| OperatorNetworkSpecificDelegator | unknown | ethereum | n/a | [`0x89391b...6d90fb`](./contracts/ethereum-1/0x89391b703223511796f0778f0838e68da66d90fb/) | ✅ Audited |
| OperatorRegistry | unknown | ethereum | n/a | [`0xad817a...81af9f`](./contracts/ethereum-1/0xad817a6bc954f678451a71363f04150fdd81af9f/) | ✅ Audited |
| OperatorSpecificDecreaseHook | unknown | ethereum | n/a | [`0xcc7fd9...6b006a`](./contracts/ethereum-1/0xcc7fd9b9a37ba1e2b30243ce5a52bdb1f56b006a/) | ✅ Audited |
| OperatorSpecificDelegator | unknown | ethereum | n/a | [`0xef91d6...30aedf`](./contracts/ethereum-1/0xef91d6730688b2966b959383a1b42aa23130aedf/) | ✅ Audited |
| OptInService | unknown | ethereum | n/a | [`0x713341...16633c`](./contracts/ethereum-1/0x7133415b33b438843d581013f98a08704316633c/) | ✅ Audited |
| rETH_Burner | unknown | ethereum | n/a | [`0x89e391...a9b272`](./contracts/ethereum-1/0x89e3915c9eb07d1bff5d78e24b28d409dba9b272/) | ✅ Audited |
| sfrxETH_Burner | unknown | ethereum | n/a | [`0xbe5821...ff0c4b`](./contracts/ethereum-1/0xbe5821db563311750f6295e3cdb40abbdbff0c4b/) | ✅ Audited |
| Slasher | unknown | ethereum | n/a | [`0x4e6ae5...6c85fb`](./contracts/ethereum-1/0x4e6ae579b43b7de1fc4ced1dfb155714176c85fb/) | ✅ Audited |
| SlasherFactory | unknown | ethereum | n/a | [`0x685c2e...1e48fd`](./contracts/ethereum-1/0x685c2ed7d59814d2a597409058ee7a92f21e48fd/) | ✅ Audited |
| swETH_Burner | unknown | ethereum | n/a | [`0x1aca33...c54529`](./contracts/ethereum-1/0x1aca33ae8f57e2cdadd0375875ae12fb08c54529/) | ✅ Audited |
| Vault | unknown | ethereum | n/a | [`0xdd649a...08065c`](./contracts/ethereum-1/0xdd649adab2e67cadc2ec29d75abe73f3df08065c/) | ✅ Audited |
| VaultConfigurator | unknown | ethereum | n/a | [`0x29300b...0441ec`](./contracts/ethereum-1/0x29300b1d3150b4e2b12fe80be72f365e200441ec/) | ✅ Audited |
| VaultFactory | unknown | ethereum | n/a | [`0xaeb6bd...f6a346`](./contracts/ethereum-1/0xaeb6bdd95c502390db8f52c8909f703e9af6a346/) | ✅ Audited |
| VaultTokenized | unknown | ethereum | n/a | [`0x5a0dc8...669cfe`](./contracts/ethereum-1/0x5a0dc8e73d6846f12630b8f7d5197fa8cf669cfe/) | ✅ Audited |
| VetoSlasher | unknown | ethereum | n/a | [`0xae5bb0...c458cc`](./contracts/ethereum-1/0xae5bb0c1b2f5d8fc077b2451e23439ed88c458cc/) | ✅ Audited |
| wstETH_Burner | unknown | ethereum | n/a | [`0xdcac89...b5b324`](./contracts/ethereum-1/0xdcac890b14121fd5d925e2589017be68c2b5b324/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseDelegatorHints | unknown | ethereum | n/a | [`0xa298e9...4123c7`](./contracts/ethereum-1/0xa298e96fe9bd30ca6801d35ba28f6d1c004123c7/) | ⚠️ Unaudited |
| BaseSlasherHints | unknown | ethereum | n/a | [`0x036536...aca8a8`](./contracts/ethereum-1/0x03653642b98a52b7bd5c9ca53de0e3cacfaca8a8/) | ⚠️ Unaudited |
| OptInServiceHints | unknown | ethereum | n/a | [`0xe58ed8...e6a29f`](./contracts/ethereum-1/0xe58ed8d0788bd93d665552409dc60d43c9e6a29f/) | ⚠️ Unaudited |
| SlasherHints | unknown | ethereum | n/a | [`0x234148...98a4c7`](./contracts/ethereum-1/0x234148646d8c1762c793fd04385afad94998a4c7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xa13e65...06866b`](./contracts/ethereum-1/0xa13e65ca0fefa52ccb9615108ff400ef4806866b/) | ⚠️ Unaudited |
| VaultHints | unknown | ethereum | n/a | [`0xeaddc9...0fc9bc`](./contracts/ethereum-1/0xeaddc9f93a7d7b845084a30da09400f0170fc9bc/) | ⚠️ Unaudited |
| VetoSlasherHints | unknown | ethereum | n/a | [`0x653815...5b8651`](./contracts/ethereum-1/0x653815a6e2accd3ae3edc41d48bec9192d5b8651/) | ⚠️ Unaudited |
| WstETH | unknown | ethereum | n/a | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |

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
| [ChainSecurity_DefaultCollateral.pdf (also discovered via alternate URL)](https://github.com/symbioticfi/collateral/blob/main/audits/ChainSecurity_DefaultCollateral.pdf) | ChainSecurity | Audit | 2024-05 | stale | Direct | contract_name | 4 | high |
| [Statemind_DefaultCollateral.pdf (also discovered via alternate URL)](https://github.com/symbioticfi/collateral/blob/main/audits/Statemind_DefaultCollateral.pdf) | Statemind | Audit | 2024-05 | stale | Direct | contract_name | 2 | high |
| [Download Bailsec Rewards V2 report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/delegator-simplify/audits/Bailsec-CoreV2.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | 1 | high |
| [Download Bailsec Rewards V2 report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/delegator-simplify/audits/Bailsec-CoreV2Extension.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | n/a | 0 | n/a |
| [Download Statemind Core V2 audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/delegator-simplify/audits/Statemind-CoreV2.pdf) | Statemind | Audit | 2026-06 | fresh | Direct | n/a | 0 | n/a |
| [Download Ackee Rewards V2 report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/rewards-v2/main/audits/Ackee-RewardsV2.pdf) | Ackee Blockchain | Audit | 2026-01 | fresh | Direct | contract_name | 2 | high |
| [Download Bailsec Rewards V2 report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/rewards-v2/main/audits/Bailsec-RewardsV2.pdf) | Bailsec | Audit | 2025-11 | fresh | Direct | contract_name | 2 | high |
| [Download Cyfrin Relay Contracts (BLS12-381) report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/relay-contracts/main/audits/Cyfrin-RelayContracts-BLS12381.pdf) | Cyfrin | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [Download Sigma Prime Relay Contracts & Network report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/relay-contracts/main/audits/SigmaPrime-RelayContracts%26Network.pdf) | Sigma Prime | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Download Cyfrin Relay Contracts & Network report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/relay-contracts/main/audits/Cyfrin-RelayContracts%26Network.pdf) | Cyfrin | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Download Sherlock Relay Contracts & Network contest report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/relay-contracts/main/audits/Sherlock-RelayContracts%26Network.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Download Bailsec Relay Contracts review (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/relay-contracts/main/audits/Bailsec-RelayContracts.pdf) | Bailsec | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Download Statemind AI Relay Contracts review](https://raw.githubusercontent.com/symbioticfi/relay-contracts/main/audits/StatemindAI-RelayContracts.pdf) | Statemind AI | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [StatemindAI-RelayContracts.pdf](https://github.com/symbioticfi/relay-contracts/blob/main/audits/StatemindAI-RelayContracts.pdf) | StatemindAI | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Download Cantina Core contest report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/main/audits/Cantina-Core.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | 4 | medium |
| [Download Certora Core audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/main/audits/Certora-Core.pdf) | Certora | Audit | 2024-08 | aging | Direct | contract_name | 9 | high |
| [Download OtterSec Core & Rewards report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/main/audits/OtterSec-Core%26Rewards.pdf) | OtterSec | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Download ChainSecurity Core audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/main/audits/ChainSecurity-Core.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | 15 | high |
| [Download Zellic Core audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/main/audits/Zellic-Core.pdf) | Zellic | Audit | 2024-07 | stale | Direct | contract_name | 12 | high |
| [Download Statemind Core & Rewards audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/main/audits/Statemind-Core%26Rewards.pdf) | Statemind | Audit | 2024-12 | aging | Direct | contract_name | 19 | high |
| [Download ChainSecurity Rewards V1 audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/rewards/main/audits/ChainSecurity-Rewards.pdf) | ChainSecurity | Audit | 2025-04 | aging | Direct | contract_name | 4 | high |
| [Download ChainSecurity Burners audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/burners/main/audits/ChainSecurity-Burners.pdf) | ChainSecurity | Audit | 2024-11 | aging | Direct | contract_name | 8 | high |
| [Download Statemind Hooks audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/hooks/main/audits/Statemind-Hooks.pdf) | Statemind | Audit | 2024-12 | aging | Direct | contract_name | 4 | high |
| [Download ChainSecurity Periphery audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/periphery/main/audits/ChainSecurity-Periphery.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=13, medium=1
- Match method counts: extraction_exact=207

Zero-match audit list:

- [18311] Download Bailsec Rewards V2 report
- [18313] Download Statemind Core V2 audit report
- [18319] Download Cyfrin Relay Contracts (BLS12-381) report
- [18321] Download Sigma Prime Relay Contracts & Network report
- [18323] Download Cyfrin Relay Contracts & Network report
- [18325] Download Sherlock Relay Contracts & Network contest report
- [18327] Download Bailsec Relay Contracts review
- [18329] Download Statemind AI Relay Contracts review
- [18330] StatemindAI-RelayContracts.pdf
- [18341] Download OtterSec Core & Rewards report

Fork inheritance lineage and inherited audits are included when available.
