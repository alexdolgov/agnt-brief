# Agentic Audit Brief: Prime Vaults

## Project Overview

- Project: Prime Vaults (`prime-vaults`)
- Website: [https://app.primevaults.finance](https://app.primevaults.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.159Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: berachain
- Contract surface: 45 unique implementations (59 raw deployments)
- DeFi Llama TVL: $7,779.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 4 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (primeauth). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 59; live-surface contracts included: 59 (18 live, 41 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/4 (75.0%)
- Deployed-live implementations: 4 of 45 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/4
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 45
- Raw deployments: 59
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 75.0% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountantProviders | operational_periphery | berachain | n/a | 6 deployments: berachain [`0x1d76aebde11cc3f5dbf944fcb68f63212a72b1f7`](./contracts/berachain-80094/0x1d76aebde11cc3f5dbf944fcb68f63212a72b1f7/); berachain `0x1d7e0b3070d80899bcd61a9c484780f54b1543d6`; berachain `0x1e31176e2d6ffbdbe4f313493c257876aeb295db`; berachain `0x71a8166096f86eaca45ad97b9b4f34bc97ffc47c`; berachain `0x7c6c4554ec10b4bda09d7a6fa9be423896942a31`; berachain `0xd0e9563e2e77a3655fa765c9afa51d7898dcce1b` | ✅ Audited |
| Distributor | operational_periphery | berachain | n/a | 5 deployments: berachain [`0x01867f25a7a285de5a19c2a3655ded09609b82a8`](./contracts/berachain-80094/0x01867f25a7a285de5a19c2a3655ded09609b82a8/); berachain `0x7b79441dbfb3f0cdae1940e9d6c52debc4c2d3a1`; berachain `0x96a9c45af704e1a64129ebf624a40074655d38f6`; berachain `0xac1ff4889255e581463fb9854c4e85122653f655`; berachain `0xde760341e4db7a25785313ca90eeb4c65bdb4672` | ✅ Audited |
| TellerWithBuffer | core_logic | berachain | n/a | 6 deployments: berachain [`0x01e1360515aea5007e8b9ec3327223bf6548d9b4`](./contracts/berachain-80094/0x01e1360515aea5007e8b9ec3327223bf6548d9b4/); berachain `0x04004e0f6ca848d65e38cef738843e8b78f02a2a`; berachain `0x1936a74692d3d71653de7d03299310b203654e96`; berachain `0x8176e31cd227ffa6d78907521ffe0c077095d94b`; berachain `0x8198239b55c79a5e4e5460241c89eb11b53eb2ed`; berachain `0xd77cb88c61cab540dba3acc7416a5b5ee34fc5cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArcticArchitectureLens | periphery | berachain | n/a | [`0x5232bc0f5999f8da604c42e1748a13a170f94a1b`](./contracts/berachain-80094/0x5232bc0f5999f8da604c42e1748a13a170f94a1b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | berachain | n/a | `0x010efc7f2c1763a5fd898fb54236faece62bab90` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0c9169e670141d2787c9d7d0811e4fc074f349e8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x12a06c169ebf5108306d4c0ceeb05b655b7cdf26` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1442af2f9f66c240ca753a945d11b24a5f3c33d2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x19311bbb6f8e8b7fd5305f5b07ba1200854a4e53` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x30d25da0a6a1158eb866574db5c7f9f5a7201fbe` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x3af6cbd76fdb0c6315b7748ba11243830565e783` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x66cd77282185d53286df4a5fba9542f76344c6ab` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x729ab2262719f361af4bc9a3c9cdf56766363b7a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x74d58cb46d8851d6dad29d40fbfe9046f0f3d67a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x88a164594d8540926f31f6a58c78fa031b172e03` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8ad14b4b1f9c0c5ce1a0dd3272cdee8ac223eae8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8ba1ae0e3c25137d0ad01314fe38fbf99bc50dd2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8f9f3e20b4289179ca8075cedf19ea290e95e315` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9b1dd3b9c06a52d47e21cde5405464f0a7f25260` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xa4cd06839392ede580d33a471e3e6a07ef6c6758` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xa607e609b9da9b423e3c3d4ac8520b903a514ae4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xaa8233a76fbfc9ee42305bfd50bda28a6e00d9af` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xaed96044999e6ffad529f2ffb1780d3c696cf76a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb1585c3e1d1e71e4c51dc8819c2099d442019881` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb24286d45568dcb6733e643031dc4c21425266b3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb9179d087e9d6771b75679d8eb4c7ab69070f284` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb96b476577b76af61af987f0ecbae04a64acf6a2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xbd4278f6412a09c1141472e1aa4d1c6deec8f168` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xccee5d9125dcb41156e67c92a92bc0608d720660` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd261cb2d8f61bc60b3cdcd0d808e30b978d9f797` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd4c143935c2d96d82fee0b113f1602d3257aa1c6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd4c92754793f941ae800ca2ef3d158dddad3308b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd57c84f393b01ec01e1f42a9977795b2bca95837` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xdb1f0f4bc8da11fb71fb18d432d4a3d1f2a53d56` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xde5608924cd4fd63387c556b19f73f39a503ef3d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xdf1f535188c8f8835c75e2c9a3afad977224b2fb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe68cb1bda9aff1370ee94c180574a5b5b361717c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xea1defe86dbd3c7b89f0a303b506420af6da532c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf0fc03aad781a4345e5ea7cf689d7360f0974774` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf1b346ec239a022cae48384bf8c50d446966a11c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf2adcb4eaa365312bbc591de471ec4386ca114d3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf3e33e475d7fd339a6da142c8bce7df90530860b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf4e20b420482f8bed60ddc4836890b3c4ecfd3e5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf52405364695e068467c66dfc4e042536756f8cb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xfb714e4a32d617c502b1a79c835b7a1396b14c09` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Prime-Vaults-Security-Review.pdf](https://github.com/shieldify-security/audits-portfolio/blob/main/reports/Prime-Vaults-Security-Review.pdf) | unknown | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [Prime-vault_audit_report_2025-12-22.pdf](https://github.com/Salusec/Salus-audit/blob/main/2025/Prime-vault_audit_report_2025-12-22.pdf) | unknown | Audit | 2025-12 | fresh | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x5232bc0f5999f8da604c42e1748a13a170f94a1b`](./contracts/berachain-80094/0x5232bc0f5999f8da604c42e1748a13a170f94a1b/) | ArcticArchitectureLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 41 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Zero-match audit list:

- [13696] Prime-Vaults-Security-Review.pdf

Fork inheritance lineage and inherited audits are included when available.
