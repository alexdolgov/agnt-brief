# Agentic Audit Brief: BendDAO

⚠️ Lifecycle status: DEAD - TVL dropped 18.5% over 90 days

## Project Overview

- Project: BendDAO (`benddao`)
- Website: [https://www.benddao.xyz](https://www.benddao.xyz)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-03T21:05:33.542Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: ethereum
- Contract surface: 5 unique implementations (7 raw deployments)
- DeFi Llama TVL: $5,763,832.00
- On-chain TVL (included contracts): $246,324.55
- TVL by chain: Ethereum $246,324.55

## Project Description

Yield. Structurally: 7 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 1 common project-authored base contract(s) (emergencytokenrecoveryupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 6 (3 live, 3 unknown).
- Excluded by liveness: 9 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 7
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $246,324.55
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $246,324.55 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BendToken | token | ethereum | n/a | 2 deployments: ethereum [`0x02863c...1e9153`](./contracts/ethereum-1/0x02863c14603c3b157379999f567ddece151e9153/); ethereum `0x0d0275...f56218` | ⚠️ Unaudited |
| BendUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x607d11...6ca80f`](./contracts/ethereum-1/0x607d113a67f456292939c636becccfb3656ca80f/); ethereum `0xf0dfc1...f159a0` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | n/a | [`0x1b5d29...a5bc27`](./contracts/ethereum-1/0x1b5d2904be3e4711a848be09b17dee89e6a5bc27/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0x859f6e...98cf66`](./contracts/ethereum-1/0x859f6e05410893fe64bc84d92bda773ff798cf66/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x5e0785...1c0171` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/bend-dao](https://skynet.certik.com/projects/bend-dao) | CertiK | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x02863c...1e9153`](./contracts/ethereum-1/0x02863c14603c3b157379999f567ddece151e9153/) | BendToken | token | $246,324.55 | Verified native implementation with $246,324.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2183] skynet.certik.com/projects/bend-dao

Fork inheritance lineage and inherited audits are included when available.
