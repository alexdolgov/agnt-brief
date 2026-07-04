# Agentic Audit Brief: Orderly Chain

## Project Overview

- Project: Orderly Chain (`orderly-chain`)
- Website: [https://orderly.network/](https://orderly.network/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:38.713Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $205,250.84
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
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 10 aging, 7 stale, 0 unknown
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
| OrderToken | unknown | ethereum | n/a | [`0xabd4c6...764337`](./contracts/ethereum-1/0xabd4c63d2616a5201454168269031355f4764337/) | ⚠️ Unaudited |

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
| [Zenith_LayerZeroV2_04_2025.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Zenith_LayerZeroV2_04_2025.pdf) | Zenith (Code4rena) | Contest | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Guardian_OFT_07_2024.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Guardian_OFT_07_2024.pdf) | Guardian Audits | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [Guardian_07_2024.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Guardian_07_2024.pdf) | Guardian Audits | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [Sherlock_08_2024.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Sherlock_08_2024.pdf) | Sherlock | Contest | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [audits.sherlock.xyz/contests/404](https://audits.sherlock.xyz/contests/404) | Sherlock (contest #404, 63,000 USDC) | Contest | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Guardian_10_2023.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Guardian_10_2023.pdf) | Guardian Audits | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Zellic_11_2023.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Zellic_11_2023.pdf) | Zellic | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [CertiK_09_2022.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/CertiK_09_2022.pdf) | CertiK | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Halborn_07_2022.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Halborn_07_2022.pdf) | Halborn | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [Independent Researcher_09_2023.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Independent%20Researcher_09_2023.pdf) | Independent Researcher | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Guardian_Strategy_Vault_02_2025.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Guardian_Strategy_Vault_02_2025.pdf) | Guardian Audits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Zellic_Strategy_Vault_03_2025.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Zellic_Strategy_Vault_03_2025.pdf) | Zellic | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Zenith_Strategy_Vault_06_2025.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Zenith_Strategy_Vault_06_2025.pdf) | Zenith (Code4rena) | Contest | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Sherlock_Solana_Vault_10_2024.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Sherlock_Solana_Vault_10_2024.pdf) | Sherlock | Contest | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [OtterSec_Solana_Vault_11_2024.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/OtterSec_Solana_Vault_11_2024.pdf) | OtterSec | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Guardian_Solana_Staking_03_2025.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Guardian_Solana_Staking_03_2025.pdf) | Guardian Audits | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Zenith_Solana_Staking_03_2025.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Zenith_Solana_Staking_03_2025.pdf) | Zenith (Code4rena) | Contest | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Guardian_Solana_Vault_11_2025.pdf](https://github.com/OrderlyNetwork/Audits/blob/main/Guardian_Solana_Vault_11_2025.pdf) | Guardian Audits | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 18
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21416] Zenith_LayerZeroV2_04_2025.pdf
- [21417] Guardian_OFT_07_2024.pdf
- [21418] Guardian_07_2024.pdf
- [21419] Sherlock_08_2024.pdf
- [21420] audits.sherlock.xyz/contests/404
- [21421] Guardian_10_2023.pdf
- [21422] Zellic_11_2023.pdf
- [21423] CertiK_09_2022.pdf
- [21424] Halborn_07_2022.pdf
- [21425] Independent Researcher_09_2023.pdf
- [21426] Guardian_Strategy_Vault_02_2025.pdf
- [21427] Zellic_Strategy_Vault_03_2025.pdf
- [21428] Zenith_Strategy_Vault_06_2025.pdf
- [21429] Sherlock_Solana_Vault_10_2024.pdf
- [21430] OtterSec_Solana_Vault_11_2024.pdf
- [21431] Guardian_Solana_Staking_03_2025.pdf
- [21432] Zenith_Solana_Staking_03_2025.pdf
- [21433] Guardian_Solana_Vault_11_2025.pdf

Fork inheritance lineage and inherited audits are included when available.
