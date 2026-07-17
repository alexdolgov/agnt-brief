# Agentic Audit Brief: LandX Finance

## Project Overview

- Project: LandX Finance (`landx-finance`)
- Website: [https://landx.fi](https://landx.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.403Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16da
- Chains: ethereum
- Contract surface: 9 unique implementations (12 raw deployments)
- DeFi Llama TVL: $1,762,947.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 9 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 4 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts are linked by 7 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/8 (25.0%)
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/9
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 12
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 2 | 22.2% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CToken | token | ethereum | n/a | [`0x44c7aca9c406ded532748194da0d691808473ac9`](./contracts/ethereum-1/0x44c7aca9c406ded532748194da0d691808473ac9/) | ✅ Audited |
| OraclePrices | operational_periphery | ethereum | n/a | [`0xf49a0863d532e6036d693fbacfd2417aebda8784`](./contracts/ethereum-1/0xf49a0863d532e6036d693fbacfd2417aebda8784/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| KeyProtocolVariables | unknown | ethereum | n/a | [`0xa6c319a1c3d4ed22d4ee1e6b53d3342cc70a8b53`](./contracts/ethereum-1/0xa6c319a1c3d4ed22d4ee1e6b53d3342cc70a8b53/) | ⚠️ Unaudited |
| LNDX | unknown | ethereum | n/a | [`0x08a1c30bbb26425c1031ee9e43fa0b9960742539`](./contracts/ethereum-1/0x08a1c30bbb26425c1031ee9e43fa0b9960742539/) | ⚠️ Unaudited |
| TWAP | unknown | ethereum | n/a | [`0x5eb612f924dad205eab02911b198520effe96e5c`](./contracts/ethereum-1/0x5eb612f924dad205eab02911b198520effe96e5c/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x8c00238b17397a194c4dd5a623b1fcdff684f1d6`](./contracts/ethereum-1/0x8c00238b17397a194c4dd5a623b1fcdff684f1d6/); ethereum `0xe819013997b4186e1813590c51837edb491001dc` | ⚠️ Unaudited |
| xBasket | unknown | ethereum | n/a | [`0x6fc27f5cc0aafec8e2b8bc4e6393ac89e45232d3`](./contracts/ethereum-1/0x6fc27f5cc0aafec8e2b8bc4e6393ac89e45232d3/) | ⚠️ Unaudited |
| XToken | token | ethereum | n/a | 3 deployments: ethereum [`0x1b2b0fa9283595f5036c007dd99ed0aa6de8362e`](./contracts/ethereum-1/0x1b2b0fa9283595f5036c007dd99ed0aa6de8362e/); ethereum `0x3356328a3ca51d2664620757bd1c475ca77ffab5`; ethereum `0x5074c4fa383d63d62d5f531d1cf92125fb39e859` | ⚠️ Unaudited |
| xTokenRouter | adapter | ethereum | n/a | [`0x189ca29981b6ad3ab01c2959b90eafca637076a8`](./contracts/ethereum-1/0x189ca29981b6ad3ab01c2959b90eafca637076a8/) | ⚠️ Unaudited |

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
| [land-x-finance.pdf](https://certificate.quantstamp.com/full/land-x-finance.pdf) | Quantstamp | Audit | 2023-02 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa6c319a1c3d4ed22d4ee1e6b53d3342cc70a8b53`](./contracts/ethereum-1/0xa6c319a1c3d4ed22d4ee1e6b53d3342cc70a8b53/) | KeyProtocolVariables | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08a1c30bbb26425c1031ee9e43fa0b9960742539`](./contracts/ethereum-1/0x08a1c30bbb26425c1031ee9e43fa0b9960742539/) | LNDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5eb612f924dad205eab02911b198520effe96e5c`](./contracts/ethereum-1/0x5eb612f924dad205eab02911b198520effe96e5c/) | TWAP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fc27f5cc0aafec8e2b8bc4e6393ac89e45232d3`](./contracts/ethereum-1/0x6fc27f5cc0aafec8e2b8bc4e6393ac89e45232d3/) | xBasket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b2b0fa9283595f5036c007dd99ed0aa6de8362e`](./contracts/ethereum-1/0x1b2b0fa9283595f5036c007dd99ed0aa6de8362e/) | XToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x189ca29981b6ad3ab01c2959b90eafca637076a8`](./contracts/ethereum-1/0x189ca29981b6ad3ab01c2959b90eafca637076a8/) | xTokenRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
