# Agentic Audit Brief: Stader

⚠️ Lifecycle status: UNKNOWN - TVL dropped 32.2% over 90 days

## Project Overview

- Project: Stader (`stader`)
- Website: [https://staderlabs.com](https://staderlabs.com)
- Lifecycle: unknown (Tier 0, 76.1% below peak)
- Generated: 2026-06-21T18:53:54.236Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 18 unique implementations (30 raw deployments)
- DeFi Llama TVL: $229,892,019.56
- On-chain TVL (included contracts): $0.00
- TVL by chain: Ethereum $0.00

## Project Description

Stader is a liquid staking protocol that allows users to stake ETH and receive a liquid token (ETHx) representing their staked position, while the protocol manages validators and distributes rewards. It aims to provide a decentralized and scalable staking infrastructure with features like socializing rewards and slashing protection.

### Architecture

The ETHx Liquid Staking family relies on the Governance family's TimelockController for secure, time-delayed execution of administrative actions such as upgrading core contracts. The VaultFactory, PermissionedPool, StaderOracle, ValidatorRegistry, and SocializingPool work together to manage staking operations, with the oracle providing critical data for reward calculations and validator status.

## Contract Surface Quality

- Indexed contracts: 84; live-surface contracts included: 30 (30 live, 0 unknown).
- Excluded by liveness: 46 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 2
- Unverified implementations: 15
- Unique implementations: 18
- Raw deployments: 30
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $0.00
- Latest audit: 2022-02 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $0.00 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MerkleDistributor | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x07751e...6d3754`](./contracts/ethereum-1/0x07751eed17f4217cdceed078322cd220236d3754/); ethereum `0x2eb1e2...11ebb6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SocializingPool | core_logic | ethereum | unit-43657 | 11 deployments: ethereum [`0x1de458...eab2a4`](./contracts/ethereum-1/0x1de458031bfbe5689ded5a8b9ed57e1e79eab2a4/); ethereum `0x4f4bfa...2fdcf1`; ethereum `0x7af473...3ee91f`; ethereum `0x84ffdc...b2c335`; ethereum `0x9d4c31...a1d6fc`; ethereum `0x9f0491...8193a7`; ethereum `0xa35b1b...00a15b`; ethereum `0xaf42d7...ecf5dd`; ethereum `0xcf5ea1...70d299`; ethereum `0xeda89e...bf763f`; ethereum `0xf64bae...c2a737` | ⚠️ Unaudited (bytecode match) |
| TimelockController | governance | ethereum | n/a | 2 deployments: ethereum [`0x1112d5...8068b9`](./contracts/ethereum-1/0x1112d5c55670cb5144bf36114c20a122908068b9/); ethereum `0x49bd99...3135b1` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x2b0cda...78845c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d1792...cb8935` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30d202...04d10f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45b977...489ff6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x525164...1386a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b32c2...13bfae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3f26b...0c5244` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5101f...ab8666` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb9582...89e8a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce95a2...891d7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf05dd...c5c36c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5a397...1e473e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefe048...9cd04e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf03a7e...b6b645` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf55644...870d77` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://kp5hfcaxs2prkdoscwibtrbjjddvoov3huhezsxknanxfaucm76a.arweave.net/U_pyiBeWnxUN0hWQGcQpSMdXOrs9DkzK6mgbcoKCZ_w) | unknown | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [Stader_Labs_LunaX_Contrracts_CosmWasm_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/CosmWasm%20Smart%20Contract%20Audits/Stader_Labs_LunaX_Contrracts_CosmWasm_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [audit](https://drive.google.com/file/d/1_ORTCjtDX61LPIbijNm4podSKfj6jUfy/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x07751e...6d3754`](./contracts/ethereum-1/0x07751eed17f4217cdceed078322cd220236d3754/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13909] DL audit link
- [13910] Stader_Labs_LunaX_Contrracts_CosmWasm_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [13911] audit

Fork inheritance lineage and inherited audits are included when available.
