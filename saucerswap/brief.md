# Agentic Audit Brief: SaucerSwap

## Project Overview

- Project: SaucerSwap (`saucerswap`)
- Website: [https://www.saucerswap.finance](https://www.saucerswap.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:54.617Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-38b2
- Chains: base
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $23,329,726.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| InterchainToken | unknown | base | n/a | [`0xa4ff56...45d293`](./contracts/base-8453/0xa4ff56ef7ef4a2cad03cfa130208c9bc1b45d293/) | ⚠️ Unaudited |

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
| [hacken.io/audits/saucerswap/sca-saucerswap-staking-jul2022](https://hacken.io/audits/saucerswap/sca-saucerswap-staking-jul2022) | Hacken | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [hacken.io/audits/saucerswap](https://hacken.io/audits/saucerswap) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [omniscia.io/reports/saucerswap-labs-router-implementation-64660c885d5517001401256c](https://omniscia.io/reports/saucerswap-labs-router-implementation-64660c885d5517001401256c) | Hacken | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [omniscia.io/reports/saucerswap-core-64c64695c767620014d91ed0](https://omniscia.io/reports/saucerswap-core-64c64695c767620014d91ed0) | Omniscia | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [omniscia.io/reports/saucerswap-periphery-64c65c6cc767620014d91f14](https://omniscia.io/reports/saucerswap-periphery-64c65c6cc767620014d91f14) | Omniscia | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [index.html](https://certificate.quantstamp.com/full/saucer-swap-wallet/d30efab8-8abd-46b1-bba5-6360b87e3aa3/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [hacken.io/audits/saucerswap/sca-saucerswap-erc20-vesting-jul2022](https://hacken.io/audits/saucerswap/sca-saucerswap-erc20-vesting-jul2022) | Hacken | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [hacken.io/audits/saucerswap/sca-saucerswap-erc20-staking-jul2022](https://hacken.io/audits/saucerswap/sca-saucerswap-erc20-staking-jul2022) | Hacken | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xa4ff56...45d293`](./contracts/base-8453/0xa4ff56ef7ef4a2cad03cfa130208c9bc1b45d293/) | InterchainToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4268] hacken.io/audits/saucerswap/sca-saucerswap-staking-jul2022
- [4269] hacken.io/audits/saucerswap
- [4270] omniscia.io/reports/saucerswap-labs-router-implementation-64660c885d5517001401256c
- [4271] omniscia.io/reports/saucerswap-core-64c64695c767620014d91ed0
- [4272] omniscia.io/reports/saucerswap-periphery-64c65c6cc767620014d91f14
- [4273] index.html
- [4274] hacken.io/audits/saucerswap/sca-saucerswap-erc20-vesting-jul2022
- [4275] hacken.io/audits/saucerswap/sca-saucerswap-erc20-staking-jul2022

Fork inheritance lineage and inherited audits are included when available.
