# Agentic Audit Brief: Botto

## Project Overview

- Project: Botto (`botto`)
- Website: [https://botto.com/](https://botto.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:07.794Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: base, ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $2,831,231.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

AI Agents. Structurally: 13 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 9 (4 live, 5 unknown).
- Excluded by liveness: 26 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 4 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessPass | unknown | base | n/a | [`0x49a063cd1ab8b5a2980059bc41d82aaa70c6bd85`](./contracts/base-8453/0x49a063cd1ab8b5a2980059bc41d82aaa70c6bd85/) | ⚠️ Unaudited |
| BOTTO | unknown | ethereum | n/a | [`0x9dfad1b7102d46b1b197b90095b5c4e9f5845bba`](./contracts/ethereum-1/0x9dfad1b7102d46b1b197b90095b5c4e9f5845bba/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0x24914cb6bd01e6a0cf2a9c0478e33c25926e6a0c`](./contracts/base-8453/0x24914cb6bd01e6a0cf2a9c0478e33c25926e6a0c/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x9ff68f61ca5eb0c6606dc517a9d44001e564bb66`](./contracts/ethereum-1/0x9ff68f61ca5eb0c6606dc517a9d44001e564bb66/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x08b5d710102289b5888a2b2773980c0ae40d22cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c397d1723595cc03b37082c10d384e4f756b569` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49a063cd1ab8b5a2980059bc41d82aaa70c6bd85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x550d1be3a79f91aa8b714289148fe6d385c2e192` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1929bcc3b5f446c48995e9c8ac928ecaf63f22f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [prong-distance-e49.notion.site/Botto-Governance-V2-Report-e4f25230b7e34187abdb1b7d55f1ab4c](https://prong-distance-e49.notion.site/Botto-Governance-V2-Report-e4f25230b7e34187abdb1b7d55f1ab4c) | GoldmanDAO | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.notion.so/Botto-NFTs-V2-Report-b242862b0dcc48dd94bdfe2cee517660](https://www.notion.so/Botto-NFTs-V2-Report-b242862b0dcc48dd94bdfe2cee517660) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [audita.io](https://audita.io/) | Audita | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x49a063cd1ab8b5a2980059bc41d82aaa70c6bd85`](./contracts/base-8453/0x49a063cd1ab8b5a2980059bc41d82aaa70c6bd85/) | AccessPass | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dfad1b7102d46b1b197b90095b5c4e9f5845bba`](./contracts/ethereum-1/0x9dfad1b7102d46b1b197b90095b5c4e9f5845bba/) | BOTTO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x24914cb6bd01e6a0cf2a9c0478e33c25926e6a0c`](./contracts/base-8453/0x24914cb6bd01e6a0cf2a9c0478e33c25926e6a0c/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2595] prong-distance-e49.notion.site/Botto-Governance-V2-Report-e4f25230b7e34187abdb1b7d55f1ab4c
- [2596] www.notion.so/Botto-NFTs-V2-Report-b242862b0dcc48dd94bdfe2cee517660
- [2597] audita.io

Fork inheritance lineage and inherited audits are included when available.
