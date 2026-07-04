# Agentic Audit Brief: Giza

## Project Overview

- Project: Giza (`giza`)
- Website: [https://www.gizatech.xyz/](https://www.gizatech.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:55.370Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: arbitrum, base, ethereum, plasma
- Contract surface: 30 unique implementations (51 raw deployments)
- DeFi Llama TVL: $14,012.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

AI Agents. Structurally: 43 project-authored contract(s) across 4 chain(s); 7 ERC4626 vaults, 12 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 24 common project-authored base contract(s) (mtokeninterface, mtokenstorage, exponentialnoerror). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **ZyFAI** (`zyfai`) in the BaseBulker, Comet, CometExtAssetList, CometFactory, CometRewards, Configurator subsystem.
5 audits inherited from `zyfai`, scoped to that subsystem.

Total inherited audits: 5. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 72; live-surface contracts included: 50 (49 live, 1 unknown).
- Excluded by liveness: 22 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/29 (13.8%)
- Deployed-live implementations: 29 of 30 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/29
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 30
- Raw deployments: 51
- Audits discovered: 5 (0 direct, 5 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 1 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 13.8% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cecuro | Tier 2 | 4 | 13.8% | 2026 |
| Sherlock | Tier 1 | 4 | 13.8% | 2026-03 |
| Supremacy | Tier 2 | 4 | 13.8% | n/a |
| unknown | Tier 2 | 4 | 13.8% | n/a |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Comet | unknown | base | n/a | 2 deployments: base [`0x2f9b94...01d3a1`](./contracts/base-8453/0x2f9b94069788f7c71e9daa84314062609501d3a1/); base `0x7bef48...1c1065` | ✅ Audited |
| Comet | unknown | arbitrum | n/a | 3 deployments: base `0xfbcbff...bce501`; arbitrum [`0x14d2c9...5239c6`](./contracts/arbitrum-42161/0x14d2c9dd16304e8a95fc8395a37f17b6c15239c6/); arbitrum `0xf25212...246445` | ✅ Audited |
| CometFactory | unknown | arbitrum | n/a | [`0xe2aa51...484ae9`](./contracts/arbitrum-42161/0xe2aa5194e45b043afdd6e98f467c0b1c13484ae9/) | ✅ Audited |
| Configurator | unknown | arbitrum | n/a | [`0x8495af...614798`](./contracts/arbitrum-42161/0x8495af03fb797e2965bcb42cb0693e1c15614798/) | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveProtocolDataProvider | unknown | base | n/a | 2 deployments: base [`0xd82a47...2153ad`](./contracts/base-8453/0xd82a47fdebb5bf5329b09441c3dab4b5df2153ad/); plasma `0xf2d6e3...c7419f` | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | base | n/a | [`0xa49d74...28dddb`](./contracts/base-8453/0xa49d748e0ecbdd8de5305bd1bd9c39f85e28dddb/) | ⚠️ Unaudited |
| BeaconProxy | registry | plasma | n/a | [`0xb0004a...930112`](./contracts/plasma-9745/0xb0004ad99f0e383cc413ba69acff7c229d930112/) | ⚠️ Unaudited |
| Bumpor | unknown | base | n/a | [`0x895407...e9bcb8`](./contracts/base-8453/0x895407f1ec37c46d8b5bca3884711172c8e9bcb8/) | ⚠️ Unaudited |
| CometProxyAdmin | unknown | arbitrum | n/a | [`0xd10b40...4d715e`](./contracts/arbitrum-42161/0xd10b40ff1d92e2267d099da3509253d9da4d715e/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | base | n/a | [`0xb125e6...15eb2f`](./contracts/base-8453/0xb125e6687d4313864e53df431d5425969c15eb2f/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | arbitrum | n/a | [`0x9c4ec7...ff58bf`](./contracts/arbitrum-42161/0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf/) | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | arbitrum | n/a | [`0xb21b06...ad3775`](./contracts/arbitrum-42161/0xb21b06d71c75973babde35b49ffdac3f82ad3775/) | ⚠️ Unaudited |
| EmissionDistributor | operational_periphery | base | n/a | [`0x6d1049...fbc742`](./contracts/base-8453/0x6d104968d1d64aecea5f16aa956a87d67ffbc742/) | ⚠️ Unaudited |
| EVault | core_logic | base | n/a | [`0x0a1a3b...80ee16`](./contracts/base-8453/0x0a1a3b5f2041f33522c4efc754a7d096f880ee16/) | ⚠️ Unaudited |
| EVault | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x05d28a...6160b3`](./contracts/arbitrum-42161/0x05d28a86e057364f6ad1a88944297e58fc6160b3/); arbitrum `0x0a1ecc...69b899` | ⚠️ Unaudited |
| fToken | token | arbitrum | n/a | 3 deployments: base `0xf42f57...fd9169`; plasma `0x1dd4b1...2ed27b`; arbitrum [`0x1a996c...db6096`](./contracts/arbitrum-42161/0x1a996cb54bb95462040408c06122d45d6cdb6096/) | ⚠️ Unaudited |
| GizaOFTAdapter | adapter | ethereum | n/a | [`0x0b0e00...ec97c3`](./contracts/ethereum-1/0x0b0e004b88a9c37453ad75c450f1147e9dec97c3/) | ⚠️ Unaudited |
| GizaSideChain | unknown | base | n/a | [`0x590830...267774`](./contracts/base-8453/0x590830dfdf9a3f68afcdde2694773debdf267774/) | ⚠️ Unaudited |
| MetaMorpho | unknown | base | n/a | 3 deployments: base [`0xbeef01...228183`](./contracts/base-8453/0xbeef010f9cb27031ad51e3333f9af9c6b1228183/); base `0xc1256a...00a2ca`; base `0xee8f4e...e44b61` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | n/a | 7 deployments: base [`0x234792...753b5e`](./contracts/base-8453/0x23479229e52ab6aad312d0b03df9f33b46753b5e/); base `0x616a4e...273738`; base `0x7bfa7c...cbf34a`; base `0xbeefe9...cb83b2`; arbitrum `0x5c0c30...1563ba`; arbitrum `0x7c5741...a8b3ed`; arbitrum `0x7e97fa...201e65` | ⚠️ Unaudited |
| MultiRewardDistributor | unknown | base | n/a | 2 deployments: base [`0xdc649f...cfef0f`](./contracts/base-8453/0xdc649f4fa047a3c98e8705e85b8b1bafcbcfef0f/); base `0xe9005b...0ad9d2` | ⚠️ Unaudited |
| MWethDelegate | token | base | n/a | [`0x628ff6...09d457`](./contracts/base-8453/0x628ff693426583d9a7fb391e54366292f509d457/) | ⚠️ Unaudited |
| PendlePrincipalToken | token | arbitrum | n/a | 5 deployments: arbitrum [`0x3362c1...74fa8d`](./contracts/arbitrum-42161/0x3362c1265a0522f321253708c9fb176f2274fa8d/); arbitrum `0x71fbf4...69ce9a`; arbitrum `0xab7f38...a04388`; arbitrum `0xc9bfc3...4c12d0`; arbitrum `0xd8d5fb...6cf1ec` | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | [`0x8d7d22...69770f`](./contracts/base-8453/0x8d7d2230a2d195f023588edd13dbad56dd69770f/) | ⚠️ Unaudited |
| Staker | core_logic | base | n/a | [`0xe57663...6d8e18`](./contracts/base-8453/0xe576638a9f2ad99ee9dd6f4acbb83217566d8e18/) | ⚠️ Unaudited |
| TemporalGovernor | governance | base | n/a | [`0x8b6218...df7d51`](./contracts/base-8453/0x8b621804a7637b781e2bbd58e256a591f2df7d51/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xa5edbd...905dca`](./contracts/arbitrum-42161/0xa5edbdd9646f8dff606d7448e414884c7d905dca/) | ⚠️ Unaudited |
| Tw_EarningPowerCalculator | unknown | base | n/a | [`0x3e92f4...2abca1`](./contracts/base-8453/0x3e92f421b6641242fe65c280afa03cea492abca1/) | ⚠️ Unaudited |
| WETHRouter | adapter | base | n/a | 2 deployments: base [`0x31ccfb...2124c4`](./contracts/base-8453/0x31ccfb038771d9bf486ef7c7f3a9f91be72124c4/); base `0x70778c...75d0c9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0xe4e306...02d904` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [zyfai_erc7540_sherlock.pdf](https://zyf.ai/zyfai_erc7540_sherlock.pdf) | Sherlock | Contest | 2026-03 | fresh | Inherited from ZyFAI — forked code, scoped to BaseBulker, Comet, CometExtAssetList, CometFactory, +2 more | inherited | 7 | n/a |
| [sherlock-audit-november-2025.pdf](https://zyf.ai/sherlock-audit-november-2025.pdf) | Sherlock | Contest | 2025-11 | fresh | Inherited from ZyFAI — forked code, scoped to BaseBulker, Comet, CometExtAssetList, CometFactory, +2 more | inherited | 7 | n/a |
| [zyfai_audit_cecuro.pdf](https://zyf.ai/zyfai_audit_cecuro.pdf) | Cecuro | Audit | 2026 | fresh | Inherited from ZyFAI — forked code, scoped to BaseBulker, Comet, CometExtAssetList, CometFactory, +2 more | inherited | 7 | n/a |
| [rzfi-audit-report.pdf](https://www.zyf.ai/rzfi-audit-report.pdf) | unknown | Audit | n/a | unknown | Inherited from ZyFAI — forked code, scoped to BaseBulker, Comet, CometExtAssetList, CometFactory, +2 more | inherited | 7 | n/a |
| [Supremacy IRMLinearKinky.pdf](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Supremacy%20IRMLinearKinky.pdf) | Supremacy | Audit | n/a | unknown | Inherited from ZyFAI — forked code, scoped to BaseBulker, Comet, CometExtAssetList, CometFactory, +2 more | inherited | 7 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=35

Fork inheritance lineage and inherited audits are included when available.
