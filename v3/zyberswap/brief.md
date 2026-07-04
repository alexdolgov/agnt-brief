# Agentic Audit Brief: ZyberSwap

## Project Overview

- Project: ZyberSwap (`zyberswap`)
- Website: [https://www.zyberswap.io](https://www.zyberswap.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:18.188Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-c970
- Chains: arbitrum
- Contract surface: 39 unique implementations (40 raw deployments)
- DeFi Llama TVL: $63,936.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 22 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 4 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 85; live-surface contracts included: 40 (9 live, 31 unknown).
- Excluded by liveness: 45 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/8 (37.5%)
- Deployed-live implementations: 8 of 39 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/8
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 39
- Raw deployments: 40
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 37.5% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ZyberChef | unknown | arbitrum | n/a | [`0x9ba666...2fbddd`](./contracts/arbitrum-42161/0x9ba666165867e916ee7ed3a3ae6c19415c2fbddd/) | ✅ Audited |
| ZyberRouter | adapter | arbitrum | n/a | [`0x16e71b...ad32ad`](./contracts/arbitrum-42161/0x16e71b13fe6079b4312063f7e81f76d165ad32ad/) | ✅ Audited |
| ZyberToken | token | arbitrum | n/a | [`0x3b475f...a2724c`](./contracts/arbitrum-42161/0x3b475f6f2f41853706afc9fa6a6b8c5df1a2724c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProfitShare | unknown | arbitrum | n/a | [`0xc35294...b3e586`](./contracts/arbitrum-42161/0xc352940f6cadd1b38d60c353e44402258fb3e586/) | ⚠️ Unaudited |
| sZyberToken | token | arbitrum | n/a | [`0x3b7172...1e119f`](./contracts/arbitrum-42161/0x3b71729510cbea2f23a1b9fd6b9db002271e119f/) | ⚠️ Unaudited |
| V3Fees | unknown | arbitrum | n/a | [`0xfe6d3b...8b89cd`](./contracts/arbitrum-42161/0xfe6d3b431c852fff066a748237e9ae963c8b89cd/) | ⚠️ Unaudited |
| ZyberEarn | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc0c272...189b4d`](./contracts/arbitrum-42161/0xc0c272c980bf81eeb5dbbf9ba1ca1f66a7189b4d/); arbitrum `0xeff77e...110c3b` | ⚠️ Unaudited |
| ZyberVault | core_logic | arbitrum | n/a | [`0x9cb8ed...6ce12a`](./contracts/arbitrum-42161/0x9cb8ed8102b6c65d8cae931394352d7a676ce12a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x039a31...6b5f88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0d09a0...a5575c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13927c...64607b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x15cb8e...c7e560` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19b2a1...fc52ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x31c5b4...0dc23d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37f3ef...3123c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3892c8...d216d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3ae87d...1788f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x466b5b...91a3b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5539b5...7d8d88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65eb77...de6c8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x722ef2...e736d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x72d01e...a4b872` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cdad2...6f3fa3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x835100...9ea730` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97c79e...0b371f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x998465...2f6b56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f9804...37d787` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa79cb9...419269` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9f66f...134359` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb502f1...1bec82` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba86c3...105474` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc72ab...3628be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc7729...eacef5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce7b1d...9b2fc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4a866...f3ce60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebc9f4...637d59` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed4c32...05a9c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf34d68...b3d7e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfe9272...5005a5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SmartContract_Audit_Solidproof_Zyberswap.pdf](https://github.com/solidproof/projects/blob/main/ZyberSwap/SmartContract_Audit_Solidproof_Zyberswap.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
