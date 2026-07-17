# Agentic Audit Brief: Libero Financial

## Project Overview

- Project: Libero Financial (`libero-financial`)
- Website: [https://libero.financial/app?lang=en](https://libero.financial/app?lang=en)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.963Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc
- Contract surface: 25 unique implementations (25 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 7 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (auth). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 37; live-surface contracts included: 25 (1 live, 24 unknown).
- Excluded by liveness: 12 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 1 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiberoToken | token | bsc | n/a | [`0x0dfcb45eae071b3b846e220560bbcdd958414d78`](./contracts/bsc-56/0x0dfcb45eae071b3b846e220560bbcdd958414d78/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x138d71f786e553e54913575661e94689d78c06ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1420c81bf26f9c0b6e4029ace64f18bcdf52ac27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x170c8f96c59070a993411101fe417996271bb6b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d81400b943eadd8a56920a1c31c541fe048f676` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30c1963381fdfc8ae59452a1952c809d609960a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f645b9039bcb31549d75e079db2411d5ac82d5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42e6e0474db2243ac5c8aaa32764e913e78e683d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x434c0253d4b0aa9890103f6a9840998e689adebd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46d941db6e38bc92246ff25a56e543d53f8f1cd4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b81fa598703bb8fc8cd942bd0209c236620c11d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5eb196879d5c866d42892aec6294f3270db898eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b99365359055dec459bb13b7aff3fae02b8c547` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e03f9926ddb3f0e957f09ee202278d8eb826c14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa78b001772b4e1e846072a57ca622d11f5192fe1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaaf0f1df1fab8333647ea1eeda55877926757dbe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf44d6230121a970581e9c2d0fd71acd6f4505e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2b11d8da4cd9c20410de6eb55bad2734983040e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbaf4827909478807b83fb4c718be928cd3f80c93` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc30ba6ee7b93927db06afac2762c47b2f6145862` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6d0e99942c7492c637545811d75960de7852da3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd0aee837d3e6a3fd66d5ec802f9d88869d0d49f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1df1f670f00937a8580655b8ac9bae90ef81f5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb3a2a3383550bb6bacaccd683c6dca666a4008d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc1f5934062fe5b7e376f569ce19d657467ec193` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Libero Financial Token.pdf](https://github.com/Rugfreecoins/Smart-Contract-Audits/blob/main/Libero%20Financial%20Token.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
