# Agentic Audit Brief: Neo Tokyo

## Project Overview

- Project: Neo Tokyo (`neo-tokyo`)
- Website: [https://neotokyo.codes/](https://neotokyo.codes/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.623Z
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

- Coverage of deployed-live implementations: 2/36 (5.6%)
- Deployed-live implementations: 37 of 85 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/37
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 85
- Raw deployments: 86
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 5.6% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 2 | 5.4% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BYTES2 | unknown | ethereum | n/a | [`0xa19f5264f7d7be11c451c093d8f92592820bea86`](./contracts/ethereum-1/0xa19f5264f7d7be11c451c093d8f92592820bea86/) | ✅ Audited |
| NeoTokyoStaker | core_logic | ethereum | n/a | [`0x67e1ecfa9232e27eaf3133b968a33a9a0dca9e16`](./contracts/ethereum-1/0x67e1ecfa9232e27eaf3133b968a33a9a0dca9e16/) | ✅ Audited |

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| beckLoot | unknown | ethereum | n/a | [`0x86357a19e5537a8fba9a004e555713bc943a66c0`](./contracts/ethereum-1/0x86357a19e5537a8fba9a004e555713bc943a66c0/) | ⚠️ Unaudited |
| boughtIdentity | unknown | ethereum | n/a | [`0x835a60cc60b808e47825daa79a9da6c9ff3a892e`](./contracts/ethereum-1/0x835a60cc60b808e47825daa79a9da6c9ff3a892e/) | ⚠️ Unaudited |
| BYTESContract | unknown | ethereum | n/a | [`0x7d647b1a0dcd5525e9c6b3d14be58f27674f8c95`](./contracts/ethereum-1/0x7d647b1a0dcd5525e9c6b3d14be58f27674f8c95/) | ⚠️ Unaudited |
| NTChampionChips | unknown | ethereum | n/a | [`0xa91a931bcf850f1e8b560cf3a0cf263bf3dac3cd`](./contracts/ethereum-1/0xa91a931bcf850f1e8b560cf3a0cf263bf3dac3cd/) | ⚠️ Unaudited |
| NTChampionChips | unknown | ethereum | n/a | [`0xf5205c058adf284ba75420428b09c846c78428f5`](./contracts/ethereum-1/0xf5205c058adf284ba75420428b09c846c78428f5/) | ⚠️ Unaudited |
| NTCitizenDeploy | unknown | ethereum | n/a | [`0xb668beb1fa440f6cf2da0399f8c28cab993bdd65`](./contracts/ethereum-1/0xb668beb1fa440f6cf2da0399f8c28cab993bdd65/) | ⚠️ Unaudited |
| NTConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0x51b1b64c33d2c4ae52ca40dcaa186e725e9e4b09`](./contracts/ethereum-1/0x51b1b64c33d2c4ae52ca40dcaa186e725e9e4b09/); ethereum `0xa10934bbfef0a3ee448e05ce9a35f786ef28cb48` | ⚠️ Unaudited |
| NTItems | unknown | ethereum | n/a | [`0x0938e3f7ac6d7f674fed551c93f363109bda3af9`](./contracts/ethereum-1/0x0938e3f7ac6d7f674fed551c93f363109bda3af9/) | ⚠️ Unaudited |
| NTLandDeploy | unknown | ethereum | n/a | [`0x3c54b798b3aad4f6089533af3bdbd6ce233019bb`](./contracts/ethereum-1/0x3c54b798b3aad4f6089533af3bdbd6ce233019bb/) | ⚠️ Unaudited |
| NTMigrator | periphery | ethereum | n/a | [`0x91a341e5617070de70f4df6a83cceceea7fd9e57`](./contracts/ethereum-1/0x91a341e5617070de70f4df6a83cceceea7fd9e57/) | ⚠️ Unaudited |
| NTOuterCitizenDeploy | unknown | ethereum | n/a | [`0x9b091d2e0bb88ace4fe8f0fab87b93d8ba932ec4`](./contracts/ethereum-1/0x9b091d2e0bb88ace4fe8f0fab87b93d8ba932ec4/) | ⚠️ Unaudited |
| NTOuterIdentity | unknown | ethereum | n/a | [`0x698fbaaca64944376e2cdc4cad86eaa91362cf54`](./contracts/ethereum-1/0x698fbaaca64944376e2cdc4cad86eaa91362cf54/) | ⚠️ Unaudited |
| NTS1Citizen | unknown | ethereum | n/a | [`0x3b6b64fc7179f72b7ef656d61737d67bf2339457`](./contracts/ethereum-1/0x3b6b64fc7179f72b7ef656d61737d67bf2339457/) | ⚠️ Unaudited |
| NTS1Identity | unknown | ethereum | n/a | [`0x4e8ae6529a7a178a8a3a5eecabb90f9e544dd93a`](./contracts/ethereum-1/0x4e8ae6529a7a178a8a3a5eecabb90f9e544dd93a/) | ⚠️ Unaudited |
| NTS1Identity_V2 | unknown | ethereum | n/a | [`0x059174c2fef43f06178d23572fe5556f078f2f99`](./contracts/ethereum-1/0x059174c2fef43f06178d23572fe5556f078f2f99/) | ⚠️ Unaudited |
| NTS1Identity_V2 | unknown | ethereum | n/a | [`0xcdaf3bf8be28f31540c8cbd7dfb4c9683555bb65`](./contracts/ethereum-1/0xcdaf3bf8be28f31540c8cbd7dfb4c9683555bb65/) | ⚠️ Unaudited |
| NTS1Item | unknown | ethereum | n/a | [`0x1bf9a8dea26b372af7eb8c9e1086934fcd40596b`](./contracts/ethereum-1/0x1bf9a8dea26b372af7eb8c9e1086934fcd40596b/) | ⚠️ Unaudited |
| NTS1Item | unknown | ethereum | n/a | [`0xe7489ea1847395d7eead33e9c85fe327d513d249`](./contracts/ethereum-1/0xe7489ea1847395d7eead33e9c85fe327d513d249/) | ⚠️ Unaudited |
| NTS1Land | unknown | ethereum | n/a | [`0x847eed7a43817a490b042dbffda10bcf56de7d1b`](./contracts/ethereum-1/0x847eed7a43817a490b042dbffda10bcf56de7d1b/) | ⚠️ Unaudited |
| NTS1Land | unknown | ethereum | n/a | [`0xcfc6a15b2952b6014a993a0c16c9d580d862e21a`](./contracts/ethereum-1/0xcfc6a15b2952b6014a993a0c16c9d580d862e21a/) | ⚠️ Unaudited |
| NTS1Vault | unknown | ethereum | n/a | [`0x30d27415181ae5f42be1f1f2a5f335497697fe30`](./contracts/ethereum-1/0x30d27415181ae5f42be1f1f2a5f335497697fe30/) | ⚠️ Unaudited |
| NTS1Vault_V2 | unknown | ethereum | n/a | [`0xfe0eab4c959e3972b68e33b29bc297f0f23d2924`](./contracts/ethereum-1/0xfe0eab4c959e3972b68e33b29bc297f0f23d2924/) | ⚠️ Unaudited |
| NTS2Citizen | unknown | ethereum | n/a | [`0x6254bab9ee850590e6e7a56982672231d02c8a07`](./contracts/ethereum-1/0x6254bab9ee850590e6e7a56982672231d02c8a07/) | ⚠️ Unaudited |
| NTS2Citizen_V2 | unknown | ethereum | n/a | [`0x5c291f556ebf869bb92c755f1859e4b4703c7fff`](./contracts/ethereum-1/0x5c291f556ebf869bb92c755f1859e4b4703c7fff/) | ⚠️ Unaudited |
| NTS2Identity | unknown | ethereum | n/a | [`0x317d1470d6b3a549983702d66f1b952a21f7206e`](./contracts/ethereum-1/0x317d1470d6b3a549983702d66f1b952a21f7206e/) | ⚠️ Unaudited |
| NTS2Identity | unknown | ethereum | n/a | [`0x8e9f3c6883993a7a69c37213f2eb9a17450ad6d3`](./contracts/ethereum-1/0x8e9f3c6883993a7a69c37213f2eb9a17450ad6d3/) | ⚠️ Unaudited |
| NTS2Item | unknown | ethereum | n/a | [`0x0b8f04f2ca4f15d33274a27439412ab7639efad9`](./contracts/ethereum-1/0x0b8f04f2ca4f15d33274a27439412ab7639efad9/) | ⚠️ Unaudited |
| NTS2Item | unknown | ethereum | n/a | [`0x9df4c5135177c300d02ea4840c4e22becdda384d`](./contracts/ethereum-1/0x9df4c5135177c300d02ea4840c4e22becdda384d/) | ⚠️ Unaudited |
| NTS2Items | unknown | ethereum | n/a | [`0x7ac66d40d80d2d8d1e45d6b5b10a1c9d1fd69354`](./contracts/ethereum-1/0x7ac66d40d80d2d8d1e45d6b5b10a1c9d1fd69354/) | ⚠️ Unaudited |
| NTS2Land | unknown | ethereum | n/a | [`0x6caafb4028558f77dabb8d167aa7a40bccd25778`](./contracts/ethereum-1/0x6caafb4028558f77dabb8d167aa7a40bccd25778/) | ⚠️ Unaudited |
| NTS2Land | unknown | ethereum | n/a | [`0xb58ae9e93b8bee7d890ad87a2a70c135a3bf4b4e`](./contracts/ethereum-1/0xb58ae9e93b8bee7d890ad87a2a70c135a3bf4b4e/) | ⚠️ Unaudited |
| NTS2LandDeploy | unknown | ethereum | n/a | [`0xf90980ae7a44e2d18b9615396ff5e9252f1df639`](./contracts/ethereum-1/0xf90980ae7a44e2d18b9615396ff5e9252f1df639/) | ⚠️ Unaudited |
| royaltySplitter | operational_periphery | ethereum | n/a | [`0xdf9a7c4bad39cc914e204d1adab53da21e2fafaa`](./contracts/ethereum-1/0xdf9a7c4bad39cc914e204d1adab53da21e2fafaa/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | ethereum | n/a | [`0xfeb09c7e130a4b87b27ebd648ec485657b688b34`](./contracts/ethereum-1/0xfeb09c7e130a4b87b27ebd648ec485657b688b34/) | ⚠️ Unaudited |
| vaultBox | core_logic | ethereum | n/a | [`0xab0b0dd7e4eab0f9e31a539074a03f1c1be80879`](./contracts/ethereum-1/0xab0b0dd7e4eab0f9e31a539074a03f1c1be80879/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x04b6fbf96692fc70337dbf0db009b66d4358de1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x064327e11893e812f62056795dfd55a1162d983d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0658b1b397a7424057b6dea74a01d06010082a59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x094d828847d05e9b2b34054c969f7d197184068b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09a079e8232f7407b19ca6eef8883e9e25ab0c18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a35e3c53a1268b6c092f2137a7d83b260ba57e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x124037eb046dc830af8fba5bc5c1a6182eebf29b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x169e92dbcf06fdfae721e03fc80f7e810d763d1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16e85623ced4c9e14eb66304a3e63fb67c3f839b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19815e26c3c8b7031e8a6901a73bcc1282a8f130` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dbd2f0fce234126babeacc86f338930c61db5e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x254e2df5081e07e2a0c5b0d40a1d1b9fa705f116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d87a68c9a34d434b14f9eadb5582adc9e973bf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3248d8f3d847ae6a3076e9be923191eaf0254851` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4432305f77c761b587690f8768f8abed411dcda7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x451d692277dfa8284d96120353fc54f5a892f494` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4abf969d02aeb675c0d2725be824a9f716555535` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c0a9a90345f706bb38b6a4baaf3cb63cf6f8f68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c9cfead6628a84ec1cb622d7e7c1b5a8f3e2054` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d4c756515029ae00a58c4b4b6e0c196979b2d84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5804ae06600951778cbea8b7065011272f2f3023` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ecf768c2cfbeea58f5192ebb96d239425592c67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64967d8f1c1b3f8859a5aa8fa4e9e401cde072b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6685d84d99f8956b07c25b5528d7a106514d445c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c7695bb9e08473a6132a29061d31e11a64d5d41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ddcf7f50d2609bd3020bac01cc50ec6fd039674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79995d5dddfafd09ec17bb6ee728b6f7f6cce1f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95c07e309e7d7045b2b1ada70023741cf69cf13e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b776e29801724163b1c4730bb40f111b2b3fd17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae3abff59a0a0ec71c650364f59518d7af74d2ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0605041b92e66e8834675ff63aea0253bdcbc3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb50722353b765459e1cd110f74f9687d5a82b577` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7c5edd8eae2a6ee3592e161c967b171d6269bee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbb6a36e0efd5f89e870320a41ac566dc2735310` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0a6b3159b3b06810b16056e5cc01d9930513c0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1da8787b3be698785e9e77a69334deb0b75742d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc47ae0a3fede6a15ad0d586baf76ceda0719a864` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda51871ae8720bfa16197a854914174c38812b81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1b58edc17c50c7fa6a5a60ad11eeee556d2f287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb8e99a1e1bf328810c4e847d9a6a5adba7b2b21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeeb06c3a02b51dc8fcb26c19928844108ca5f857` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1f199c5a6b41231902b2f6e93e8edc59faf507b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf333e68e61175b14631e6960db8edf5e135d08c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5327f9da7ef9e527e357b2b7001525cd8e088df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf76c567f9283aff59c733466b0a30eed52c3862b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf827068de73f6cfad2bed981e6cb98b62e86c902` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9b3929877ad50220a98bda660d4541d5c5616d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb730df2a5f72c383fef76afe5d6950f9306631e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [code4rena.com/reports/2023-03-neotokyo](https://code4rena.com/reports/2023-03-neotokyo) | Code4rena | Contest | 2023-03 | stale | Direct | contract_name | 2 | high |
| [2023-03-neotokyo (GitHub directory)](https://github.com/code-423n4/2023-03-neotokyo) | Code4rena | Contest | 2023-03 | stale | Direct | contract_name | 2 | high |
| [2023-03-neotokyo-findings (GitHub directory)](https://github.com/code-423n4/2023-03-neotokyo-findings) | Code4rena | Contest | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [report.md](https://github.com/code-423n4/2023-03-neotokyo-findings/blob/main/report.md) | Code4rena | Contest | 2023-03 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x86357a19e5537a8fba9a004e555713bc943a66c0`](./contracts/ethereum-1/0x86357a19e5537a8fba9a004e555713bc943a66c0/) | beckLoot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x835a60cc60b808e47825daa79a9da6c9ff3a892e`](./contracts/ethereum-1/0x835a60cc60b808e47825daa79a9da6c9ff3a892e/) | boughtIdentity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d647b1a0dcd5525e9c6b3d14be58f27674f8c95`](./contracts/ethereum-1/0x7d647b1a0dcd5525e9c6b3d14be58f27674f8c95/) | BYTESContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa91a931bcf850f1e8b560cf3a0cf263bf3dac3cd`](./contracts/ethereum-1/0xa91a931bcf850f1e8b560cf3a0cf263bf3dac3cd/) | NTChampionChips | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5205c058adf284ba75420428b09c846c78428f5`](./contracts/ethereum-1/0xf5205c058adf284ba75420428b09c846c78428f5/) | NTChampionChips | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb668beb1fa440f6cf2da0399f8c28cab993bdd65`](./contracts/ethereum-1/0xb668beb1fa440f6cf2da0399f8c28cab993bdd65/) | NTCitizenDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51b1b64c33d2c4ae52ca40dcaa186e725e9e4b09`](./contracts/ethereum-1/0x51b1b64c33d2c4ae52ca40dcaa186e725e9e4b09/) | NTConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0938e3f7ac6d7f674fed551c93f363109bda3af9`](./contracts/ethereum-1/0x0938e3f7ac6d7f674fed551c93f363109bda3af9/) | NTItems | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c54b798b3aad4f6089533af3bdbd6ce233019bb`](./contracts/ethereum-1/0x3c54b798b3aad4f6089533af3bdbd6ce233019bb/) | NTLandDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91a341e5617070de70f4df6a83cceceea7fd9e57`](./contracts/ethereum-1/0x91a341e5617070de70f4df6a83cceceea7fd9e57/) | NTMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b091d2e0bb88ace4fe8f0fab87b93d8ba932ec4`](./contracts/ethereum-1/0x9b091d2e0bb88ace4fe8f0fab87b93d8ba932ec4/) | NTOuterCitizenDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x698fbaaca64944376e2cdc4cad86eaa91362cf54`](./contracts/ethereum-1/0x698fbaaca64944376e2cdc4cad86eaa91362cf54/) | NTOuterIdentity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b6b64fc7179f72b7ef656d61737d67bf2339457`](./contracts/ethereum-1/0x3b6b64fc7179f72b7ef656d61737d67bf2339457/) | NTS1Citizen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e8ae6529a7a178a8a3a5eecabb90f9e544dd93a`](./contracts/ethereum-1/0x4e8ae6529a7a178a8a3a5eecabb90f9e544dd93a/) | NTS1Identity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x059174c2fef43f06178d23572fe5556f078f2f99`](./contracts/ethereum-1/0x059174c2fef43f06178d23572fe5556f078f2f99/) | NTS1Identity_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdaf3bf8be28f31540c8cbd7dfb4c9683555bb65`](./contracts/ethereum-1/0xcdaf3bf8be28f31540c8cbd7dfb4c9683555bb65/) | NTS1Identity_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bf9a8dea26b372af7eb8c9e1086934fcd40596b`](./contracts/ethereum-1/0x1bf9a8dea26b372af7eb8c9e1086934fcd40596b/) | NTS1Item | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7489ea1847395d7eead33e9c85fe327d513d249`](./contracts/ethereum-1/0xe7489ea1847395d7eead33e9c85fe327d513d249/) | NTS1Item | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x847eed7a43817a490b042dbffda10bcf56de7d1b`](./contracts/ethereum-1/0x847eed7a43817a490b042dbffda10bcf56de7d1b/) | NTS1Land | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfc6a15b2952b6014a993a0c16c9d580d862e21a`](./contracts/ethereum-1/0xcfc6a15b2952b6014a993a0c16c9d580d862e21a/) | NTS1Land | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30d27415181ae5f42be1f1f2a5f335497697fe30`](./contracts/ethereum-1/0x30d27415181ae5f42be1f1f2a5f335497697fe30/) | NTS1Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe0eab4c959e3972b68e33b29bc297f0f23d2924`](./contracts/ethereum-1/0xfe0eab4c959e3972b68e33b29bc297f0f23d2924/) | NTS1Vault_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6254bab9ee850590e6e7a56982672231d02c8a07`](./contracts/ethereum-1/0x6254bab9ee850590e6e7a56982672231d02c8a07/) | NTS2Citizen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c291f556ebf869bb92c755f1859e4b4703c7fff`](./contracts/ethereum-1/0x5c291f556ebf869bb92c755f1859e4b4703c7fff/) | NTS2Citizen_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x317d1470d6b3a549983702d66f1b952a21f7206e`](./contracts/ethereum-1/0x317d1470d6b3a549983702d66f1b952a21f7206e/) | NTS2Identity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e9f3c6883993a7a69c37213f2eb9a17450ad6d3`](./contracts/ethereum-1/0x8e9f3c6883993a7a69c37213f2eb9a17450ad6d3/) | NTS2Identity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b8f04f2ca4f15d33274a27439412ab7639efad9`](./contracts/ethereum-1/0x0b8f04f2ca4f15d33274a27439412ab7639efad9/) | NTS2Item | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9df4c5135177c300d02ea4840c4e22becdda384d`](./contracts/ethereum-1/0x9df4c5135177c300d02ea4840c4e22becdda384d/) | NTS2Item | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ac66d40d80d2d8d1e45d6b5b10a1c9d1fd69354`](./contracts/ethereum-1/0x7ac66d40d80d2d8d1e45d6b5b10a1c9d1fd69354/) | NTS2Items | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6caafb4028558f77dabb8d167aa7a40bccd25778`](./contracts/ethereum-1/0x6caafb4028558f77dabb8d167aa7a40bccd25778/) | NTS2Land | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb58ae9e93b8bee7d890ad87a2a70c135a3bf4b4e`](./contracts/ethereum-1/0xb58ae9e93b8bee7d890ad87a2a70c135a3bf4b4e/) | NTS2Land | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf90980ae7a44e2d18b9615396ff5e9252f1df639`](./contracts/ethereum-1/0xf90980ae7a44e2d18b9615396ff5e9252f1df639/) | NTS2LandDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf9a7c4bad39cc914e204d1adab53da21e2fafaa`](./contracts/ethereum-1/0xdf9a7c4bad39cc914e204d1adab53da21e2fafaa/) | royaltySplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab0b0dd7e4eab0f9e31a539074a03f1c1be80879`](./contracts/ethereum-1/0xab0b0dd7e4eab0f9e31a539074a03f1c1be80879/) | vaultBox | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=6

Zero-match audit list:

- [21357] 2023-03-neotokyo-findings (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
