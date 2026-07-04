# Agentic Audit Brief: DeFive

## Project Overview

- Project: DeFive (`defive`)
- Website: [https://defive.com/swap](https://defive.com/swap)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.888Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: sonic
- Contract surface: 17 unique implementations (17 raw deployments)
- DeFi Llama TVL: $310,753.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 17 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 3 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 5 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/17 (0.0%)
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 17
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BurnToFunBribeVault | unknown | sonic | n/a | [`0xbeb62b...934a6a`](./contracts/sonic-146/0xbeb62b3d8111ee0550f5baa6c430885d67934a6a/) | ⚠️ Unaudited |
| BurnToFunCampaign | unknown | sonic | n/a | [`0x09b133...60fcf5`](./contracts/sonic-146/0x09b133cd6e4caefe97d5f0167356b8be6a60fcf5/) | ⚠️ Unaudited |
| BurnToFunCampaignFactory | unknown | sonic | n/a | [`0xaf563b...655500`](./contracts/sonic-146/0xaf563bc608c1ccfd787434aa14a3716fcc655500/) | ⚠️ Unaudited |
| BurnToFunFactory | unknown | sonic | n/a | [`0x1dc2b2...834de8`](./contracts/sonic-146/0x1dc2b2c4f1495d30e950ec7ee77a1d3864834de8/) | ⚠️ Unaudited |
| BurnToFunTokenFactory | unknown | sonic | n/a | [`0x096d7a...b1ca9c`](./contracts/sonic-146/0x096d7a6d17cc011cb3918f3d1574860998b1ca9c/) | ⚠️ Unaudited |
| BurnToFunVestingFactory | unknown | sonic | n/a | [`0x089848...8320a0`](./contracts/sonic-146/0x089848ed7d61419b9b61408385f1e84e4d8320a0/) | ⚠️ Unaudited |
| DeFiveClaiming | unknown | sonic | n/a | [`0x0594d7...c442e9`](./contracts/sonic-146/0x0594d73e517aec7a824aa89c1498b26df8c442e9/) | ⚠️ Unaudited |
| DeFiveFactory | unknown | sonic | n/a | [`0x47524c...c551e6`](./contracts/sonic-146/0x47524ca6578e172878abf6fd6f3e1cd106c551e6/) | ⚠️ Unaudited |
| DeFiveLpClaiming | unknown | sonic | n/a | [`0x2e5a17...4d8d9f`](./contracts/sonic-146/0x2e5a175591be074a23ae4491bcf4942a9b4d8d9f/) | ⚠️ Unaudited |
| DeFiveMulticall | unknown | sonic | n/a | [`0xc4c354...e9c8e4`](./contracts/sonic-146/0xc4c35416ffa712f4cef5ac03d0c505b173e9c8e4/) | ⚠️ Unaudited |
| DeFiveRouter | unknown | sonic | n/a | [`0xc159d9...68c725`](./contracts/sonic-146/0xc159d904ca8c2449df0ae4836197278f2f68c725/) | ⚠️ Unaudited |
| FIVE | unknown | sonic | n/a | [`0x15f7a3...c0a351`](./contracts/sonic-146/0x15f7a33cc1e4744f100f03bb13d7eb67c5c0a351/) | ⚠️ Unaudited |
| LumosCards | unknown | sonic | n/a | [`0xee4c8d...1682ab`](./contracts/sonic-146/0xee4c8d3221122aeadf1a08fcdd5aa90fba1682ab/) | ⚠️ Unaudited |
| MasterFarmer | unknown | sonic | n/a | [`0x0aed2b...c8832d`](./contracts/sonic-146/0x0aed2bc9a61f88fd118262094fd10d1723c8832d/) | ⚠️ Unaudited |
| RareWiggies | unknown | sonic | n/a | [`0x871b67...225257`](./contracts/sonic-146/0x871b671a8e5da1bab132e1034684b1b8c1225257/) | ⚠️ Unaudited |
| SNSToken | unknown | sonic | n/a | [`0x7b0a41...6ee9f5`](./contracts/sonic-146/0x7b0a41f0c17474e41a0c36c0bf33b9aed06ee9f5/) | ⚠️ Unaudited |
| Wiggies | unknown | sonic | n/a | [`0x31e7aa...c72f3d`](./contracts/sonic-146/0x31e7aac987c7b304ab0822cfad6e736ce7c72f3d/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0xbeb62b...934a6a`](./contracts/sonic-146/0xbeb62b3d8111ee0550f5baa6c430885d67934a6a/) | BurnToFunBribeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x09b133...60fcf5`](./contracts/sonic-146/0x09b133cd6e4caefe97d5f0167356b8be6a60fcf5/) | BurnToFunCampaign | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xaf563b...655500`](./contracts/sonic-146/0xaf563bc608c1ccfd787434aa14a3716fcc655500/) | BurnToFunCampaignFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1dc2b2...834de8`](./contracts/sonic-146/0x1dc2b2c4f1495d30e950ec7ee77a1d3864834de8/) | BurnToFunFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x096d7a...b1ca9c`](./contracts/sonic-146/0x096d7a6d17cc011cb3918f3d1574860998b1ca9c/) | BurnToFunTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x089848...8320a0`](./contracts/sonic-146/0x089848ed7d61419b9b61408385f1e84e4d8320a0/) | BurnToFunVestingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0594d7...c442e9`](./contracts/sonic-146/0x0594d73e517aec7a824aa89c1498b26df8c442e9/) | DeFiveClaiming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x47524c...c551e6`](./contracts/sonic-146/0x47524ca6578e172878abf6fd6f3e1cd106c551e6/) | DeFiveFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2e5a17...4d8d9f`](./contracts/sonic-146/0x2e5a175591be074a23ae4491bcf4942a9b4d8d9f/) | DeFiveLpClaiming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xc4c354...e9c8e4`](./contracts/sonic-146/0xc4c35416ffa712f4cef5ac03d0c505b173e9c8e4/) | DeFiveMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xc159d9...68c725`](./contracts/sonic-146/0xc159d904ca8c2449df0ae4836197278f2f68c725/) | DeFiveRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x15f7a3...c0a351`](./contracts/sonic-146/0x15f7a33cc1e4744f100f03bb13d7eb67c5c0a351/) | FIVE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xee4c8d...1682ab`](./contracts/sonic-146/0xee4c8d3221122aeadf1a08fcdd5aa90fba1682ab/) | LumosCards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0aed2b...c8832d`](./contracts/sonic-146/0x0aed2bc9a61f88fd118262094fd10d1723c8832d/) | MasterFarmer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x871b67...225257`](./contracts/sonic-146/0x871b671a8e5da1bab132e1034684b1b8c1225257/) | RareWiggies | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7b0a41...6ee9f5`](./contracts/sonic-146/0x7b0a41f0c17474e41a0c36c0bf33b9aed06ee9f5/) | SNSToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x31e7aa...c72f3d`](./contracts/sonic-146/0x31e7aac987c7b304ab0822cfad6e736ce7c72f3d/) | Wiggies | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
