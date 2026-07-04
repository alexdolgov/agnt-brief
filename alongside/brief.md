# Agentic Audit Brief: Alongside

## Project Overview

- Project: Alongside (`alongside`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:52:59.804Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $355,871.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 15 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 3 common project-authored base contract(s) (contextupgradeable, ownable2step, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/13 (69.2%)
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/15
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 9 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 46.2% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 6 | 40.0% | 2023-11 |
| Sigma Prime | Tier 2 | 4 | 26.7% | 2022-09 |
| Solidified | Tier 2 | 4 | 26.7% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActiveBounty | unknown | ethereum | n/a | [`0x0daf7e...abc562`](./contracts/ethereum-1/0x0daf7e851f6054085432229150c1706988abc562/) | ✅ Audited |
| AlongsideGovernor | unknown | ethereum | n/a | [`0x774045...2fb45e`](./contracts/ethereum-1/0x774045b30e6fc5dfe73bf386e8845ca1472fb45e/) | ✅ Audited |
| Controller | unknown | ethereum | n/a | [`0x0d44f8...ca4857`](./contracts/ethereum-1/0x0d44f856e1a7c70e35c54261c3f07dbfbdca4857/) | ✅ Audited |
| Factory | unknown | ethereum | n/a | [`0x22c6b4...4007ff`](./contracts/ethereum-1/0x22c6b4b20f65ed6c619a571015926170674007ff/) | ✅ Audited |
| IndexToken | unknown | ethereum | n/a | [`0x775715...dc9e8f`](./contracts/ethereum-1/0x775715d96cd3b3586728b7420a13ec74f5dc9e8f/) | ✅ Audited |
| InvokeableBounty | unknown | ethereum | n/a | [`0x366a64...da6884`](./contracts/ethereum-1/0x366a647de921608bee3987025d23f12263da6884/) | ✅ Audited |
| Issuance | unknown | ethereum | n/a | [`0x58ad9d...5f5198`](./contracts/ethereum-1/0x58ad9d36afac51206672f855bf7e76037c5f5198/) | ✅ Audited |
| Members | unknown | ethereum | n/a | [`0xc89ded...c16367`](./contracts/ethereum-1/0xc89ded85ce03ecc435bdef6f8851c1001ec16367/) | ✅ Audited |
| Vault | unknown | ethereum | n/a | [`0xd62a80...af55ac`](./contracts/ethereum-1/0xd62a80368adf5919f70193d15dcbd5c77eaf55ac/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AstETH | unknown | ethereum | n/a | [`0x27c2b9...1257c2`](./contracts/ethereum-1/0x27c2b9fd547ead2c05c305bee2399a55811257c2/) | ⚠️ Unaudited |
| Fulfiller | unknown | ethereum | n/a | [`0x6c72b7...abaabe`](./contracts/ethereum-1/0x6c72b70f9bd342f0ddb66e147ae7412cd7abaabe/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x998930...45ab9b`](./contracts/ethereum-1/0x998930c351ecb4918a5c5238b62d5277fe45ab9b/) | ⚠️ Unaudited |
| Quoter | unknown | ethereum | n/a | [`0xe3be63...eb227c`](./contracts/ethereum-1/0xe3be63e1b959c152212ce1dd45d0d2f749eb227c/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x4c362f...c1d478`](./contracts/ethereum-1/0x4c362fab50bc81f0f58ef2da6b6e10b55fc1d478/) | ⚠️ Unaudited |
| UserRedemption | unknown | ethereum | n/a | [`0x505606...0bbaca`](./contracts/ethereum-1/0x5056063cad88e36b4de019752280f395640bbaca/) | ⚠️ Unaudited |

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
| [Cantina-2.pdf (also discovered via alternate URL)](https://github.com/Alongside-Finance/Audits/blob/main/Cantina-2.pdf) | Spearbit | Audit | 2023-11 | stale | Direct | contract_name | 5 | medium |
| [Cantina.pdf (also discovered via alternate URL)](https://github.com/Alongside-Finance/Audits/blob/main/Cantina.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | 5 | high |
| [SigmaPrime_Sept_28.pdf (also discovered via alternate URL)](https://github.com/Alongside-Finance/Audits/blob/main/SigmaPrime_Sept_28.pdf) | Sigma Prime | Audit | 2022-09 | stale | Direct | contract_name | 4 | high |
| [Solidified_April_22.pdf (also discovered via alternate URL)](https://github.com/Alongside-Finance/Audits/blob/main/Solidified_April_22.pdf) | Solidified | Audit | 2022-05 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x27c2b9...1257c2`](./contracts/ethereum-1/0x27c2b9fd547ead2c05c305bee2399a55811257c2/) | AstETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c72b7...abaabe`](./contracts/ethereum-1/0x6c72b70f9bd342f0ddb66e147ae7412cd7abaabe/) | Fulfiller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3be63...eb227c`](./contracts/ethereum-1/0xe3be63e1b959c152212ce1dd45d0d2f749eb227c/) | Quoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x505606...0bbaca`](./contracts/ethereum-1/0x5056063cad88e36b4de019752280f395640bbaca/) | UserRedemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: extraction_exact=36

Fork inheritance lineage and inherited audits are included when available.
