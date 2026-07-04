# Agentic Audit Brief: Neo Tokyo

## Project Overview

- Project: Neo Tokyo (`neo-tokyo`)
- Website: [https://neotokyo.codes/](https://neotokyo.codes/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:36.330Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 85 unique implementations (86 raw deployments)
- DeFi Llama TVL: $849,957.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gaming. Structurally: 45 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 19 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 17 common project-authored base contract(s) (erc1967upgradeupgradeable, erc4973upgradeable, eip712upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 106; live-surface contracts included: 86 (38 live, 48 unknown).
- Excluded by liveness: 20 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/37 (0.0%)
- Deployed-live implementations: 37 of 85 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/37
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 85
- Raw deployments: 86
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| beckLoot | unknown | ethereum | n/a | [`0x86357a...3a66c0`](./contracts/ethereum-1/0x86357a19e5537a8fba9a004e555713bc943a66c0/) | ⚠️ Unaudited |
| boughtIdentity | unknown | ethereum | n/a | [`0x835a60...3a892e`](./contracts/ethereum-1/0x835a60cc60b808e47825daa79a9da6c9ff3a892e/) | ⚠️ Unaudited |
| BYTES2 | unknown | ethereum | n/a | [`0xa19f52...0bea86`](./contracts/ethereum-1/0xa19f5264f7d7be11c451c093d8f92592820bea86/) | ⚠️ Unaudited |
| BYTESContract | unknown | ethereum | n/a | [`0x7d647b...4f8c95`](./contracts/ethereum-1/0x7d647b1a0dcd5525e9c6b3d14be58f27674f8c95/) | ⚠️ Unaudited |
| NeoTokyoStaker | core_logic | ethereum | n/a | [`0x67e1ec...ca9e16`](./contracts/ethereum-1/0x67e1ecfa9232e27eaf3133b968a33a9a0dca9e16/) | ⚠️ Unaudited |
| NTChampionChips | unknown | ethereum | n/a | [`0xa91a93...dac3cd`](./contracts/ethereum-1/0xa91a931bcf850f1e8b560cf3a0cf263bf3dac3cd/) | ⚠️ Unaudited |
| NTChampionChips | unknown | ethereum | n/a | [`0xf5205c...8428f5`](./contracts/ethereum-1/0xf5205c058adf284ba75420428b09c846c78428f5/) | ⚠️ Unaudited |
| NTCitizenDeploy | unknown | ethereum | n/a | [`0xb668be...3bdd65`](./contracts/ethereum-1/0xb668beb1fa440f6cf2da0399f8c28cab993bdd65/) | ⚠️ Unaudited |
| NTConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0x51b1b6...9e4b09`](./contracts/ethereum-1/0x51b1b64c33d2c4ae52ca40dcaa186e725e9e4b09/); ethereum `0xa10934...28cb48` | ⚠️ Unaudited |
| NTItems | unknown | ethereum | n/a | [`0x0938e3...da3af9`](./contracts/ethereum-1/0x0938e3f7ac6d7f674fed551c93f363109bda3af9/) | ⚠️ Unaudited |
| NTLandDeploy | unknown | ethereum | n/a | [`0x3c54b7...3019bb`](./contracts/ethereum-1/0x3c54b798b3aad4f6089533af3bdbd6ce233019bb/) | ⚠️ Unaudited |
| NTMigrator | periphery | ethereum | n/a | [`0x91a341...fd9e57`](./contracts/ethereum-1/0x91a341e5617070de70f4df6a83cceceea7fd9e57/) | ⚠️ Unaudited |
| NTOuterCitizenDeploy | unknown | ethereum | n/a | [`0x9b091d...932ec4`](./contracts/ethereum-1/0x9b091d2e0bb88ace4fe8f0fab87b93d8ba932ec4/) | ⚠️ Unaudited |
| NTOuterIdentity | unknown | ethereum | n/a | [`0x698fba...62cf54`](./contracts/ethereum-1/0x698fbaaca64944376e2cdc4cad86eaa91362cf54/) | ⚠️ Unaudited |
| NTS1Citizen | unknown | ethereum | n/a | [`0x3b6b64...339457`](./contracts/ethereum-1/0x3b6b64fc7179f72b7ef656d61737d67bf2339457/) | ⚠️ Unaudited |
| NTS1Identity | unknown | ethereum | n/a | [`0x4e8ae6...4dd93a`](./contracts/ethereum-1/0x4e8ae6529a7a178a8a3a5eecabb90f9e544dd93a/) | ⚠️ Unaudited |
| NTS1Identity_V2 | unknown | ethereum | n/a | [`0x059174...8f2f99`](./contracts/ethereum-1/0x059174c2fef43f06178d23572fe5556f078f2f99/) | ⚠️ Unaudited |
| NTS1Identity_V2 | unknown | ethereum | n/a | [`0xcdaf3b...55bb65`](./contracts/ethereum-1/0xcdaf3bf8be28f31540c8cbd7dfb4c9683555bb65/) | ⚠️ Unaudited |
| NTS1Item | unknown | ethereum | n/a | [`0x1bf9a8...40596b`](./contracts/ethereum-1/0x1bf9a8dea26b372af7eb8c9e1086934fcd40596b/) | ⚠️ Unaudited |
| NTS1Item | unknown | ethereum | n/a | [`0xe7489e...13d249`](./contracts/ethereum-1/0xe7489ea1847395d7eead33e9c85fe327d513d249/) | ⚠️ Unaudited |
| NTS1Land | unknown | ethereum | n/a | [`0x847eed...de7d1b`](./contracts/ethereum-1/0x847eed7a43817a490b042dbffda10bcf56de7d1b/) | ⚠️ Unaudited |
| NTS1Land | unknown | ethereum | n/a | [`0xcfc6a1...62e21a`](./contracts/ethereum-1/0xcfc6a15b2952b6014a993a0c16c9d580d862e21a/) | ⚠️ Unaudited |
| NTS1Vault | unknown | ethereum | n/a | [`0x30d274...97fe30`](./contracts/ethereum-1/0x30d27415181ae5f42be1f1f2a5f335497697fe30/) | ⚠️ Unaudited |
| NTS1Vault_V2 | unknown | ethereum | n/a | [`0xfe0eab...3d2924`](./contracts/ethereum-1/0xfe0eab4c959e3972b68e33b29bc297f0f23d2924/) | ⚠️ Unaudited |
| NTS2Citizen | unknown | ethereum | n/a | [`0x6254ba...2c8a07`](./contracts/ethereum-1/0x6254bab9ee850590e6e7a56982672231d02c8a07/) | ⚠️ Unaudited |
| NTS2Citizen_V2 | unknown | ethereum | n/a | [`0x5c291f...3c7fff`](./contracts/ethereum-1/0x5c291f556ebf869bb92c755f1859e4b4703c7fff/) | ⚠️ Unaudited |
| NTS2Identity | unknown | ethereum | n/a | [`0x317d14...f7206e`](./contracts/ethereum-1/0x317d1470d6b3a549983702d66f1b952a21f7206e/) | ⚠️ Unaudited |
| NTS2Identity | unknown | ethereum | n/a | [`0x8e9f3c...0ad6d3`](./contracts/ethereum-1/0x8e9f3c6883993a7a69c37213f2eb9a17450ad6d3/) | ⚠️ Unaudited |
| NTS2Item | unknown | ethereum | n/a | [`0x0b8f04...9efad9`](./contracts/ethereum-1/0x0b8f04f2ca4f15d33274a27439412ab7639efad9/) | ⚠️ Unaudited |
| NTS2Item | unknown | ethereum | n/a | [`0x9df4c5...da384d`](./contracts/ethereum-1/0x9df4c5135177c300d02ea4840c4e22becdda384d/) | ⚠️ Unaudited |
| NTS2Items | unknown | ethereum | n/a | [`0x7ac66d...d69354`](./contracts/ethereum-1/0x7ac66d40d80d2d8d1e45d6b5b10a1c9d1fd69354/) | ⚠️ Unaudited |
| NTS2Land | unknown | ethereum | n/a | [`0x6caafb...d25778`](./contracts/ethereum-1/0x6caafb4028558f77dabb8d167aa7a40bccd25778/) | ⚠️ Unaudited |
| NTS2Land | unknown | ethereum | n/a | [`0xb58ae9...bf4b4e`](./contracts/ethereum-1/0xb58ae9e93b8bee7d890ad87a2a70c135a3bf4b4e/) | ⚠️ Unaudited |
| NTS2LandDeploy | unknown | ethereum | n/a | [`0xf90980...1df639`](./contracts/ethereum-1/0xf90980ae7a44e2d18b9615396ff5e9252f1df639/) | ⚠️ Unaudited |
| royaltySplitter | operational_periphery | ethereum | n/a | [`0xdf9a7c...2fafaa`](./contracts/ethereum-1/0xdf9a7c4bad39cc914e204d1adab53da21e2fafaa/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | ethereum | n/a | [`0xfeb09c...688b34`](./contracts/ethereum-1/0xfeb09c7e130a4b87b27ebd648ec485657b688b34/) | ⚠️ Unaudited |
| vaultBox | core_logic | ethereum | n/a | [`0xab0b0d...e80879`](./contracts/ethereum-1/0xab0b0dd7e4eab0f9e31a539074a03f1c1be80879/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x04b6fb...58de1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x064327...2d983d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0658b1...082a59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x094d82...84068b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09a079...ab0c18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a35e3...ba57e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x124037...ebf29b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x169e92...763d1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16e856...3f839b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19815e...a8f130` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dbd2f...1db5e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x254e2d...05f116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d87a6...973bf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3248d8...254851` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x443230...1dcda7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x451d69...92f494` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4abf96...555535` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c0a9a...6f8f68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c9cfe...3e2054` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d4c75...9b2d84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5804ae...2f3023` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ecf76...592c67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64967d...e072b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6685d8...4d445c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c7695...4d5d41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ddcf7...039674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79995d...cce1f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95c07e...9cf13e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b776e...b3fd17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae3abf...74d2ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb06050...dcbc3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb50722...82b577` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7c5ed...269bee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbb6a3...735310` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0a6b3...513c0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1da87...75742d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc47ae0...19a864` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda5187...812b81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1b58e...d2f287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb8e99...7b2b21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeeb06c...a5f857` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1f199...af507b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf333e6...5d08c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5327f...e088df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf76c56...c3862b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf82706...86c902` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9b392...5616d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb730d...06631e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [code4rena.com/reports/2023-03-neotokyo](https://code4rena.com/reports/2023-03-neotokyo) | Code4rena | Contest | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [2023-03-neotokyo (GitHub directory)](https://github.com/code-423n4/2023-03-neotokyo) | Code4rena | Contest | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [2023-03-neotokyo-findings (GitHub directory)](https://github.com/code-423n4/2023-03-neotokyo-findings) | Code4rena | Contest | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [report.md](https://github.com/code-423n4/2023-03-neotokyo-findings/blob/main/report.md) | Code4rena | Contest | 2023-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 85 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21355] code4rena.com/reports/2023-03-neotokyo
- [21356] 2023-03-neotokyo (GitHub directory)
- [21357] 2023-03-neotokyo-findings (GitHub directory)
- [24271] report.md

Fork inheritance lineage and inherited audits are included when available.
