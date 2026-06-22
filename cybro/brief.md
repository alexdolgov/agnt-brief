# Agentic Audit Brief: Cybro

⚠️ Lifecycle status: UNKNOWN - TVL changed 0.0% over 90 days

## Project Overview

- Project: Cybro (`cybro`)
- Website: [https://app.cybro.io](https://app.cybro.io)
- Lifecycle: unknown (Tier 0, 87% below peak)
- Generated: 2026-06-21T08:56:25.705Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, blast, bsc, ethereum, unichain
- Contract surface: 34 unique implementations (101 raw deployments)
- DeFi Llama TVL: $103,899.90
- On-chain TVL (included contracts): $1,890,125.97
- TVL by chain: Blast $1,870,698.27 | Arbitrum $17,703.30 | Base $1,724.39

## Project Description

Cybro is a multi-chain yield aggregator that deploys user deposits into various DeFi strategies (lending, liquidity provision, staking) through a system of vaults and indexes. It optimizes yields across protocols like Aave, Compound, and Stargate, while managing fees and governance via dedicated infrastructure.

### Architecture

The Cybro family is the central hub, with vaults and indexes relying on shared FeeProvider and ProtocolFeeCollector contracts for fee management. Staking contracts (CYBROStaking, LockedCYBRO) interact with the CYBRO token and may feed into vault strategies, while LPManager contracts govern liquidity provision across DEXs. The Vaults family appears to be an extension of the core vault system, reusing OneClickIndex infrastructure.

## Contract Surface Quality

- Indexed contracts: 753; live-surface contracts included: 101 (100 live, 1 unknown).
- Excluded by liveness: 118 inactive, 534 singleton, 0 uninitialized.
- Deployment units: 14/338 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 3/28.

## Audit Coverage Summary

- Verified implementations audited: 15/23 (65.2%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 1
- Unverified implementations: 11
- Unique implementations: 34
- Raw deployments: 101
- Audits discovered: 25
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): $1,871,751.16
- Latest audit: 2026-03 (fresh)
- Staleness: 8 fresh, 10 aging, 3 stale, 4 unknown
- Tier 1 coverage: 8.7% (Code4rena)
- Note: This protocol is classified as [unknown]. ASD of $1,871,751.16 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pessimistic | Tier 2 | 8 | 34.8% | 2026-02 |
| unknown | Tier 2 | 6 | 26.1% | 2025-12 |
| Code4rena | Tier 1 | 2 | 8.7% | 2025-10 |
| CertiK | Tier 2 | 1 | 4.3% | 2025-02 |
| yAudit | Tier 2 | 1 | 4.3% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LidoVault | core_logic | arbitrum | unit-41956 | [`0xbde529...a2f4b1`](./contracts/arbitrum-42161/0xbde5296ea786a12c4bfd60408063816e36a2f4b1/) | ✅ Audited |
| BlasterSwapV2Vault | core_logic | blast | unit-42031 | [`0xbfb18e...aedfea`](./contracts/blast-81457/0xbfb18eda8961ee33e38678caf2bceb2d23aedfea/) | ✅ Audited |
| LidoVault | core_logic | base | unit-41813 | [`0x84fbcd...c398b7`](./contracts/base-8453/0x84fbcde24b75f3d45863e82282683dff16c398b7/) | ✅ Audited |
| StargateVault | core_logic | arbitrum | unit-41906 | [`0x320cd9...db5d95`](./contracts/arbitrum-42161/0x320cd9d00961fb45857a043efea77dc6b9db5d95/) | ✅ Audited |
| BlasterSwapV3Vault | core_logic | blast | unit-42047 | [`0xe472cc...eaaab2`](./contracts/blast-81457/0xe472ccb182a51c589034957cd6291d0b64eaaab2/) | ✅ Audited |
| CYBROOFT | unknown | bsc | n/a | 2 deployments: ethereum `0xd58826...9aff07`; bsc [`0xa9972b...1d2ad6`](./contracts/bsc-56/0xa9972b1fac35fdd8cbdbaa315a002b2ad91d2ad6/) | ✅ Audited |
| CYBROStaking | unknown | blast | n/a | 3 deployments: blast [`0x03b7be...152707`](./contracts/blast-81457/0x03b7becb964ab0ebad805683d14f338504152707/); blast `0x13a2a1...3eeaa5`; blast `0xd01d2b...ada688` | ✅ Audited |
| LockedCYBRO | unknown | blast | n/a | 2 deployments: blast [`0x2f3af6...07e8a2`](./contracts/blast-81457/0x2f3af664ecdbc66f832e12f0df38180b2807e8a2/); blast `0x9ac9b1...f66919` | ✅ Audited |
| LockedCYBROStaking | unknown | blast | n/a | 3 deployments: blast [`0x3e7f5c...42b75f`](./contracts/blast-81457/0x3e7f5cf6372b2b1f029c7294190057828f42b75f/); blast `0xc222a3...ea3a0f`; blast `0xe27c6d...d90003` | ✅ Audited |
| LPManager | governance | arbitrum | n/a | 33 deployments: ethereum `0x0ea8ef...aa6868`; unichain `0x7ad4e1...74189b`; unichain `0xdb6564...203d0b`; base `0x7a37c6...185c7b`; base `0xb3da21...85936f`; arbitrum [`0x03d2fa...7f4c0f`](./contracts/arbitrum-42161/0x03d2fa92d845da3f13d27885d6269ed4f67f4c0f/); arbitrum `0x0964b7...19e998`; arbitrum `0x0a3066...2f96df`; arbitrum `0x128452...04a3eb`; arbitrum `0x22b2ad...d29e89`; arbitrum `0x258af6...af707a`; arbitrum `0x2dd169...958ded`; arbitrum `0x36cf76...418260`; arbitrum `0x38a8da...ece1e8`; arbitrum `0x471c8a...d65c20`; arbitrum `0x493307...d0a5bf`; arbitrum `0x4f6008...4e46cf`; arbitrum `0x5575fc...9560d2`; arbitrum `0x5c9d27...c46e44`; arbitrum `0x5ecb32...5b2f1b`; arbitrum `0x77948e...078ad4`; arbitrum `0x87154a...b07d1f`; arbitrum `0xa24cdc...1d3faf`; arbitrum `0xb1de2f...b07c20`; arbitrum `0xb3e370...338e96`; arbitrum `0xbd0704...a27c8e`; arbitrum `0xd18cd8...645941`; arbitrum `0xd1a5b9...22c604`; arbitrum `0xd20402...9b5123`; arbitrum `0xec1c20...3c14b3`; arbitrum `0xf06166...c55e5f`; arbitrum `0xf40148...c0abca`; arbitrum `0xf96928...930d1d` | ✅ Audited |
| PancakeV3AutoManager | governance | bsc | n/a | [`0x77369b...8a2f32`](./contracts/bsc-56/0x77369bbebd14e91a6688bf400d560c89f38a2f32/) | ✅ Audited |
| PancakeV3LPManager | governance | bsc | n/a | 2 deployments: bsc [`0x6ce9b6...3b4029`](./contracts/bsc-56/0x6ce9b6288bdf6091d4ce071a81a12e96103b4029/); bsc `0x9afb3e...62d5d3` | ✅ Audited |
| UniswapV3AutoManager | governance | arbitrum | n/a | [`0x2ce270...38574c`](./contracts/arbitrum-42161/0x2ce2701ad396982ef0bf2efb4d03a4d7c638574c/) | ✅ Audited |
| UniswapV3LPManager | governance | arbitrum | n/a | [`0x9a5921...2828f0`](./contracts/arbitrum-42161/0x9a592115fa75a1a53e45974e8810aedd212828f0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CYBROToken | token | blast | n/a | [`0x963eec...4ae4d5`](./contracts/blast-81457/0x963eec23618bbc8e1766661d5f263f18094ae4d5/) | ⚠️ Unaudited |
| SparkVault | core_logic | base | unit-41789 | [`0x578e72...f639c5`](./contracts/base-8453/0x578e7261b9d3c143700a735526bfd63713f639c5/) | ⚠️ Unaudited |
| AutoManager | governance | arbitrum | n/a | [`0x4aa185...12f281`](./contracts/arbitrum-42161/0x4aa185859b5ea4799029af65b89af6874812f281/) | ⚠️ Unaudited |
| CYBROOFTAdapter | adapter | blast | n/a | [`0x7bb6ca...c0304f`](./contracts/blast-81457/0x7bb6cac7e47e8149c4ef62b759ee8b2e56c0304f/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | unit-41721 | [`0x66e424...d716f6`](./contracts/ethereum-1/0x66e424337c0f888dccbcf2e0730a00a526d716f6/) | ⚠️ Unaudited |
| LPManagerV4 | governance | arbitrum | n/a | [`0x20f97f...75d9ad`](./contracts/arbitrum-42161/0x20f97f2323473cd91d610df2aa7a80083c75d9ad/) | ⚠️ Unaudited |
| SafeL2 | unknown | blast | unit-41979 | [`0x081295...f52e54`](./contracts/blast-81457/0x081295ac2c9b425af1c570b933925d44e3f52e54/) | ⚠️ Unaudited |
| SafeProxy | unknown | blast | n/a | [`0x4cc28b...fe406d`](./contracts/blast-81457/0x4cc28bc851e874a7187f71bed63daa3ec9fe406d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProtocolFeeCollector | unknown | arbitrum | n/a | 29 deployments: ethereum `0xd82870...51d6b9`; bsc `0xf40148...c0abca`; unichain `0x2d6f2a...f9b028`; unichain `0x38694d...35535b`; unichain `0x4164ca...fbcf71`; unichain `0x4f654e...893e66`; unichain `0x8c2187...801ff7`; unichain `0xc6ac03...5b486a`; unichain `0xfb8466...101348`; base `0x567103...0397a1`; base `0xd3bece...c79b13`; arbitrum [`0x01623a...2b066c`](./contracts/arbitrum-42161/0x01623abc8fb5fe01486e1a55c0c98a1b722b066c/); arbitrum `0x03ef21...cad110`; arbitrum `0x1081d9...5e30bd`; arbitrum `0x26b9f1...0df66d`; arbitrum `0x50d969...697abc`; arbitrum `0x5e3703...80b8a6`; arbitrum `0x69706d...929989`; arbitrum `0x84fbcd...c398b7`; arbitrum `0x9fd1e0...93a6ef`; arbitrum `0xb05961...2ec24e`; arbitrum `0xbf2922...75ce25`; arbitrum `0xc185fb...c1ecc3`; arbitrum `0xc75e10...84cdc1`; arbitrum `0xdb1874...2c86f0`; arbitrum `0xe22980...ff112b`; arbitrum `0xeb2538...5ef368`; arbitrum `0xedb9f6...debf85`; arbitrum `0xfd3be1...6ad744` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CompoundVault | core_logic | blast | unit-42045 | `0xdccde9...6faf9f` | ❓ Unverified |
| CompoundVault | core_logic | blast | unit-42003 | `0x567103...0397a1` | ❓ Unverified |
| AaveVault | core_logic | blast | unit-42051 | `0xf56dab...33797e` | ❓ Unverified |
| AaveVault | core_logic | blast | unit-42012 | `0x7458ac...0a7ee7` | ❓ Unverified |
| AaveVault | core_logic | blast | unit-42000 | `0x4f3da5...f5d6b1` | ❓ Unverified |
| CompoundVaultETH | core_logic | blast | unit-42022 | `0x9cc62e...4c3a3f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x50ef20...cf9ba0` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x64b6d0...a4641c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x690029...caffc3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xb985b4...ea7b39` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xba823d...946aa3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CYBRO One Click Lending Security Analysis by Pessimistic.pdf (also discovered via alternate URL)](https://github.com/cybro-io/dapp-contracts-audits/blob/main/CYBRO%20One%20Click%20Lending%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2024-10 | aging | Direct | contract_name | 0 | n/a |
| [CYBRO Security Analysis by Pessimistic.pdf (also discovered via alternate URL)](https://github.com/cybro-io/dapp-contracts-audits/blob/main/CYBRO%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2024-07 | aging | Direct | contract_name|n/a | 0 | n/a |
| [CYBRO Smart Contract Audit Report - QuillAudits.pdf (also discovered via alternate URL)](https://github.com/cybro-io/dapp-contracts-audits/blob/main/CYBRO%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2024-07 | aging | Direct | contract_name | 4 | high |
| [CYBRO Staking Security Analysis by Pessimistic.pdf (also discovered via alternate URL)](https://github.com/cybro-io/dapp-contracts-audits/blob/main/CYBRO%20Staking%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 8 | high |
| [Cybro Vault Smart Contract Audit - QuillAudits.pdf (also discovered via alternate URL)](https://github.com/cybro-io/dapp-contracts-audits/blob/main/Cybro%20Vault%20Smart%20Contract%20Audit%20-%20QuillAudits.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 3 | high |
| [Rendered PDF capture](https://cybro.io/legals/Cybro%20Privacy.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://cybro.io/legals/Cybro%20Terms%20of%20Use%20December%202025.pdf) | unknown | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [CertiK](https://skynet.certik.com/projects/cybro) | CertiK | Audit | 2025-02 | aging | Direct | contract_name | 2 | high |
| [Security Audits](https://cybro.gitbook.io/cybro/governance/security-audits.md) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 33 | medium |
| [Reports](https://cybro.gitbook.io/cybro/governance/reports.md) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Security report / 1st May 2024](https://cybro.gitbook.io/cybro/governance/reports/security-report-1st-may-2024.md) | unknown | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Security report / 29th May 2025](https://cybro.gitbook.io/cybro/governance/reports/security-report-29th-may-2025.md) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Security report / 9th July 2024](https://cybro.gitbook.io/cybro/governance/reports/security-report-9th-july-2024.md) | unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [- [Security report / 10th May 2024]()](https://cybro.gitbook.io/cybro/governance/reports/security-report-10th-may-2024.md) | unknown | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://cybro.io/legals/cybro-privacy.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://cybro.io/legals/cybro-terms-of-use.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [hexens-cybro-mar-26(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/hexens-cybro-mar-26(Final).pdf) | Hexens | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [Scope: <>](https://hexens.io/audit-reports/cybro-v3-v4-automation-mar-2026) | Hexens | Audit | 2026-03 | fresh | Direct | contract_name | 0 | n/a |
| [{% embed url="<>" %} (also discovered via alternate URL)](https://github.com/pessimistic-io/audits/blob/a27871ebd7f6e36d0f61604a8edf9e53be096473/CYBRO%20Liquidity%20manager%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2026-02 | fresh | Direct | contract_name | 61 | high |
| [{% embed url="<>" %}](https://github.com/pessimistic-io/audits/blob/5bafc9eb1003bcc443caa7282d381c752373a624/CYBRO%20LPManager%20Security%20Analysis%20by%20Pessimistic.pdf) | Code4rena | Contest | 2025-10 | fresh | Direct | contract_name | 56 | high |
| [{% embed url="<>" %} (also discovered via alternate URL)](https://github.com/pessimistic-io/audits/blob/cccca3bd4fedf5955fcf178fefd7b4ebb75de0a1/Cybro%20LidoVault%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2025-07 | fresh | Direct | contract_name|n/a | 2 | high |
| [{% embed url="<>" %}](https://skynet.certik.com/projects/cybro?auditId=CYBRO%20Token%20-%20Audit) | CertiK | Audit | 2025-02 | aging | Direct | contract_name | 2 | high |
| [CYBRO LPManager Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/CYBRO%20LPManager%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2025-10 | fresh | Direct | contract_name | 56 | high |
| [CYBRO LPManager Security Analysis by Pessimistic.pdf](https://github.com/cybro-io/dapp-contracts-audits/blob/main/CYBRO%20LPManager%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2025-10 | fresh | Direct | contract_name | 56 | high |
| [Cybro V3 Smart Contract Audit Report - QuillAudits.pdf](https://github.com/cybro-io/dapp-contracts-audits/blob/main/Cybro%20V3%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2025-03 | aging | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0x963eec...4ae4d5`](./contracts/blast-81457/0x963eec23618bbc8e1766661d5f263f18094ae4d5/) | CYBROToken | token | $1,870,031.92 | Verified native implementation with $1,870,031.92 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4aa185...12f281`](./contracts/arbitrum-42161/0x4aa185859b5ea4799029af65b89af6874812f281/) | AutoManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x7bb6ca...c0304f`](./contracts/blast-81457/0x7bb6cac7e47e8149c4ef62b759ee8b2e56c0304f/) | CYBROOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x20f97f...75d9ad`](./contracts/arbitrum-42161/0x20f97f2323473cd91d610df2aa7a80083c75d9ad/) | LPManagerV4 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 9 |
| standard_library | 9 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=11, medium=1
- Match method counts: extraction_exact=2232

Zero-match audit list:

- [12982] CYBRO One Click Lending Security Analysis by Pessimistic.pdf
- [12983] CYBRO Security Analysis by Pessimistic.pdf
- [12987] Rendered PDF capture
- [12988] Rendered PDF capture
- [12991] Reports
- [12992] Security report / 1st May 2024
- [12993] Security report / 29th May 2025
- [12994] Security report / 9th July 2024
- [12995] - [Security report / 10th May 2024]()
- [16256] Rendered PDF capture
- [16257] Rendered PDF capture
- [16265] hexens-cybro-mar-26(Final).pdf
- [16266] Scope: <>

Fork inheritance lineage and inherited audits are included when available.
