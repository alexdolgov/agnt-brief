# Agentic Audit Brief: ELYFI

## Project Overview

- Project: ELYFI (`elyfi`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.764Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: bsc, ethereum, klaytn
- Contract surface: 18 unique implementations (25 raw deployments)
- DeFi Llama TVL: $2,119,331.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 19 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 6 ERC20 tokens, 2 ERC1155 multi-tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (singleadminaccesscontrol). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 25 (21 live, 4 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/15 (6.7%)
- Deployed-live implementations: 15 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/15
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 18
- Raw deployments: 25
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Haechi Audit | Tier 2 | 1 | 6.7% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ElyfiToken | token | ethereum | n/a | [`0x4da34f8264cb33a5c9f17081b9ef5ff6091116f4`](./contracts/ethereum-1/0x4da34f8264cb33a5c9f17081b9ef5ff6091116f4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetReserve | unknown | ethereum | n/a | [`0x221cb17e95aa6594cd57e2c4b2f875d4236913bc`](./contracts/ethereum-1/0x221cb17e95aa6594cd57e2c4b2f875d4236913bc/) | ⚠️ Unaudited |
| CrossChainZap | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4b19e558ad35b63e385e7c197c0c25072df73dd3`](./contracts/ethereum-1/0x4b19e558ad35b63e385e7c197c0c25072df73dd3/); ethereum `0x87e093b368773ff13daf4b57ffb03c364ffca395`; ethereum `0xa0d697a25b95e2f3bd1402c15450bcce54297a6e` | ⚠️ Unaudited |
| ERC20Metadata | unknown | ethereum | n/a | [`0xc10b6dafe4d7f7c693f44c51e716166b599644ba`](./contracts/ethereum-1/0xc10b6dafe4d7f7c693f44c51e716166b599644ba/) | ⚠️ Unaudited |
| Index | unknown | bsc | n/a | [`0x66368d5be45fbf209fc1f34733da31708a7c03a0`](./contracts/bsc-56/0x66368d5be45fbf209fc1f34733da31708a7c03a0/) | ⚠️ Unaudited |
| MoneyPool | core_logic | bsc | n/a | [`0x0bdfef5f8b75741d33a22d85022244cbe793da24`](./contracts/bsc-56/0x0bdfef5f8b75741d33a22d85022244cbe793da24/) | ⚠️ Unaudited |
| Rate | unknown | bsc | n/a | [`0x51ec26d9c0806e42a6bb8fba40bcc5f7d54400ef`](./contracts/bsc-56/0x51ec26d9c0806e42a6bb8fba40bcc5f7d54400ef/) | ⚠️ Unaudited |
| Redeemer | unknown | ethereum | n/a | [`0x39f70473ce443529c93589f116ddbb0f7ffce0d1`](./contracts/ethereum-1/0x39f70473ce443529c93589f116ddbb0f7ffce0d1/) | ⚠️ Unaudited |
| Router | adapter | ethereum | n/a | [`0x3d4926c0d5811b1d31dab8358e0317aa7fda3f0e`](./contracts/ethereum-1/0x3d4926c0d5811b1d31dab8358e0317aa7fda3f0e/) | ⚠️ Unaudited |
| sELUSD | unknown | ethereum | n/a | [`0x2cd7dc2e7446e3db781900218b90d7bb856e255a`](./contracts/ethereum-1/0x2cd7dc2e7446e3db781900218b90d7bb856e255a/) | ⚠️ Unaudited |
| Silo | unknown | ethereum | n/a | [`0x1e992f7b99dc6db863f3e32fcfe1c33c2babc775`](./contracts/ethereum-1/0x1e992f7b99dc6db863f3e32fcfe1c33c2babc775/) | ⚠️ Unaudited |
| StableMinter | unknown | ethereum | n/a | [`0x9bf7d3e803c596e0fb6c5064711fe89c297f4606`](./contracts/ethereum-1/0x9bf7d3e803c596e0fb6c5064711fe89c297f4606/) | ⚠️ Unaudited |
| StakingPoolV2 | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x24a7fb55e4ac2cb40944bc560423b496dfa8803f`](./contracts/ethereum-1/0x24a7fb55e4ac2cb40944bc560423b496dfa8803f/); ethereum `0x3f0c3e32bb166901acd0abc9452a3f0c5b8b2c9d`; ethereum `0xa33cfb48338450aecc3e7da69e7f99ac923cfc28`; ethereum `0xf26546ee9562ed60f680c747f28a6ae67a805c90`; bsc `0x73653254ed0f28d6e5a59191bbb38b06c899fbca` | ⚠️ Unaudited |
| TimeConverter | unknown | bsc | n/a | [`0x144d0b69da2cae4c299357e2fc5b4c37a234aa43`](./contracts/bsc-56/0x144d0b69da2cae4c299357e2fc5b4c37a234aa43/) | ⚠️ Unaudited |
| Validation | unknown | bsc | n/a | [`0x926f61222cd96dd1f1c4066f8626e8514babb016`](./contracts/bsc-56/0x926f61222cd96dd1f1c4066f8626e8514babb016/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0d768c1507b5099cb37e5d28b1959b831b5ebf9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1bfbf29ac46b53352a12bf493f3350b7a17b1cf8` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | 2 deployments: klaytn `0x60961ca3a40be41dddef708bf51ef2f8e9760a3b`; klaytn `0x7f97f905a8d6fe4c493d339f094232e3577b4dbd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/elyfi](https://skynet.certik.com/projects/elyfi) | CertiK | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [[HAECHI AUDIT] ElyfiToken smart contract audit report.pdf](https://github.com/elysia-dev/elyfi-token/blob/main/audit/%5BHAECHI%20AUDIT%5D%20ElyfiToken%20smart%20contract%20audit%20report.pdf) | Haechi Audit | Audit | 2021-07 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x221cb17e95aa6594cd57e2c4b2f875d4236913bc`](./contracts/ethereum-1/0x221cb17e95aa6594cd57e2c4b2f875d4236913bc/) | AssetReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b19e558ad35b63e385e7c197c0c25072df73dd3`](./contracts/ethereum-1/0x4b19e558ad35b63e385e7c197c0c25072df73dd3/) | CrossChainZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc10b6dafe4d7f7c693f44c51e716166b599644ba`](./contracts/ethereum-1/0xc10b6dafe4d7f7c693f44c51e716166b599644ba/) | ERC20Metadata | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66368d5be45fbf209fc1f34733da31708a7c03a0`](./contracts/bsc-56/0x66368d5be45fbf209fc1f34733da31708a7c03a0/) | Index | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0bdfef5f8b75741d33a22d85022244cbe793da24`](./contracts/bsc-56/0x0bdfef5f8b75741d33a22d85022244cbe793da24/) | MoneyPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x51ec26d9c0806e42a6bb8fba40bcc5f7d54400ef`](./contracts/bsc-56/0x51ec26d9c0806e42a6bb8fba40bcc5f7d54400ef/) | Rate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39f70473ce443529c93589f116ddbb0f7ffce0d1`](./contracts/ethereum-1/0x39f70473ce443529c93589f116ddbb0f7ffce0d1/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d4926c0d5811b1d31dab8358e0317aa7fda3f0e`](./contracts/ethereum-1/0x3d4926c0d5811b1d31dab8358e0317aa7fda3f0e/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cd7dc2e7446e3db781900218b90d7bb856e255a`](./contracts/ethereum-1/0x2cd7dc2e7446e3db781900218b90d7bb856e255a/) | sELUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e992f7b99dc6db863f3e32fcfe1c33c2babc775`](./contracts/ethereum-1/0x1e992f7b99dc6db863f3e32fcfe1c33c2babc775/) | Silo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bf7d3e803c596e0fb6c5064711fe89c297f4606`](./contracts/ethereum-1/0x9bf7d3e803c596e0fb6c5064711fe89c297f4606/) | StableMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24a7fb55e4ac2cb40944bc560423b496dfa8803f`](./contracts/ethereum-1/0x24a7fb55e4ac2cb40944bc560423b496dfa8803f/) | StakingPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x144d0b69da2cae4c299357e2fc5b4c37a234aa43`](./contracts/bsc-56/0x144d0b69da2cae4c299357e2fc5b4c37a234aa43/) | TimeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x926f61222cd96dd1f1c4066f8626e8514babb016`](./contracts/bsc-56/0x926f61222cd96dd1f1c4066f8626e8514babb016/) | Validation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [2834] skynet.certik.com/projects/elyfi

Fork inheritance lineage and inherited audits are included when available.
