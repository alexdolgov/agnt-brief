# Agentic Audit Brief: Api3

## Project Overview

- Project: Api3 (`api3`)
- Website: [https://api3.org/](https://api3.org/)
- Lifecycle: active (Tier 0, 16.4% below peak)
- Generated: 2026-07-04T14:53:04.007Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: ethereum, mantle
- Contract surface: 33 unique implementations (34 raw deployments)
- DeFi Llama TVL: $43,286,735.41
- On-chain TVL (included contracts): $50,989,882.02
- TVL by chain: Ethereum $50,989,882.02

## Project Description

Risk Curators. Structurally: 29 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Contracts are linked by 10 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 34 (21 live, 13 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/14 (21.4%)
- Deployed-live implementations: 20 of 33 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/20
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 33
- Raw deployments: 34
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $50,989,882.02
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 7.1% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 3 | 15.0% | 2024-10 |
| Sigma Prime | Tier 2 | 2 | 10.0% | 2023-03 |
| Trail of Bits | Tier 1 | 1 | 5.0% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlRegistry | registry | ethereum | n/a | [`0x92e512...3b6df1`](./contracts/ethereum-1/0x92e5125adf385d86bedb950793526106143b6df1/) | ✅ Audited |
| Api3ReaderProxyV1 | unknown | ethereum | n/a | [`0x5b0cf2...9cd473`](./contracts/ethereum-1/0x5b0cf2b36a65a6bb085d501b971e4c102b9cd473/) | ✅ Audited |
| Api3ReaderProxyV1 | unknown | mantle | n/a | [`0x776e79...3be125`](./contracts/mantle-5000/0x776e79d916e49bbdb8fee0f43ff148c2ed3be125/) | ✅ Audited |
| RequesterAuthorizerWithAirnode | unknown | ethereum | n/a | [`0xf18c10...9e6178`](./contracts/ethereum-1/0xf18c105d0375e80980e4eed829a4a68a539e6178/) | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Api3Token | token | ethereum | n/a | [`0x0b3821...31b88a`](./contracts/ethereum-1/0x0b38210ea11411557c13457d4da7dc6ea731b88a/) | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x36cfe1...da2439`](./contracts/ethereum-1/0x36cfe1568461e499391ef0a555300f1ae2da2439/); ethereum `0x54210d...c6e3f4` | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | n/a | [`0xe2221a...a4e53b`](./contracts/ethereum-1/0xe2221aa07ec3266da87763e2b1e28d07a8a4e53b/) | ⚠️ Unaudited |
| ACL | governance | ethereum | n/a | [`0x1e7ecc...f4195a`](./contracts/ethereum-1/0x1e7ecc6d3b5b4cfdfc71cb7c3ea9ac4a55f4195a/) | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | ethereum | n/a | [`0x870ac1...ba00bc`](./contracts/ethereum-1/0x870ac11d48b15db9a138cf899d20f13f79ba00bc/) | ⚠️ Unaudited |
| AirnodeRrpV0DryRun | unknown | ethereum | n/a | [`0x2e7682...75193f`](./contracts/ethereum-1/0x2e768206bf5112e7d7efaf1d9df614c26475193f/) | ⚠️ Unaudited |
| Api3CirculatingSupply | unknown | ethereum | n/a | [`0xcd34bc...8bd0a8`](./contracts/ethereum-1/0xcd34bc5b03c954268d27c9bc165a623c318bd0a8/) | ⚠️ Unaudited |
| Api3Pool | core_logic | ethereum | n/a | [`0x6dd655...c76d76`](./contracts/ethereum-1/0x6dd655f10d4b9e242ae186d9050b68f725c76d76/) | ⚠️ Unaudited |
| Kernel | unknown | ethereum | n/a | [`0x593ea9...d06dba`](./contracts/ethereum-1/0x593ea926ee9820a933488b6a288433c387d06dba/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | ethereum | n/a | [`0x3a7bb3...3ad766`](./contracts/ethereum-1/0x3a7bb36ee3f3ee32a60e9f2b33c1e5f2e83ad766/) | ⚠️ Unaudited |
| MorphoMarketV1AdapterV2Factory | adapter | ethereum | n/a | [`0x32bb1c...61ccc1`](./contracts/ethereum-1/0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1/) | ⚠️ Unaudited |
| MorphoVaultV1AdapterFactory | adapter | ethereum | n/a | [`0xd1b8e2...f63394`](./contracts/ethereum-1/0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394/) | ⚠️ Unaudited |
| RegistryList | registry | ethereum | n/a | [`0x3696c5...d9364e`](./contracts/ethereum-1/0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x5a9aa3...2677c2`](./contracts/ethereum-1/0x5a9aa3219dd1cbef6a18fd221464e071df2677c2/) | ⚠️ Unaudited |
| VaultV2Factory | registry | ethereum | n/a | [`0xa1d94f...6c0405`](./contracts/ethereum-1/0xa1d94f746defa1928926b84fb2596c06926c0405/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x156671...c9da27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18c7ce...de2994` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c9e3c...05bb15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7603fa...eb999d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bf904...87b416` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83ae72...464cfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x944018...4fd6e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f0566...31f75c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa20f2a...66dca6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad738d...3bf5de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba26aa...85625a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1dba9...4cdacd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef2abc...9a4af9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2021-12-16 Sigma Prime.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2021-12-16%20Sigma%20Prime.pdf) | Sigma Prime | Audit | 2021-12 | stale | Direct | contract_name | 1 | n/a |
| [2022-03-30 Trail of Bits.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2022-03-30%20Trail%20of%20Bits.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | contract_name | 1 | n/a |
| [2023-03-02 Sigma Prime.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2023-03-02%20Sigma%20Prime.pdf) | Sigma Prime | Audit | 2023-03 | stale | Direct | contract_name | 1 | high |
| [2023-12-20 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2023-12-20%20Quantstamp.pdf) | Quantstamp | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [2024-02-20 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2024-02-20%20Quantstamp.pdf) | Quantstamp | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [2024-10-24 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2024-10-24%20Quantstamp.pdf) | Quantstamp | Audit | 2024-10 | aging | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0b3821...31b88a`](./contracts/ethereum-1/0x0b38210ea11411557c13457d4da7dc6ea731b88a/) | Api3Token | token | $36,878,429.11 | Verified native implementation with $36,878,429.11 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e7682...75193f`](./contracts/ethereum-1/0x2e768206bf5112e7d7efaf1d9df614c26475193f/) | AirnodeRrpV0DryRun | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dd655...c76d76`](./contracts/ethereum-1/0x6dd655f10d4b9e242ae186d9050b68f725c76d76/) | Api3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3696c5...d9364e`](./contracts/ethereum-1/0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e/) | RegistryList | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1d94f...6c0405`](./contracts/ethereum-1/0xa1d94f746defa1928926b84fb2596c06926c0405/) | VaultV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 4 |
| standard_library | 2 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=5, extraction_exact=1

Zero-match audit list:

- [14937] 2023-12-20 Quantstamp.pdf
- [14938] 2024-02-20 Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
