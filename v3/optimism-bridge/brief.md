# Agentic Audit Brief: Optimism Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 41 (0 matched; 41 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Optimism Bridge (`optimism-bridge`)
- Website: [https://app.optimism.io/bridge/deposit](https://app.optimism.io/bridge/deposit)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, optimism
- Contract surface: 65 unique implementations (65 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $578,975,451.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Optimism Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x420000...000022`, chain 10)
- UnnamedContract (`0x420000...000023`, chain 10)
- UnnamedContract (`0x420000...000024`, chain 10)
- UnnamedContract (`0x420000...000025`, chain 10)
- UnnamedContract (`0x420000...000028`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 60 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 20 standard proxy/library)
- Proxy deployments represented within implementation groups: 28
- Confirmed-live implementations: 5 of 65 unique; 60 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/60
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 65
- Raw deployments: 65
- Audits discovered: 34 (34 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 9 fresh, 9 aging, 16 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnchorStateRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x18dac7...75e443` | ⚠️ Unaudited |
| DeployerWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x420000...000002` | ⚠️ Unaudited |
| DeputyGuardianModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dc91d...e4d2a8` | ⚠️ Unaudited |
| DisputeGameFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe5965a...252fa9` | ⚠️ Unaudited |
| FaultDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4146df...65e122` | ⚠️ Unaudited |
| FaultDisputeGameV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddba0...707499` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x09f715...efdaf2` | ⚠️ Unaudited |
| GovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x420000...000042` | ⚠️ Unaudited |
| L1BlockNumber | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x420000...000013` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2150bc...1bfe43` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3268ed...5ab5c2` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x99c9fc...884be1` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2e67b...2c2e00` | ⚠️ Unaudited |
| LegacyERC20ETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdeadde...ad0000` | ⚠️ Unaudited |
| LegacyMessagePasser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x420000...000000` | ⚠️ Unaudited |
| Lib_AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde1fcf...6bd81f` | ⚠️ Unaudited |
| LivenessGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x244243...d14a25` | ⚠️ Unaudited |
| LivenessModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045409...c8a748` | ⚠️ Unaudited |
| MIPS64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6463de...edb908` | ⚠️ Unaudited |
| mockOVM_BondManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd76de...c49057` | ⚠️ Unaudited |
| OptimismPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a554...0a64ab` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbeb5fc...f106ed` | ⚠️ Unaudited |
| OVM_CanonicalTransactionChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bf681...2f6cf6` | ⚠️ Unaudited |
| OVM_ChainStorageContainer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ea1a3...ecc3ee` | ⚠️ Unaudited |
| OVM_ExecutionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2745c2...5619f5` | ⚠️ Unaudited |
| OVM_FraudVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042065...840d15` | ⚠️ Unaudited |
| OVM_L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x163937...699f1d` | ⚠️ Unaudited |
| OVM_L1MultiMessageRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf26391...7ea891` | ⚠️ Unaudited |
| OVM_SafetyChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe1f9c...6035cc` | ⚠️ Unaudited |
| OVM_StateCommitmentChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe969c2...5998c1` | ⚠️ Unaudited |
| OVM_StateManagerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0e3e3...6ff98d` | ⚠️ Unaudited |
| OVM_StateTransitionerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38a6ed...782b67` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc307e9...57b62f` | ⚠️ Unaudited |
| PermissionedDisputeGameV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58bf35...43266a` | ⚠️ Unaudited |
| PortalSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a893d...e78210` | ⚠️ Unaudited |
| PreimageOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb8cd...87add3` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x322b47...294d43` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8062ab...93b935` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x95703e...f04a4c` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd061ab...1e2d0e` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x420000...000001` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...000007` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...00000f` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...000010` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...000011` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...000012` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...000014` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...000015` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...000016` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...000017` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...000018` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...000019` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...00001a` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...00001b` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...000020` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | optimism | n/a | `0x420000...000021` | ⚠️ Unaudited |
| SaferSafes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84473...9f483a` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x229047...9eb290` | ⚠️ Unaudited |
| SystemDictator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e040...83488a` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x420000...000006` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390436 | `0x420000...000022` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390437 | `0x420000...000023` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390438 | `0x420000...000024` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390439 | `0x420000...000025` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-390440 | `0x420000...000028` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [The staking contract ([source](https://github.com/ethereum-optimism/optimism/pull/19192/changes#diff-dfad1cdbadfef03b98f7bbadd22222fbcc4ea2a0f3dbcc21f21c645758dffaa0R17), [audit report]()), `PolicyEngineStaking`, lives at `packages/contracts-bedrock/src/periphery/staking/PolicyEngineStaking.sol` in the Optimism monorepo (the "Experimental Smart Contract"). It is intentionally non-upgradeable and classified as a periphery contract, not part of the core OP Stack.](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2026_03-PolicyEngineStaking-Cantina.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [The audit results [are published here]().](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2026_01-U18-Cantina.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [2020_10-Rollup-TrailOfBits.pdf (also discovered via alternate URL)](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2020_10-Rollup-TrailOfBits.pdf) | Trail of Bits | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [2020_11-Dapphub-ECDSA_Wallet.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2020_11-Dapphub-ECDSA_Wallet.pdf) | Dapphub | Audit | 2021-12 | stale | Direct | address | no match | 0 | 0 | 0 | 15 | high |
| [2021_03-OVM_and_Rollup-OpenZeppelin.pdf (also discovered via alternate URL)](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2021_03-OVM_and_Rollup-OpenZeppelin.pdf) | OpenZeppelin | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 55 | high |
| [2021_03-SafetyChecker-ConsenSysDiligence.pdf (also discovered via alternate URL)](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2021_03-SafetyChecker-ConsenSysDiligence.pdf) | Consensys Diligence | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2022_05-Bedrock_Contracts-Zeppelin.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2022_05-Bedrock_Contracts-Zeppelin.pdf) | Zeppelin | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | low |
| [2022_05-OpNode-TrailOfBits.pdf (also discovered via alternate URL)](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2022_05-OpNode-TrailOfBits.pdf) | Trail of Bits | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2022_08-Bedrock_GoLang-SigmaPrime.pdf (also discovered via alternate URL)](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2022_08-Bedrock_GoLang-SigmaPrime.pdf) | Sigma Prime | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2022_09-Bedrock_and_Periphery-Zeppelin.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2022_09-Bedrock_and_Periphery-Zeppelin.pdf) | Zeppelin | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [2022_11-Invariant_Testing-TrailOfBits.pdf (also discovered via alternate URL)](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2022_11-Invariant_Testing-TrailOfBits.pdf) | Trail of Bits | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2022_12-DepositTransaction-RuntimeVerification.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2022_12-DepositTransaction-RuntimeVerification.pdf) | RuntimeVerification | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2023_01-Bedrock_Updates-TrailOfBits.pdf (also discovered via alternate URL)](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2023_01-Bedrock_Updates-TrailOfBits.pdf) | Trail of Bits | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2023_12_SuperchainConfigUpgrade_Trust.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2023_12_SuperchainConfigUpgrade_Trust.pdf) | Trust | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2024_02-MCP_L1-Cantina.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2024_02-MCP_L1-Cantina.pdf) | Spearbit | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | medium |
| [2024_05-FaultProofs-Sherlock.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2024_05-FaultProofs-Sherlock.pdf) | Sherlock | Contest | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2024_12-DPM-MiloTruck.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2024_12-DPM-MiloTruck.pdf) | MiloTruck | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2025_01-IRI-OffbeatLabs.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2025_01-IRI-OffbeatLabs.pdf) | OffbeatLabs | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [2025_02-Upgrade13-Spearbit.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2025_02-Upgrade13-Spearbit.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [2025_03-Interop-Contracts-Spearbit.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2025_03-Interop-Contracts-Spearbit.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [2025_04-op-program-blob-handling-aleph_v.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2025_04-op-program-blob-handling-aleph_v.pdf) | aleph_v | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [2025_05-Interop-Portal-Spearbit.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2025_05-Interop-Portal-Spearbit.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [2025_05-Upgrade16-Spearbit.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2025_05-Upgrade16-Spearbit.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [2025_06-Spearbit-Cannon-fix-review.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2025_06-Spearbit-Cannon-fix-review.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025_07-VerifyOPCM-Spearbit.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2025_07-VerifyOPCM-Spearbit.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2025_09-U16a-Spearbit.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2025_09-U16a-Spearbit.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [2025_10-U17-Spearbit.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2025_10-U17-Spearbit.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [2025_11-Custom-Gas-Token-Spearbit.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2025_11-Custom-Gas-Token-Spearbit.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [2025_11-Rev-Sharing-Contracts-Upgrader.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2025_11-Rev-Sharing-Contracts-Upgrader.pdf) | Upgrader | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2026_05-U19-Cantina.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2026_05-U19-Cantina.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [2026_06-Interop-L2-Contracts.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2026_06-Interop-L2-Contracts.pdf) | Unknown | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2026_06-OPCMv2-Cantina.pdf](https://github.com/ethereum-optimism/optimism/blob/develop/docs/security-reviews/2026_06-OPCMv2-Cantina.pdf) | Spearbit | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2022_05-Bedrock_Contracts-Zeppelin.pdf](https://github.com/ethereum-optimism/optimism/blob/v1.1.4/technical-documents/security-reviews/2022_05-Bedrock_Contracts-Zeppelin.pdf) | OpenZeppelin | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | low |
| [2022_09-Bedrock_and_Periphery-Zeppelin.pdf](https://github.com/ethereum-optimism/optimism/blob/v1.1.4/technical-documents/security-reviews/2022_09-Bedrock_and_Periphery-Zeppelin.pdf) | OpenZeppelin | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29797] The staking contract ([source](https://github.com/ethereum-optimism/optimism/pull/19192/changes#diff-dfad1cdbadfef03b98f7bbadd22222fbcc4ea2a0f3dbcc21f21c645758dffaa0R17), [audit report]()), `PolicyEngineStaking`, lives at `packages/contracts-bedrock/src/periphery/staking/PolicyEngineStaking.sol` in the Optimism monorepo (the "Experimental Smart Contract"). It is intentionally non-upgradeable and classified as a periphery contract, not part of the core OP Stack. — no match: Scope section lists three files: IPolicyEngineStaking.sol, DeployPolicyEngineStaking.s.sol, and PolicyEngineStaking.sol. DeployPolicyEngineStaking.s.sol is a deploy script, not a contract, so only the two contracts are extracted.
- [29799] The audit results [are published here](). — no match: All contracts listed in the scope section (2.1) are extracted. The audit date is from the cover page.
- [29800] 2020_10-Rollup-TrailOfBits.pdf — no match: Extracted contract names from findings targets and coverage section. Audit date from cover page.
- [29801] 2020_11-Dapphub-ECDSA_Wallet.pdf — no match: Extracted contracts from scope section, system overview, contract map, and findings. Audit date from header 'last updated: 12.01.2021'.
- [29802] 2021_03-OVM_and_Rollup-OpenZeppelin.pdf — no match: Audit started March 15, 2021, lasted 7 weeks, so end date is approximately May 3, 2021. Scope includes contracts in contracts/optimistic-ethereum/OVM/ and contracts/optimistic-ethereum/libraries/ folders, excluding OVM_BondManager.sol, OVM_SafetyChecker.sol, ERC1820Registry.sol, OVM_DeployerWhitelist.sol, and Lib_RingBuffer.sol (deprecated).
- [29803] 2021_03-SafetyChecker-ConsenSysDiligence.pdf — no match: Only one contract in scope: OVM_SafetyChecker. Audit date is March 2021, mapped to last day of month.
- [29804] 2022_05-Bedrock_Contracts-Zeppelin.pdf — no match: The report text is heavily corrupted with encoding issues, making it difficult to extract precise contract names and scope details. The extracted names are inferred from fragmented mentions in the text.
- [29805] 2022_05-OpNode-TrailOfBits.pdf — no match: Extracted contract names from the 'Project Targets' section and findings. The audit date is from the cover page: 'July 7, 2022'.
- [29806] 2022_08-Bedrock_GoLang-SigmaPrime.pdf — no match: The report scope is the Optimism Bedrock rollup architecture, specifically the op-node and op-geth programs. No individual smart contracts are listed; the scope is the entire codebases of these two Go programs.
- [29807] 2022_09-Bedrock_and_Periphery-Zeppelin.pdf — no match: All contracts listed in the Scope section of the audit report.
- [29809] 2022_11-Invariant_Testing-TrailOfBits.pdf — no match: Extracted contract names from Project Targets and Project Coverage sections. GasPriceOracle is from the detailed findings. Audit date from cover page and final report delivery date.
- [29810] 2022_12-DepositTransaction-RuntimeVerification.pdf — no match: Only one contract (OptimismPortal) is explicitly mentioned as the target of the audit. The report focuses on the depositTransaction function within that contract.
- [29811] 2023_01-Bedrock_Updates-TrailOfBits.pdf — no match: Extracted contract names from Project Targets and Project Coverage sections. Audit date from cover page.
- [29812] 2023_12_SuperchainConfigUpgrade_Trust.pdf — no match: Scope section explicitly lists 8 contracts. Audit date from versioning table: 11/01/23 (interpreted as 2024-01-11 based on context).
- [29813] 2024_02-MCP_L1-Cantina.pdf — no match: No explicit scope section found; contracts extracted from findings context and deployment scripts. Audit date from cover page: February 15, 2024.
- [29814] 2024_05-FaultProofs-Sherlock.pdf — no match: Extracted from the audit report header and findings. The report covers the Optimism fault proof system with contracts in the ethereum-optimism/optimism repository.
- [29819] 2024_12-DPM-MiloTruck.pdf — no match: No explicit scope section; contracts inferred from report context and file paths in findings.
- [29821] 2025_01-IRI-OffbeatLabs.pdf — no match: Scope explicitly lists files from two commits; contract names extracted from file paths.
- [29822] 2025_02-Upgrade13-Spearbit.pdf — no match: Extracted contract names from findings context and file paths mentioned throughout the report. No explicit scope table found, but contracts are clearly audited targets.
- [29823] 2025_03-Interop-Contracts-Spearbit.pdf — no match: The report does not have a dedicated scope section; contract names were extracted from findings context and file references throughout the report.
- [29826] 2025_04-op-program-blob-handling-aleph_v.pdf — no match: Only one contract name (PreImageOracle) is explicitly mentioned as being reviewed. No scope section or date found.
- [29828] 2025_05-Interop-Portal-Spearbit.pdf — no match: The report does not have a dedicated scope section; contract names were extracted from findings context and file references. The audit date is from the report header: 'May 20, 2025'.
- [29829] 2025_05-Upgrade16-Spearbit.pdf — no match: Scope explicitly listed in Executive Summary section with file paths. Audit date from report cover page.
- [29831] 2025_06-Spearbit-Cannon-fix-review.pdf — no match: The report is a security review of Optimism's MIPS64 virtual machine, focusing on pull requests (PR16341, PR16346, PR16384) rather than smart contracts. No Solidity contracts or source files are mentioned in scope.
- [29832] 2025_07-VerifyOPCM-Spearbit.pdf — no match: Scope explicitly lists scripts/deploy/VerifyOPCM.s.sol and src/L1/OPContractsManager.sol. Other contracts mentioned (OPContractsManagerGameTypeAdder, OPContractsManagerUpgrader, OPContractsManagerDeployer, OPContractsManagerInteropMigrator) are not in scope per the report's scope definition.
- [29833] 2025_09-U16a-Spearbit.pdf — no match: Extracted from the appendix file hashes table and findings context. The audit date is from the report header.
- [29835] 2025_10-U17-Spearbit.pdf — no match: Contracts in scope are listed in the 'File hashes' appendix (Section 4.1) with file paths and keccak256 hashes. The audit date is from the cover page: 'October 27, 2025'.
- [29836] 2025_11-Custom-Gas-Token-Spearbit.pdf — no match: Extracted 10 contracts from the scope section (page 3) and the audit date from the cover page.
- [29837] 2025_11-Rev-Sharing-Contracts-Upgrader.pdf — no match: All four contracts listed in scope section of the audit report.
- [29840] 2026_05-U19-Cantina.pdf — no match: Extracted contract names from findings context and file paths. No explicit scope section found; contracts are those mentioned in findings as audited targets.
- [29841] 2026_06-Interop-L2-Contracts.pdf — no match: All contracts listed in the scope section of the report.
- [29842] 2026_06-OPCMv2-Cantina.pdf — no match: Scope section explicitly lists 6 files under packages/contracts-bedrock. Audit date is June 8, 2026 from the cover page.
- [29847] 2022_05-Bedrock_Contracts-Zeppelin.pdf — no match: The report text is heavily corrupted with encoding issues, making it difficult to parse. No clear scope section or date was identifiable. Contract names were inferred from repeated mentions in findings and system overview.
- [29850] 2022_09-Bedrock_and_Periphery-Zeppelin.pdf — no match: All contracts listed in the Scope section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| The staking contract ([source](https://github.com/ethereum-optimism/optimism/pull/19192/changes#diff-dfad1cdbadfef03b98f7bbadd22222fbcc4ea2a0f3dbcc21f21c645758dffaa0R17), [audit report]()), `PolicyEngineStaking`, lives at `packages/contracts-bedrock/src/periphery/staking/PolicyEngineStaking.sol` in the Optimism monorepo (the "Experimental Smart Contract"). It is intentionally non-upgradeable and classified as a periphery contract, not part of the core OP Stack. | IPolicyEngineStaking | unmatched — not counted | — | listed in scope | no |
| The staking contract ([source](https://github.com/ethereum-optimism/optimism/pull/19192/changes#diff-dfad1cdbadfef03b98f7bbadd22222fbcc4ea2a0f3dbcc21f21c645758dffaa0R17), [audit report]()), `PolicyEngineStaking`, lives at `packages/contracts-bedrock/src/periphery/staking/PolicyEngineStaking.sol` in the Optimism monorepo (the "Experimental Smart Contract"). It is intentionally non-upgradeable and classified as a periphery contract, not part of the core OP Stack. | PolicyEngineStaking | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | AnchorStateRegistry | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | DisputeGameFactory | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | Errors | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | LibGameArgs | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | Types | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | SuperFaultDisputeGame | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | SuperPermissionedDisputeGame | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | FaultDisputeGameV2 | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | PermissionedDisputeGameV2 | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | AccessManager | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | ISP1Verifier | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | OPSuccinctFaultDisputeGame | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | FeesDepositor | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | OPContractsManager | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | OPContractsManagerStandardValidator | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | OptimismPortal2 | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | SystemConfig | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | BaseFeeVault | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | FeeSplitter | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | FeeVault | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | L1Block | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | L1BlockCGT | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | L1FeeVault | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | L1Withdrawer | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | L2ToL1MessagePasser | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | L2ToL1MessagePasserCGT | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | LiquidityController | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | NativeAssetLiquidity | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | OperatorFeeVault | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | SequencerFeeVault | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | SuperchainRevSharesCalculator | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | Constants | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | DevFeatures | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | Features | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | Predeploys | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | DeputyPauseModule | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | LivenessGuard | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | LivenessModule | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | LivenessModule2 | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | SaferSafes | unmatched — not counted | — | listed in scope | no |
| The audit results [are published here](). | TimelockGuard | unmatched — not counted | — | listed in scope | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_SafetyChecker | unmatched — not counted | — | Target in finding TOB-OVM-001 | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_AddressManager | unmatched — not counted | — | Target in finding TOB-OVM-002 | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_BaseChain | unmatched — not counted | — | Target in finding TOB-OVM-003 | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_StateCommitmentChain | unmatched — not counted | — | Target in findings TOB-OVM-003, TOB-OVM-004, TOB-OVM-007, TOB-OVM-008 | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_CanonicalTransactionChain | unmatched — not counted | — | Target in findings TOB-OVM-007, TOB-OVM-009, TOB-OVM-017, TOB-OVM-018, TOB-OVM-019, TOB-OVM-020 | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_FraudVerifier | unmatched — not counted | — | Target in findings TOB-OVM-008, TOB-OVM-013, TOB-OVM-014, TOB-OVM-015 | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_StateTransitioner | unmatched — not counted | — | Target in finding TOB-OVM-013 | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_StateTransitionerFactory | unmatched — not counted | — | Target in finding TOB-OVM-013 | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_L1CrossDomainMessenger | unmatched — not counted | — | Target in findings TOB-OVM-005, TOB-OVM-012 | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_L2CrossDomainMessenger | unmatched — not counted | — | Target in findings TOB-OVM-005, TOB-OVM-006, TOB-OVM-012 | no |
| 2020_10-Rollup-TrailOfBits.pdf | OVM_BaseCrossDomainMessenger | unmatched — not counted | — | Target in findings TOB-OVM-006, TOB-OVM-012 | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_MerkleUtils | unmatched — not counted | — | Target in finding TOB-OVM-008 | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_TimeboundRingBuffer | unmatched — not counted | — | Target in finding TOB-OVM-010 | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_MerkleTrie | unmatched — not counted | — | Coverage section mentions Lib_MerkleTrie | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_SecureMerkleTrie | unmatched — not counted | — | Coverage section mentions Lib_SecureMerkleTrie | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_RLPReader | unmatched — not counted | — | Coverage section mentions Lib_RLPReader | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_RLPWriter | unmatched — not counted | — | Coverage section mentions Lib_RLPWriter | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_OVMCodec | unmatched — not counted | — | Code quality recommendation mentions Lib_OVMCodec | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_BytesUtils | unmatched — not counted | — | Code quality recommendation mentions Lib_BytesUtils | no |
| 2020_10-Rollup-TrailOfBits.pdf | Lib_RingBuffer | unmatched — not counted | — | Code quality recommendation mentions Lib_RingBuffer | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | OVM_ECDSAContractAccount | unmatched — not counted | — | listed in scope section | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | OVM_ProxyEOA | unmatched — not counted | — | listed in scope section | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | OVM_SequencerEntrypoint | unmatched — not counted | — | mentioned in system overview and findings | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | OVM_ProxySequencerEntrypoint | unmatched — not counted | — | mentioned in system overview | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | OVM_ExecutionManager | unmatched — not counted | — | mentioned in system overview and assumptions | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | OVM_CanonicalTransactionChain | unmatched — not counted | — | mentioned in system overview | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | Lib_RLPReader | unmatched — not counted | — | listed in contract map | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | Lib_BytesUtils | unmatched — not counted | — | listed in contract map and findings | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | Lib_OVMCodec | unmatched — not counted | — | listed in contract map | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | Lib_RLPWriter | unmatched — not counted | — | listed in contract map and findings | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | Lib_ECDSAUtils | unmatched — not counted | — | listed in contract map | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | Lib_SafeExecutionManagerWrapper | unmatched — not counted | — | listed in contract map | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | iOVM_ECDSAContractAccount | unmatched — not counted | — | listed in contract map | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | Lib_Bytes32Utils | unmatched — not counted | — | mentioned in finding B07 | no |
| 2020_11-Dapphub-ECDSA_Wallet.pdf | Lib_SafeExecutionManagerInteraction | unmatched — not counted | — | mentioned in assumptions | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_ExecutionManager | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_MerkleTrie | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_FraudVerifier | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_CanonicalTransactionChain | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_ECDSAContractAccount | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Abs_FraudContributor | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_BondManager | unmatched — not counted | — | excluded from scope but mentioned | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_ProxySequencerEntrypoint | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_SequencerEntrypoint | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_StateTransitioner | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_StateManager | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Abs_L1TokenGateway | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Abs_L2DepositedToken | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L2ToL1MessagePasser | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L2CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L1CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_StateCommitmentChain | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_ProxyEOA | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_ResolvedDelegateProxy | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_AddressManager | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_DeployerWhitelist | unmatched — not counted | — | excluded from scope but mentioned | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L1ETHGateway | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L1MultiMessageRelayer | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L2DepositedERC20 | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_ETH | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Abs_BaseCrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_ChainStorageContainer | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_RingBuffer | unmatched — not counted | — | listed in scope but deprecated | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_MerkleTree | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_BytesUtils | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_RLPWriter | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_RLPReader | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_Bytes32Utils | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_OVMCodec | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_Math | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | Lib_SafeExecutionManagerWrapper | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | iOVM_StateCommitmentChain | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | iOVM_ChainStorageContainer | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | iOVM_L2ToL1MessagePasser | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | iOVM_L1TokenGateway | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | iOVM_BondManager | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | iOVM_FraudVerifier | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_Proposer | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_SafetyChecker | unmatched — not counted | — | excluded from scope but mentioned | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_DecompressionPrecompileAddress | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L2MessageRelayer | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L2BatchMessageRelayer | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_L1MessageSender | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_Sequencer | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_StateTransitionerFactory | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | UniswapV2ERC20 | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_ECDSAContract | unmatched — not counted | — | listed in scope | no |
| 2021_03-OVM_and_Rollup-OpenZeppelin.pdf | OVM_ProxySequencerEntrypoiny | unmatched — not counted | — | typo in report, likely OVM_ProxySequencerEntrypoint | no |
| 2021_03-SafetyChecker-ConsenSysDiligence.pdf | OVM_SafetyChecker | unmatched — not counted | — | listed in scope | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1StandardBridge | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L2StandardBridge | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1OptimismPortal | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L2OutputOracle | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | CrossDomainMessenger | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | OptimismMintableERC20 | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | StandardBridge | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-OpNode-TrailOfBits.pdf | WithdrawalsRelay | unmatched — not counted | — | listed in scope and finding target | no |
| 2022_05-OpNode-TrailOfBits.pdf | L2CheckpointOracle | unmatched — not counted | — | listed in scope and finding target | no |
| 2022_05-OpNode-TrailOfBits.pdf | DepositFeed | unmatched — not counted | — | listed in scope and finding target | no |
| 2022_05-OpNode-TrailOfBits.pdf | L1Block | unmatched — not counted | — | listed in scope and finding target | no |
| 2022_05-OpNode-TrailOfBits.pdf | OptimismPortal | unmatched — not counted | — | mentioned in finding 1 and 11 as a contract | no |
| 2022_08-Bedrock_GoLang-SigmaPrime.pdf | op-node | unmatched — not counted | — | listed in scope as the rollup node component | no |
| 2022_08-Bedrock_GoLang-SigmaPrime.pdf | op-geth | unmatched — not counted | — | listed in scope as the reference optimistic geth implementation | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1ChugSplashProxy | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Lib_PredeployAddresses | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1StandardBridge | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2OutputOracle | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | OptimismPortal | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | ResourceMetering | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2StandardBridge | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2ToL1MessagePasser | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Hashing | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | ProxyAdmin | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Semver | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | StandardBridge | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1ERC721Bridge | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2ERC721Bridge | unmatched — not counted | — | listed in scope | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | GasPriceOracle | unmatched — not counted | — | listed in scope and detailed findings | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | OptimismPortal | unmatched — not counted | — | listed in scope and project coverage | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | ResourceMetering | unmatched — not counted | — | listed in scope and project coverage | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | L2OutputOracle | unmatched — not counted | — | listed in scope and project coverage | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | AddressAliasHelper | unmatched — not counted | — | listed in scope and project coverage | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | Burn | unmatched — not counted | — | listed in scope and project coverage | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | Encoding | unmatched — not counted | — | listed in scope and project coverage | no |
| 2022_11-Invariant_Testing-TrailOfBits.pdf | Hashing | unmatched — not counted | — | listed in scope and project coverage | no |
| 2022_12-DepositTransaction-RuntimeVerification.pdf | OptimismPortal | unmatched — not counted | — | The target for this engagement has been the depositTransaction function in the OptimismPortal contract. | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | SystemConfig | unmatched — not counted | — | listed in Project Coverage section as L1 SystemConfig contract | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | OptimismPortal | unmatched — not counted | — | listed in Project Coverage section and detailed finding TOB-OPTCW-1 | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | ResourceMetering | unmatched — not counted | — | mentioned in Coverage Limitations as updated commit | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L2ToL1MessagePasser | unmatched — not counted | — | mentioned in Coverage Limitations as updated commit | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L2OutputOracle | unmatched — not counted | — | mentioned in Coverage Limitations as updated commit | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | MerkleTrie | unmatched — not counted | — | mentioned in Coverage Limitations as refactored library | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | CrossDomainMessenger | unmatched — not counted | — | mentioned in Coverage Limitations as minor changes | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L1Block | unmatched — not counted | — | mentioned in Project Coverage section as predeployed L2 contract | no |
| 2023_12_SuperchainConfigUpgrade_Trust.pdf | SuperchainConfig | unmatched — not counted | — | listed in scope | no |
| 2023_12_SuperchainConfigUpgrade_Trust.pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2023_12_SuperchainConfigUpgrade_Trust.pdf | L1ERC721Bridge | unmatched — not counted | — | listed in scope | no |
| 2023_12_SuperchainConfigUpgrade_Trust.pdf | L1StandardBridge | unmatched — not counted | — | listed in scope | no |
| 2023_12_SuperchainConfigUpgrade_Trust.pdf | OptimismPortal | unmatched — not counted | — | listed in scope | no |
| 2023_12_SuperchainConfigUpgrade_Trust.pdf | CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2023_12_SuperchainConfigUpgrade_Trust.pdf | ERC721Bridge | unmatched — not counted | — | listed in scope | no |
| 2023_12_SuperchainConfigUpgrade_Trust.pdf | StandardBridge | unmatched — not counted | — | listed in scope | no |
| 2024_02-MCP_L1-Cantina.pdf | L1CrossDomainMessenger | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | L2CrossDomainMessenger | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | CrossDomainMessenger | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | FeeVault | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | BaseFeeVault | unmatched — not counted | — | inherits from FeeVault | no |
| 2024_02-MCP_L1-Cantina.pdf | L1FeeVault | unmatched — not counted | — | inherits from FeeVault | no |
| 2024_02-MCP_L1-Cantina.pdf | SequencerFeeVault | unmatched — not counted | — | inherits from FeeVault | no |
| 2024_02-MCP_L1-Cantina.pdf | SystemConfig | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | OptimismPortal | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | L2OutputOracle | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | OptimismMintableERC20Factory | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | L1StandardBridge | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | L1ERC721Bridge | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | ERC721Bridge | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | L2ERC721Bridge | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | L2StandardBridge | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | DisputeGameFactory | unmatched — not counted | — | mentioned in deployImplementations | no |
| 2024_02-MCP_L1-Cantina.pdf | PreimageOracle | unmatched — not counted | — | mentioned in deployImplementations | no |
| 2024_02-MCP_L1-Cantina.pdf | Mips | unmatched — not counted | — | mentioned in deployImplementations | no |
| 2024_02-MCP_L1-Cantina.pdf | ResourceMetering | unmatched — not counted | — | mentioned in findings context | no |
| 2024_02-MCP_L1-Cantina.pdf | SuperchainConfig | unmatched — not counted | — | mentioned in findings context | no |
| 2024_05-FaultProofs-Sherlock.pdf | OptimismPortal2 | unmatched — not counted | — | mentioned in scope and findings | no |
| 2024_05-FaultProofs-Sherlock.pdf | FaultDisputeGame | unmatched — not counted | — | mentioned in scope and findings | no |
| 2024_05-FaultProofs-Sherlock.pdf | DisputeGameFactory | unmatched — not counted | — | mentioned in scope and findings | no |
| 2024_05-FaultProofs-Sherlock.pdf | AnchorStateRegistry | unmatched — not counted | — | mentioned in scope and findings | no |
| 2024_05-FaultProofs-Sherlock.pdf | DelayedWETH | unmatched — not counted | — | mentioned in scope and findings | no |
| 2024_05-FaultProofs-Sherlock.pdf | LibUDT | unmatched — not counted | — | mentioned in findings | no |
| 2024_05-FaultProofs-Sherlock.pdf | GameTypes | unmatched — not counted | — | mentioned in findings | no |
| 2024_12-DPM-MiloTruck.pdf | DeputyPauseModule | unmatched — not counted | — | listed in scope and findings | no |
| 2024_12-DPM-MiloTruck.pdf | SelfAuthorized | unmatched — not counted | — | mentioned in finding L-2 context | no |
| 2024_12-DPM-MiloTruck.pdf | Executor | unmatched — not counted | — | mentioned in finding I-1 context | no |
| 2024_12-DPM-MiloTruck.pdf | IDeputyGuardianModule | unmatched — not counted | — | interface referenced in DeputyPauseModule | no |
| 2025_01-IRI-OffbeatLabs.pdf | OptimismPortal2 | unmatched — not counted | — | listed in scope | no |
| 2025_01-IRI-OffbeatLabs.pdf | OptimismPortalInterop | unmatched — not counted | — | listed in scope | no |
| 2025_01-IRI-OffbeatLabs.pdf | AnchorStateRegistry | unmatched — not counted | — | listed in scope | no |
| 2025_01-IRI-OffbeatLabs.pdf | DelayedWETH | unmatched — not counted | — | listed in scope | no |
| 2025_01-IRI-OffbeatLabs.pdf | FaultDisputeGame | unmatched — not counted | — | listed in scope | no |
| 2025_01-IRI-OffbeatLabs.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2025_01-IRI-OffbeatLabs.pdf | Types | unmatched — not counted | — | listed in scope | no |
| 2025_01-IRI-OffbeatLabs.pdf | PortalErrors | unmatched — not counted | — | listed in scope | no |
| 2025_01-IRI-OffbeatLabs.pdf | OPContractsManager | unmatched — not counted | — | listed in scope | no |
| 2025_02-Upgrade13-Spearbit.pdf | SystemConfig | unmatched — not counted | — | Listed in findings context and scope | no |
| 2025_02-Upgrade13-Spearbit.pdf | AnchorStateRegistry | unmatched — not counted | — | Listed in findings context and scope | no |
| 2025_02-Upgrade13-Spearbit.pdf | FaultDisputeGame | unmatched — not counted | — | Listed in findings context and scope | no |
| 2025_02-Upgrade13-Spearbit.pdf | OPContractsManager | unmatched — not counted | — | Listed in findings context and scope | no |
| 2025_02-Upgrade13-Spearbit.pdf | OptimismPortal2 | unmatched — not counted | — | Listed in findings context and scope | no |
| 2025_02-Upgrade13-Spearbit.pdf | DisputeGameFactory | unmatched — not counted | — | Listed in findings context and scope | no |
| 2025_02-Upgrade13-Spearbit.pdf | SuperchainConfig | unmatched — not counted | — | Listed in findings context and scope | no |
| 2025_02-Upgrade13-Spearbit.pdf | ProtocolVersions | unmatched — not counted | — | Listed in findings context and scope | no |
| 2025_02-Upgrade13-Spearbit.pdf | DelayedWETH | unmatched — not counted | — | Listed in findings context and scope | no |
| 2025_02-Upgrade13-Spearbit.pdf | L1StandardBridge | unmatched — not counted | — | Listed in findings context and scope | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | CrossL2Inbox | unmatched — not counted | — | mentioned in findings context and recommendations | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | ETHLiquidity | unmatched — not counted | — | mentioned in findings context and recommendations | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | L1BlockInterop | unmatched — not counted | — | mentioned in findings context and recommendations | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | L2ToL2CrossDomainMessenger | unmatched — not counted | — | mentioned in findings context and recommendations | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | OptimismPortal2 | unmatched — not counted | — | mentioned in findings context and recommendations | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | OptimismPortalInterop | unmatched — not counted | — | mentioned in findings context and recommendations | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | SharedLockbox | unmatched — not counted | — | mentioned in findings context and recommendations | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | SuperchainConfig | unmatched — not counted | — | mentioned in findings context and recommendations | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | SuperchainConfigInterop | unmatched — not counted | — | mentioned in findings context and recommendations | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | SuperchainERC20 | unmatched — not counted | — | mentioned in findings context and recommendations | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | SuperchainWETH | unmatched — not counted | — | mentioned in findings context and recommendations | no |
| 2025_03-Interop-Contracts-Spearbit.pdf | SystemConfig | unmatched — not counted | — | mentioned in findings context and recommendations | no |
| 2025_04-op-program-blob-handling-aleph_v.pdf | PreImageOracle | unmatched — not counted | — | The onchain PreImageOracle.sol was reviewed for how it handles and validates blob data | no |
| 2025_05-Interop-Portal-Spearbit.pdf | SuperchainConfig | unmatched — not counted | — | Context: SuperchainConfig.sol#L69, SuperchainConfig.sol#L78 | no |
| 2025_05-Interop-Portal-Spearbit.pdf | Encoding | unmatched — not counted | — | Context: Encoding.sol#L237-L247 | no |
| 2025_05-Interop-Portal-Spearbit.pdf | OptimismPortal2 | unmatched — not counted | — | Context: OptimismPortal2.sol#L405-L434, OptimismPortal2.sol#L296-L300 | no |
| 2025_05-Interop-Portal-Spearbit.pdf | SystemConfig | unmatched — not counted | — | Context: SystemConfig.sol#L488-L491 | no |
| 2025_05-Interop-Portal-Spearbit.pdf | DeputyPauseModule | unmatched — not counted | — | Context: DeputyPauseModule.sol#L82-L84, DeputyPauseModule.sol#L98 | no |
| 2025_05-Interop-Portal-Spearbit.pdf | ProxyAdminOwnedBase | unmatched — not counted | — | Context: ProxyAdminOwnedBase.sol#L41-L72 | no |
| 2025_05-Interop-Portal-Spearbit.pdf | AnchorStateRegistry | unmatched — not counted | — | Context: AnchorStateRegistry.sol#L181-L190, AnchorStateRegistry.sol#L125-L146 | no |
| 2025_05-Interop-Portal-Spearbit.pdf | FaultDisputeGame | unmatched — not counted | — | Context: FaultDisputeGame.sol#L1005-L1007, FaultDisputeGame.sol#L957-L961 | no |
| 2025_05-Interop-Portal-Spearbit.pdf | L1ERC721Bridge | unmatched — not counted | — | Context: L1ERC721Bridge.sol#L28-L40 | no |
| 2025_05-Interop-Portal-Spearbit.pdf | OPContractsManager | unmatched — not counted | — | Context: OPContractsManager.sol#L675, OPContractsManager.sol#L717 | no |
| 2025_05-Interop-Portal-Spearbit.pdf | DisputeGameFactory | unmatched — not counted | — | Context: DisputeGameFactory.sol#L122-L123 | no |
| 2025_05-Interop-Portal-Spearbit.pdf | ResolvedDelegateProxy | unmatched — not counted | — | mentioned in ProxyAdminOwnedBase finding | no |
| 2025_05-Interop-Portal-Spearbit.pdf | AddressManager | unmatched — not counted | — | mentioned in ProxyAdminOwnedBase finding | no |
| 2025_05-Interop-Portal-Spearbit.pdf | IETHLockbox | unmatched — not counted | — | interface referenced in SystemConfig | no |
| 2025_05-Interop-Portal-Spearbit.pdf | IAnchorStateRegistry | unmatched — not counted | — | interface referenced in OptimismPortal2 | no |
| 2025_05-Interop-Portal-Spearbit.pdf | ISuperchainConfig | unmatched — not counted | — | interface referenced in SystemConfig | no |
| 2025_05-Interop-Portal-Spearbit.pdf | IOptimismPortal2 | unmatched — not counted | — | interface referenced in SystemConfig | no |
| 2025_05-Interop-Portal-Spearbit.pdf | IFaultDisputeGame | unmatched — not counted | — | interface referenced in AnchorStateRegistry | no |
| 2025_05-Interop-Portal-Spearbit.pdf | IProxyAdmin | unmatched — not counted | — | interface referenced in ProxyAdminOwnedBase | no |
| 2025_05-Interop-Portal-Spearbit.pdf | IAddressManager | unmatched — not counted | — | interface referenced in ProxyAdminOwnedBase | no |
| 2025_05-Interop-Portal-Spearbit.pdf | EthLockbox | unmatched — not counted | — | referenced in OptimismPortal2 finding | no |
| 2025_05-Upgrade16-Spearbit.pdf | ETHLockbox | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | L1ERC721Bridge | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | L1StandardBridge | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | OPContractsManager | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | OptimismPortal2 | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | ProtocolVersions | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | SuperchainConfig | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | SystemConfig | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | MIPS64 | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | AnchorStateRegistry | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | DelayedWETH | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | DisputeGameFactory | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | SuperFaultDisputeGame | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | SuperPermissionedDisputeGame | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | Encoding | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | Hashing | unmatched — not counted | — | listed in scope | no |
| 2025_05-Upgrade16-Spearbit.pdf | DeputyPauseModule | unmatched — not counted | — | listed in scope | no |
| 2025_07-VerifyOPCM-Spearbit.pdf | VerifyOPCM | unmatched — not counted | — | listed in scope | no |
| 2025_07-VerifyOPCM-Spearbit.pdf | OPContractsManager | unmatched — not counted | — | listed in scope | no |
| 2025_09-U16a-Spearbit.pdf | OPContractsManager | unmatched — not counted | — | listed in scope table | no |
| 2025_09-U16a-Spearbit.pdf | SuperchainConfig | unmatched — not counted | — | mentioned in findings | no |
| 2025_09-U16a-Spearbit.pdf | SemverComp | unmatched — not counted | — | mentioned in findings | no |
| 2025_09-U16a-Spearbit.pdf | AnchorStateRegistry | unmatched — not counted | — | mentioned in findings | no |
| 2025_09-U16a-Spearbit.pdf | DelayedWETH | unmatched — not counted | — | mentioned in findings | no |
| 2025_09-U16a-Spearbit.pdf | DisputeGame | unmatched — not counted | — | mentioned in findings | no |
| 2025_09-U16a-Spearbit.pdf | DisputeGameFactory | unmatched — not counted | — | mentioned in findings | no |
| 2025_09-U16a-Spearbit.pdf | SystemConfig | unmatched — not counted | — | listed in scope table | no |
| 2025_09-U16a-Spearbit.pdf | OptimismPortal2 | unmatched — not counted | — | listed in scope table | no |
| 2025_09-U16a-Spearbit.pdf | ETHLockbox | unmatched — not counted | — | mentioned in findings | no |
| 2025_09-U16a-Spearbit.pdf | OptimismPortalInterop | unmatched — not counted | — | mentioned in findings | no |
| 2025_09-U16a-Spearbit.pdf | ProxyAdmin | unmatched — not counted | — | mentioned in findings | no |
| 2025_09-U16a-Spearbit.pdf | ProtocolVersions | unmatched — not counted | — | mentioned in findings | no |
| 2025_09-U16a-Spearbit.pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in scope table | no |
| 2025_09-U16a-Spearbit.pdf | L1StandardBridge | unmatched — not counted | — | listed in scope table | no |
| 2025_09-U16a-Spearbit.pdf | L1ERC721Bridge | unmatched — not counted | — | listed in scope table | no |
| 2025_09-U16a-Spearbit.pdf | OptimismMintableERC20Factory | unmatched — not counted | — | mentioned in findings | no |
| 2025_09-U16a-Spearbit.pdf | PermissionedDisputeGame | unmatched — not counted | — | mentioned in findings | no |
| 2025_09-U16a-Spearbit.pdf | MIPS64State | unmatched — not counted | — | listed in scope table | no |
| 2025_09-U16a-Spearbit.pdf | MIPS64Syscalls | unmatched — not counted | — | listed in scope table | no |
| 2025_09-U16a-Spearbit.pdf | MIPS64 | unmatched — not counted | — | listed in scope table | no |
| 2025_10-U17-Spearbit.pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | L1ERC721Bridge | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | L1StandardBridge | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | OPContractsManager | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | OptimismPortal2 | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | SuperchainConfig | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | SystemConfig | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | GasPriceOracle | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | L1Block | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | MIPS64 | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | MIPS64Instructions | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | MIPS64State | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | DisputeGameFactory | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | FaultDisputeGame | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | PermissionedDisputeGame | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | Types | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | DevFeatures | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | Encoding | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | OptimismMintableERC20 | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_10-U17-Spearbit.pdf | OptimismMintableERC20Factory | unmatched — not counted | — | listed in file hashes appendix | no |
| 2025_11-Custom-Gas-Token-Spearbit.pdf | DeployConfig | unmatched — not counted | — | listed in scope | no |
| 2025_11-Custom-Gas-Token-Spearbit.pdf | DeployOPChain | unmatched — not counted | — | listed in scope | no |
| 2025_11-Custom-Gas-Token-Spearbit.pdf | L2Genesis | unmatched — not counted | — | listed in scope | no |
| 2025_11-Custom-Gas-Token-Spearbit.pdf | OPContractsManager | unmatched — not counted | — | listed in scope | no |
| 2025_11-Custom-Gas-Token-Spearbit.pdf | OptimismPortal2 | unmatched — not counted | — | listed in scope | no |
| 2025_11-Custom-Gas-Token-Spearbit.pdf | SystemConfig | unmatched — not counted | — | listed in scope | no |
| 2025_11-Custom-Gas-Token-Spearbit.pdf | L1BlockCGT | unmatched — not counted | — | listed in scope | no |
| 2025_11-Custom-Gas-Token-Spearbit.pdf | L2ToL1MessagePasserCGT | unmatched — not counted | — | listed in scope | no |
| 2025_11-Custom-Gas-Token-Spearbit.pdf | LiquidityController | unmatched — not counted | — | listed in scope | no |
| 2025_11-Custom-Gas-Token-Spearbit.pdf | NativeAssetLiquidity | unmatched — not counted | — | listed in scope | no |
| 2025_11-Rev-Sharing-Contracts-Upgrader.pdf | FeeSplitterSetup | unmatched — not counted | — | listed in scope | no |
| 2025_11-Rev-Sharing-Contracts-Upgrader.pdf | FeeVaultUpgrader | unmatched — not counted | — | listed in scope | no |
| 2025_11-Rev-Sharing-Contracts-Upgrader.pdf | RevShareCommon | unmatched — not counted | — | listed in scope | no |
| 2025_11-Rev-Sharing-Contracts-Upgrader.pdf | RevShareContractsUpgrader | unmatched — not counted | — | listed in scope | no |
| 2026_05-U19-Cantina.pdf | L2ContractsManager | unmatched — not counted | — | Context in finding 3.1.1 | no |
| 2026_05-U19-Cantina.pdf | OPContractsManagerUtils | unmatched — not counted | — | Context in finding 3.1.2 | no |
| 2026_05-U19-Cantina.pdf | FeeVault | unmatched — not counted | — | Context in finding 3.1.3 | no |
| 2026_05-U19-Cantina.pdf | StandardValidatorUtils | unmatched — not counted | — | Context in findings 3.2.1, 3.2.3, 3.2.5, 3.2.6, 3.2.7, 3.2.9 | no |
| 2026_05-U19-Cantina.pdf | AnchorStateRegistry | unmatched — not counted | — | Context in findings 3.2.1, 3.3.1 | no |
| 2026_05-U19-Cantina.pdf | OPContractsManagerMigrationValidator | unmatched — not counted | — | Context in finding 3.2.2 | no |
| 2026_05-U19-Cantina.pdf | ETHLockbox | unmatched — not counted | — | Context in finding 3.2.2 | no |
| 2026_05-U19-Cantina.pdf | MIPS64 | unmatched — not counted | — | Context in finding 3.2.3 | no |
| 2026_05-U19-Cantina.pdf | SystemConfig | unmatched — not counted | — | Context in findings 3.2.4, 3.2.8 | no |
| 2026_05-U19-Cantina.pdf | SuperchainConfig | unmatched — not counted | — | Context in finding 3.2.5 | no |
| 2026_05-U19-Cantina.pdf | OptimismMintableERC20Factory | unmatched — not counted | — | Context in finding 3.2.6 | no |
| 2026_05-U19-Cantina.pdf | OptimismPortal2 | unmatched — not counted | — | Context in findings 3.2.7, 3.3.2 | no |
| 2026_05-U19-Cantina.pdf | OPContractsManagerStandardValidator | unmatched — not counted | — | Context in findings 3.2.8, 3.3.3 | no |
| 2026_05-U19-Cantina.pdf | OPContractsManagerV2 | unmatched — not counted | — | Context in finding 3.2.9 | no |
| 2026_05-U19-Cantina.pdf | PermissionedDisputeGame | unmatched — not counted | — | Context in finding 3.2.10 | no |
| 2026_05-U19-Cantina.pdf | FaultDisputeGame | unmatched — not counted | — | Context in findings 3.2.10, 3.3.2 | no |
| 2026_05-U19-Cantina.pdf | ZKDisputeGame | unmatched — not counted | — | Context in finding 3.3.2 | no |
| 2026_06-Interop-L2-Contracts.pdf | CrossL2Inbox | unmatched — not counted | — | listed in scope | no |
| 2026_06-Interop-L2-Contracts.pdf | ETHLiquidity | unmatched — not counted | — | listed in scope | no |
| 2026_06-Interop-L2-Contracts.pdf | L2ToL2CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2026_06-Interop-L2-Contracts.pdf | SuperchainETHBridge | unmatched — not counted | — | listed in scope | no |
| 2026_06-Interop-L2-Contracts.pdf | Hashing | unmatched — not counted | — | listed in scope | no |
| 2026_06-Interop-L2-Contracts.pdf | TransientContext | unmatched — not counted | — | listed in scope | no |
| 2026_06-Interop-L2-Contracts.pdf | SafeSend | unmatched — not counted | — | listed in scope | no |
| 2026_06-OPCMv2-Cantina.pdf | OPContractsManagerContainer | unmatched — not counted | — | listed in scope | no |
| 2026_06-OPCMv2-Cantina.pdf | OPContractsManagerMigrator | unmatched — not counted | — | listed in scope | no |
| 2026_06-OPCMv2-Cantina.pdf | OPContractsManagerUtils | unmatched — not counted | — | listed in scope | no |
| 2026_06-OPCMv2-Cantina.pdf | OPContractsManagerUtilsCaller | unmatched — not counted | — | listed in scope | no |
| 2026_06-OPCMv2-Cantina.pdf | OPContractsManagerV2 | unmatched — not counted | — | listed in scope | no |
| 2026_06-OPCMv2-Cantina.pdf | VerifyOPCM | unmatched — not counted | — | listed in scope | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1StandardBridge | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L2StandardBridge | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1OptimismPortal | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L2OptimismPortal | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1CrossDomainMessenger | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L2CrossDomainMessenger | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1OutputOracle | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | OptimismMintableERC20 | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | StandardBridge | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | CrossDomainMessenger | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | OptimismPortal | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | OutputOracle | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1ChugSplashProxy | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Lib_PredeployAddresses | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1StandardBridge | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2OutputOracle | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | OptimismPortal | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | ResourceMetering | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2StandardBridge | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2ToL1MessagePasser | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Hashing | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Proxy | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | ProxyAdmin | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Semver | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | StandardBridge | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1ERC721Bridge | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2ERC721Bridge | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 21 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 34
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 413 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=28, low=4, medium=2
- Match method counts: n/a

Zero-match audit list:

- [29797] The staking contract ([source](https://github.com/ethereum-optimism/optimism/pull/19192/changes#diff-dfad1cdbadfef03b98f7bbadd22222fbcc4ea2a0f3dbcc21f21c645758dffaa0R17), [audit report]()), `PolicyEngineStaking`, lives at `packages/contracts-bedrock/src/periphery/staking/PolicyEngineStaking.sol` in the Optimism monorepo (the "Experimental Smart Contract"). It is intentionally non-upgradeable and classified as a periphery contract, not part of the core OP Stack.
- [29799] The audit results [are published here]().
- [29800] 2020_10-Rollup-TrailOfBits.pdf
- [29801] 2020_11-Dapphub-ECDSA_Wallet.pdf
- [29802] 2021_03-OVM_and_Rollup-OpenZeppelin.pdf
- [29803] 2021_03-SafetyChecker-ConsenSysDiligence.pdf
- [29804] 2022_05-Bedrock_Contracts-Zeppelin.pdf
- [29805] 2022_05-OpNode-TrailOfBits.pdf
- [29806] 2022_08-Bedrock_GoLang-SigmaPrime.pdf
- [29807] 2022_09-Bedrock_and_Periphery-Zeppelin.pdf
- [29809] 2022_11-Invariant_Testing-TrailOfBits.pdf
- [29810] 2022_12-DepositTransaction-RuntimeVerification.pdf
- [29811] 2023_01-Bedrock_Updates-TrailOfBits.pdf
- [29812] 2023_12_SuperchainConfigUpgrade_Trust.pdf
- [29813] 2024_02-MCP_L1-Cantina.pdf
- [29814] 2024_05-FaultProofs-Sherlock.pdf
- [29819] 2024_12-DPM-MiloTruck.pdf
- [29821] 2025_01-IRI-OffbeatLabs.pdf
- [29822] 2025_02-Upgrade13-Spearbit.pdf
- [29823] 2025_03-Interop-Contracts-Spearbit.pdf
- [29826] 2025_04-op-program-blob-handling-aleph_v.pdf
- [29828] 2025_05-Interop-Portal-Spearbit.pdf
- [29829] 2025_05-Upgrade16-Spearbit.pdf
- [29831] 2025_06-Spearbit-Cannon-fix-review.pdf
- [29832] 2025_07-VerifyOPCM-Spearbit.pdf
- [29833] 2025_09-U16a-Spearbit.pdf
- [29835] 2025_10-U17-Spearbit.pdf
- [29836] 2025_11-Custom-Gas-Token-Spearbit.pdf
- [29837] 2025_11-Rev-Sharing-Contracts-Upgrader.pdf
- [29840] 2026_05-U19-Cantina.pdf
- [29841] 2026_06-Interop-L2-Contracts.pdf
- [29842] 2026_06-OPCMv2-Cantina.pdf
- [29847] 2022_05-Bedrock_Contracts-Zeppelin.pdf
- [29850] 2022_09-Bedrock_and_Periphery-Zeppelin.pdf

Fork inheritance lineage and inherited audits are included when available.
