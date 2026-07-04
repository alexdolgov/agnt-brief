# Agentic Audit Brief: Throne

## Project Overview

- Project: Throne (`throne`)
- Website: [https://throne.exchange](https://throne.exchange)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.486Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: base
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $15,245.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 28 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 8 common project-authored base contract(s) (multicall, blocktimestamp, peripheryimmutablestate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 42; live-surface contracts included: 14 (5 live, 9 unknown).
- Excluded by liveness: 28 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/5 (20.0%)
- Deployed-live implementations: 5 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/5
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 20.0% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OATH | unknown | base | n/a | [`0x798acf...a28ab5`](./contracts/base-8453/0x798acf1bd6e556f0c3cd72e77b3d169d26a28ab5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MixedRouteQuoterV1 | unknown | base | n/a | [`0xf2e996...20c80b`](./contracts/base-8453/0xf2e99648bf3b788690b6091b7ae19b507220c80b/) | ⚠️ Unaudited |
| SmartRouter | adapter | base | n/a | [`0xf40700...df9196`](./contracts/base-8453/0xf407009ea759728e4349cca85292739347df9196/) | ⚠️ Unaudited |
| SmartRouterHelper | unknown | base | n/a | [`0x17741e...294d17`](./contracts/base-8453/0x17741ec5d257b2828b83b28849d526497b294d17/) | ⚠️ Unaudited |
| TokenValidator | unknown | base | n/a | [`0xa13be8...512022`](./contracts/base-8453/0xa13be8c8b3d6597e241712972f27bf9fef512022/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x2ad2d8...beb238` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4963ad...0add43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62e6b3...88f2e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6ed659...88ccd2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d826c...0f89a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82d32a...40656a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa9eecd...6f7e06` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb3cbf6...f20a4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf991af...0ad10e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SmartContract_Audit_Solidproof_Throne.pdf](https://github.com/solidproof/projects/blob/main/2023/Throne/SmartContract_Audit_Solidproof_Throne.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xf2e996...20c80b`](./contracts/base-8453/0xf2e99648bf3b788690b6091b7ae19b507220c80b/) | MixedRouteQuoterV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf40700...df9196`](./contracts/base-8453/0xf407009ea759728e4349cca85292739347df9196/) | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x17741e...294d17`](./contracts/base-8453/0x17741ec5d257b2828b83b28849d526497b294d17/) | SmartRouterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa13be8...512022`](./contracts/base-8453/0xa13be8c8b3d6597e241712972f27bf9fef512022/) | TokenValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
