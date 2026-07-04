# Agentic Audit Brief: SheepDex

## Project Overview

- Project: SheepDex (`sheepdex`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:54.046Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 16 unique implementations (16 raw deployments)
- DeFi Llama TVL: $372,735.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 16 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 9 common project-authored base contract(s) (multicall, tokenreward, checkoper). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/16 (0.0%)
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 16
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FactoryTest | unknown | bsc | n/a | [`0x41d534...8f4201`](./contracts/bsc-56/0x41d534cc6c03a05b539e0fefca5b31846b8f4201/) | ⚠️ Unaudited |
| MigrationToken2 | unknown | bsc | n/a | [`0x102dde...0947f9`](./contracts/bsc-56/0x102ddeb4cfa109b88cc7794e3299da49fe0947f9/) | ⚠️ Unaudited |
| NFTPositionManager | unknown | bsc | n/a | [`0x199ddb...b1ca8b`](./contracts/bsc-56/0x199ddb7b7b85f57832fdc081604405a0f3b1ca8b/) | ⚠️ Unaudited |
| Operatable | unknown | bsc | n/a | [`0x3e0dbd...3eceaa`](./contracts/bsc-56/0x3e0dbd3bd77559db7b7b6c8a4da5411a6d3eceaa/) | ⚠️ Unaudited |
| PositionReward | unknown | bsc | n/a | [`0x542bb4...84b7da`](./contracts/bsc-56/0x542bb4c30059dec4a9dff9533e901ef6cd84b7da/) | ⚠️ Unaudited |
| PositionView | unknown | bsc | n/a | [`0xc0052a...d56cde`](./contracts/bsc-56/0xc0052afdcf83e66ffcde46b96ebd56163ed56cde/) | ⚠️ Unaudited |
| Quoter | unknown | bsc | n/a | [`0x265d79...f17d51`](./contracts/bsc-56/0x265d79926f406b97887bb3edc59db66e07f17d51/) | ⚠️ Unaudited |
| SpcDAO | unknown | bsc | n/a | [`0x17fa4d...851bed`](./contracts/bsc-56/0x17fa4d6c9e34d4a5c9e331b7925bd49980851bed/) | ⚠️ Unaudited |
| SPCTimeLock | unknown | bsc | n/a | [`0x2a3a8d...a989ff`](./contracts/bsc-56/0x2a3a8df6bf63a505fada1bca5710e20325a989ff/) | ⚠️ Unaudited |
| SPCToken | unknown | bsc | n/a | [`0x6a428f...06af90`](./contracts/bsc-56/0x6a428ff9bfec2c8f676b8c905d49146c6106af90/) | ⚠️ Unaudited |
| SpeFactory | unknown | bsc | n/a | [`0x571521...a3cbdf`](./contracts/bsc-56/0x571521f8c16f3c4ed5f2490f19187ba7a5a3cbdf/) | ⚠️ Unaudited |
| SwapDirector | unknown | bsc | n/a | [`0x82c0c5...0941e5`](./contracts/bsc-56/0x82c0c5c2722d511205d1a290490ebaf9940941e5/) | ⚠️ Unaudited |
| SwapMining | unknown | bsc | n/a | [`0x58469a...1ee019`](./contracts/bsc-56/0x58469aee3436a000698d0a8e648f5d14f31ee019/) | ⚠️ Unaudited |
| SwapRouter | unknown | bsc | n/a | [`0x48886f...dad319`](./contracts/bsc-56/0x48886f3cfa0c7bca0672bbfa4bee5d6d63dad319/) | ⚠️ Unaudited |
| TestCall | unknown | bsc | n/a | [`0x0235d8...5e7ea6`](./contracts/bsc-56/0x0235d8b9f6e5c4f85ed93ba6a09512ad9a5e7ea6/) | ⚠️ Unaudited |
| vSpcToken | unknown | bsc | n/a | [`0x6d52d5...950c3f`](./contracts/bsc-56/0x6d52d502a1526ecd49744610f9461b4c69950c3f/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-SheepDEX-v1.0.pdf (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SheepDEX-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [skynet.certik.com/projects/sheepdex](https://skynet.certik.com/projects/sheepdex) | CertiK | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21439] PeckShield-Audit-Report-SheepDEX-v1.0.pdf
- [21441] skynet.certik.com/projects/sheepdex

Fork inheritance lineage and inherited audits are included when available.
