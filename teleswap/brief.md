# Agentic Audit Brief: TeleSwap

## Project Overview

- Project: TeleSwap (`teleswap`)
- Website: [https://teleswap.xyz](https://teleswap.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.832Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: bsc, polygon
- Contract surface: 38 unique implementations (39 raw deployments)
- DeFi Llama TVL: $242,282.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 26 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 94; live-surface contracts included: 39 (15 live, 24 unknown).
- Excluded by liveness: 55 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/14 (21.4%)
- Deployed-live implementations: 14 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/14
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 38
- Raw deployments: 39
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 3 | 21.4% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BitcoinRelay | unknown | polygon | n/a | [`0x7deb66341b1d499d7e699589d0cf665de4132ea3`](./contracts/polygon-137/0x7deb66341b1d499d7e699589d0cf665de4132ea3/) | ✅ Audited |
| PriceOracle | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x7aabb0779782247384a1c91844211516e93b1d63`](./contracts/bsc-56/0x7aabb0779782247384a1c91844211516e93b1d63/); polygon `0x96b76ab42289688b68882cdccd071b2c39b0165e` | ✅ Audited |
| TeleBTC | unknown | polygon | n/a | [`0x515d720b9d219f1931205d5b8d842be1fe2febde`](./contracts/polygon-137/0x515d720b9d219f1931205d5b8d842be1fe2febde/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Brc20RouterLogic | adapter | bsc | n/a | [`0xab82c4ae964bfbf257297ac55bb9fae0ad0084c7`](./contracts/bsc-56/0xab82c4ae964bfbf257297ac55bb9fae0ad0084c7/) | ⚠️ Unaudited |
| BurnRouterLogic | adapter | bsc | n/a | [`0x2787d48e0b74125597dd479978a5de09bb9a3c15`](./contracts/bsc-56/0x2787d48e0b74125597dd479978a5de09bb9a3c15/) | ⚠️ Unaudited |
| BurnRouterLogic | adapter | polygon | n/a | [`0x0009876c47f6b2f0bcb41eb9729736757486c75f`](./contracts/polygon-137/0x0009876c47f6b2f0bcb41eb9729736757486c75f/) | ⚠️ Unaudited |
| CcExchangeRouterLogic | adapter | bsc | n/a | [`0xca5416364720c7324a547d39b1db496a2dcd4f0d`](./contracts/bsc-56/0xca5416364720c7324a547d39b1db496a2dcd4f0d/) | ⚠️ Unaudited |
| CcExchangeRouterLogic | adapter | polygon | n/a | [`0xd1e9ff33ec28f9dd8d99e685a2b0f29dcaa095a3`](./contracts/polygon-137/0xd1e9ff33ec28f9dd8d99e685a2b0f29dcaa095a3/) | ⚠️ Unaudited |
| CcTransferRouterLogic | adapter | bsc | n/a | [`0xa38ad0d52b89c20c2229e916358d2ceb45bec5ff`](./contracts/bsc-56/0xa38ad0d52b89c20c2229e916358d2ceb45bec5ff/) | ⚠️ Unaudited |
| CcTransferRouterLogic | adapter | polygon | n/a | [`0x04367d74332137908bef9acc0ab00a299a823707`](./contracts/polygon-137/0x04367d74332137908bef9acc0ab00a299a823707/) | ⚠️ Unaudited |
| LockersManagerLogic | governance | bsc | n/a | [`0x84f74e97ebab432cee185d601290ce0a483987a5`](./contracts/bsc-56/0x84f74e97ebab432cee185d601290ce0a483987a5/) | ⚠️ Unaudited |
| LockersManagerLogic | governance | polygon | n/a | [`0xf5d6d369a7f4147f720aeadd4c4f903ae8046166`](./contracts/polygon-137/0xf5d6d369a7f4147f720aeadd4c4f903ae8046166/) | ⚠️ Unaudited |
| TeleOrdinalLogic | unknown | polygon | n/a | [`0x1edcaf92eadc6cc0eb17a8160382ab78c192b54f`](./contracts/polygon-137/0x1edcaf92eadc6cc0eb17a8160382ab78c192b54f/) | ⚠️ Unaudited |
| YieldFarmingLogic | unknown | bsc | n/a | [`0x1d506292b0f1aac7d74624c00238f835b3d00e66`](./contracts/bsc-56/0x1d506292b0f1aac7d74624c00238f835b3d00e66/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x10d3cd258ec981eba81715190660c56387f278d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23d7c68a4e27fd1cfe3788858252e26bf6ba3c8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50de2a6d91b78268b87eef300bf5171614774297` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf539871a5b1a955fe45dcbd259dfe78c231e4ee5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x076484fa0e123b765a63ba1e0fd94233dfdc17d1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ba43d71522b320072c082fbae3e99b22140dca5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x167d89a98f1e2f0fa908395beea3be66b3c60a0d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1b94085c1cfb947ecf89fa953061704f5a0736e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x29aeab60ebcf9f5d1b54a6041ee9040cb1bf0065` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x51169142ee7a1d1bbb8e8b82dab763bb2ef95ecb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7fbf537cb51a50f0565cf8649eab4258caac80e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82cdf1ef21dc088a5cc687d29c85adf8daaeffbd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x88f1bced6aff60ca9a8e11b6d5a19d216cf32850` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa03b761d0b9edcbe6ad67666def6e13957e2bf46` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa59bebb4d61729097f6869991a2b2afa8593282c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa62ae6812aae7d9b16eac576050e34f3eed3327b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa6a8d7ed2674003fed0438243f56dc605cc028d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa9e3173cb7d6851feaa0db1c28f0bec2a5b0b213` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xad557045e5ed05693982d4e7fd1bb3c92bd801f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc1465eaea99301260feca6fbd27b2a4579594f80` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc4720d51a966f9c221644d3b227ecfe435adb2f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc82cdcf79889d6947ab254ac0929fcda2ad1e1a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe2dc1afee166734a3d4fccc36b18d1cb77ca93c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf802e04f31d202fa74e8bb6af4c4a119136f8a2b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Quantstamp-Bitcoin-EVM.pdf](https://github.com/TeleportDAO/audits/blob/main/reports/Quantstamp-Bitcoin-EVM.pdf) | Quantstamp | Audit | 2023-02 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xab82c4ae964bfbf257297ac55bb9fae0ad0084c7`](./contracts/bsc-56/0xab82c4ae964bfbf257297ac55bb9fae0ad0084c7/) | Brc20RouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2787d48e0b74125597dd479978a5de09bb9a3c15`](./contracts/bsc-56/0x2787d48e0b74125597dd479978a5de09bb9a3c15/) | BurnRouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0009876c47f6b2f0bcb41eb9729736757486c75f`](./contracts/polygon-137/0x0009876c47f6b2f0bcb41eb9729736757486c75f/) | BurnRouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xca5416364720c7324a547d39b1db496a2dcd4f0d`](./contracts/bsc-56/0xca5416364720c7324a547d39b1db496a2dcd4f0d/) | CcExchangeRouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd1e9ff33ec28f9dd8d99e685a2b0f29dcaa095a3`](./contracts/polygon-137/0xd1e9ff33ec28f9dd8d99e685a2b0f29dcaa095a3/) | CcExchangeRouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa38ad0d52b89c20c2229e916358d2ceb45bec5ff`](./contracts/bsc-56/0xa38ad0d52b89c20c2229e916358d2ceb45bec5ff/) | CcTransferRouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04367d74332137908bef9acc0ab00a299a823707`](./contracts/polygon-137/0x04367d74332137908bef9acc0ab00a299a823707/) | CcTransferRouterLogic | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x84f74e97ebab432cee185d601290ce0a483987a5`](./contracts/bsc-56/0x84f74e97ebab432cee185d601290ce0a483987a5/) | LockersManagerLogic | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf5d6d369a7f4147f720aeadd4c4f903ae8046166`](./contracts/polygon-137/0xf5d6d369a7f4147f720aeadd4c4f903ae8046166/) | LockersManagerLogic | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1edcaf92eadc6cc0eb17a8160382ab78c192b54f`](./contracts/polygon-137/0x1edcaf92eadc6cc0eb17a8160382ab78c192b54f/) | TeleOrdinalLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d506292b0f1aac7d74624c00238f835b3d00e66`](./contracts/bsc-56/0x1d506292b0f1aac7d74624c00238f835b3d00e66/) | YieldFarmingLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
