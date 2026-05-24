# Agentic Audit Brief: Unslashed

⚠️ Lifecycle status: DECLINING - TVL changed 9.3% over 90 days

## Project Overview

- Project: Unslashed (`unslashed`)
- Lifecycle: declining (Tier 0, 98.2% below peak)
- Generated: 2026-05-24T07:22:54.864Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 69 unique implementations (175 raw deployments)
- DeFi Llama TVL: $3,126,783.22
- On-chain TVL (included contracts): $4,816,303.01
- TVL by chain: Ethereum $4,816,303.01

## Project Description

Unslashed is a decentralized insurance protocol that allows users to provide underwriting capital and earn premiums by depositing assets into vaults. It also includes tokenized risk pools and staking mechanisms to support coverage for various DeFi risks.

### Architecture

The Unslashed family centers on bVault contracts that hold underwriting capital, while BAC pools provide stablecoin risk coverage. Tokens like BlackPoolToken and ArcProxy facilitate governance and staking, with MasterChef distributing rewards, and Uniswap pairs providing liquidity for these tokens.

## Audit Coverage Summary

- Verified implementations audited: 0/53 (0.0%)
- Verified + Unaudited implementations: 53
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 69
- Raw deployments: 175
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,816,303.01
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $4,816,303.01 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (53)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VaultLib | core_logic | ethereum | [`0x86fb84...bd6701`](./contracts/ethereum-1/0x86fb84e92c1eedc245987d28a42e123202bd6701/) | ⚠️ Unaudited |
| ArcxTokenV2 | token | ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ⚠️ Unaudited |
| bVault | core_logic | ethereum | 6 deployments: ethereum [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/); ethereum `0x378388...a35153`; ethereum `0x3fb6b0...15a2cc`; ethereum `0x750d30...7996d0`; ethereum `0x801690...85dc0e`; ethereum `0x8d9a39...ec6108` | ⚠️ Unaudited |
| TokenStore | token | ethereum | 2 deployments: ethereum [`0x0440ae...25c87c`](./contracts/ethereum-1/0x0440ae12f329dbd7306b6d9edbb0e667c225c87c/); ethereum `0xa90e66...a79405` | ⚠️ Unaudited |
| BACDAIPool | core_logic | ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | ⚠️ Unaudited |
| BACUSDCPool | core_logic | ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | ⚠️ Unaudited |
| BACUSDTPool | core_logic | ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | ⚠️ Unaudited |
| StakingAccrualERC20V5 | token | ethereum | [`0x9bffad...fd7d9d`](./contracts/ethereum-1/0x9bffad7a6d5f52dbc51cae33e419793c72fd7d9d/) | ⚠️ Unaudited |
| BASPool | core_logic | ethereum | [`0x5859ad...8120c0`](./contracts/ethereum-1/0x5859adb05988946b9d08dce2e12ae29af58120c0/) | ⚠️ Unaudited |
| BACSUSDPool | core_logic | ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | ⚠️ Unaudited |
| ERC20Peg | token | ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ⚠️ Unaudited |
| BACPool | core_logic | ethereum | [`0x7e7ae8...d6ed8c`](./contracts/ethereum-1/0x7e7ae8923876955d6dcb7285c04065a1b9d6ed8c/) | ⚠️ Unaudited |
| BACyCRVPool | core_logic | ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | ⚠️ Unaudited |
| BIP11 | unknown | ethereum | [`0xa6f889...c115a2`](./contracts/ethereum-1/0xa6f889c3cedbdf6cb524813da0ee0ffaddc115a2/) | ⚠️ Unaudited |
| BlackPoolToken | core_logic | ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | ⚠️ Unaudited |
| Boardroom | unknown | ethereum | 4 deployments: ethereum [`0x27c20f...96fd4f`](./contracts/ethereum-1/0x27c20f0b0ad78805084eeb8407291326e996fd4f/); ethereum `0x4b1824...0a342c`; ethereum `0xa01ffb...154a65`; ethereum `0xffd035...5d6118` | ⚠️ Unaudited |
| BoardroomV2 | unknown | ethereum | [`0xecf0dd...33e42a`](./contracts/ethereum-1/0xecf0dde35f6d895c065e7526348af1e79433e42a/) | ⚠️ Unaudited |
| Bond | unknown | ethereum | [`0xc36824...f5abc5`](./contracts/ethereum-1/0xc36824905dff2eaaee7ecc09fcc63abc0af5abc5/) | ⚠️ Unaudited |
| Bondroom | unknown | ethereum | [`0xd9a904...efe109`](./contracts/ethereum-1/0xd9a904a1320b5f0a1f742a9e431ded2a55efe109/) | ⚠️ Unaudited |
| Cash | unknown | ethereum | [`0x3449fc...03a69a`](./contracts/ethereum-1/0x3449fc1cd036255ba1eb19d65ff4ba2b8903a69a/) | ⚠️ Unaudited |
| ControlledAsset | unknown | ethereum | [`0x4c48fd...47d30c`](./contracts/ethereum-1/0x4c48fd8ed6f6a50bf03dbdefe7d74983f447d30c/) | ⚠️ Unaudited |
| Controller | governance | ethereum | [`0xd8c534...504d2a`](./contracts/ethereum-1/0xd8c5344e331d5f4161f03726870ce9da8b504d2a/) | ⚠️ Unaudited |
| DAIBACLPTokenSharePool | core_logic | ethereum | [`0x067d4d...f9db0f`](./contracts/ethereum-1/0x067d4d3ce63450e74f880f86b5b52ea3edf9db0f/) | ⚠️ Unaudited |
| DAIBASLPTokenSharePool | core_logic | ethereum | [`0x9569d4...fb0d0a`](./contracts/ethereum-1/0x9569d4cd7ac5b010da5697e952efb1ec0efb0d0a/) | ⚠️ Unaudited |
| Distribution | unknown | ethereum | [`0x818f83...402f2e`](./contracts/ethereum-1/0x818f83333244ba4bb72dab0b60b1901158402f2e/) | ⚠️ Unaudited |
| Feeder | unknown | ethereum | [`0x065894...8eb1b0`](./contracts/ethereum-1/0x06589479a31f826410bbd6d43410e7ff2d8eb1b0/) | ⚠️ Unaudited |
| InitialCashDistributor | operational_periphery | ethereum | [`0x666c2a...54c0cd`](./contracts/ethereum-1/0x666c2a4625ef5f8cf66a24fbff9f22437754c0cd/) | ⚠️ Unaudited |
| InitialShareDistributor | operational_periphery | ethereum | [`0x3c5323...e2f4bb`](./contracts/ethereum-1/0x3c53230875877321023f757c33d2faf71de2f4bb/) | ⚠️ Unaudited |
| LinearThreshold | unknown | ethereum | [`0xcdbae6...120b11`](./contracts/ethereum-1/0xcdbae6de88c7525369d6826ae1cdcab415120b11/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | [`0x1b6043...ade677`](./contracts/ethereum-1/0x1b604349100a318e369b59a6d6c1b65a31ade677/) | ⚠️ Unaudited |
| Migrator | periphery | ethereum | 2 deployments: ethereum [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/); ethereum `0x820670...b7f154` | ⚠️ Unaudited |
| Oracle | operational_periphery | ethereum | 6 deployments: ethereum [`0x1b3868...8ff7ed`](./contracts/ethereum-1/0x1b3868247dfbc155fa59b30ec03e63b10a8ff7ed/); ethereum `0x3e233a...7fdfec`; ethereum `0x6a8618...30ff44`; ethereum `0x751d0e...bf75ca`; ethereum `0x8a573c...1f9502`; ethereum `0xe4efd8...7debfa` | ⚠️ Unaudited |
| PickleProxy | unknown | ethereum | 3 deployments: ethereum [`0x0cf4ac...912828`](./contracts/ethereum-1/0x0cf4acf926a4d973e4a1775e4a82839988912828/); ethereum `0x190503...2e799f`; ethereum `0x4d89dd...8fd5fd` | ⚠️ Unaudited |
| PoolMigrator | core_logic | ethereum | [`0x66d7fa...30b7bb`](./contracts/ethereum-1/0x66d7fa132b5550205d4d6a6645b66283e330b7bb/) | ⚠️ Unaudited |
| PoolProxy | core_logic | ethereum | 6 deployments: ethereum [`0x1fe765...b432c5`](./contracts/ethereum-1/0x1fe7656fa41eea50b0ee8591fd6b405c94b432c5/); ethereum `0x5312ec...2f6bf2`; ethereum `0x81ee0e...e71e96`; ethereum `0x824770...2fe192`; ethereum `0xa4210a...c58677`; ethereum `0xdebe83...f51b50` | ⚠️ Unaudited |
| PoolStore | core_logic | ethereum | 3 deployments: ethereum [`0x01592e...a00ae6`](./contracts/ethereum-1/0x01592e349258233a6f13685228060511eca00ae6/); ethereum `0x3855c2...658f7d`; ethereum `0x4bd3a0...689f10` | ⚠️ Unaudited |
| PoolWrapper | core_logic | ethereum | [`0x2e3d21...41510c`](./contracts/ethereum-1/0x2e3d21e2730b4e5d5ee7214d4723ea96d041510c/) | ⚠️ Unaudited |
| Share | unknown | ethereum | [`0xa7ed29...b63696`](./contracts/ethereum-1/0xa7ed29b253d8b4e3109ce07c80fc570f81b63696/) | ⚠️ Unaudited |
| ShareV2 | unknown | ethereum | [`0x106538...875287`](./contracts/ethereum-1/0x106538cc16f938776c7c180186975bca23875287/) | ⚠️ Unaudited |
| SigmoidThreshold | unknown | ethereum | [`0xa72872...07f7f3`](./contracts/ethereum-1/0xa728721394084ea78f10cebb192323f50407f7f3/) | ⚠️ Unaudited |
| SimpleERC20 | token | ethereum | [`0x4849d2...01cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | ⚠️ Unaudited |
| SimpleERCFund | unknown | ethereum | [`0x7b075b...98fe22`](./contracts/ethereum-1/0x7b075b3aa2f1143775101986b52e32da9d98fe22/) | ⚠️ Unaudited |
| StakedBPT | token | ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | 3 deployments: ethereum [`0x2b057a...b2b66b`](./contracts/ethereum-1/0x2b057a68164922d78683552cca38ad16a5b2b66b/); ethereum `0x9a8541...d47bd1`; ethereum `0xd98bc1...5d0e6a` | ⚠️ Unaudited |
| TokenPool | core_logic | ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | [`0xf840f3...950935`](./contracts/ethereum-1/0xf840f3ee161756cec04a64d25eb497c557950935/) | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | 14 deployments: ethereum [`0x02957a...c877f5`](./contracts/ethereum-1/0x02957ae53173f58dc9989c4a09853f9528c877f5/); ethereum `0x0f5ecb...e0f7b3`; ethereum `0x121bae...1078bd`; ethereum `0x4e153d...5e19d3`; ethereum `0x67a883...f2117a`; ethereum `0x7715a2...df3430`; ethereum `0x88da51...4ee747`; ethereum `0x9dcea4...d3c216`; ethereum `0xa89572...8e2e22`; ethereum `0xaf7005...24ebe2`; ethereum `0xcd2dfe...8d1fba`; ethereum `0xe5fc22...b27884`; ethereum `0xf43775...28fb93`; ethereum `0xf8acea...d72dea` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x570242...6507e5`](./contracts/ethereum-1/0x57024267e8272618f9c5037d373043a8646507e5/); ethereum `0x9f624b...980808` | ⚠️ Unaudited |
| VoteProxy | unknown | ethereum | [`0x6bddf1...eb729b`](./contracts/ethereum-1/0x6bddf10f9956dcda89998c2e673f74a09deb729b/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 67 deployments: ethereum [`0x06364f...d6c763`](./contracts/ethereum-1/0x06364f10b501e868329afbc005b3492902d6c763/); ethereum `0x075b1b...e70fb3`; ethereum `0x0dfdc4...939a9d`; ethereum `0x14f9bd...0d7d15`; ethereum `0x179484...19762c`; ethereum `0x192092...3b36ef`; ethereum `0x1bd65c...ceaace`; ethereum `0x1f2a66...62b275`; ethereum `0x2088a8...2d8f6c`; ethereum `0x2146b0...f881b6`; ethereum `0x2b645a...8d1434`; ethereum `0x2e60cf...0ef419`; ethereum `0x319967...9cf3d7`; ethereum `0x3740fb...06f5fd`; ethereum `0x3b3ac5...24333b`; ethereum `0x45f783...055f51`; ethereum `0x49849c...fb3675`; ethereum `0x4e680f...357bd4`; ethereum `0x4f0e0e...053841`; ethereum `0x52ea46...35d85c`; ethereum `0x54ee22...68b800`; ethereum `0x5e71f0...cf0e8d`; ethereum `0x61dc3c...896e87`; ethereum `0x6812c0...50fc74`; ethereum `0x6ff57e...d4fa00`; ethereum `0x76827f...21f5c7`; ethereum `0x7771f7...cbc812`; ethereum `0x79a8c4...5a4f27`; ethereum `0x7adbf7...4456de`; ethereum `0x7b5a09...f5f55b`; ethereum `0x7fc77b...0a9714`; ethereum `0x7fe97b...44ecfd`; ethereum `0x7fffa7...7dfc7d`; ethereum `0x845838...37f8a2`; ethereum `0x8474c1...ba9f4f`; ethereum `0x849eab...f2bb2e`; ethereum `0x884be2...ceb75c`; ethereum `0x930541...f0895b`; ethereum `0x9726e9...97313e`; ethereum `0x97b7e9...b9f86d`; ethereum `0x9fc689...4a1f23`; ethereum `0xa27476...d0eadb`; ethereum `0xa2b47e...fb7a56`; ethereum `0xa50ccc...187287`; ethereum `0xa5407e...3efbfd`; ethereum `0xaaaeee...0e9c35`; ethereum `0xac795d...747a80`; ethereum `0xb10c49...2e23e2`; ethereum `0xb241a8...e7188f`; ethereum `0xb527c4...ec5a0b`; ethereum `0xb6a793...e2eb44`; ethereum `0xb6c057...b59edb`; ethereum `0xbbc81d...73a5d3`; ethereum `0xbc7e83...f40a35`; ethereum `0xc25a3a...72917f`; ethereum `0xc97ef4...0451db`; ethereum `0xd133d1...e2f778`; ethereum `0xd905e2...1db0d8`; ethereum `0xdc31f5...96838e`; ethereum `0xdf5e0e...d806a8`; ethereum `0xeb2120...b6bc06`; ethereum `0xebdd53...957f20`; ethereum `0xedf54b...16a966`; ethereum `0xf129d6...971bab`; ethereum `0xf79d92...324b8d`; ethereum `0xfcba3e...f12851`; ethereum `0xff1188...7d5b97` | ⚠️ Unaudited |
| WeightFeeder | unknown | ethereum | [`0x5800fc...816546`](./contracts/ethereum-1/0x5800fc35f004c1218b18a22940ee7e8be4816546/) | ⚠️ Unaudited |
| WhiteList | unknown | ethereum | [`0x19f35c...8e493e`](./contracts/ethereum-1/0x19f35ce3c3875c120ab602386c8d6a59e88e493e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x04af91...b5303d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1ada83...2e401f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ed872...2fc25c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x45d9a3...cc145b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c5395...0c013b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ed2d6...71c79a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x776968...83516c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x80caaa...c89af2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb43593...45efd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbb805...b35b8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbee53...b86fd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xced2c6...24cdc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdbe281...b1a0a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe146dc...f3cf36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5fdba...95cba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfef6ee...6d1135` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x86fb84...bd6701`](./contracts/ethereum-1/0x86fb84e92c1eedc245987d28a42e123202bd6701/) | VaultLib | core_logic | $3,126,687.15 | Verified native implementation with $3,126,687.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ArcxTokenV2 | token | $949,182.70 | Verified native implementation with $949,182.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/) | bVault | core_logic | $301,989.55 | Verified native implementation with $301,989.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0440ae...25c87c`](./contracts/ethereum-1/0x0440ae12f329dbd7306b6d9edbb0e667c225c87c/) | TokenStore | token | $178,765.50 | Verified native implementation with $178,765.50 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | BACDAIPool | core_logic | $88,280.57 | Verified native implementation with $88,280.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | BACUSDCPool | core_logic | $86,330.94 | Verified native implementation with $86,330.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | BACUSDTPool | core_logic | $71,162.70 | Verified native implementation with $71,162.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bffad...fd7d9d`](./contracts/ethereum-1/0x9bffad7a6d5f52dbc51cae33e419793c72fd7d9d/) | StakingAccrualERC20V5 | token | $12,500.28 | Verified native implementation with $12,500.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5859ad...8120c0`](./contracts/ethereum-1/0x5859adb05988946b9d08dce2e12ae29af58120c0/) | BASPool | core_logic | $1,391.62 | Verified native implementation with $1,391.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | BACSUSDPool | core_logic | $10.00 | Verified native implementation with $10.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ERC20Peg | token | $2.00 | Verified native implementation with $2.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e7ae8...d6ed8c`](./contracts/ethereum-1/0x7e7ae8923876955d6dcb7285c04065a1b9d6ed8c/) | BACPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | BACyCRVPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6f889...c115a2`](./contracts/ethereum-1/0xa6f889c3cedbdf6cb524813da0ee0ffaddc115a2/) | BIP11 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | BlackPoolToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27c20f...96fd4f`](./contracts/ethereum-1/0x27c20f0b0ad78805084eeb8407291326e996fd4f/) | Boardroom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xecf0dd...33e42a`](./contracts/ethereum-1/0xecf0dde35f6d895c065e7526348af1e79433e42a/) | BoardroomV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc36824...f5abc5`](./contracts/ethereum-1/0xc36824905dff2eaaee7ecc09fcc63abc0af5abc5/) | Bond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9a904...efe109`](./contracts/ethereum-1/0xd9a904a1320b5f0a1f742a9e431ded2a55efe109/) | Bondroom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3449fc...03a69a`](./contracts/ethereum-1/0x3449fc1cd036255ba1eb19d65ff4ba2b8903a69a/) | Cash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c48fd...47d30c`](./contracts/ethereum-1/0x4c48fd8ed6f6a50bf03dbdefe7d74983f447d30c/) | ControlledAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8c534...504d2a`](./contracts/ethereum-1/0xd8c5344e331d5f4161f03726870ce9da8b504d2a/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x067d4d...f9db0f`](./contracts/ethereum-1/0x067d4d3ce63450e74f880f86b5b52ea3edf9db0f/) | DAIBACLPTokenSharePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9569d4...fb0d0a`](./contracts/ethereum-1/0x9569d4cd7ac5b010da5697e952efb1ec0efb0d0a/) | DAIBASLPTokenSharePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x818f83...402f2e`](./contracts/ethereum-1/0x818f83333244ba4bb72dab0b60b1901158402f2e/) | Distribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x065894...8eb1b0`](./contracts/ethereum-1/0x06589479a31f826410bbd6d43410e7ff2d8eb1b0/) | Feeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x666c2a...54c0cd`](./contracts/ethereum-1/0x666c2a4625ef5f8cf66a24fbff9f22437754c0cd/) | InitialCashDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c5323...e2f4bb`](./contracts/ethereum-1/0x3c53230875877321023f757c33d2faf71de2f4bb/) | InitialShareDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdbae6...120b11`](./contracts/ethereum-1/0xcdbae6de88c7525369d6826ae1cdcab415120b11/) | LinearThreshold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6043...ade677`](./contracts/ethereum-1/0x1b604349100a318e369b59a6d6c1b65a31ade677/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/) | Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b3868...8ff7ed`](./contracts/ethereum-1/0x1b3868247dfbc155fa59b30ec03e63b10a8ff7ed/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cf4ac...912828`](./contracts/ethereum-1/0x0cf4acf926a4d973e4a1775e4a82839988912828/) | PickleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66d7fa...30b7bb`](./contracts/ethereum-1/0x66d7fa132b5550205d4d6a6645b66283e330b7bb/) | PoolMigrator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fe765...b432c5`](./contracts/ethereum-1/0x1fe7656fa41eea50b0ee8591fd6b405c94b432c5/) | PoolProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01592e...a00ae6`](./contracts/ethereum-1/0x01592e349258233a6f13685228060511eca00ae6/) | PoolStore | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e3d21...41510c`](./contracts/ethereum-1/0x2e3d21e2730b4e5d5ee7214d4723ea96d041510c/) | PoolWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7ed29...b63696`](./contracts/ethereum-1/0xa7ed29b253d8b4e3109ce07c80fc570f81b63696/) | Share | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x106538...875287`](./contracts/ethereum-1/0x106538cc16f938776c7c180186975bca23875287/) | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa72872...07f7f3`](./contracts/ethereum-1/0xa728721394084ea78f10cebb192323f50407f7f3/) | SigmoidThreshold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4849d2...01cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | SimpleERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b075b...98fe22`](./contracts/ethereum-1/0x7b075b3aa2f1143775101986b52e32da9d98fe22/) | SimpleERCFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | StakedBPT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | TokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf840f3...950935`](./contracts/ethereum-1/0xf840f3ee161756cec04a64d25eb497c557950935/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02957a...c877f5`](./contracts/ethereum-1/0x02957ae53173f58dc9989c4a09853f9528c877f5/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bddf1...eb729b`](./contracts/ethereum-1/0x6bddf10f9956dcda89998c2e673f74a09deb729b/) | VoteProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5800fc...816546`](./contracts/ethereum-1/0x5800fc35f004c1218b18a22940ee7e8be4816546/) | WeightFeeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19f35c...8e493e`](./contracts/ethereum-1/0x19f35ce3c3875c120ab602386c8d6a59e88e493e/) | WhiteList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
