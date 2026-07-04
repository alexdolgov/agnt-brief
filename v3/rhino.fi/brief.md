# Agentic Audit Brief: Rhino.fi

## Project Overview

- Project: Rhino.fi (`rhino.fi`)
- Website: [https://rhino.fi](https://rhino.fi)
- Lifecycle: unknown
- Generated: 2026-07-03T21:25:31.795Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, ethereum, gnosis, opbnb, optimism, polygon, unichain
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $1,114,465.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 11 project-authored contract(s) across 7 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (withblockedlist, proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/12 (8.3%)
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/12
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/rhinofi/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 8.3% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DVFDepositContract | unknown | unichain | n/a | [`0x04317f...ac79e9`](./contracts/unichain-130/0x04317f0e4795b1e1bab333234153fa10aaac79e9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbitrumExtension | unknown | arbitrum | n/a | [`0xba4eee...133a7e`](./contracts/arbitrum-42161/0xba4eee20f434bc3908a0b18da496348657133a7e/) | ⚠️ Unaudited |
| MintableERC20 | unknown | optimism | n/a | [`0xb80a58...005fef`](./contracts/optimism-10/0xb80a582fa430645a043bb4f6135321ee01005fef/) | ⚠️ Unaudited |
| Multicall2 | unknown | ethereum | n/a | [`0x0dbbd1...fb70a5`](./contracts/ethereum-1/0x0dbbd1bb03ed63ae2bea0ce892567884dffb70a5/) | ⚠️ Unaudited |
| MultiSigWallet | unknown | arbitrum | n/a | [`0x4a9196...1e2718`](./contracts/arbitrum-42161/0x4a9196b06f339ad9f3ee752c987b401f2e1e2718/) | ⚠️ Unaudited |
| MultiTransfer | unknown | optimism | n/a | [`0xb8ee2c...dceec3`](./contracts/optimism-10/0xb8ee2cd0e210fac991e441dba767082d9cdceec3/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | gnosis | n/a | [`0x04317f...ac79e9`](./contracts/gnosis-100/0x04317f0e4795b1e1bab333234153fa10aaac79e9/) | ⚠️ Unaudited |
| RevokableVester | unknown | polygon | n/a | [`0x09de35...cfa232`](./contracts/polygon-137/0x09de35fbbd04e347368f65997a88121e3acfa232/) | ⚠️ Unaudited |
| TetherToken | unknown | polygon | n/a | [`0xcc3eb6...8c30ab`](./contracts/polygon-137/0xcc3eb61737b3161438ab859d1d0dd1a1138c30ab/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x73699b...bd2704`](./contracts/ethereum-1/0x73699b0c5542472b927dd779f2a1085ac9bd2704/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | opbnb | n/a | [`0x2b4553...5deeb5`](./contracts/opbnb-204/0x2b4553122d960ca98075028d68735cc6b15deeb5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |

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
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/rhinofi/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [StarkEx v2.0 Audit Report](https://github.com/starkware-libs/starkex-contracts/blob/master/audit/StarkEx_v2.0_Audit_Report.pdf) | PeckShield | Audit | 2020-10 | stale | Direct | n/a | 0 | n/a |
| [StarkEx v3.0 Audit Report](https://github.com/starkware-libs/starkex-contracts/blob/master/audit/StarkEx_v3.0_Audit_Report.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [Cairo and SHARP Verifiers v3.0 Audit Report](https://github.com/starkware-libs/starkex-contracts/blob/master/audit/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [EVM STARK Verifier v4.0 Audit Report](https://github.com/starkware-libs/starkex-contracts/blob/master/audit/EVM_STARK_Verifier_v4.0_Audit_Report.pdf) | CryptoExperts | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [StarkEx v4.0 Audit Report](https://github.com/starkware-libs/starkex-contracts/blob/master/audit/StarkEx_v4.0_Audit_Report.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [StarkEx v4.5 Audit Report](https://github.com/starkware-libs/starkex-contracts/blob/master/audit/StarkEx_v4.5_Audit_Report.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [CrossSwap v1.0 Audit Report](https://github.com/rhinofi/contracts_public/blob/master/PeckShield-Audit-Report-CrossSwap-v1.0.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [Smart Contract v1.0 Audit Report](https://github.com/rhinofi/contracts_public/blob/master/PeckShield-Audit-Report-RhinoFi-v1.0.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [18086] StarkEx v2.0 Audit Report
- [18087] StarkEx v3.0 Audit Report
- [18088] Cairo and SHARP Verifiers v3.0 Audit Report
- [18089] EVM STARK Verifier v4.0 Audit Report
- [18090] StarkEx v4.0 Audit Report
- [18091] StarkEx v4.5 Audit Report
- [18092] CrossSwap v1.0 Audit Report

Fork inheritance lineage and inherited audits are included when available.
