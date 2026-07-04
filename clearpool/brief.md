# Agentic Audit Brief: Clearpool

## Project Overview

- Project: Clearpool (`clearpool`)
- Website: [https://clearpool.finance](https://clearpool.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.296Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: avalanche, base, ethereum, mantle, optimism, polygon, polygon-zkevm
- Contract surface: 55 unique implementations (94 raw deployments)
- DeFi Llama TVL: $44,431,289.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Uncollateralized Lending. Structurally: 17 project-authored contract(s) across 6 chain(s); 5 ERC20 tokens, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 5 functional families. Its contracts share 3 common project-authored base contract(s) (nzaguard, cpoolcore, oftcore). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 110; live-surface contracts included: 92 (64 live, 28 unknown).
- Excluded by liveness: 18 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 16/25 (64.0%)
- Deployed-live implementations: 32 of 55 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 16/32
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 55
- Raw deployments: 94
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 16 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 16 | 50.0% | 2022-03 |
| CertiK | Tier 2 | 4 | 12.5% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Auction | unknown | polygon | n/a | 2 deployments: polygon [`0x3b194b...798d00`](./contracts/polygon-137/0x3b194bb8c432a465b88d5b0005470ac733798d00/); polygon `0xdad6e9...c66453` | ✅ Audited |
| Auction | unknown | mantle | n/a | 4 deployments: polygon `0x7e5034...d9251c`; mantle [`0x661bf0...8519df`](./contracts/mantle-5000/0x661bf079980696f40570dca9d64ef525458519df/); mantle `0xa36937...1786f7`; base `0xb939a6...10d052` | ✅ Audited |
| Auction | unknown | mantle | n/a | 2 deployments: mantle [`0x7554fa...4479ae`](./contracts/mantle-5000/0x7554fa6f01e8dc237818aaed54204799544479ae/); mantle `0xfe0c81...e74103` | ✅ Audited |
| Auction | unknown | base | n/a | [`0x0762a9...dd2447`](./contracts/base-8453/0x0762a9399d03430451f39045b0c4d3eb5fdd2447/) | ✅ Audited |
| CPOOL | core_logic | ethereum | n/a | [`0x66761f...c2fac5`](./contracts/ethereum-1/0x66761fa41377003622aee3c7675fc7b5c1c2fac5/) | ✅ Audited |
| MembershipStaking | unknown | polygon | n/a | 2 deployments: polygon [`0x4a7e8e...3b7c2a`](./contracts/polygon-137/0x4a7e8e3c4498f9df2d588aaf6d55fa90f23b7c2a/); polygon `0x67a24c...ac9b67` | ✅ Audited |
| MembershipStaking | unknown | mantle | n/a | 2 deployments: mantle [`0x1f64d0...433db3`](./contracts/mantle-5000/0x1f64d0d771ca7bdc06dd8faa99a4be8a07433db3/); mantle `0xe5860c...6a798a` | ✅ Audited |
| PoolFactory | unknown | optimism | n/a | 2 deployments: optimism [`0x01af79...31f26d`](./contracts/optimism-10/0x01af79c842e2089b16e2013d2ac02fc1c731f26d/); optimism `0xe3e26d...9eb755` | ✅ Audited |
| PoolFactory | unknown | polygon | n/a | [`0x215cca...da79ba`](./contracts/polygon-137/0x215cca938df02c9814be2d39a285b941fbda79ba/) | ✅ Audited |
| PoolFactory | unknown | mantle | n/a | 3 deployments: mantle [`0xa7209c...42d729`](./contracts/mantle-5000/0xa7209ca2d4a6a9b9f14e67b8013f2b72fb42d729/); mantle `0xb217d9...bcde41`; mantle `0xd51f04...61e5ce` | ✅ Audited |
| PoolFactory | unknown | base | n/a | 5 deployments: polygon `0x16497f...0c2508`; polygon `0x7de081...ccee87`; mantle `0x063d68...3850a7`; mantle `0x8e40e7...f25172`; base [`0x01af79...31f26d`](./contracts/base-8453/0x01af79c842e2089b16e2013d2ac02fc1c731f26d/) | ✅ Audited |
| PoolFactory | registry | base | n/a | [`0x199a01...05dfad`](./contracts/base-8453/0x199a016ffbe14781365bcaed9cc52598b205dfad/) | ✅ Audited |
| PoolFactory | unknown | base | n/a | 2 deployments: base [`0x721dbb...5cc5cd`](./contracts/base-8453/0x721dbbb1a34ea22076620b7a8dfa66bf6e5cc5cd/); base `0xbdf557...b56943` | ✅ Audited |
| PoolMaster | unknown | polygon | n/a | [`0x45e766...dc1fe0`](./contracts/polygon-137/0x45e766e2ef6d8282a533e39c3c1690bfd4dc1fe0/) | ✅ Audited |
| PoolMaster | unknown | base | n/a | 8 deployments: optimism `0x616b66...9db213`; polygon `0x331781...c850ff`; polygon `0x9827d9...280cfd`; mantle `0xc15871...41fe72`; mantle `0xe16860...f8c7c7`; base [`0x0fc1a1...0a2ff3`](./contracts/base-8453/0x0fc1a124af80535747c5439c3e0667146a0a2ff3/); base `0x207ac3...575a47`; base `0xca7aaa...738314` | ✅ Audited |
| PoolMaster | unknown | base | n/a | [`0xa83b8f...78d27a`](./contracts/base-8453/0xa83b8f1756fd077c825c9ad308dc0fada078d27a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CPOOLOFT | core_logic | base | n/a | 2 deployments: optimism `0x379c8d...faacd9`; base [`0x29157e...783a5c`](./contracts/base-8453/0x29157e2b6a34ae1787cddd05ad54dd4aa9783a5c/) | ⚠️ Unaudited |
| CPOOLOFT20 | core_logic | mantle | n/a | 2 deployments: polygon `0xb08b36...3a2d91`; mantle [`0x0c8927...5279d8`](./contracts/mantle-5000/0x0c8927de225bb1ed9db05aa7d641e434b95279d8/) | ⚠️ Unaudited |
| Pool | unknown | optimism | n/a | [`0x281af7...cd4197`](./contracts/optimism-10/0x281af75c2919a1f579b507f4ab8ce77fcacd4197/) | ⚠️ Unaudited |
| Pool | unknown | base | n/a | [`0xb98c68...edb66c`](./contracts/base-8453/0xb98c680443f28ccdeb525da31419a4aea6edb66c/) | ⚠️ Unaudited |
| Prime | unknown | optimism | n/a | 2 deployments: optimism [`0x5a9c1b...1e2be5`](./contracts/optimism-10/0x5a9c1b19038f88b235be0eab23333472b01e2be5/); optimism `0xc31761...ec16de` | ⚠️ Unaudited |
| Prime | unknown | base | n/a | 2 deployments: base [`0xb8a7e3...b50865`](./contracts/base-8453/0xb8a7e3ac3010ef846e9cac18895aa82d35b50865/); base `0xf041a2...896a9b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | 7 deployments: optimism `0x785395...cd9552`; polygon `0xee3eac...4aa19e`; mantle `0x8eff31...9bd1cc`; base [`0x616b66...9db213`](./contracts/base-8453/0x616b66f2a357959af6d98652dd9bbb5db69db213/); base `0xe3e26d...9eb755`; avalanche `0x8bc02e...18b2b3`; avalanche `0xb8a7e3...b50865` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x7593e8...df23ff`](./contracts/avalanche-43114/0x7593e8fc59cb7fb3839a2b4815576c68b3df23ff/); avalanche `0x7a0528...c89067` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x79740b...c58690`](./contracts/avalanche-43114/0x79740bcd9aae3a15a36736e896cd77368ac58690/); avalanche `0xb4546c...b009df` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | n/a | [`0x8e5573...ab2b7a`](./contracts/avalanche-43114/0x8e557363ac9e5cbf09a2616a302ca3c8f6ab2b7a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0xc31761...ec16de`](./contracts/avalanche-43114/0xc31761d26c856f6d2f31d0acafbb1327f5ec16de/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0xe3e26d...9eb755`](./contracts/avalanche-43114/0xe3e26d4187f3a8e100223576a37d30f2a89eb755/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | mantle | n/a | 3 deployments: mantle [`0x0e07ce...002e7d`](./contracts/mantle-5000/0x0e07ce3e7ad3c61fcb7f7e5542a8c61e18002e7d/); base `0x379c8d...faacd9`; avalanche `0x785395...cd9552` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | avalanche | n/a | [`0x428d56...4d4dca`](./contracts/avalanche-43114/0x428d561f82bbb9322e5a634490722f26714d4dca/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | avalanche | n/a | [`0x721dbb...5cc5cd`](./contracts/avalanche-43114/0x721dbbb1a34ea22076620b7a8dfa66bf6e5cc5cd/) | ⚠️ Unaudited |
| WhitelistControl | unknown | base | n/a | [`0x8ef02f...89b280`](./contracts/base-8453/0x8ef02f52adc50f750e2752d9d68e84347989b280/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x1c91b3...114aa9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3786a1...9324e2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x544c91...8885af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5c328d...50642f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x612b62...9f3e37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x703a49...7e1fb0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7aada5...618af7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xad254c...7f9d41` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc4b4d0...c057fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea2556...dc1ff1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xed7067...d6bcf3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa1152...044464` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfd61cd...173776` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | 4 deployments: polygon-zkevm `0x04df6f...cd4445`; polygon-zkevm `0x5cda11...255900`; polygon-zkevm `0xc3630b...f3d3fe`; polygon-zkevm `0xce3fec...c7ca16` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8996e0...64200e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x919e83...a262c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x01af79...31f26d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x246df1...ef50e0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x281af7...cd4197` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5a9c1b...1e2be5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb98c68...edb66c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbdf557...b56943` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf041a2...896a9b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [pashov-boring-vault.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [pashov-hyperlane.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/pashov-hyperlane.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [skynet.certik.com/projects/clearpool](https://skynet.certik.com/projects/clearpool) | CertiK | Audit | 2022-03 | stale | Direct | contract_name | 9 | medium |
| [spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf](https://3929482601-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FhkiSI8bK3ThlypJ3jdEC%2Fuploads%2FOFonx1OQS6ni5lUsyiPx%2FClearpool%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 38 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x29157e...783a5c`](./contracts/base-8453/0x29157e2b6a34ae1787cddd05ad54dd4aa9783a5c/) | CPOOLOFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0c8927...5279d8`](./contracts/mantle-5000/0x0c8927de225bb1ed9db05aa7d641e434b95279d8/) | CPOOLOFT20 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x281af7...cd4197`](./contracts/optimism-10/0x281af75c2919a1f579b507f4ab8ce77fcacd4197/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb98c68...edb66c`](./contracts/base-8453/0xb98c680443f28ccdeb525da31419a4aea6edb66c/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5a9c1b...1e2be5`](./contracts/optimism-10/0x5a9c1b19038f88b235be0eab23333472b01e2be5/) | Prime | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb8a7e3...b50865`](./contracts/base-8453/0xb8a7e3ac3010ef846e9cac18895aa82d35b50865/) | Prime | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8ef02f...89b280`](./contracts/base-8453/0x8ef02f52adc50f750e2752d9d68e84347989b280/) | WhitelistControl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=47

Zero-match audit list:

- [5805] 0xmacro-boring-vault-arctic-0.pdf
- [5806] 0xmacro-boring-vault-arctic-1.pdf
- [5807] pashov-boring-vault.pdf
- [5808] pashov-hyperlane.pdf
- [5809] spearbit-boring-vault-arctic-0.pdf

Fork inheritance lineage and inherited audits are included when available.
