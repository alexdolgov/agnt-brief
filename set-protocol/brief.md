# Agentic Audit Brief: Set Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 5.5% over 90 days

## Project Overview

- Project: Set Protocol (`set-protocol`)
- Lifecycle: declining (Tier 0, 98.2% below peak)
- Generated: 2026-06-13T00:26:32.270Z
- Pipeline run: v2-pipeline-2026-06-13-546062-e35d
- Chains: ethereum
- Contract surface: 129 unique implementations (143 raw deployments)
- DeFi Llama TVL: $8,988,665.17
- On-chain TVL (included contracts): $7,897,148.36
- TVL by chain: Ethereum $7,897,148.36

## Project Description

Set Protocol is an Ethereum protocol for creating and managing ERC-20 tokenized portfolios and index products, allowing users to gain diversified exposure to multiple crypto assets through a single token. Third-party lending-market contracts such as Compound cTokens are external dependencies or underlying assets, not Set-owned core contracts.

### Architecture

The Vault contract manages the issuance and rebalancing of Sets, while CErc20 and its proxy CErc20Delegator represent Compound lending market integrations that likely serve as yield-bearing components or collateral within the Set baskets.

## Audit Coverage Summary

- Verified implementations audited: 0/33 (0.0%)
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 96
- Unique implementations: 129
- Raw deployments: 143
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $7,897,148.36
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $7,897,148.36 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SetToken | token | ethereum | 5 deployments: ethereum [`0x0b498f...801c2b`](./contracts/ethereum-1/0x0b498ff89709d3838a063f1dfa463091f9801c2b/); ethereum `0x1494ca...ba3c2b`; ethereum `0x72e364...d634d7`; ethereum `0x7c07f7...256a84`; ethereum `0xaa6e81...5665bd` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 2 deployments: ethereum [`0x5b6787...d986dc`](./contracts/ethereum-1/0x5b67871c3a857de81a1ca0f9f7945e5670d986dc/); ethereum `0xcd8554...d5605b` | ⚠️ Unaudited |
| AaveLeverageModule | unknown | ethereum | [`0x251bd1...5f51dc`](./contracts/ethereum-1/0x251bd1d42df1f153d86a5ba2305faade4d5f51dc/) | ⚠️ Unaudited |
| AirdropModule | unknown | ethereum | [`0x0e1fd0...13b0aa`](./contracts/ethereum-1/0x0e1fd036506c1129e9f2a05c1a01ddcfa813b0aa/) | ⚠️ Unaudited |
| AMMSplitter | operational_periphery | ethereum | [`0x54ab93...bbf332`](./contracts/ethereum-1/0x54ab93d8b64a2f111a37857bd28d94024ebbf332/) | ⚠️ Unaudited |
| BasicIssuanceModule | unknown | ethereum | [`0xd8ef3c...32f94d`](./contracts/ethereum-1/0xd8ef3cace8b4907117a45b0b125c68560532f94d/) | ⚠️ Unaudited |
| CommonValidationsLibrary | unknown | ethereum | [`0xc269e9...9e8d3a`](./contracts/ethereum-1/0xc269e9396556b6afb0c38eef4a590321ff9e8d3a/) | ⚠️ Unaudited |
| CompoundLeverageModule | unknown | ethereum | [`0x8d5174...04f419`](./contracts/ethereum-1/0x8d5174ed1dd217e240fdeaa52eb7f4540b04f419/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | [`0xa4c8d2...21a349`](./contracts/ethereum-1/0xa4c8d221d8bb851f83aadd0223a8900a6921a349/) | ⚠️ Unaudited |
| Core | unknown | ethereum | 2 deployments: ethereum [`0x345ab8...545a07`](./contracts/ethereum-1/0x345ab8af61d107c3972f0d73640e33d8ac545a07/); ethereum `0xf55186...a120c8` | ⚠️ Unaudited |
| CoreIssuanceLibrary | unknown | ethereum | [`0x5f3f53...9503ca`](./contracts/ethereum-1/0x5f3f534d0c5ea126150ec8078d404464339503ca/) | ⚠️ Unaudited |
| CTokenOracle | operational_periphery | ethereum | [`0x8fbe4a...0b7c37`](./contracts/ethereum-1/0x8fbe4a300b70dcd70a346143ebfa705e9d0b7c37/) | ⚠️ Unaudited |
| DebtIssuanceModule | unknown | ethereum | [`0x39f024...2ecb92`](./contracts/ethereum-1/0x39f024d621367c044bace2bf0fb15fb3612ecb92/) | ⚠️ Unaudited |
| DebtIssuanceModuleV2 | unknown | ethereum | [`0x69a592...f28d57`](./contracts/ethereum-1/0x69a592d2129415a4a1d1b1e309c17051b7f28d57/) | ⚠️ Unaudited |
| DEXAdapter | adapter | ethereum | [`0xb7cc88...b74598`](./contracts/ethereum-1/0xb7cc88a13586d862b97a677990de14a122b74598/) | ⚠️ Unaudited |
| ERC20Wrapper | token | ethereum | 2 deployments: ethereum [`0xb553eb...a70eb5`](./contracts/ethereum-1/0xb553ebbc620d8c8b0c65e8676420742919a70eb5/); ethereum `0xeadada...68f8d6` | ⚠️ Unaudited |
| ExchangeIssuanceModule | unknown | ethereum | [`0x73df03...af19d7`](./contracts/ethereum-1/0x73df03b5436c84cf9d5a758fb756928dceaf19d7/) | ⚠️ Unaudited |
| ExchangeIssuanceZeroEx | unknown | ethereum | [`0xf42ecd...6e4b25`](./contracts/ethereum-1/0xf42ecdc112365ff79a745b4cf7d4c266bd6e4b25/) | ⚠️ Unaudited |
| GeneralIndexModule | unknown | ethereum | [`0x84ce03...ae97c5`](./contracts/ethereum-1/0x84ce03ae547330f61584ad6103743732b1ae97c5/) | ⚠️ Unaudited |
| GovernanceModule | unknown | ethereum | [`0x5c87b0...79d500`](./contracts/ethereum-1/0x5c87b042494cdceba44c541fbb3bc8bff179d500/) | ⚠️ Unaudited |
| IntegrationRegistry | unknown | ethereum | [`0x665519...6e2e5a`](./contracts/ethereum-1/0x6655194c95d24b8b10b156dffce22a2c126e2e5a/) | ⚠️ Unaudited |
| KyberNetworkWrapper | unknown | ethereum | [`0x9b3eb3...5fb56d`](./contracts/ethereum-1/0x9b3eb3b22dc2c29e878d7766276a86a8395fb56d/) | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | 2 deployments: ethereum [`0xf4b583...f5a611`](./contracts/ethereum-1/0xf4b583293339425cf94203e186d097589af5a611/); ethereum `0xf8523c...de7541` | ⚠️ Unaudited |
| OracleProxy | operational_periphery | ethereum | 4 deployments: ethereum [`0x1686d0...dd2465`](./contracts/ethereum-1/0x1686d01bd776a1c2a3ccf1579647ca6d39dd2465/); ethereum `0x3c3afa...b7af67`; ethereum `0x8b1c07...0d045d`; ethereum `0xff60d1...ad938f` | ⚠️ Unaudited |
| SetTokenCreator | token | ethereum | [`0xef72d3...fd748a`](./contracts/ethereum-1/0xef72d3278dc3eba6dc2614965308d1435ffd748a/) | ⚠️ Unaudited |
| SetTokenFactory | registry | ethereum | [`0xe1cd72...e3b967`](./contracts/ethereum-1/0xe1cd722575801fe92eeef2ca23396557f7e3b967/) | ⚠️ Unaudited |
| StreamingFeeModule | unknown | ethereum | [`0x08f866...10cdec`](./contracts/ethereum-1/0x08f866c74205617b6f3903ef481798eced10cdec/) | ⚠️ Unaudited |
| TradeModule | unknown | ethereum | [`0x90f765...41c129`](./contracts/ethereum-1/0x90f765f63e7dc5ae97d6c576bf693fb6af41c129/) | ⚠️ Unaudited |
| TransferProxy | unknown | ethereum | [`0x882d80...07ec1c`](./contracts/ethereum-1/0x882d80d3a191859d64477eb78cca46599307ec1c/) | ⚠️ Unaudited |
| UniswapV2ExchangeAdapter | adapter | ethereum | [`0xb9ebb2...ab0ed6`](./contracts/ethereum-1/0xb9ebb277f1d9eabb11ea9ba4caacaa3de9ab0ed6/) | ⚠️ Unaudited |
| WhiteList | unknown | ethereum | 4 deployments: ethereum [`0x6a2d7d...78c3d3`](./contracts/ethereum-1/0x6a2d7d65d1e92c3ea4fbc2d6d1383ca77978c3d3/); ethereum `0x9f5c0c...e1c9fa`; ethereum `0xc64494...005338`; ethereum `0xdfdcd6...85d80d` | ⚠️ Unaudited |
| WrapModule | unknown | ethereum | [`0xbe4aed...7a999c`](./contracts/ethereum-1/0xbe4aede1694aff7f1827229870f6cf3d9e7a999c/) | ⚠️ Unaudited |
| ZeroExApiAdapter | adapter | ethereum | [`0xaded5d...0a8e69`](./contracts/ethereum-1/0xaded5dc9a2a5ee371938d1893e9128afe50a8e69/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0b498f...801c2b`](./contracts/ethereum-1/0x0b498ff89709d3838a063f1dfa463091f9801c2b/) | SetToken | token | $6,536,789.12 | Verified native implementation with $6,536,789.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b6787...d986dc`](./contracts/ethereum-1/0x5b67871c3a857de81a1ca0f9f7945e5670d986dc/) | Vault | core_logic | $1,360,359.24 | Verified native implementation with $1,360,359.24 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e1fd0...13b0aa`](./contracts/ethereum-1/0x0e1fd036506c1129e9f2a05c1a01ddcfa813b0aa/) | AirdropModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54ab93...bbf332`](./contracts/ethereum-1/0x54ab93d8b64a2f111a37857bd28d94024ebbf332/) | AMMSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8ef3c...32f94d`](./contracts/ethereum-1/0xd8ef3cace8b4907117a45b0b125c68560532f94d/) | BasicIssuanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc269e9...9e8d3a`](./contracts/ethereum-1/0xc269e9396556b6afb0c38eef4a590321ff9e8d3a/) | CommonValidationsLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4c8d2...21a349`](./contracts/ethereum-1/0xa4c8d221d8bb851f83aadd0223a8900a6921a349/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x345ab8...545a07`](./contracts/ethereum-1/0x345ab8af61d107c3972f0d73640e33d8ac545a07/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f3f53...9503ca`](./contracts/ethereum-1/0x5f3f534d0c5ea126150ec8078d404464339503ca/) | CoreIssuanceLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fbe4a...0b7c37`](./contracts/ethereum-1/0x8fbe4a300b70dcd70a346143ebfa705e9d0b7c37/) | CTokenOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39f024...2ecb92`](./contracts/ethereum-1/0x39f024d621367c044bace2bf0fb15fb3612ecb92/) | DebtIssuanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69a592...f28d57`](./contracts/ethereum-1/0x69a592d2129415a4a1d1b1e309c17051b7f28d57/) | DebtIssuanceModuleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7cc88...b74598`](./contracts/ethereum-1/0xb7cc88a13586d862b97a677990de14a122b74598/) | DEXAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb553eb...a70eb5`](./contracts/ethereum-1/0xb553ebbc620d8c8b0c65e8676420742919a70eb5/) | ERC20Wrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73df03...af19d7`](./contracts/ethereum-1/0x73df03b5436c84cf9d5a758fb756928dceaf19d7/) | ExchangeIssuanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf42ecd...6e4b25`](./contracts/ethereum-1/0xf42ecdc112365ff79a745b4cf7d4c266bd6e4b25/) | ExchangeIssuanceZeroEx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84ce03...ae97c5`](./contracts/ethereum-1/0x84ce03ae547330f61584ad6103743732b1ae97c5/) | GeneralIndexModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c87b0...79d500`](./contracts/ethereum-1/0x5c87b042494cdceba44c541fbb3bc8bff179d500/) | GovernanceModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x665519...6e2e5a`](./contracts/ethereum-1/0x6655194c95d24b8b10b156dffce22a2c126e2e5a/) | IntegrationRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4b583...f5a611`](./contracts/ethereum-1/0xf4b583293339425cf94203e186d097589af5a611/) | MultiSigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1686d0...dd2465`](./contracts/ethereum-1/0x1686d01bd776a1c2a3ccf1579647ca6d39dd2465/) | OracleProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef72d3...fd748a`](./contracts/ethereum-1/0xef72d3278dc3eba6dc2614965308d1435ffd748a/) | SetTokenCreator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1cd72...e3b967`](./contracts/ethereum-1/0xe1cd722575801fe92eeef2ca23396557f7e3b967/) | SetTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08f866...10cdec`](./contracts/ethereum-1/0x08f866c74205617b6f3903ef481798eced10cdec/) | StreamingFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90f765...41c129`](./contracts/ethereum-1/0x90f765f63e7dc5ae97d6c576bf693fb6af41c129/) | TradeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x882d80...07ec1c`](./contracts/ethereum-1/0x882d80d3a191859d64477eb78cca46599307ec1c/) | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a2d7d...78c3d3`](./contracts/ethereum-1/0x6a2d7d65d1e92c3ea4fbc2d6d1383ca77978c3d3/) | WhiteList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe4aed...7a999c`](./contracts/ethereum-1/0xbe4aede1694aff7f1827229870f6cf3d9e7a999c/) | WrapModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaded5d...0a8e69`](./contracts/ethereum-1/0xaded5dc9a2a5ee371938d1893e9128afe50a8e69/) | ZeroExApiAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 84 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
