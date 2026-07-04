# Agentic Audit Brief: VaporDex

## Project Overview

- Project: VaporDex (`vapordex`)
- Website: [https://www.vapordex.io](https://www.vapordex.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.291Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: avalanche
- Contract surface: 34 unique implementations (35 raw deployments)
- DeFi Llama TVL: $331,207.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 33 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 6 common project-authored base contract(s) (peripheryimmutablestate, multicall, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 35 (34 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/31 (3.2%)
- Deployed-live implementations: 34 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/34
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 35
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 2 | 5.9% | 2021-04 |
| ABDK Consulting (UPSTREAM Uniswap V3 periphery — inherited via fork, not VaporDex's own) | Tier 2 | 1 | 2.9% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NonfungiblePositionManager | unknown | avalanche | n/a | [`0xc967b2...ed9a3a`](./contracts/avalanche-43114/0xc967b23826ddab00d9aad3702cbf5261b7ed9a3a/) | ✅ Audited |
| UniswapV3Factory | unknown | avalanche | n/a | [`0x62b672...504169`](./contracts/avalanche-43114/0x62b672e531f8c11391019f6fba0b8b6143504169/) | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AuthorizationFacet | unknown | avalanche | n/a | [`0x1ad983...e751c3`](./contracts/avalanche-43114/0x1ad983287c5417fe39b4190d9e46cd6fc1e751c3/) | ⚠️ Unaudited |
| BoostFacet | unknown | avalanche | n/a | [`0x5f630c...a5f80c`](./contracts/avalanche-43114/0x5f630cbd93e406a6b1b852fa0824b42e7aa5f80c/) | ⚠️ Unaudited |
| BytesManipulation | unknown | avalanche | n/a | [`0x26b794...144203`](./contracts/avalanche-43114/0x26b794235422e7c6f3ac6c717b10598c2a144203/) | ⚠️ Unaudited |
| ClaimFacet | unknown | avalanche | n/a | [`0xb654ce...429bd4`](./contracts/avalanche-43114/0xb654ce5224c9a8c7c5985798f47a976e84429bd4/) | ⚠️ Unaudited |
| DepositFacet | unknown | avalanche | n/a | [`0x93d0de...675300`](./contracts/avalanche-43114/0x93d0de9ae7213113cc0d822cf4d7589200675300/) | ⚠️ Unaudited |
| DexAggregatorDiamond | unknown | avalanche | n/a | 2 deployments: avalanche [`0x55477d...450e63`](./contracts/avalanche-43114/0x55477d8537ede381784b448876afaa98aa450e63/); avalanche `0xb4cae3...94e7fe` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | avalanche | n/a | [`0x7b6bca...4c83d9`](./contracts/avalanche-43114/0x7b6bca9f8f4e62d1bd92043a13795edee94c83d9/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | avalanche | n/a | [`0x7712be...f23c0f`](./contracts/avalanche-43114/0x7712bed48612f9ab67d66166fc655a58aef23c0f/) | ⚠️ Unaudited |
| DiamondManagerFacet | unknown | avalanche | n/a | [`0x20b27c...da4b19`](./contracts/avalanche-43114/0x20b27c17c613cd82e8fdafcda55dd87bd4da4b19/) | ⚠️ Unaudited |
| EmissionsManagerV2 | unknown | avalanche | n/a | [`0xdf6064...0e9f79`](./contracts/avalanche-43114/0xdf6064a582d312f3e7bdda2ead9ff755730e9f79/) | ⚠️ Unaudited |
| FeeCollectorFacet | unknown | avalanche | n/a | [`0x50bfe2...71e239`](./contracts/avalanche-43114/0x50bfe2e90d4562624c478c86c85810442b71e239/) | ⚠️ Unaudited |
| GenesisStaking | unknown | avalanche | n/a | [`0xd21fe5...d1bf00`](./contracts/avalanche-43114/0xd21fe537c97054f40890f012955a536d80d1bf00/) | ⚠️ Unaudited |
| MiningPassFacet | unknown | avalanche | n/a | [`0xe87a9d...cb11ae`](./contracts/avalanche-43114/0xe87a9dc52a82a0356744e8b9c6cf549a30cb11ae/) | ⚠️ Unaudited |
| OwnershipFacet | unknown | avalanche | n/a | [`0x442cd3...855bb6`](./contracts/avalanche-43114/0x442cd3cfbc2d7218bd8bdd2ce7146bacf0855bb6/) | ⚠️ Unaudited |
| PausationFacet | unknown | avalanche | n/a | [`0xa79c06...169b04`](./contracts/avalanche-43114/0xa79c069354cd9cc65f8be1a81929efc07b169b04/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | [`0x2add09...56552e`](./contracts/avalanche-43114/0x2add09b1a47a8d86e807559fd10f8f176156552e/) | ⚠️ Unaudited |
| QuoterV2 | unknown | avalanche | n/a | [`0xc8c97d...272572`](./contracts/avalanche-43114/0xc8c97d11184069cdd2dfe85f097c607ed3272572/) | ⚠️ Unaudited |
| ReplenishmentPool | unknown | avalanche | n/a | [`0x0fa2cc...7d07c4`](./contracts/avalanche-43114/0x0fa2ccc39cc3b225a7649ed84ec76ee5217d07c4/) | ⚠️ Unaudited |
| RewardsPool | unknown | avalanche | n/a | [`0x359ef2...08873a`](./contracts/avalanche-43114/0x359ef23e2c8bcfe0ee5192bc34d3f6a2c808873a/) | ⚠️ Unaudited |
| Router | unknown | avalanche | n/a | [`0xdef9ee...fd5cae`](./contracts/avalanche-43114/0xdef9ee39fd82ee57a1b789bc877e2cbd88fd5cae/) | ⚠️ Unaudited |
| StableVapeStaking | unknown | avalanche | n/a | [`0x1c9cba...5b8d94`](./contracts/avalanche-43114/0x1c9cba0cec8ad45f75d5f5bdb0c539acb55b8d94/) | ⚠️ Unaudited |
| Stratosphere | unknown | avalanche | n/a | [`0xd1e772...4fd4f8`](./contracts/avalanche-43114/0xd1e77235b2537d96a595a611b84a7471474fd4f8/) | ⚠️ Unaudited |
| SwapRouter02 | unknown | avalanche | n/a | [`0xe61efa...13548a`](./contracts/avalanche-43114/0xe61efa294c7eec0c96b3df79b5c1975f0613548a/) | ⚠️ Unaudited |
| TickLens | unknown | avalanche | n/a | [`0xbb017b...e9036f`](./contracts/avalanche-43114/0xbb017b46375d510093c285d1e2b11d8c4ee9036f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x08e287...f44b60`](./contracts/avalanche-43114/0x08e287adcf9bf6773a87e1a278aa9042bef44b60/) | ⚠️ Unaudited |
| UnlockFacet | unknown | avalanche | n/a | [`0x18f7e0...1cd790`](./contracts/avalanche-43114/0x18f7e04f7968340e4604646999109ac4ae1cd790/) | ⚠️ Unaudited |
| V3Migrator | unknown | avalanche | n/a | [`0xea3379...2b0c6e`](./contracts/avalanche-43114/0xea3379a026cb3e6c5ac847f8e24e523c762b0c6e/) | ⚠️ Unaudited |
| VapeToken | unknown | avalanche | n/a | [`0x0db606...2b51c3`](./contracts/avalanche-43114/0x0db60699e7be209cce1a43829e2dd3a50e2b51c3/) | ⚠️ Unaudited |
| VaporDEXAnniversaryGenesis | unknown | avalanche | n/a | [`0x05f954...354d02`](./contracts/avalanche-43114/0x05f954784749466b1f13f051f8c9cad336354d02/) | ⚠️ Unaudited |
| VaporDEXFactory | unknown | avalanche | n/a | [`0xc009a6...7ae257`](./contracts/avalanche-43114/0xc009a670e2b02e21e7e75ae98e254f467f7ae257/) | ⚠️ Unaudited |
| VaporDEXRouter02 | unknown | avalanche | n/a | [`0x19c0fc...12a20d`](./contracts/avalanche-43114/0x19c0fc4562a4b76f27f86c676ef5a7e38d12a20d/) | ⚠️ Unaudited |
| WithdrawFacet | unknown | avalanche | n/a | [`0xcb2d87...d2df59`](./contracts/avalanche-43114/0xcb2d87178d9489d59a9b3948dcbf7b718cd2df59/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/vapordex](https://skynet.certik.com/projects/vapordex) | CertiK | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [audit.pdf](https://raw.githubusercontent.com/VaporFi/vapordex-contracts-v2/main/packages/core/audits/tob/audit.pdf) | Trail of Bits (UPSTREAM Uniswap V3 — inherited via fork, not VaporDex's own) | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit.pdf](https://raw.githubusercontent.com/VaporFi/vapordex-contracts-v2/main/packages/core/audits/abdk/audit.pdf) | ABDK Consulting (UPSTREAM Uniswap V3 — inherited via fork, not VaporDex's own) | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit.pdf](https://raw.githubusercontent.com/VaporFi/vapordex-contracts-v2/main/packages/periphery/audits/abdk/audit.pdf) | ABDK Consulting (UPSTREAM Uniswap V3 periphery — inherited via fork, not VaporDex's own) | Audit | 2021-04 | stale | Direct | contract_name | 1 | high |
| [audit.pdf](https://github.com/VaporFi/vapordex-contracts-v2/blob/main/packages/periphery/audits/abdk/audit.pdf) | ABDK | Audit | 2021-04 | stale | Direct | contract_name | 1 | high |
| [audit.pdf](https://github.com/VaporFi/vapordex-contracts-v2/blob/main/packages/core/audits/tob/audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit.pdf](https://github.com/VaporFi/vapordex-contracts-v2/blob/main/packages/core/audits/abdk/audit.pdf) | ABDK | Audit | 2021-03 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x1ad983...e751c3`](./contracts/avalanche-43114/0x1ad983287c5417fe39b4190d9e46cd6fc1e751c3/) | AuthorizationFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5f630c...a5f80c`](./contracts/avalanche-43114/0x5f630cbd93e406a6b1b852fa0824b42e7aa5f80c/) | BoostFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x26b794...144203`](./contracts/avalanche-43114/0x26b794235422e7c6f3ac6c717b10598c2a144203/) | BytesManipulation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb654ce...429bd4`](./contracts/avalanche-43114/0xb654ce5224c9a8c7c5985798f47a976e84429bd4/) | ClaimFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x93d0de...675300`](./contracts/avalanche-43114/0x93d0de9ae7213113cc0d822cf4d7589200675300/) | DepositFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x55477d...450e63`](./contracts/avalanche-43114/0x55477d8537ede381784b448876afaa98aa450e63/) | DexAggregatorDiamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7b6bca...4c83d9`](./contracts/avalanche-43114/0x7b6bca9f8f4e62d1bd92043a13795edee94c83d9/) | DiamondCutFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7712be...f23c0f`](./contracts/avalanche-43114/0x7712bed48612f9ab67d66166fc655a58aef23c0f/) | DiamondLoupeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x20b27c...da4b19`](./contracts/avalanche-43114/0x20b27c17c613cd82e8fdafcda55dd87bd4da4b19/) | DiamondManagerFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdf6064...0e9f79`](./contracts/avalanche-43114/0xdf6064a582d312f3e7bdda2ead9ff755730e9f79/) | EmissionsManagerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x50bfe2...71e239`](./contracts/avalanche-43114/0x50bfe2e90d4562624c478c86c85810442b71e239/) | FeeCollectorFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd21fe5...d1bf00`](./contracts/avalanche-43114/0xd21fe537c97054f40890f012955a536d80d1bf00/) | GenesisStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe87a9d...cb11ae`](./contracts/avalanche-43114/0xe87a9dc52a82a0356744e8b9c6cf549a30cb11ae/) | MiningPassFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x442cd3...855bb6`](./contracts/avalanche-43114/0x442cd3cfbc2d7218bd8bdd2ce7146bacf0855bb6/) | OwnershipFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa79c06...169b04`](./contracts/avalanche-43114/0xa79c069354cd9cc65f8be1a81929efc07b169b04/) | PausationFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc8c97d...272572`](./contracts/avalanche-43114/0xc8c97d11184069cdd2dfe85f097c607ed3272572/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0fa2cc...7d07c4`](./contracts/avalanche-43114/0x0fa2ccc39cc3b225a7649ed84ec76ee5217d07c4/) | ReplenishmentPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x359ef2...08873a`](./contracts/avalanche-43114/0x359ef23e2c8bcfe0ee5192bc34d3f6a2c808873a/) | RewardsPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdef9ee...fd5cae`](./contracts/avalanche-43114/0xdef9ee39fd82ee57a1b789bc877e2cbd88fd5cae/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1c9cba...5b8d94`](./contracts/avalanche-43114/0x1c9cba0cec8ad45f75d5f5bdb0c539acb55b8d94/) | StableVapeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd1e772...4fd4f8`](./contracts/avalanche-43114/0xd1e77235b2537d96a595a611b84a7471474fd4f8/) | Stratosphere | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe61efa...13548a`](./contracts/avalanche-43114/0xe61efa294c7eec0c96b3df79b5c1975f0613548a/) | SwapRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xbb017b...e9036f`](./contracts/avalanche-43114/0xbb017b46375d510093c285d1e2b11d8c4ee9036f/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x18f7e0...1cd790`](./contracts/avalanche-43114/0x18f7e04f7968340e4604646999109ac4ae1cd790/) | UnlockFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xea3379...2b0c6e`](./contracts/avalanche-43114/0xea3379a026cb3e6c5ac847f8e24e523c762b0c6e/) | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0db606...2b51c3`](./contracts/avalanche-43114/0x0db60699e7be209cce1a43829e2dd3a50e2b51c3/) | VapeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x05f954...354d02`](./contracts/avalanche-43114/0x05f954784749466b1f13f051f8c9cad336354d02/) | VaporDEXAnniversaryGenesis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc009a6...7ae257`](./contracts/avalanche-43114/0xc009a670e2b02e21e7e75ae98e254f467f7ae257/) | VaporDEXFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x19c0fc...12a20d`](./contracts/avalanche-43114/0x19c0fc4562a4b76f27f86c676ef5a7e38d12a20d/) | VaporDEXRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcb2d87...d2df59`](./contracts/avalanche-43114/0xcb2d87178d9489d59a9b3948dcbf7b718cd2df59/) | WithdrawFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=3

Zero-match audit list:

- [21473] skynet.certik.com/projects/vapordex
- [21474] audit.pdf
- [21475] audit.pdf
- [24532] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
