# Agentic Audit Brief: Snuggle

## Project Overview

- Project: Snuggle (`snuggle`)
- Website: [https://snuggle.fi/](https://snuggle.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.453Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, base
- Contract surface: 67 unique implementations (111 raw deployments)
- DeFi Llama TVL: $1,426,344.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 57 project-authored contract(s) across 2 chain(s); 1 ERC20 token, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 23 common project-authored base contract(s) (multicall, erc721permit, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 173; live-surface contracts included: 107 (70 live, 37 unknown).
- Excluded by liveness: 66 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/30 (36.7%)
- Deployed-live implementations: 33 of 67 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 12/33
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 67
- Raw deployments: 111
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 12 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 12 | 36.4% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AerodromePositionAdapter | adapter | base | n/a | 2 deployments: base [`0x0aedee...9794d1`](./contracts/base-8453/0x0aedeed5ad8d45d3d928fb872161efaa559794d1/); base `0xe3efa7...f79589` | ✅ Audited |
| AerodromeRewardAdapter | adapter | base | n/a | [`0xcb16cb...d77306`](./contracts/base-8453/0xcb16cb2cd32768c65418b22385888bd2c8d77306/) | ✅ Audited |
| FeeTransferHelper | periphery | arbitrum | n/a | 3 deployments: base `0x613ba8...28b1f3`; arbitrum [`0x59c2a1...349461`](./contracts/arbitrum-42161/0x59c2a172e52a61c4f1bb6dbdcab41b76d9349461/); arbitrum `0xbfd8cf...0cabae` | ✅ Audited |
| PancakeSwapPositionAdapter | adapter | base | n/a | 4 deployments: base [`0x0c0ba0...1b39e5`](./contracts/base-8453/0x0c0ba0b81a4ac60321c2414bdcef24c5851b39e5/); base `0xad35ec...bf0a71`; arbitrum `0x78bb36...bd4589`; arbitrum `0xf20bc2...2b84d9` | ✅ Audited |
| PancakeSwapRewardAdapter | adapter | arbitrum | n/a | 4 deployments: base `0x63de14...18b1cf`; arbitrum [`0x4cd1a0...62a065`](./contracts/arbitrum-42161/0x4cd1a0b610117a688998325e3779e858ff62a065/); arbitrum `0x6af9c5...8d19a8`; arbitrum `0xb668e7...69f7c9` | ✅ Audited |
| ProxyAdmin | governance | base | n/a | 4 deployments: base [`0x269dc2...cca86f`](./contracts/base-8453/0x269dc2f974abed1c7a55a447758fcaef2dcca86f/); arbitrum `0x427bf5...5396c1`; arbitrum `0x8bca45...e037df`; arbitrum `0x999a74...a891de` | ✅ Audited |
| ReferralTracker | unknown | base | n/a | 3 deployments: base [`0x2536a7...68d9ee`](./contracts/base-8453/0x2536a771111861bc0be61bd986f0c2dc0f68d9ee/); arbitrum `0x6915b5...01cd00`; arbitrum `0xb52cca...e4705e` | ✅ Audited |
| SnuggleRebalanceLib | unknown | base | n/a | [`0xf84b57...1dcddc`](./contracts/base-8453/0xf84b575e4e6d9fc07a3f2b863cb6a23cc11dcddc/) | ✅ Audited |
| StakingManager | governance | arbitrum | n/a | 3 deployments: base `0x3f928d...a270c1`; arbitrum [`0x020ed2...9948bd`](./contracts/arbitrum-42161/0x020ed29a0b1ced89c4309b32709a2a97699948bd/); arbitrum `0xd977c0...e2b40d` | ✅ Audited |
| TreasurySplitter | operational_periphery | arbitrum | n/a | 3 deployments: base `0x93d0d1...a9ec12`; arbitrum [`0x8c7d96...c176f6`](./contracts/arbitrum-42161/0x8c7d966b6bee480bf96b41870ccb89559ac176f6/); arbitrum `0xafe51c...84c92a` | ✅ Audited |
| UniswapV3Adapter | adapter | arbitrum | n/a | 4 deployments: base `0xca4cf9...debabd`; base `0xf757c9...f33010`; arbitrum [`0x76bdb4...c44ef2`](./contracts/arbitrum-42161/0x76bdb43d2ec3b190087076649224f47a58c44ef2/); arbitrum `0xa6e465...be082c` | ✅ Audited |
| ViewHelper | periphery | arbitrum | n/a | 4 deployments: base `0x286490...ce18bd`; base `0x298028...976a1c`; arbitrum [`0x0ef66d...3da5b6`](./contracts/arbitrum-42161/0x0ef66de171293285a8f8ffd0d0d564ca093da5b6/); arbitrum `0x4a14af...a19df9` | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CamelotPositionAdapter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x19ec46...47f217`](./contracts/arbitrum-42161/0x19ec46eb3cbcec146de2d9b4336187e4f147f217/); arbitrum `0xbfbf7d...9a8956` | ⚠️ Unaudited |
| KeepersHelper | operational_periphery | arbitrum | n/a | 5 deployments: base `0x60431b...563345`; arbitrum [`0x0e7edc...8f9869`](./contracts/arbitrum-42161/0x0e7edc3856349ed0126f863cc39fc9bc008f9869/); arbitrum `0x408229...ea716f`; arbitrum `0x71b55e...7f30f7`; arbitrum `0xc962c9...8ad7d6` | ⚠️ Unaudited |
| Multicall2 | periphery | arbitrum | n/a | [`0x80c7dd...a314de`](./contracts/arbitrum-42161/0x80c7dd17b01855a6d2347444a0fcc36136a314de/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1ad8c5...e14abc`](./contracts/arbitrum-42161/0x1ad8c5aed1d18cb7c5f30cd2b486251e87e14abc/); arbitrum `0x52d2eb...b48325` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2d22aa...7606dc`](./contracts/arbitrum-42161/0x2d22aa1c50433eb018077e4bfc52fadc437606dc/); arbitrum `0x89a13b...b8a68a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x49f598...32067c`](./contracts/arbitrum-42161/0x49f5985a122028093c91bb63084eb29a7632067c/); arbitrum `0x674d07...e7a7ef` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3d00cd...652227`](./contracts/arbitrum-42161/0x3d00cdb4785f0ef20c903a13596e0b9b2c652227/); arbitrum `0xb099b4...456cff` | ⚠️ Unaudited |
| Quoter | periphery | arbitrum | n/a | [`0x0fc730...4fa76e`](./contracts/arbitrum-42161/0x0fc73040b26e9bc8514fa028d998e73a254fa76e/) | ⚠️ Unaudited |
| QuoterV2 | periphery | arbitrum | n/a | [`0xb048bb...e25997`](./contracts/arbitrum-42161/0xb048bbc1ee6b733fffcfb9e9cef7375518e25997/) | ⚠️ Unaudited |
| SliverConfig | governance | arbitrum | n/a | [`0xe7b13b...e299f1`](./contracts/arbitrum-42161/0xe7b13bb95d5fc2ae028187d50e4f083573e299f1/) | ⚠️ Unaudited |
| SnuggleHedgeHelper | periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x8b3a79...03ef9f`](./contracts/arbitrum-42161/0x8b3a7989ae94dcf06abe07f5b4b95c63b603ef9f/); arbitrum `0xb1364a...feada7` | ⚠️ Unaudited |
| SnuggleVaultAdminSatellite | core_logic | arbitrum | n/a | 3 deployments: base `0x5a332c...e4d271`; arbitrum [`0x1195c0...fe6dce`](./contracts/arbitrum-42161/0x1195c074f898b7644ba732407619c9804dfe6dce/); arbitrum `0x454059...d7d3f4` | ⚠️ Unaudited |
| SnuggleVaultUpgradeable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0d8039...da22da`](./contracts/arbitrum-42161/0x0d803966d1a96aca169e203a0c0a8b86acda22da/); arbitrum `0x9da886...bab114` | ⚠️ Unaudited |
| SnuggleVaultUpgradeable | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0x1638b6...894f9d`](./contracts/arbitrum-42161/0x1638b6a0477bf09163531279dc535d6c40894f9d/); arbitrum `0x572351...9cd430`; arbitrum `0xa86b81...a85c68` | ⚠️ Unaudited |
| SnuggleVaultUpgradeable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x413ca9...2630f6`](./contracts/arbitrum-42161/0x413ca90d38d964546c2fe03cb103df57372630f6/); arbitrum `0x4b1cbd...bcb07d` | ⚠️ Unaudited |
| SwapRouter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x1b81d6...13eb14`](./contracts/arbitrum-42161/0x1b81d678ffb9c0263b24a97847620c99d213eb14/); arbitrum `0xa55582...839ef5` | ⚠️ Unaudited |
| SwapRouter | adapter | arbitrum | n/a | [`0x1f721e...339e18`](./contracts/arbitrum-42161/0x1f721e2e82f6676fce4ea07a5958cf098d339e18/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5822a4...6bc460`](./contracts/arbitrum-42161/0x5822a45b05d08028baa3d19626870076d26bc460/); arbitrum `0xd8676f...0e34ae` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x903293...594c13`](./contracts/arbitrum-42161/0x903293c1e922a72a95a69c61ede74073c8594c13/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa76021...280b5c`](./contracts/arbitrum-42161/0xa760212bc60a77b24ba52e889b0dc9d99e280b5c/); arbitrum `0xf4c88b...e7dd41` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xf53b4b...edd8c1`](./contracts/arbitrum-42161/0xf53b4b36d9b24e5b0086fe7c4532a3c5ddedd8c1/); arbitrum `0xfecbac...7e4321` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x011e52...e2e581` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x145d82...522e6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1be211...7b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c5771...0eb194` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cf9cf...e98a14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f054c...46d8ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x258f7e...38b788` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x259ba0...85ea3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f6867...050066` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3046cf...942dbd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30cea6...f943b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x351447...0b0187` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3db923...7cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3fc3f7...d931af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x400bb7...81e231` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48813f...7caf33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b5348...8c72f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5629ce...d851d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67468e...f70792` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6e9aed...a1bc56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x790b6c...f049a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8cc276...39b16e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8dacff...225d38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92883a...fd8087` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x933951...0ff328` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9dd655...abe2bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbd87be...1736d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc27d4d...5e5657` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdcd6a4...1232d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4331d...304d36` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeae23c...c130ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf78031...cf9bef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf8644a...243c33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfdd069...2eb659` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Abyss.pdf](https://d3cny4im7ppv5.cloudfront.net/Abyss.pdf) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [www.snuggle.fi/security](https://www.snuggle.fi/security) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | 12 | n/a |
| [valvessecurity.com](https://valvessecurity.com/) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x19ec46...47f217`](./contracts/arbitrum-42161/0x19ec46eb3cbcec146de2d9b4336187e4f147f217/) | CamelotPositionAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e7edc...8f9869`](./contracts/arbitrum-42161/0x0e7edc3856349ed0126f863cc39fc9bc008f9869/) | KeepersHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ad8c5...e14abc`](./contracts/arbitrum-42161/0x1ad8c5aed1d18cb7c5f30cd2b486251e87e14abc/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2d22aa...7606dc`](./contracts/arbitrum-42161/0x2d22aa1c50433eb018077e4bfc52fadc437606dc/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x49f598...32067c`](./contracts/arbitrum-42161/0x49f5985a122028093c91bb63084eb29a7632067c/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3d00cd...652227`](./contracts/arbitrum-42161/0x3d00cdb4785f0ef20c903a13596e0b9b2c652227/) | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0fc730...4fa76e`](./contracts/arbitrum-42161/0x0fc73040b26e9bc8514fa028d998e73a254fa76e/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb048bb...e25997`](./contracts/arbitrum-42161/0xb048bbc1ee6b733fffcfb9e9cef7375518e25997/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe7b13b...e299f1`](./contracts/arbitrum-42161/0xe7b13bb95d5fc2ae028187d50e4f083573e299f1/) | SliverConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8b3a79...03ef9f`](./contracts/arbitrum-42161/0x8b3a7989ae94dcf06abe07f5b4b95c63b603ef9f/) | SnuggleHedgeHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1195c0...fe6dce`](./contracts/arbitrum-42161/0x1195c074f898b7644ba732407619c9804dfe6dce/) | SnuggleVaultAdminSatellite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d8039...da22da`](./contracts/arbitrum-42161/0x0d803966d1a96aca169e203a0c0a8b86acda22da/) | SnuggleVaultUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1638b6...894f9d`](./contracts/arbitrum-42161/0x1638b6a0477bf09163531279dc535d6c40894f9d/) | SnuggleVaultUpgradeable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x413ca9...2630f6`](./contracts/arbitrum-42161/0x413ca90d38d964546c2fe03cb103df57372630f6/) | SnuggleVaultUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b81d6...13eb14`](./contracts/arbitrum-42161/0x1b81d678ffb9c0263b24a97847620c99d213eb14/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1f721e...339e18`](./contracts/arbitrum-42161/0x1f721e2e82f6676fce4ea07a5958cf098d339e18/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=12

Zero-match audit list:

- [3119] Abyss.pdf
- [11989] valvessecurity.com

Fork inheritance lineage and inherited audits are included when available.
