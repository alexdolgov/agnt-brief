# Agentic Audit Brief: Polynomial Protocol

## Project Overview

- Project: Polynomial Protocol (`polynomial-protocol`)
- Website: [https://www.polynomial.fi](https://www.polynomial.fi)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.893Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 9 unique implementations (10 raw deployments)
- DeFi Llama TVL: $5,243,982.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options Vault. Structurally: 12 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (semver). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 10
- Audits discovered: 17 (17 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 12 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | [`0x287bba...22655c`](./contracts/ethereum-1/0x287bba8116f2fc5a642bfd6027ebf5ad6522655c/) | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | ethereum | n/a | [`0x3be64b...feba55`](./contracts/ethereum-1/0x3be64bf2b9c2de637067c7aab6bae5edf9feba55/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36725a...b202e0`](./contracts/ethereum-1/0x36725a5e0040deb7c697d46c0e24390702b202e0/); ethereum `0xec097d...e0d753` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0xd5890b...9e8d1a`](./contracts/ethereum-1/0xd5890bbafafdce942597757385e55174569e8d1a/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0xe512d4...99f757`](./contracts/ethereum-1/0xe512d477cc89196af2ce837f6ab8ea30e199f757/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x994233...2915bd`](./contracts/ethereum-1/0x994233366c8e11da5c525ab903c04e7afb2915bd/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x034cbb...3b04ec`](./contracts/ethereum-1/0x034cbb620d1e0e4c2e29845229beac57083b04ec/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x3c68b1...7f0a1f`](./contracts/ethereum-1/0x3c68b1d45f4faa4f028c3dc8910fa3247c7f0a1f/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x58b51f...55a413`](./contracts/ethereum-1/0x58b51fb9feed00dd846f91d265eba3cdd855a413/) | ⚠️ Unaudited |

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
| [polynomial-1.html](https://0xmacro.com/library/audits/polynomial-1.html) | 0xMacro | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [polynomial-4.html](https://0xmacro.com/library/audits/polynomial-4.html) | 0xMacro | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [polynomial-5.html](https://0xmacro.com/library/audits/polynomial-5.html) | 0xMacro | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [0xmacro.com/library/audits/polynomial-3](https://0xmacro.com/library/audits/polynomial-3) | 0xMacro | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [docs.synthetix.io/v/v3/for-developers/smart-contract-audits](https://docs.synthetix.io/v/v3/for-developers/smart-contract-audits) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Kernel v3.2 Incremental Audit Report.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/Kernel%20v3.2%20Incremental%20Audit%20Report.pdf) | unknown | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Kernel v3.3 Incremental Audit Report.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/Kernel%20v3.3%20Incremental%20Audit%20Report.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [chainlight_v3_0.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/chainlight_v3_0.pdf) | Chainlight | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [kalos_recovery_v1.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_recovery_v1.pdf) | Kalos | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [kalos_recovery_v2.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_recovery_v2.pdf) | Kalos | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [kalos_v1.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v1.pdf) | Kalos | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [kalos_v2_1.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v2_1.pdf) | Kalos | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [kalos_v2_2.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v2_2.pdf) | Kalos | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [kalos_v2_2_lite.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v2_2_lite.pdf) | Kalos | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [kalos_v3_plugins.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_v3_plugins.pdf) | Kalos | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [kalos_webauthn_v1.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/kalos_webauthn_v1.pdf) | Kalos | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [v_3_1_incremental_audit.pdf](https://github.com/zerodevapp/kernel/blob/dev/audits/v_3_1_incremental_audit.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2483] polynomial-1.html
- [2484] polynomial-4.html
- [2485] polynomial-5.html
- [2486] 0xmacro.com/library/audits/polynomial-3
- [2487] docs.synthetix.io/v/v3/for-developers/smart-contract-audits
- [2489] Kernel v3.2 Incremental Audit Report.pdf
- [2490] Kernel v3.3 Incremental Audit Report.pdf
- [2491] chainlight_v3_0.pdf
- [2492] kalos_recovery_v1.pdf
- [2493] kalos_recovery_v2.pdf
- [2494] kalos_v1.pdf
- [2495] kalos_v2_1.pdf
- [2496] kalos_v2_2.pdf
- [2497] kalos_v2_2_lite.pdf
- [2498] kalos_v3_plugins.pdf
- [2499] kalos_webauthn_v1.pdf
- [2500] v_3_1_incremental_audit.pdf

Fork inheritance lineage and inherited audits are included when available.
