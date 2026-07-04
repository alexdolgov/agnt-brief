# Agentic Audit Brief: Ubeswap

## Project Overview

- Project: Ubeswap (`ubeswap`)
- Website: [https://ubeswap.org](https://ubeswap.org)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:02.240Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: celo
- Contract surface: 27 unique implementations (27 raw deployments)
- DeFi Llama TVL: $763,526.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 27 project-authored contract(s) across 1 chain(s); 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 11 common project-authored base contract(s) (rewardsdistributionrecipient, owned, v2swaprouter). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 27 (27 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/27 (0.0%)
- Deployed-live implementations: 27 of 27 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 27
- Raw deployments: 27
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

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Create2Deployer | unknown | celo | n/a | [`0x4a27c0...5f6ee3`](./contracts/celo-42220/0x4a27c059fd7e383854ea7de6be9c390a795f6ee3/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | celo | n/a | [`0x3cdb70...555167`](./contracts/celo-42220/0x3cdb7098842621c22721f8c576d49dc366555167/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | celo | n/a | [`0x5c7624...fdcd65`](./contracts/celo-42220/0x5c76245413c6c4cbe7a3fae395a8f7af06fdcd65/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | celo | n/a | [`0x6bd919...70e694`](./contracts/celo-42220/0x6bd9193bb82fdf663ec6aea0a3baf2ad0170e694/) | ⚠️ Unaudited |
| QuoterV2 | unknown | celo | n/a | [`0xa8864a...cca56f`](./contracts/celo-42220/0xa8864a18fab1ed233ce1921f329a6a92dbcca56f/) | ⚠️ Unaudited |
| RomulusDelegate | unknown | celo | n/a | [`0xd355a0...55f928`](./contracts/celo-42220/0xd355a00220fba16b69cd8c4fbe16e02ca855f928/) | ⚠️ Unaudited |
| StakingRewards | unknown | celo | n/a | [`0x534408...15b52c`](./contracts/celo-42220/0x534408e91d755a0d898e1c508e987e8d0615b52c/) | ⚠️ Unaudited |
| StakingRewardsCapped | unknown | celo | n/a | [`0x799a23...602a45`](./contracts/celo-42220/0x799a23da264a157db6f9c02be62f82ce8d602a45/) | ⚠️ Unaudited |
| SwapRouter02 | unknown | celo | n/a | [`0x5cde4d...d8ee7a`](./contracts/celo-42220/0x5cde4d414f27e331b6738f783bc84c5507d8ee7a/) | ⚠️ Unaudited |
| TickLens | unknown | celo | n/a | [`0x1d8c56...4265c4`](./contracts/celo-42220/0x1d8c564cce485c2f053ef32652e4dba00d4265c4/) | ⚠️ Unaudited |
| Timelock | unknown | celo | n/a | [`0x936f5b...2fdaf6`](./contracts/celo-42220/0x936f5b0164b08bf0e123cdf356118343342fdaf6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | celo | n/a | [`0x6e2369...4ffe67`](./contracts/celo-42220/0x6e23691e355703fde907aa97fe9acabb2e4ffe67/) | ⚠️ Unaudited |
| UbeAdvisoryVesting | unknown | celo | n/a | [`0xf7d062...1f7d10`](./contracts/celo-42220/0xf7d06202b0779f9c314d67bad8538b3c661f7d10/) | ⚠️ Unaudited |
| UbeConvert | unknown | celo | n/a | [`0x9dfc13...bb7a36`](./contracts/celo-42220/0x9dfc135e0984fe88acd45d68e62a73e98dbb7a36/) | ⚠️ Unaudited |
| UbeEcosystemVesting | unknown | celo | n/a | [`0x3924c6...a6ae73`](./contracts/celo-42220/0x3924c6b0003135683b59bab63c2b4a5631a6ae73/) | ⚠️ Unaudited |
| UbeMarketingVesting | unknown | celo | n/a | [`0xd733bc...0d0c5e`](./contracts/celo-42220/0xd733bc0acd4583ffa0816d92ee7ef417370d0c5e/) | ⚠️ Unaudited |
| UbeMiningReserveVesting | unknown | celo | n/a | [`0xae4634...502968`](./contracts/celo-42220/0xae4634be8c69ff602e6dd9a1e3c5cecca3502968/) | ⚠️ Unaudited |
| UbeswapV3Farming | unknown | celo | n/a | [`0xa6e906...f51853`](./contracts/celo-42220/0xa6e9069cb055a425eb41d185b740b22ec8f51853/) | ⚠️ Unaudited |
| UbeTeamVesting | unknown | celo | n/a | [`0x74d498...6c8b5c`](./contracts/celo-42220/0x74d4983a29044b68aadd2bdb86bc82cf8c6c8b5c/) | ⚠️ Unaudited |
| UbeToken | unknown | celo | n/a | [`0x71e26d...101490`](./contracts/celo-42220/0x71e26d0e519d14591b9de9a0fe9513a398101490/) | ⚠️ Unaudited |
| UniswapInterfaceMulticall | unknown | celo | n/a | [`0x4d446f...49d63f`](./contracts/celo-42220/0x4d446f092461a0bfdebc72abc831541ca949d63f/) | ⚠️ Unaudited |
| UniswapV2Factory | unknown | celo | n/a | [`0x62d5b8...c25fae`](./contracts/celo-42220/0x62d5b84be28a183abb507e125b384122d2c25fae/) | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | celo | n/a | [`0xe3d8bd...f96121`](./contracts/celo-42220/0xe3d8bd6aed4f159bc8000a9cd47cffdb95f96121/) | ⚠️ Unaudited |
| UniswapV3Factory | unknown | celo | n/a | [`0x67fea5...f8aec4`](./contracts/celo-42220/0x67fea58d5a5a4162ced847e13c2c81c73bf8aec4/) | ⚠️ Unaudited |
| UniversalRouter | unknown | celo | n/a | [`0x3c255d...7a7a0d`](./contracts/celo-42220/0x3c255ded9b25f0bfb4ef1d14234bd2514d7a7a0d/) | ⚠️ Unaudited |
| V3Migrator | unknown | celo | n/a | [`0x65415d...ebec66`](./contracts/celo-42220/0x65415d0bde9249e185d433a08823fd7fa7ebec66/) | ⚠️ Unaudited |
| VotableStakingRewards | unknown | celo | n/a | [`0x388d61...5ff5c9`](./contracts/celo-42220/0x388d611a57ac15dcc1b937f287e5e908ba5ff5c9/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
