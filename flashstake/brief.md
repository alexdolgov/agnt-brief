# Agentic Audit Brief: Flashstake

⚠️ Lifecycle status: DECLINING - TVL dropped 17.6% over 90 days

## Project Overview

- Project: Flashstake (`flashstake`)
- Website: [https://flashstake.io/](https://flashstake.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-20T02:44:07.681Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: arbitrum, ethereum, optimism
- Contract surface: 12 unique implementations (18 raw deployments)
- DeFi Llama TVL: $36,640.75
- On-chain TVL (included contracts): $1,250,340.12
- TVL by chain: Ethereum $975,415.50 | Arbitrum $274,924.62

## Project Description

Flashstake is a DeFi protocol that lets users instantly receive upfront yield on staked assets by locking tokens for a chosen duration. It issues fTokens representing the staked position and uses a time-based incentive mechanism to distribute rewards.

### Architecture

All families share the Flash Protocol core logic (FlashProtocol, FlashProtocolProxyV2) and token standards (FlashToken, FlashNFT, FTokenAccumulatorV3) deployed across chains. The FlashFTokenFactory registry and FlashBack/FlashBackLM contracts provide shared infrastructure for fToken creation and liquidity mining rewards on mainnet and Arbitrum.

## Contract Surface Quality

- Indexed contracts: 73; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 55 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/12 (25.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 18
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $274,924.62
- Latest audit: 2022-07 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $274,924.62 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Secure3/Openkertify | Tier 2 | 3 | 25.0% | 2022-07 |
| PeckShield | Tier 2 | 1 | 8.3% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FlashToken | token | ethereum | n/a | [`0xb1f1f4...58f2f8`](./contracts/ethereum-1/0xb1f1f47061a7be15c69f378cb3f69423bd58f2f8/) | ✅ Audited |
| FlashNFT | token | ethereum | n/a | 2 deployments: ethereum [`0x3b0908...cdf73f`](./contracts/ethereum-1/0x3b090839c26fe3b2bdfa2f4cd7f3ab001ccdf73f/); arbitrum `0xe15314...d41996` | ✅ Audited |
| FlashProtocol | unknown | ethereum | n/a | 2 deployments: ethereum [`0x78b2d6...1ec2b9`](./contracts/ethereum-1/0x78b2d65dd1d3d9fb2972d7ef467261ca101ec2b9/); arbitrum [`0x78b2d6...1ec2b9`](./contracts/arbitrum-42161/0x78b2d65dd1d3d9fb2972d7ef467261ca101ec2b9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | unit-41038 | [`0xc62853...5795bd`](./contracts/arbitrum-42161/0xc628534100180582e43271448098cb2c185795bd/) | ⚠️ Unaudited |
| FlashGLPStrategy | core_logic | arbitrum | n/a | [`0x907a74...2df573`](./contracts/arbitrum-42161/0x907a749631ad4149df1d49ee2fd40517b12df573/) | ⚠️ Unaudited |
| FlashProtocolProxyV2 | unknown | arbitrum | n/a | 2 deployments: ethereum `0xb6db29...806e6d`; arbitrum [`0x949711...3ae193`](./contracts/arbitrum-42161/0x9497116d258924621c60384f53afab29cb3ae193/) | ⚠️ Unaudited |
| FTokenAccumulatorV3 | token | arbitrum | n/a | 3 deployments: ethereum `0xefd1d1...65b160`; optimism `0xcb1205...609bfd`; arbitrum [`0x08719d...b50a77`](./contracts/arbitrum-42161/0x08719dcab4684603aab851f8bc2d26ab98b50a77/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | [`0x86bea6...cdd335`](./contracts/optimism-10/0x86bea60374f220de9769b2fef2db725bc1cdd335/) | ⚠️ Unaudited |
| LiquidStake | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21d929...0b7684`](./contracts/ethereum-1/0x21d929770398df5146346390d2973bf3f30b7684/); arbitrum `0x7cd981...345e23` | ⚠️ Unaudited |
| MessageDB | unknown | ethereum | n/a | [`0xb2f7f0...9b929d`](./contracts/ethereum-1/0xb2f7f05e204796df9bbed12d6d1be687089b929d/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xb1c33d...62a698`](./contracts/ethereum-1/0xb1c33de7a914f4d9ba293a055822cbc6e662a698/) | ⚠️ Unaudited |
| xFlash | unknown | ethereum | n/a | [`0x082aeb...c59dd1`](./contracts/ethereum-1/0x082aeb8d095b4ea1ad935035ef1239928ac59dd1/) | ⚠️ Unaudited |

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
| [spaces/uSS80x7aqdxZF3ZpWjhq/uploads/g1J8rkqBRiuPZER4ImQk/peckshield_flashstake_audit.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuSS80x7aqdxZF3ZpWjhq%2Fuploads%2Fg1J8rkqBRiuPZER4ImQk%2Fpeckshield_flashstake_audit.pdf?alt=media) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | 2 | high |
| [spaces/uSS80x7aqdxZF3ZpWjhq/uploads/ROj5eOQnrj9vn3lRfpgw/secure3_flashstake_audit.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FuSS80x7aqdxZF3ZpWjhq%2Fuploads%2FROj5eOQnrj9vn3lRfpgw%2Fsecure3_flashstake_audit.pdf?alt=media) | Secure3/Openkertify | Audit | 2022-07 | stale | Direct | contract_name | 5 | high |
| [PeckShield-Audit-Report-Flashstake-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Flashstake-v1.0.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x907a74...2df573`](./contracts/arbitrum-42161/0x907a749631ad4149df1d49ee2fd40517b12df573/) | FlashGLPStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x949711...3ae193`](./contracts/arbitrum-42161/0x9497116d258924621c60384f53afab29cb3ae193/) | FlashProtocolProxyV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x08719d...b50a77`](./contracts/arbitrum-42161/0x08719dcab4684603aab851f8bc2d26ab98b50a77/) | FTokenAccumulatorV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21d929...0b7684`](./contracts/ethereum-1/0x21d929770398df5146346390d2973bf3f30b7684/) | LiquidStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2f7f0...9b929d`](./contracts/ethereum-1/0xb2f7f05e204796df9bbed12d6d1be687089b929d/) | MessageDB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x082aeb...c59dd1`](./contracts/ethereum-1/0x082aeb8d095b4ea1ad935035ef1239928ac59dd1/) | xFlash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=35

Fork inheritance lineage and inherited audits are included when available.
