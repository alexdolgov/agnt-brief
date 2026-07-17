# Agentic Audit Brief: Moola Market

## Project Overview

- Project: Moola Market (`moola-market`)
- Website: [https://moola.market](https://moola.market)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:35.115Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: celo
- Contract surface: 25 unique implementations (31 raw deployments)
- DeFi Llama TVL: $1,139,898.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 33 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (debttokenbase, incentivizederc20, versionedinitializable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 94; live-surface contracts included: 31 (13 live, 18 unknown).
- Excluded by liveness: 63 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/7 (71.4%)
- Deployed-live implementations: 7 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/7
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 25
- Raw deployments: 31
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 71.4% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 5 | 71.4% | 2020-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AToken | unknown | celo | n/a | 2 deployments: celo [`0x55bfced2451b2154e06604d4269c9349f31141e6`](./contracts/celo-42220/0x55bfced2451b2154e06604d4269c9349f31141e6/); celo `0xf44e15badbc9a2c5d71a569d6dfb584a8cc97a2a` | ✅ Audited |
| DefaultReserveInterestRateStrategy | unknown | celo | n/a | [`0xb3072f5f0d5e8b9036aec29f37bab70e86ea0018`](./contracts/celo-42220/0xb3072f5f0d5e8b9036aec29f37bab70e86ea0018/) | ✅ Audited |
| LendingPool | unknown | celo | n/a | 4 deployments: celo [`0x29b4923d64b3196afd81d5f91185d693330cdb7a`](./contracts/celo-42220/0x29b4923d64b3196afd81d5f91185d693330cdb7a/); celo `0x97256c89a0f1bc88cbf66fd780eca5f396ae92fc`; celo `0xb9f812003ae906d381945e6010614c114ecf1a59`; celo `0xbecd348aa5cc976be8e82ca6f13bc3b53197711f` | ✅ Audited |
| LendingPoolAddressesProvider | unknown | celo | n/a | [`0xd1088091a174d33412a968fa34cb67131188b332`](./contracts/celo-42220/0xd1088091a174d33412a968fa34cb67131188b332/) | ✅ Audited |
| LendingPoolConfigurator | unknown | celo | n/a | [`0x2cca742585b39e0538f7cc01ab8ffa005f1b1f1c`](./contracts/celo-42220/0x2cca742585b39e0538f7cc01ab8ffa005f1b1f1c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MoolaStakingRewards | unknown | celo | n/a | 3 deployments: celo [`0x1df0a9c8313a005793501bac2150dfb895d10fad`](./contracts/celo-42220/0x1df0a9c8313a005793501bac2150dfb895d10fad/); celo `0x2ca16986bea18d562d26354b4ff4c504f14fb01c`; celo `0xe76525610652ffc3af751ab0dcc3448b345051f6` | ⚠️ Unaudited |
| MooToken | token | celo | n/a | [`0x17700282592d6917f6a73d0bf8accf4d578c131e`](./contracts/celo-42220/0x17700282592d6917f6a73d0bf8accf4d578c131e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | celo | n/a | `0x1b00fd5693d065518630ea22efafc59e5596b09b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2eba86df50a8c5e78897ace75ff24bf1b8291a2c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3abdfb1b91b25c58f80ef6df88d6d6043ea2e104` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3c06fb2f5ab65b0e35f91073d88afe2b017d04b8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3dc0fcd3aa6ca66a434086180e2604b9a9cfe781` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x5e160ad1fd536e613d49787d25e2d6d06a00e72a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x71b7eccab9b239a33ba428b096a8c33011a5353c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7e7d2f9ef635ec83df06838ea4dc8053055a9f29` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x801443470c119f2eac65f13886d9e293cdece2df` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x866fb3a7fb11d0defe3d0828417b5b948d36bac7` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8b47a13c675f936493ebaf6a7422e8539ca18933` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x923182024d0fa5dee59e3c3db5e2eed23728d3c3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa4659c76ee0567242ce09f906bab7c83e92c0e3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb65b6a6a6f78e4daabf259c756567ae346699687` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc794105e26ae955829be2f10d76eb13630d0b454` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd425865dba7c7a9cb618f7b9c077bf0c2f3df89d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd7f77169d5e6a32c5044052f9a49eb94697b25ed` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe50b13fecdbee8937580b5628050340c6212ed5a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view](https://drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ToB_aave_protocol_final_report.pdf](https://github.com/moolamarket/moola/blob/main/aave-protocol/docs/ToB_aave_protocol_final_report.pdf) | OpenZeppelin | Audit | 2019-09 | stale | Direct | contract_name | 8 | high |
| [www.openzeppelin.com/news/aave-protocol-audit](https://www.openzeppelin.com/news/aave-protocol-audit) | OpenZeppelin | Audit | 2020-01 | stale | Direct | contract_name | 9 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | [`0x1df0a9c8313a005793501bac2150dfb895d10fad`](./contracts/celo-42220/0x1df0a9c8313a005793501bac2150dfb895d10fad/) | MoolaStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x17700282592d6917f6a73d0bf8accf4d578c131e`](./contracts/celo-42220/0x17700282592d6917f6a73d0bf8accf4d578c131e/) | MooToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=17

Zero-match audit list:

- [3163] drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view

Fork inheritance lineage and inherited audits are included when available.
