# Agentic Audit Brief: Huckleberry

## Project Overview

- Project: Huckleberry (`huckleberry`)
- Website: [https://www.huckleberry.finance/](https://www.huckleberry.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.698Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: moonriver
- Contract surface: 26 unique implementations (26 raw deployments)
- DeFi Llama TVL: $30,933.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 17 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 1 ERC721 NFT, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (erc20burnable, order). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 36; live-surface contracts included: 26 (6 live, 20 unknown).
- Excluded by liveness: 10 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 26 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 26
- Raw deployments: 26
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FINN | unknown | moonriver | n/a | [`0x9a92b5...35a756`](./contracts/moonriver-1285/0x9a92b5ebf1f6f6f7d93696fcd44e5cf75035a756/) | ⚠️ Unaudited |
| FinnBar | unknown | moonriver | n/a | [`0x37619c...c9210b`](./contracts/moonriver-1285/0x37619cc85325afea778830e184cb60a3abc9210b/) | ⚠️ Unaudited |
| HuckleberryFarm | unknown | moonriver | n/a | [`0x1f4b76...e343e6`](./contracts/moonriver-1285/0x1f4b7660b6adc3943b5038e3426b33c1c0e343e6/) | ⚠️ Unaudited |
| MappingTokenV2 | token | moonriver | n/a | [`0x900f1e...802667`](./contracts/moonriver-1285/0x900f1ec5819fa087d368877cd03b265bf1802667/) | ⚠️ Unaudited |
| TomVault | core_logic | moonriver | n/a | [`0xd90a92...c00fe7`](./contracts/moonriver-1285/0xd90a92bd23b30dc3a69403e00651ff6d08c00fe7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | moonriver | n/a | [`0xe31a0d...7c994f`](./contracts/moonriver-1285/0xe31a0da5e59df4c82c60d2dd14be64e7ec7c994f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonriver | n/a | `0x151368...395a24` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1d10b1...575161` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x28c376...68a67c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x421cda...032ec0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x425880...a9e263` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x47cf33...59af2b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x487b37...3821df` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x49c692...4e1d89` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4daa4b...775db3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6b8c38...42f037` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7dc84f...fd7531` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8b99c8...6bdecc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa472a6...bd9ab1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb0f14a...91345b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc16525...e396b8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc35f7e...862837` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc3ee1e...9aa2c8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd35bd6...a903b1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf23cd7...d20e1f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfe2704...76ed9b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Smart contract security audit report-Huckleberry.pdf](https://github.com/HuckleberryDex/huckleberry-contracts/blob/main/Smart%20contract%20security%20audit%20report-Huckleberry.pdf) | yAudit | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13238] Smart contract security audit report-Huckleberry.pdf

Fork inheritance lineage and inherited audits are included when available.
