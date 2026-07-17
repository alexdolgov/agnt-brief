# Agentic Audit Brief: Whiteheart

## Project Overview

- Project: Whiteheart (`whiteheart`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.224Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: ethereum
- Contract surface: 42 unique implementations (42 raw deployments)
- DeFi Llama TVL: $6,188.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 29 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 7 ERC721 NFTs, 1 Chainlink feed; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 5 common project-authored base contract(s) (hegicoptions, pricecalculator, whassetv2). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 96; live-surface contracts included: 42 (6 live, 36 unknown).
- Excluded by liveness: 54 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/6 (16.7%)
- Deployed-live implementations: 6 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 42
- Raw deployments: 42
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 16.7% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WHERC20v2 | token | ethereum | n/a | [`0xf19c3fafb0171484d2301af1838cb5c6ea739dc4`](./contracts/ethereum-1/0xf19c3fafb0171484d2301af1838cb5c6ea739dc4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20PresetFixedSupply | token | ethereum | n/a | [`0x60e46a4dd91d10506d8efa2caa266e7191fe7ea8`](./contracts/ethereum-1/0x60e46a4dd91d10506d8efa2caa266e7191fe7ea8/) | ⚠️ Unaudited |
| HegicStaking | unknown | ethereum | n/a | [`0xc9ac1f2571748c4d02774b8d0fe5981ee4b897a2`](./contracts/ethereum-1/0xc9ac1f2571748c4d02774b8d0fe5981ee4b897a2/) | ⚠️ Unaudited |
| HLTPs | unknown | ethereum | n/a | [`0xbc89428adb14384453c04d08d8f530455e55f0d1`](./contracts/ethereum-1/0xbc89428adb14384453c04d08d8f530455e55f0d1/) | ⚠️ Unaudited |
| OptionsManager | governance | ethereum | n/a | [`0x1ba4b447d0df64da64024e5ec47da94458c1e97f`](./contracts/ethereum-1/0x1ba4b447d0df64da64024e5ec47da94458c1e97f/) | ⚠️ Unaudited |
| WhiteStakingUSDC | unknown | ethereum | n/a | [`0xc0425f0c7f84956d21ad767abd1892344783be29`](./contracts/ethereum-1/0xc0425f0c7f84956d21ad767abd1892344783be29/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x03d1515cf0062d3f729941bc149254bcd5c3a3fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x040f5b51272f2d2dc3e019f27ac8521f7e7ab916` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0493b47c3a942e63cc5c451f545a2127d53525a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05ed494233235c3401241251bba6472c1775a680` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d17620e5b532fa7c85b4d2c6349b0400918bb32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f01ae990807656cd6cae412428b779a32f5ec9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f38659f668873954e09ff608ab5ebfa094dc58b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22cf9e2d50b7a676228ae9f17648a2f61b53f326` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24e5e35355fec3bb99cf55f40dd009e359c5fe89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x363d62d908d2037a8796e9d28d2896beab8cd0e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36d41c7e1a1f7f7030c4efb31b30107668c4d99b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a76b9b5523ffb4bbc6ea2a15af1278313016675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b7a3337eafb809bf8d862b65eb8b01197ce2b83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4324627fdb501bef85f760ac4c0f79b53e0e8e90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5321dddd591eaa77b01a59ca2220a99afb321285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x604dfd49e180d438c5a740e40c1371aa7ab140a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6209b26514848da3159100301b5d683d35d63526` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6342b5198bec14c2083eff55005907e2be921ef6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74a0b1c24dd668cceb55607aa13f48ba6c56e0fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76dd5e45c6a404290a660952367edf8e68906e45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x779b220bfb82c4b9580a223017327d4acf33ba8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f8000a942e23206520b887a18e62e5e1ec6089a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83a1d416f338ccd79f10252e40a344745d6fbe3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90cefd275c0c6a202236e1d03bb9406efe51a112` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x940284a10d68a0d63fc8e6205a94ad953f524bfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4edc6f46cffe35f3d5175957c7151daffc87934` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae83be2b5550811fa4473b2bcf90d198c31145f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc31ac224428782030809bd9447680608074f8b0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5cf7d0462e1feb7d2e3150cb552b79a4b1cd864` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce31d382012dad49c961132fba33772bcea0e302` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9effc99446a63e6782b254634afd443b5dbe72d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda1491d288d0eba76b5a646f07cee99daaa327b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe026bf6c24f1f96d9d5551945310e65de8254384` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec7c2a98299eae6fabb5bfedbeb12be401747dd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1f046057212d889f6dd9ea19c38822f7d0d30e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff31276ef753a2d001e35095895a9ad9f2275abe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Whiteheart-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Whiteheart-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x60e46a4dd91d10506d8efa2caa266e7191fe7ea8`](./contracts/ethereum-1/0x60e46a4dd91d10506d8efa2caa266e7191fe7ea8/) | ERC20PresetFixedSupply | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9ac1f2571748c4d02774b8d0fe5981ee4b897a2`](./contracts/ethereum-1/0xc9ac1f2571748c4d02774b8d0fe5981ee4b897a2/) | HegicStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc89428adb14384453c04d08d8f530455e55f0d1`](./contracts/ethereum-1/0xbc89428adb14384453c04d08d8f530455e55f0d1/) | HLTPs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ba4b447d0df64da64024e5ec47da94458c1e97f`](./contracts/ethereum-1/0x1ba4b447d0df64da64024e5ec47da94458c1e97f/) | OptionsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0425f0c7f84956d21ad767abd1892344783be29`](./contracts/ethereum-1/0xc0425f0c7f84956d21ad767abd1892344783be29/) | WhiteStakingUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
