# Agentic Audit Brief: Ekubo

## Project Overview

- Project: Ekubo (`ekubo`)
- Website: [https://ekubo.org/](https://ekubo.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.627Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: ethereum
- Contract surface: 14 unique implementations (15 raw deployments)
- DeFi Llama TVL: $20,683,454.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 8 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC721 NFT; built on solady.

### Architecture

The protocol comprises 4 functional families. Its contracts share 5 common project-authored base contract(s) (usescore, payablemulticallable, slippagechecker). Dominant framework: solady.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (9 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/8 (37.5%)
- Deployed-live implementations: 8 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/8
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 14
- Raw deployments: 15
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 4 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 12.5% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cairo Security Clan | Tier 2 | 1 | 12.5% | 2025-01 |
| Code4rena | Tier 1 | 1 | 12.5% | 2025-11 |
| Riley Holterhus | Tier 2 | 1 | 12.5% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Core | unknown | ethereum | n/a | 2 deployments: ethereum [`0x000000...1bd701`](./contracts/ethereum-1/0x00000000000014aa86c5d3c41765bb24e11bd701/); ethereum `0xe0e0e0...57d444` | ✅ Audited |
| Router | adapter | ethereum | n/a | [`0x999585...dff931`](./contracts/ethereum-1/0x9995855c00494d039ab6792f18e368e530dff931/) | ✅ Audited |
| StarknetOwnerProxy | unknown | ethereum | n/a | [`0x1e0ef4...a6e9cc`](./contracts/ethereum-1/0x1e0ef4162e42c9bf820c307218c4e41ccca6e9cc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EkuboToken | token | ethereum | n/a | [`0x04c46e...317d0f`](./contracts/ethereum-1/0x04c46e830bb56ce22735d5d8fc9cb90309317d0f/) | ⚠️ Unaudited |
| MEVResistRouter | adapter | ethereum | n/a | [`0x0c95ea...44aeab`](./contracts/ethereum-1/0x0c95ea31e4501b3b879cae2232087e478d44aeab/) | ⚠️ Unaudited |
| Positions | unknown | ethereum | n/a | [`0xa37cc3...b63e17`](./contracts/ethereum-1/0xa37cc341634afd9e0919d334606e676dbab63e17/) | ⚠️ Unaudited |
| TokenWrapperFactory | registry | ethereum | n/a | [`0x2b8d80...0ab120`](./contracts/ethereum-1/0x2b8d80d891c1e20aca70ff8a85714aa1900ab120/) | ⚠️ Unaudited |
| TokenWrapperPeriphery | token | ethereum | n/a | [`0x2992e4...89f5d6`](./contracts/ethereum-1/0x2992e49d73cc97fbc69c5498f332984c9a89f5d6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x208bb0...b7c285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x553a2e...54c091` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a9093...8205be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91cb8a...9b408c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae1430...67c18a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4279c...2b54ec` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Ekubo_Governance_L1_Proxy.pdf](https://github.com/EkuboProtocol/governance/blob/main/l1_proxy/Ekubo_Governance_L1_Proxy.pdf) | Cairo Security Clan | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |
| [Code4rena x Ekubo audit report 2025-11.pdf](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/Code4rena%20x%20Ekubo%20audit%20report%202025-11.pdf) | Code4rena | Contest | 2025-11 | fresh | Direct | contract_name | 1 | n/a |
| [Ekubo-Auctions-Riley-Holterhus-Audit.pdf](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/Ekubo-Auctions-Riley-Holterhus-Audit.pdf) | Riley Holterhus | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf) | Riley Holterhus | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Ekubo-Riley-Holterhus-Audit.pdf](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/Ekubo-Riley-Holterhus-Audit.pdf) | Riley Holterhus | Audit | 2025-11 | fresh | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x04c46e...317d0f`](./contracts/ethereum-1/0x04c46e830bb56ce22735d5d8fc9cb90309317d0f/) | EkuboToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c95ea...44aeab`](./contracts/ethereum-1/0x0c95ea31e4501b3b879cae2232087e478d44aeab/) | MEVResistRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa37cc3...b63e17`](./contracts/ethereum-1/0xa37cc341634afd9e0919d334606e676dbab63e17/) | Positions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b8d80...0ab120`](./contracts/ethereum-1/0x2b8d80d891c1e20aca70ff8a85714aa1900ab120/) | TokenWrapperFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2992e4...89f5d6`](./contracts/ethereum-1/0x2992e49d73cc97fbc69c5498f332984c9a89f5d6/) | TokenWrapperPeriphery | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Zero-match audit list:

- [1823] Ekubo-Auctions-Riley-Holterhus-Audit.pdf
- [1824] Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
