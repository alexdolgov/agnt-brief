# Agentic Audit Brief: Sherlock

## Project Overview

- Project: Sherlock (`sherlock`)
- Website: [https://sherlock.xyz](https://sherlock.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.061Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 30 unique implementations (30 raw deployments)
- DeFi Llama TVL: $504,842.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Insurance. Structurally: 29 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (manager). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 30 (30 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/29 (41.4%)
- Deployed-live implementations: 30 of 30 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 12/30
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 30
- Raw deployments: 30
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 12 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 41.4% (Sherlock, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 12 | 40.0% | 2022-06 |
| Sherlock | Tier 1 | 5 | 16.7% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlphaBetaEqualDepositMaxSplitter | unknown | ethereum | n/a | [`0x01fe7f...0ee27d`](./contracts/ethereum-1/0x01fe7ff1162d4b4ab41bdaf99296644b7b0ee27d/) | ✅ Audited |
| AlphaBetaEqualDepositSplitter | unknown | ethereum | n/a | [`0x7e0049...7705b1`](./contracts/ethereum-1/0x7e0049866879151480d9ec01391bbf713f7705b1/) | ✅ Audited |
| EulerStrategy | unknown | ethereum | n/a | [`0xc124a8...b49026`](./contracts/ethereum-1/0xc124a8088c39625f125655152a168baa86b49026/) | ✅ Audited |
| InfoStorage | unknown | ethereum | n/a | [`0xbfa53d...d7fc70`](./contracts/ethereum-1/0xbfa53d098d7063ddcc39a45ea6f8c290fcd7fc70/) | ✅ Audited |
| Manager | unknown | ethereum | n/a | [`0x68a442...a8d555`](./contracts/ethereum-1/0x68a442cff69bb6795528a22e2974b74c0ba8d555/) | ✅ Audited |
| MaplePlaceholderStrategy | unknown | ethereum | n/a | [`0x63146d...16a6eb`](./contracts/ethereum-1/0x63146dbb7a870958120fcdd66da239e6c816a6eb/) | ✅ Audited |
| MapleStrategy | unknown | ethereum | n/a | [`0xb2acd0...3f7956`](./contracts/ethereum-1/0xb2acd0214f87d217a2ef148aa4a5aba71d3f7956/) | ✅ Audited |
| MasterStrategy | unknown | ethereum | n/a | [`0x1e8be9...bdd507`](./contracts/ethereum-1/0x1e8be946370a99019e323998acd37a1206bdd507/) | ✅ Audited |
| SherDistributionManager | unknown | ethereum | n/a | [`0x3264bb...eb5939`](./contracts/ethereum-1/0x3264bbef71983307342a656aeb285509e5eb5939/) | ✅ Audited |
| Sherlock | unknown | ethereum | n/a | [`0x0865a8...83eabf`](./contracts/ethereum-1/0x0865a889183039689034da55c1fd12af5083eabf/) | ✅ Audited |
| SherlockClaimManager | unknown | ethereum | n/a | [`0xfeedd2...25eb84`](./contracts/ethereum-1/0xfeedd254ae4b7c44a0472bb836b813ce4625eb84/) | ✅ Audited |
| SherlockProtocolManager | unknown | ethereum | n/a | [`0x3d0b8a...caa1d3`](./contracts/ethereum-1/0x3d0b8a0a10835ab9b0f0beb54c5400b8aacaa1d3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ForeignLock | unknown | ethereum | n/a | [`0xde229e...793005`](./contracts/ethereum-1/0xde229e52bdb72c449db7912968e51d9d5e793005/) | ⚠️ Unaudited |
| Gov | unknown | ethereum | n/a | [`0x2776fb...97fc3f`](./contracts/ethereum-1/0x2776fb23394693829f1339154cc149391397fc3f/) | ⚠️ Unaudited |
| GovDev | unknown | ethereum | n/a | [`0x314752...f133a1`](./contracts/ethereum-1/0x3147528e778075e216aabc583ac7b823e4f133a1/) | ⚠️ Unaudited |
| LibPool | unknown | ethereum | n/a | [`0xedda10...35ab7e`](./contracts/ethereum-1/0xedda10a93767b07f6913cb01479f6418eb35ab7e/) | ⚠️ Unaudited |
| LibSherX | unknown | ethereum | n/a | [`0x22b6d0...c53b1e`](./contracts/ethereum-1/0x22b6d0df02ff7480c77d73a755e5e5ecdac53b1e/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x0b222a...d16e59`](./contracts/ethereum-1/0x0b222a6aa23fb5cff3ef7e5e5857aa3673d16e59/) | ⚠️ Unaudited |
| NativeLock | unknown | ethereum | n/a | [`0xca1bf9...9a2f43`](./contracts/ethereum-1/0xca1bf9e6add6155e92dc1dc7c0bf210c159a2f43/) | ⚠️ Unaudited |
| Payout | unknown | ethereum | n/a | [`0xc11843...1c23f9`](./contracts/ethereum-1/0xc118439d0630873cdf3a1fee798b22c2b61c23f9/) | ⚠️ Unaudited |
| PoolBase | unknown | ethereum | n/a | [`0x4efe56...b4ca40`](./contracts/ethereum-1/0x4efe566cab5e1018be83e9c5de14836b96b4ca40/) | ⚠️ Unaudited |
| PoolDevOnly | unknown | ethereum | n/a | [`0x8ca057...067134`](./contracts/ethereum-1/0x8ca05763a3e46d27d1fc37abaa622ed8a9067134/) | ⚠️ Unaudited |
| PoolOpen | unknown | ethereum | n/a | [`0xce9dd6...b5ce22`](./contracts/ethereum-1/0xce9dd62a533cf89abe5018af9682980922b5ce22/) | ⚠️ Unaudited |
| PoolStrategy | unknown | ethereum | n/a | [`0x3b354a...65c5e4`](./contracts/ethereum-1/0x3b354a4bd898d875d8ecfc4d7797ff8a1665c5e4/) | ⚠️ Unaudited |
| SherBuy | unknown | ethereum | n/a | [`0xf8583f...e262a6`](./contracts/ethereum-1/0xf8583f22c2f6f8cd27f62879a0fb4319bce262a6/) | ⚠️ Unaudited |
| SherClaim | unknown | ethereum | n/a | [`0x7289c6...02bdd3`](./contracts/ethereum-1/0x7289c61c75dcdb8fe4df0b937c08c9c40902bdd3/) | ⚠️ Unaudited |
| SherDistributionManagerEmpty | unknown | ethereum | n/a | [`0x5775f3...fdb31b`](./contracts/ethereum-1/0x5775f32787656e77dd99f20f4e478ddc85fdb31b/) | ⚠️ Unaudited |
| SherX | unknown | ethereum | n/a | [`0xf60466...6ee88b`](./contracts/ethereum-1/0xf6046651beaf118ed1f4fe2c93526c9e186ee88b/) | ⚠️ Unaudited |
| SherXERC20 | unknown | ethereum | n/a | [`0xeafd0c...b9294a`](./contracts/ethereum-1/0xeafd0ce3eb91d08b36136e9fdd42b54d1bb9294a/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x92aeff...e358c4`](./contracts/ethereum-1/0x92aeffffad9fff820f7fcaf1563d8467afe358c4/) | ⚠️ Unaudited |

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
| [Sherlock - Code Arena Jan 2022.pdf](https://github.com/sherlock-protocol/sherlock-v2-core/blob/main/audits/Sherlock%20-%20Code%20Arena%20Jan%202022.pdf) | Sherlock | Contest | 2022-01 | stale | Direct | contract_name | 5 | high |
| [Sherlock - Sherlock Audit October 2022.pdf](https://github.com/sherlock-protocol/sherlock-v2-core/blob/main/audits/Sherlock%20-%20Sherlock%20Audit%20October%202022.pdf) | Sherlock | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [Sherlock - Trail of Bits Dec 2021.pdf](https://github.com/sherlock-protocol/sherlock-v2-core/blob/main/audits/Sherlock%20-%20Trail%20of%20Bits%20Dec%202021.pdf) | Trail of Bits | Audit | 2021-12 | stale | Direct | contract_name | 5 | high |
| [Sherlock - Trail of Bits June 2022.pdf](https://github.com/sherlock-protocol/sherlock-v2-core/blob/main/audits/Sherlock%20-%20Trail%20of%20Bits%20June%202022.pdf) | Trail of Bits | Audit | 2022-06 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xde229e...793005`](./contracts/ethereum-1/0xde229e52bdb72c449db7912968e51d9d5e793005/) | ForeignLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2776fb...97fc3f`](./contracts/ethereum-1/0x2776fb23394693829f1339154cc149391397fc3f/) | Gov | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x314752...f133a1`](./contracts/ethereum-1/0x3147528e778075e216aabc583ac7b823e4f133a1/) | GovDev | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedda10...35ab7e`](./contracts/ethereum-1/0xedda10a93767b07f6913cb01479f6418eb35ab7e/) | LibPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22b6d0...c53b1e`](./contracts/ethereum-1/0x22b6d0df02ff7480c77d73a755e5e5ecdac53b1e/) | LibSherX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b222a...d16e59`](./contracts/ethereum-1/0x0b222a6aa23fb5cff3ef7e5e5857aa3673d16e59/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca1bf9...9a2f43`](./contracts/ethereum-1/0xca1bf9e6add6155e92dc1dc7c0bf210c159a2f43/) | NativeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc11843...1c23f9`](./contracts/ethereum-1/0xc118439d0630873cdf3a1fee798b22c2b61c23f9/) | Payout | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4efe56...b4ca40`](./contracts/ethereum-1/0x4efe566cab5e1018be83e9c5de14836b96b4ca40/) | PoolBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ca057...067134`](./contracts/ethereum-1/0x8ca05763a3e46d27d1fc37abaa622ed8a9067134/) | PoolDevOnly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce9dd6...b5ce22`](./contracts/ethereum-1/0xce9dd62a533cf89abe5018af9682980922b5ce22/) | PoolOpen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b354a...65c5e4`](./contracts/ethereum-1/0x3b354a4bd898d875d8ecfc4d7797ff8a1665c5e4/) | PoolStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8583f...e262a6`](./contracts/ethereum-1/0xf8583f22c2f6f8cd27f62879a0fb4319bce262a6/) | SherBuy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7289c6...02bdd3`](./contracts/ethereum-1/0x7289c61c75dcdb8fe4df0b937c08c9c40902bdd3/) | SherClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5775f3...fdb31b`](./contracts/ethereum-1/0x5775f32787656e77dd99f20f4e478ddc85fdb31b/) | SherDistributionManagerEmpty | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf60466...6ee88b`](./contracts/ethereum-1/0xf6046651beaf118ed1f4fe2c93526c9e186ee88b/) | SherX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeafd0c...b9294a`](./contracts/ethereum-1/0xeafd0ce3eb91d08b36136e9fdd42b54d1bb9294a/) | SherXERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=17

Zero-match audit list:

- [24402] Sherlock - Sherlock Audit October 2022.pdf

Fork inheritance lineage and inherited audits are included when available.
