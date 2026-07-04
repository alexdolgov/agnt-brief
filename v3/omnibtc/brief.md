# Agentic Audit Brief: OmniBTC

## Project Overview

- Project: OmniBTC (`omnibtc`)
- Website: [https://www.omnibtc.finance](https://www.omnibtc.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:37.614Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 50 unique implementations (50 raw deployments)
- DeFi Llama TVL: $1,856,125.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 25 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (swapper). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 76; live-surface contracts included: 50 (10 live, 40 unknown).
- Excluded by liveness: 26 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 50 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 40
- Unique implementations: 50
- Raw deployments: 50
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CCTPFacet | unknown | arbitrum | n/a | [`0x452b5f...0d343c`](./contracts/arbitrum-42161/0x452b5f476f4fa706a80c513c52729e47150d343c/) | ⚠️ Unaudited |
| CelerFacet | unknown | arbitrum | n/a | [`0x930b39...ee004e`](./contracts/arbitrum-42161/0x930b39ecea81678a5033aa3c9cc1f804ffee004e/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | arbitrum | n/a | [`0xdae4db...b3cead`](./contracts/arbitrum-42161/0xdae4db475aca613a5e2dc5fc304da7e962b3cead/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | arbitrum | n/a | [`0xe4d1eb...113d37`](./contracts/arbitrum-42161/0xe4d1ebf03742a8238b546980261507fde0113d37/) | ⚠️ Unaudited |
| GenericSwapFacet | unknown | arbitrum | n/a | [`0x6aa49f...3338be`](./contracts/arbitrum-42161/0x6aa49fa53d372329de88160017f9ca7c5d3338be/) | ⚠️ Unaudited |
| OwnershipFacet | unknown | arbitrum | n/a | [`0xad8542...f0e8a9`](./contracts/arbitrum-42161/0xad85421c47e9b830602deb83fcf149c2a1f0e8a9/) | ⚠️ Unaudited |
| StargateFacet | unknown | arbitrum | n/a | [`0x2967e7...9b3820`](./contracts/arbitrum-42161/0x2967e7bb9daa5711ac332caf874bd47ef99b3820/) | ⚠️ Unaudited |
| StargateFacet | unknown | arbitrum | n/a | [`0x96568b...1db303`](./contracts/arbitrum-42161/0x96568bf35abeeb6c39910f6672f8e3fbeb1db303/) | ⚠️ Unaudited |
| SystemPortal | unknown | arbitrum | n/a | [`0x9ab575...4753a5`](./contracts/arbitrum-42161/0x9ab575ab5b2c58c07345ce2db9b36f0cf54753a5/) | ⚠️ Unaudited |
| WithdrawFacet | operational_periphery | arbitrum | n/a | [`0xa7487a...e2fb04`](./contracts/arbitrum-42161/0xa7487a536968be0d563901aeb3fc07b099e2fb04/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (40)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xaa8b23...05b6fc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x233dde...a28975` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x051914...618f23` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc3eb69...4798c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x689530...329dfa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x01ebb2...eea607` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x041fb4...a97048` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x098d26...af9cb4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0de3b6...32f2b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x135557...9d3824` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13ee92...674aaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x14bd8e...b2ebcd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ec3c0...8f18e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ff10d...c8fa08` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x26bda6...7c107c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c71e7...fbaf4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3177d2...b7a973` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37c150...79bf49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d6cab...a11ce5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ddc3b...dac84b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4fbc3b...ccfef8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53ecc0...4c7935` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5af12a...2d4f4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x66f440...e7d8e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6a8181...2fe9be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f5b4b...5d2bac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x76376c...75de3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa0bfaa...88b477` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4c264...d7d210` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb647e0...ff39db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba661e...373ea5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbca5b6...918fdf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd43e7d...1674a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7026d...f18505` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe37890...df8c39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe44341...7dd771` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe5d17c...71288f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9c847...903c1c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebb6a1...2df737` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc44c29...f3c554` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Sui-AMM-swap_Contracts_Audit_Report.pdf](https://github.com/OmniBTC/Sui-AMM-swap/blob/main/Sui-AMM-swap_Contracts_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit-reports (GitHub directory)](https://github.com/GEBcore/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit-Report-BEVM-v1.0.pdf](https://github.com/btclayer2/audit-reports/blob/main/Audit-Report-BEVM-v1.0.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit-reports.md](https://documents.geb.network/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20905] Sui-AMM-swap_Contracts_Audit_Report.pdf
- [20906] audit-reports (GitHub directory)
- [20907] Audit-Report-BEVM-v1.0.pdf
- [20908] audit-reports.md

Fork inheritance lineage and inherited audits are included when available.
