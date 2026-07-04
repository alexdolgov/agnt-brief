# Agentic Audit Brief: IQ

## Project Overview

- Project: IQ (`iq`)
- Website: [https://iq.wiki](https://iq.wiki)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:14.129Z
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

- Coverage of deployed-live implementations: 0/4 (0.0%)
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
| BAMMFactory | registry | fraxtal | n/a | [`0x199281...7db0ba`](./contracts/fraxtal-252/0x19928170d739139bfbbb6614007f8eeed17db0ba/) | ⚠️ Unaudited |
| FraxswapFactory | registry | fraxtal | n/a | [`0xe30521...a667e6`](./contracts/fraxtal-252/0xe30521fe7f3beb6ad556887b50739d6c7ca667e6/) | ⚠️ Unaudited |
| IQERC20 | token | ethereum | n/a | [`0x579cea...29b0c9`](./contracts/ethereum-1/0x579cea1889991f68acc35ff5c3dd0621ff29b0c9/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x1bf545...4e16ba`](./contracts/ethereum-1/0x1bf5457ecaa14ff63cc89efd560e251e814e16ba/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | fraxtal | n/a | `0x0d9346...94185c` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x18348d...707a13` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x5854f4...d69909` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x6bd868...b2e4cb` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x8bf7af...1546f0` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x954f18...478114` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x9937ab...a8624a` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x9fab6a...6896c5` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xad84da...4f071f` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xbb18f2...e85fc2` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xc4af86...d289dd` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xd5be3c...a28723` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xdbb6da...00f892` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xdcf13a...257508` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xdf567e...782427` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe510cc...57704e` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xeec806...c7026a` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xffd3a9...60550d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
