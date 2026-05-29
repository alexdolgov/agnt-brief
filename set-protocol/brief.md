# Agentic Audit Brief: Set Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 5.5% over 90 days

## Project Overview

- Project: Set Protocol (`set-protocol`)
- Lifecycle: declining (Tier 0, 98.2% below peak)
- Generated: 2026-05-29T13:57:35.694Z
- Pipeline run: v2-pipeline-2026-05-29-8b27fb-df0f
- Chains: ethereum
- Contract surface: 111 unique implementations (121 raw deployments)
- DeFi Llama TVL: $11,121,221.15
- On-chain TVL (included contracts): $21,200,447.62
- TVL by chain: Ethereum $21,200,447.62

## Project Description

Set Protocol enables creation and management of tokenized index baskets (Sets) that automatically rebalance based on predefined strategies, allowing users to gain diversified exposure to multiple crypto assets through a single ERC-20 token.

### Architecture

The Vault contract manages the issuance and rebalancing of Sets, while CErc20 and its proxy CErc20Delegator represent Compound lending market integrations that likely serve as yield-bearing components or collateral within the Set baskets.

## Audit Coverage Summary

- Verified implementations audited: 0/15 (0.0%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 96
- Unique implementations: 111
- Raw deployments: 121
- Audits discovered: 8
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $21,200,447.62
- Latest audit: 2020-12 (stale)
- Staleness: 0 fresh, 0 aging, 5 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $21,200,447.62 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CErc20Delegate | token | ethereum | [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | ⚠️ Unaudited |
| CErc20 | token | ethereum | [`0x39aa39...5e7563`](./contracts/ethereum-1/0x39aa39c021dfbae8fac545936693ac917d5e7563/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 2 deployments: ethereum [`0x5b6787...d986dc`](./contracts/ethereum-1/0x5b67871c3a857de81a1ca0f9f7945e5670d986dc/); ethereum `0xcd8554...d5605b` | ⚠️ Unaudited |
| CommonValidationsLibrary | unknown | ethereum | [`0xc269e9...9e8d3a`](./contracts/ethereum-1/0xc269e9396556b6afb0c38eef4a590321ff9e8d3a/) | ⚠️ Unaudited |
| Core | unknown | ethereum | 2 deployments: ethereum [`0x345ab8...545a07`](./contracts/ethereum-1/0x345ab8af61d107c3972f0d73640e33d8ac545a07/); ethereum `0xf55186...a120c8` | ⚠️ Unaudited |
| CoreIssuanceLibrary | unknown | ethereum | [`0x5f3f53...9503ca`](./contracts/ethereum-1/0x5f3f534d0c5ea126150ec8078d404464339503ca/) | ⚠️ Unaudited |
| CTokenOracle | operational_periphery | ethereum | [`0x8fbe4a...0b7c37`](./contracts/ethereum-1/0x8fbe4a300b70dcd70a346143ebfa705e9d0b7c37/) | ⚠️ Unaudited |
| ERC20Wrapper | token | ethereum | 2 deployments: ethereum [`0xb553eb...a70eb5`](./contracts/ethereum-1/0xb553ebbc620d8c8b0c65e8676420742919a70eb5/); ethereum `0xeadada...68f8d6` | ⚠️ Unaudited |
| ExchangeIssuanceModule | unknown | ethereum | [`0x73df03...af19d7`](./contracts/ethereum-1/0x73df03b5436c84cf9d5a758fb756928dceaf19d7/) | ⚠️ Unaudited |
| KyberNetworkWrapper | unknown | ethereum | [`0x9b3eb3...5fb56d`](./contracts/ethereum-1/0x9b3eb3b22dc2c29e878d7766276a86a8395fb56d/) | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | 2 deployments: ethereum [`0xf4b583...f5a611`](./contracts/ethereum-1/0xf4b583293339425cf94203e186d097589af5a611/); ethereum `0xf8523c...de7541` | ⚠️ Unaudited |
| OracleProxy | operational_periphery | ethereum | 4 deployments: ethereum [`0x1686d0...dd2465`](./contracts/ethereum-1/0x1686d01bd776a1c2a3ccf1579647ca6d39dd2465/); ethereum `0x3c3afa...b7af67`; ethereum `0x8b1c07...0d045d`; ethereum `0xff60d1...ad938f` | ⚠️ Unaudited |
| SetTokenFactory | registry | ethereum | [`0xe1cd72...e3b967`](./contracts/ethereum-1/0xe1cd722575801fe92eeef2ca23396557f7e3b967/) | ⚠️ Unaudited |
| TransferProxy | unknown | ethereum | [`0x882d80...07ec1c`](./contracts/ethereum-1/0x882d80d3a191859d64477eb78cca46599307ec1c/) | ⚠️ Unaudited |
| WhiteList | unknown | ethereum | 4 deployments: ethereum [`0x6a2d7d...78c3d3`](./contracts/ethereum-1/0x6a2d7d65d1e92c3ea4fbc2d6d1383ca77978c3d3/); ethereum `0x9f5c0c...e1c9fa`; ethereum `0xc64494...005338`; ethereum `0xdfdcd6...85d80d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (96)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x045f01...621fc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x04fbed...2c724c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x056ec1...a8c537` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0892e4...719c42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0da425...66b488` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x12472d...71fc12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x12dfc5...c4490c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19c6d1...651aac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1e43c2...6d4dd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1e7c93...3ee4f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1fa77d...2cc91c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2020a4...405ce7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x20fc9b...bf9e53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x290e20...26167c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d4b48...f5ed51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e309c...50de21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ea9ba...7e9830` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x323f6f...7393cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x33fa3f...44563e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x39f920...85f244` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ac811...25ef85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b71dc...784cc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3bec87...861e84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d5f04...dfd299` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x422405...929e44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x422790...189775` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x42c225...148019` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47ef27...e09ffd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4a4dff...bdc621` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c5e0c...361770` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x558eb5...0d581c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x56413b...af1008` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x595f8d...286d3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5a1e0f...0b92c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e64f5...486ca4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x60ca2b...522fc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6804c7...330a28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x68fb1f...5034b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6d9e20...9912c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x706c76...d8cb74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x72a944...82d285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7734df...198075` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7b651c...56ccfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7b79f4...396b73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x805195...385950` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x815e82...6526b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x88b2cb...3d3faf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x896c7a...930ac0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x89829a...454eba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x89c714...275fa8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8a0184...23eb69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8a0b06...badb52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8ced7e...ba9614` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8e32db...276783` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x900fd0...4ab506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x91866a...59e4b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x91fbdc...31d2a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x925ffe...dd8b24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x952464...222976` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x95b485...e1f9a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x970694...83f319` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97b4d7...b2f614` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d411a...496ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9e3951...b6043e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f30fb...9fd0d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa0e3d1...22e7ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1821d...db9690` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa245c6...2de355` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa2bb0b...101c61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa32a06...78439a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa8a895...f1ddb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xabe137...608994` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xad2d61...7ac5ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xafcb6e...56b24b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb4b3a9...df8fb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb50f3f...39c259` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba1ba9...28d16d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbafb2f...31c71c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb570b...68f12c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc006e...6e6770` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc12092...74ebab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc360e6...754d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc488e1...5bb588` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc4d32a...f83af1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc7e2bf...1e6256` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xce0348...fb6153` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd07f5a...ae197f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd85af8...1088eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdc733e...4d86ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe66364...12dae6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe7e6ac...8e4c0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xea01d1...fde7d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeebaba...9a63b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf5f8d1...b68f0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf8f9a2...9ece56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfff8d0...bbbd4a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Certik-aave-v2-03-12-2020.pdf](https://github.com/SetProtocol/aave-fork/blob/master/audits/Certik-aave-v2-03-12-2020.pdf) | CertiK | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [Certora-FV-aave-v2-03-12-2020.pdf](https://github.com/SetProtocol/aave-fork/blob/master/audits/Certora-FV-aave-v2-03-12-2020.pdf) | unknown | Audit | 2020-10 | stale | Direct | n/a | 0 | n/a |
| [Mixbytes-aave-v2-03-12-2020.pdf](https://github.com/SetProtocol/aave-fork/blob/master/audits/Mixbytes-aave-v2-03-12-2020.pdf) | MixBytes | Audit | 2020 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-aave-v2-03-12-2020-CN.pdf](https://github.com/SetProtocol/aave-fork/blob/master/audits/PeckShield-aave-v2-03-12-2020-CN.pdf) | PeckShield | Audit | 2020 | stale | Direct | n/a | 0 | n/a |
| [Peckshield-aave-v2-03-12-2020-EN.pdf](https://github.com/SetProtocol/aave-fork/blob/master/audits/Peckshield-aave-v2-03-12-2020-EN.pdf) | PeckShield | Audit | 2020 | stale | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5b6787...d986dc`](./contracts/ethereum-1/0x5b67871c3a857de81a1ca0f9f7945e5670d986dc/) | Vault | core_logic | $1,360,359.24 | Verified native implementation with $1,360,359.24 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc269e9...9e8d3a`](./contracts/ethereum-1/0xc269e9396556b6afb0c38eef4a590321ff9e8d3a/) | CommonValidationsLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x345ab8...545a07`](./contracts/ethereum-1/0x345ab8af61d107c3972f0d73640e33d8ac545a07/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f3f53...9503ca`](./contracts/ethereum-1/0x5f3f534d0c5ea126150ec8078d404464339503ca/) | CoreIssuanceLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fbe4a...0b7c37`](./contracts/ethereum-1/0x8fbe4a300b70dcd70a346143ebfa705e9d0b7c37/) | CTokenOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb553eb...a70eb5`](./contracts/ethereum-1/0xb553ebbc620d8c8b0c65e8676420742919a70eb5/) | ERC20Wrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73df03...af19d7`](./contracts/ethereum-1/0x73df03b5436c84cf9d5a758fb756928dceaf19d7/) | ExchangeIssuanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4b583...f5a611`](./contracts/ethereum-1/0xf4b583293339425cf94203e186d097589af5a611/) | MultiSigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1686d0...dd2465`](./contracts/ethereum-1/0x1686d01bd776a1c2a3ccf1579647ca6d39dd2465/) | OracleProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1cd72...e3b967`](./contracts/ethereum-1/0xe1cd722575801fe92eeef2ca23396557f7e3b967/) | SetTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x882d80...07ec1c`](./contracts/ethereum-1/0x882d80d3a191859d64477eb78cca46599307ec1c/) | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a2d7d...78c3d3`](./contracts/ethereum-1/0x6a2d7d65d1e92c3ea4fbc2d6d1383ca77978c3d3/) | WhiteList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [7032] Certik-aave-v2-03-12-2020.pdf
- [7033] Certora-FV-aave-v2-03-12-2020.pdf
- [7034] Mixbytes-aave-v2-03-12-2020.pdf
- [7035] PeckShield-aave-v2-03-12-2020-CN.pdf
- [7036] Peckshield-aave-v2-03-12-2020-EN.pdf
- [7037] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [7038] 0002-metadata-manifest-and-pull-command.md
- [7039] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
