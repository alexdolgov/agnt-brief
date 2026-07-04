# Agentic Audit Brief: Alongside

## Project Overview

- Project: Alongside (`alongside`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:26.619Z
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

- Coverage of deployed-live implementations: 0/15 (0.0%)
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActiveBounty | unknown | ethereum | n/a | [`0x0daf7e...abc562`](./contracts/ethereum-1/0x0daf7e851f6054085432229150c1706988abc562/) | ⚠️ Unaudited |
| AlongsideGovernor | unknown | ethereum | n/a | [`0x774045...2fb45e`](./contracts/ethereum-1/0x774045b30e6fc5dfe73bf386e8845ca1472fb45e/) | ⚠️ Unaudited |
| AstETH | unknown | ethereum | n/a | [`0x27c2b9...1257c2`](./contracts/ethereum-1/0x27c2b9fd547ead2c05c305bee2399a55811257c2/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0x0d44f8...ca4857`](./contracts/ethereum-1/0x0d44f856e1a7c70e35c54261c3f07dbfbdca4857/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | [`0x22c6b4...4007ff`](./contracts/ethereum-1/0x22c6b4b20f65ed6c619a571015926170674007ff/) | ⚠️ Unaudited |
| Fulfiller | unknown | ethereum | n/a | [`0x6c72b7...abaabe`](./contracts/ethereum-1/0x6c72b70f9bd342f0ddb66e147ae7412cd7abaabe/) | ⚠️ Unaudited |
| IndexToken | unknown | ethereum | n/a | [`0x775715...dc9e8f`](./contracts/ethereum-1/0x775715d96cd3b3586728b7420a13ec74f5dc9e8f/) | ⚠️ Unaudited |
| InvokeableBounty | unknown | ethereum | n/a | [`0x366a64...da6884`](./contracts/ethereum-1/0x366a647de921608bee3987025d23f12263da6884/) | ⚠️ Unaudited |
| Issuance | unknown | ethereum | n/a | [`0x58ad9d...5f5198`](./contracts/ethereum-1/0x58ad9d36afac51206672f855bf7e76037c5f5198/) | ⚠️ Unaudited |
| Members | unknown | ethereum | n/a | [`0xc89ded...c16367`](./contracts/ethereum-1/0xc89ded85ce03ecc435bdef6f8851c1001ec16367/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x998930...45ab9b`](./contracts/ethereum-1/0x998930c351ecb4918a5c5238b62d5277fe45ab9b/) | ⚠️ Unaudited |
| Quoter | unknown | ethereum | n/a | [`0xe3be63...eb227c`](./contracts/ethereum-1/0xe3be63e1b959c152212ce1dd45d0d2f749eb227c/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x4c362f...c1d478`](./contracts/ethereum-1/0x4c362fab50bc81f0f58ef2da6b6e10b55fc1d478/) | ⚠️ Unaudited |
| UserRedemption | unknown | ethereum | n/a | [`0x505606...0bbaca`](./contracts/ethereum-1/0x5056063cad88e36b4de019752280f395640bbaca/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0xd62a80...af55ac`](./contracts/ethereum-1/0xd62a80368adf5919f70193d15dcbd5c77eaf55ac/) | ⚠️ Unaudited |

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
| [Cantina-2.pdf (also discovered via alternate URL)](https://github.com/Alongside-Finance/Audits/blob/main/Cantina-2.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Cantina.pdf (also discovered via alternate URL)](https://github.com/Alongside-Finance/Audits/blob/main/Cantina.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SigmaPrime_Sept_28.pdf (also discovered via alternate URL)](https://github.com/Alongside-Finance/Audits/blob/main/SigmaPrime_Sept_28.pdf) | Sigma Prime | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Solidified_April_22.pdf (also discovered via alternate URL)](https://github.com/Alongside-Finance/Audits/blob/main/Solidified_April_22.pdf) | Solidified | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19410] Cantina-2.pdf
- [19411] Cantina.pdf
- [19412] SigmaPrime_Sept_28.pdf
- [19413] Solidified_April_22.pdf

Fork inheritance lineage and inherited audits are included when available.
