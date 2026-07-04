# Agentic Audit Brief: Flashstake

## Project Overview

- Project: Flashstake (`flashstake`)
- Website: [https://flashstake.io/](https://flashstake.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:52.222Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: arbitrum, ethereum, optimism
- Contract surface: 15 unique implementations (21 raw deployments)
- DeFi Llama TVL: $34,610.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 27 project-authored contract(s) across 3 chain(s); 6 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 72; live-surface contracts included: 21 (18 live, 3 unknown).
- Excluded by liveness: 51 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/12 (25.0%)
- Deployed-live implementations: 12 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/12
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 15
- Raw deployments: 21
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Secure3/Openkertify | Tier 2 | 3 | 25.0% | 2022-07 |
| PeckShield | Tier 2 | 1 | 8.3% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FlashNFT | token | ethereum | n/a | 2 deployments: ethereum [`0x3b0908...cdf73f`](./contracts/ethereum-1/0x3b090839c26fe3b2bdfa2f4cd7f3ab001ccdf73f/); arbitrum `0xe15314...d41996` | ✅ Audited |
| FlashProtocol | unknown | ethereum | n/a | 2 deployments: ethereum [`0x78b2d6...1ec2b9`](./contracts/ethereum-1/0x78b2d65dd1d3d9fb2972d7ef467261ca101ec2b9/); arbitrum [`0x78b2d6...1ec2b9`](./contracts/arbitrum-42161/0x78b2d65dd1d3d9fb2972d7ef467261ca101ec2b9/) | ✅ Audited |
| FlashToken | token | ethereum | n/a | [`0xb1f1f4...58f2f8`](./contracts/ethereum-1/0xb1f1f47061a7be15c69f378cb3f69423bd58f2f8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FlashGLPStrategy | core_logic | arbitrum | n/a | [`0x907a74...2df573`](./contracts/arbitrum-42161/0x907a749631ad4149df1d49ee2fd40517b12df573/) | ⚠️ Unaudited |
| FlashProtocolProxyV2 | unknown | arbitrum | n/a | 2 deployments: ethereum `0xb6db29...806e6d`; arbitrum [`0x949711...3ae193`](./contracts/arbitrum-42161/0x9497116d258924621c60384f53afab29cb3ae193/) | ⚠️ Unaudited |
| FTokenAccumulatorV3 | token | arbitrum | n/a | 3 deployments: ethereum `0xefd1d1...65b160`; optimism `0xcb1205...609bfd`; arbitrum [`0x08719d...b50a77`](./contracts/arbitrum-42161/0x08719dcab4684603aab851f8bc2d26ab98b50a77/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | [`0x86bea6...cdd335`](./contracts/optimism-10/0x86bea60374f220de9769b2fef2db725bc1cdd335/) | ⚠️ Unaudited |
| LiquidStake | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21d929...0b7684`](./contracts/ethereum-1/0x21d929770398df5146346390d2973bf3f30b7684/); arbitrum `0x7cd981...345e23` | ⚠️ Unaudited |
| MessageDB | unknown | ethereum | n/a | [`0xb2f7f0...9b929d`](./contracts/ethereum-1/0xb2f7f05e204796df9bbed12d6d1be687089b929d/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0xc62853...5795bd`](./contracts/arbitrum-42161/0xc628534100180582e43271448098cb2c185795bd/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xb1c33d...62a698`](./contracts/ethereum-1/0xb1c33de7a914f4d9ba293a055822cbc6e662a698/) | ⚠️ Unaudited |
| xFlash | unknown | ethereum | n/a | [`0x082aeb...c59dd1`](./contracts/ethereum-1/0x082aeb8d095b4ea1ad935035ef1239928ac59dd1/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x720fac...598f47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b0908...cdf73f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d791e...5307dc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/uSS80x7aqdxZF3ZpWjhq/uploads/g1J8rkqBRiuPZER4ImQk/peckshield_flashstake_audit.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuSS80x7aqdxZF3ZpWjhq%2Fuploads%2Fg1J8rkqBRiuPZER4ImQk%2Fpeckshield_flashstake_audit.pdf?alt=media) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | 1 | n/a |
| [spaces/uSS80x7aqdxZF3ZpWjhq/uploads/ROj5eOQnrj9vn3lRfpgw/secure3_flashstake_audit.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuSS80x7aqdxZF3ZpWjhq%2Fuploads%2FROj5eOQnrj9vn3lRfpgw%2Fsecure3_flashstake_audit.pdf?alt=media) | Secure3/Openkertify | Audit | 2022-07 | stale | Direct | contract_name | 3 | n/a |
| [PeckShield-Audit-Report-Flashstake-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Flashstake-v1.0.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Fork inheritance lineage and inherited audits are included when available.
