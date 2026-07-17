# Agentic Audit Brief: Match Finance

## Project Overview

- Project: Match Finance (`match-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.452Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 43 unique implementations (55 raw deployments)
- DeFi Llama TVL: $1,985.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 48 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 3 common project-authored base contract(s) (proxy, erc1967upgrade, idoconstants). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 110; live-surface contracts included: 48 (24 live, 24 unknown).
- Excluded by liveness: 62 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/20 (0.0%)
- Deployed-live implementations: 23 of 43 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 43
- Raw deployments: 55
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EUSD | unknown | ethereum | n/a | [`0xdf3ac4f479375802a821f7b7b46cd7eb5e4262cc`](./contracts/ethereum-1/0xdf3ac4f479375802a821f7b7b46cd7eb5e4262cc/) | ⚠️ Unaudited |
| LBR | unknown | ethereum | n/a | [`0xed1167b6dc64e8a366db86f2e952a482d0981ebd`](./contracts/ethereum-1/0xed1167b6dc64e8a366db86f2e952a482d0981ebd/) | ⚠️ Unaudited |
| LybraConfigurator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b88f81d375e053e2f1e54183e55bd9c43031e90`](./contracts/ethereum-1/0x3b88f81d375e053e2f1e54183e55bd9c43031e90/); ethereum `0xc8353594eeedc5ce5a4544d3d9907b694c4690ff` | ⚠️ Unaudited |
| LybraConfigurator | governance | ethereum | n/a | [`0xf284b9da245d24a027bdf0565d6fd7e8312b8825`](./contracts/ethereum-1/0xf284b9da245d24a027bdf0565d6fd7e8312b8825/) | ⚠️ Unaudited |
| LybraProxyAdmin | unknown | ethereum | n/a | [`0xa23e44aea714fbbc08ef28340d78067b9a8cad73`](./contracts/ethereum-1/0xa23e44aea714fbbc08ef28340d78067b9a8cad73/) | ⚠️ Unaudited |
| LybraStETHVault | core_logic | ethereum | n/a | [`0xa980d4c0c2e48d305b582aa439a3575e3de06f0e`](./contracts/ethereum-1/0xa980d4c0c2e48d305b582aa439a3575e3de06f0e/) | ⚠️ Unaudited |
| MatchToken | token | ethereum | n/a | [`0xe0dcb3e02798d1c6a9650fe1381015ec34705153`](./contracts/ethereum-1/0xe0dcb3e02798d1c6a9650fe1381015ec34705153/) | ⚠️ Unaudited |
| MatchVesting | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2dfc95b185e810bd508839fb0c274493e95ae24a`](./contracts/ethereum-1/0x2dfc95b185e810bd508839fb0c274493e95ae24a/); ethereum `0x392f85debbead1b532e3e9b7008cafb643725374` | ⚠️ Unaudited |
| MToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0af0e83d064f160376303ac67dd9a7971af88d4c`](./contracts/ethereum-1/0x0af0e83d064f160376303ac67dd9a7971af88d4c/); ethereum `0x0d89818e8cfb2bcd0203cbd450d8ea6be013c6c2` | ⚠️ Unaudited |
| MTokenStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3580386f5366614f0f52ed34c9bf66ba50a91461`](./contracts/ethereum-1/0x3580386f5366614f0f52ed34c9bf66ba50a91461/); ethereum `0x505c526cc0f620b40589c13249ebe1db29e13eaa` | ⚠️ Unaudited |
| PeUSDMainnet | unknown | ethereum | n/a | [`0xd585aaafa2b58b1cd75092b51ade9fa4ce52f247`](./contracts/ethereum-1/0xd585aaafa2b58b1cd75092b51ade9fa4ce52f247/) | ⚠️ Unaudited |
| ProtocolRewardsPool | operational_periphery | ethereum | n/a | [`0xc2966a73bbc53f3c99268ed84d245dbe972ed89e`](./contracts/ethereum-1/0xc2966a73bbc53f3c99268ed84d245dbe972ed89e/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6098dbda8f0f3c6a3d6e066dd08e9a12962f3703`](./contracts/ethereum-1/0x6098dbda8f0f3c6a3d6e066dd08e9a12962f3703/); ethereum `0x814133d9afd0ffafa910cbd41144faf126bf0c5d` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | ethereum | n/a | [`0xec7c6cd15d9bd98fc9805e0509e3bb2033c5956d`](./contracts/ethereum-1/0xec7c6cd15d9bd98fc9805e0509e3bb2033c5956d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0b7043d726c8806913fb50d79f6ee9137151a9d3`](./contracts/ethereum-1/0x0b7043d726c8806913fb50d79f6ee9137151a9d3/); ethereum `0x3e4a64ead2e33a203393a245f1814de0eb47915e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2fd174c6c38c2072e756490dbfa79b0ab8dd3e67`](./contracts/ethereum-1/0x2fd174c6c38c2072e756490dbfa79b0ab8dd3e67/); ethereum `0xd7cb9a7de4c3a0ad97f36c15d6103760ddfddeaf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a2b1e2f87ceab347ed46defbf15f53faee0708e`](./contracts/ethereum-1/0x7a2b1e2f87ceab347ed46defbf15f53faee0708e/); ethereum `0xc1fac75e5b8e4e266f33e4a23aa062163ce4eb6f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x897888ebc122e476415e62bc6a793a7a4af87bfc`](./contracts/ethereum-1/0x897888ebc122e476415e62bc6a793a7a4af87bfc/); ethereum `0xf861d4acc4b78980e0ff7d13631af95fb33a0d84` | ⚠️ Unaudited |
| UniswapPairOracle | operational_periphery | ethereum | n/a | [`0xc626867660df1cc6274ce0338e7dfb92474647c5`](./contracts/ethereum-1/0xc626867660df1cc6274ce0338e7dfb92474647c5/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x3a0ef60e803aae8e94f741e7f61c7cbe9501e569`](./contracts/ethereum-1/0x3a0ef60e803aae8e94f741e7f61c7cbe9501e569/) | ⚠️ Unaudited |
| VLMatch | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5ef24e853891d91efe6e19b3f438fae66b14a99a`](./contracts/ethereum-1/0x5ef24e853891d91efe6e19b3f438fae66b14a99a/); ethereum `0x9dbbc91730e439a15e0507e0c0917f86e3e6a857` | ⚠️ Unaudited |
| VLMatchStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7d027083e55724a1082b8cdc51ee90781f41ff14`](./contracts/ethereum-1/0x7d027083e55724a1082b8cdc51ee90781f41ff14/); ethereum `0xe479ef80f213f59e645e371aeeb0a18ebc439072` | ⚠️ Unaudited |
| VLMatchVesting | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e8834ba440a00c01c84afc405d882623a216544`](./contracts/ethereum-1/0x4e8834ba440a00c01c84afc405d882623a216544/); ethereum `0x5d76c19a6e39b7ed45237010cf608d1d1cb68abe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x06689de10181d601d2aae2bb07ffbcac3cbda0e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x158d48e1617c6f984b4d767bc1bfed325edb30f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17d034f852bd057be8b74a2e4f7ce664af62c963` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e0adc172691f3efd5436ce1a772aafdc0ea1011` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2543ce92f8cf84c7e5085a7a8a243c96e04f5b34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2953d48c1156167679235f80b35223425192594d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b2bf7d3eff13af489d1f1ba161e76af376ec148` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40d0287950e7f7f6464b4055bd0c0cc61c6047c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67b6a84c85662cf5facc1bd784eb031e9d2d4125` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85b047578881e3361b7ddb8db2af470a12bc8615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98c2243eacd364769b4dd7404f8b7730be27952b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ac64efb22557130121940a49161b310cd363303` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab4fcae71ec6c583b9d46fa5f94aecc51c0e9c26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc37d83d1a5d82984f795bf0f7b31005ff7dd796c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdce765f021410b3266aa0053c93cb4535f1e12e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea34be7130a18a528724689a5f67a5a70717e4dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7366caf1462f9652b6120bb98e900258f1e11a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa2cf84a07b836db554a5518785014e788532c00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd6bf5d5e68719ba83f4eedc18764784534f2a95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff199c94507c5090c003179bfdf9bf81416647db` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Match-Finance_202309281659.pdf](https://beosin.com/audits/Match-Finance_202309281659.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdf3ac4f479375802a821f7b7b46cd7eb5e4262cc`](./contracts/ethereum-1/0xdf3ac4f479375802a821f7b7b46cd7eb5e4262cc/) | EUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed1167b6dc64e8a366db86f2e952a482d0981ebd`](./contracts/ethereum-1/0xed1167b6dc64e8a366db86f2e952a482d0981ebd/) | LBR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b88f81d375e053e2f1e54183e55bd9c43031e90`](./contracts/ethereum-1/0x3b88f81d375e053e2f1e54183e55bd9c43031e90/) | LybraConfigurator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf284b9da245d24a027bdf0565d6fd7e8312b8825`](./contracts/ethereum-1/0xf284b9da245d24a027bdf0565d6fd7e8312b8825/) | LybraConfigurator | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa23e44aea714fbbc08ef28340d78067b9a8cad73`](./contracts/ethereum-1/0xa23e44aea714fbbc08ef28340d78067b9a8cad73/) | LybraProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa980d4c0c2e48d305b582aa439a3575e3de06f0e`](./contracts/ethereum-1/0xa980d4c0c2e48d305b582aa439a3575e3de06f0e/) | LybraStETHVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0dcb3e02798d1c6a9650fe1381015ec34705153`](./contracts/ethereum-1/0xe0dcb3e02798d1c6a9650fe1381015ec34705153/) | MatchToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dfc95b185e810bd508839fb0c274493e95ae24a`](./contracts/ethereum-1/0x2dfc95b185e810bd508839fb0c274493e95ae24a/) | MatchVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0af0e83d064f160376303ac67dd9a7971af88d4c`](./contracts/ethereum-1/0x0af0e83d064f160376303ac67dd9a7971af88d4c/) | MToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3580386f5366614f0f52ed34c9bf66ba50a91461`](./contracts/ethereum-1/0x3580386f5366614f0f52ed34c9bf66ba50a91461/) | MTokenStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd585aaafa2b58b1cd75092b51ade9fa4ce52f247`](./contracts/ethereum-1/0xd585aaafa2b58b1cd75092b51ade9fa4ce52f247/) | PeUSDMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2966a73bbc53f3c99268ed84d245dbe972ed89e`](./contracts/ethereum-1/0xc2966a73bbc53f3c99268ed84d245dbe972ed89e/) | ProtocolRewardsPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec7c6cd15d9bd98fc9805e0509e3bb2033c5956d`](./contracts/ethereum-1/0xec7c6cd15d9bd98fc9805e0509e3bb2033c5956d/) | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ef24e853891d91efe6e19b3f438fae66b14a99a`](./contracts/ethereum-1/0x5ef24e853891d91efe6e19b3f438fae66b14a99a/) | VLMatch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d027083e55724a1082b8cdc51ee90781f41ff14`](./contracts/ethereum-1/0x7d027083e55724a1082b8cdc51ee90781f41ff14/) | VLMatchStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e8834ba440a00c01c84afc405d882623a216544`](./contracts/ethereum-1/0x4e8834ba440a00c01c84afc405d882623a216544/) | VLMatchVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13462] Match-Finance_202309281659.pdf

Fork inheritance lineage and inherited audits are included when available.
