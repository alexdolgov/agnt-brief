# Agentic Audit Brief: Stella

## Project Overview

- Project: Stella (`stella`)
- Website: [https://app.stellaxyz.io/](https://app.stellaxyz.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.926Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $442,829.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Leveraged Farming. Structurally: 5 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Erc20LendingPool | unknown | arbitrum | n/a | [`0x04c3098931bda90cc307ea37b421953b3384ee6a`](./contracts/arbitrum-42161/0x04c3098931bda90cc307ea37b421953b3384ee6a/) | ⚠️ Unaudited |
| NativeLendingPool | unknown | arbitrum | n/a | [`0x24d3cca628cb946e8b8ec879dc151d1a55a60569`](./contracts/arbitrum-42161/0x24d3cca628cb946e8b8ec879dc151d1a55a60569/) | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | n/a | [`0xc9cbf102c73fb77ec14f8b4c8bd88e050a6b2646`](./contracts/arbitrum-42161/0xc9cbf102c73fb77ec14f8b4c8bd88e050a6b2646/) | ⚠️ Unaudited |
| TransparentUpgradeableProxyImpl | unknown | arbitrum | n/a | [`0x032ba65c71c82d2e6dcf91cad148adc64a5f02a7`](./contracts/arbitrum-42161/0x032ba65c71c82d2e6dcf91cad148adc64a5f02a7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxyReceiveETH | unknown | arbitrum | n/a | [`0x092d4bee60b9f8904918ba7b0341c0b45f16fb55`](./contracts/arbitrum-42161/0x092d4bee60b9f8904918ba7b0341c0b45f16fb55/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x04c3098931bda90cc307ea37b421953b3384ee6a`](./contracts/arbitrum-42161/0x04c3098931bda90cc307ea37b421953b3384ee6a/) | Erc20LendingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x24d3cca628cb946e8b8ec879dc151d1a55a60569`](./contracts/arbitrum-42161/0x24d3cca628cb946e8b8ec879dc151d1a55a60569/) | NativeLendingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc9cbf102c73fb77ec14f8b4c8bd88e050a6b2646`](./contracts/arbitrum-42161/0xc9cbf102c73fb77ec14f8b4c8bd88e050a6b2646/) | StandardArbERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x032ba65c71c82d2e6dcf91cad148adc64a5f02a7`](./contracts/arbitrum-42161/0x032ba65c71c82d2e6dcf91cad148adc64a5f02a7/) | TransparentUpgradeableProxyImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x092d4bee60b9f8904918ba7b0341c0b45f16fb55`](./contracts/arbitrum-42161/0x092d4bee60b9f8904918ba7b0341c0b45f16fb55/) | TransparentUpgradeableProxyReceiveETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
