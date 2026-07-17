# Agentic Audit Brief: IQ

## Project Overview

- Project: IQ (`iq`)
- Website: [https://iq.wiki](https://iq.wiki)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:23.738Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum, fraxtal
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $3,544,333.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Services. Structurally: 31 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 7 common project-authored base contract(s) (ownedv2, dualoraclebase, api3oraclewithmaxdelay). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 78; live-surface contracts included: 22 (4 live, 18 unknown).
- Excluded by liveness: 56 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 4 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BAMMFactory | registry | fraxtal | n/a | [`0x19928170d739139bfbbb6614007f8eeed17db0ba`](./contracts/fraxtal-252/0x19928170d739139bfbbb6614007f8eeed17db0ba/) | ⚠️ Unaudited |
| FraxswapFactory | registry | fraxtal | n/a | [`0xe30521fe7f3beb6ad556887b50739d6c7ca667e6`](./contracts/fraxtal-252/0xe30521fe7f3beb6ad556887b50739d6c7ca667e6/) | ⚠️ Unaudited |
| IQERC20 | token | ethereum | n/a | [`0x579cea1889991f68acc35ff5c3dd0621ff29b0c9`](./contracts/ethereum-1/0x579cea1889991f68acc35ff5c3dd0621ff29b0c9/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x1bf5457ecaa14ff63cc89efd560e251e814e16ba`](./contracts/ethereum-1/0x1bf5457ecaa14ff63cc89efd560e251e814e16ba/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | fraxtal | n/a | `0x0d9346964791878bb54c02294e72106d8794185c` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x18348ddbf9c512081d444bdee9b25e53ef707a13` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x5854f44bbabada5d55d765b576fd390962d69909` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x6bd8680eacdbc6513a5e40b711926d357ab2e4cb` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x8bf7af56bb721bc3d015111508593fcb301546f0` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x954f18a500ec24c9c3be4b973bd0631776478114` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x9937ab3f353836256d82ac77c28c2c66b9a8624a` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x9fab6a6b9a78515d9d95d224b75371d1006896c5` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xad84dac1c249ec3999242bdd89bb82adf74f071f` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xbb18f2d4e1f9ce0055b13351725e09897ee85fc2` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xc4af86d01420598a8746361576c98f5d46d289dd` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xd5be3c020f66b1fdf416fd9a551bad2460a28723` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xdbb6da2c103397fa502eca74afb5a274a900f892` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xdcf13ad4b4b3d7cba5894f5d3addff6fe8257508` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xdf567ef9ce0475254b057113e702a02d6e782427` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe510cc8d19da2aefdb94082359825e507f57704e` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xeec80691c5c470691246b883f2a50b9a9ac7026a` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xffd3a9a6c28eda12869eb54b7284bc306d60550d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| fraxtal | [`0x19928170d739139bfbbb6614007f8eeed17db0ba`](./contracts/fraxtal-252/0x19928170d739139bfbbb6614007f8eeed17db0ba/) | BAMMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x579cea1889991f68acc35ff5c3dd0621ff29b0c9`](./contracts/ethereum-1/0x579cea1889991f68acc35ff5c3dd0621ff29b0c9/) | IQERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bf5457ecaa14ff63cc89efd560e251e814e16ba`](./contracts/ethereum-1/0x1bf5457ecaa14ff63cc89efd560e251e814e16ba/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
