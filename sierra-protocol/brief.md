# Agentic Audit Brief: Sierra Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Sierra Protocol (`sierra-protocol`)
- Website: [https://sierra.money/](https://sierra.money/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, ethereum
- Contract surface: 137 unique implementations (215 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $40,235,043.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sierra Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across avalanche, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: layerzero (1), openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6e6080e15f8c0010d333d8caeead29292adb78f7`, chain 43114)
- LytPoolOFT (`0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 135 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 19
- Confirmed-live implementations: 2 of 137 unique; 135 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/49
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 88
- Unique implementations: 137
- Raw deployments: 215
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BusinessDayRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x194951b1f48b8145d0672b0b606337fab615bec2`; ethereum `0xccbde093d2fbc50d5adb705253ded33ad20d4a1b`; ethereum `0xdec9c1ca9389a29bd021dc3c6921d230e2c3c4d8` | ⚠️ Unaudited |
| BusinessDayRegistryFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x566d58557734ca2b49cdd26d01cee3c13515601a`; ethereum `0xc3016303096b07583ecc675eda0c7c52aa11fa4e` | ⚠️ Unaudited |
| DepositAddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9bbbd0f71365aee2b7165d59d2ff373647f02789`; ethereum `0xcca3ccbe590813a674335ef0846ba446949f5367` | ⚠️ Unaudited |
| DepositAddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x194951b1f48b8145d0672b0b606337fab615bec2`; avalanche `0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x3eeacc4309435ba1672d8d9265bc717a2c71a49a`; ethereum `0x785b01f10496ec28aacec6fb19aec8a191199a18`; ethereum `0xb2a69a87fbaa0e2ab4b0fdae15b1a4e79f30d752` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4b5bf9971542d29713ab2c9c6a320dc3804227a8`; ethereum `0xa3be07c2734ed1ce269cf026cbe8d09d146014e1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x51496cce586b1b89593c6341474a0ef541acf74b`; ethereum `0xe8490a7e608eaa8e0b14cf8befa256ba4766d421` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6c59ca7c14f480258549e3f365b97b4365447831`; ethereum `0x746253d0aeefeee00ae9295434db4851b48a1a9c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x2f973089d86a0c807210f1973898274001f1e2a8`; avalanche `0x3548ee23e489112a2207af2a068a5ec03b3a52bd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3d7e4a8f9bf0e84608c99b5ab85adbdaf6500c57`; avalanche `0x6eb641e59302377da329237b6849e859612b3432` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3eeacc4309435ba1672d8d9265bc717a2c71a49a`; avalanche `0xb2a69a87fbaa0e2ab4b0fdae15b1a4e79f30d752` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x8035c1e2ca27c2a9b6d0ed1cfb378e5ff0d2b2da`; avalanche `0xc6a01485cc4a054208c9532197ac79a58357e01d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xa3be07c2734ed1ce269cf026cbe8d09d146014e1`; avalanche `0xc3016303096b07583ecc675eda0c7c52aa11fa4e` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3fa3d254bf6af295b5b22cc6730b04144314890` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e` | ⚠️ Unaudited |
| Loan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x11f3373780aa778fcf8e3a78a5f301444cec5845`; ethereum `0x8df52365b04215ec20b916e45893dec784fedddf`; ethereum `0xd66d333d591114662aa2f9a619ab6aa97dd52c41`; ethereum `0xff88eadeeb4694d36e9198405553ba62bdbbfb51` | ⚠️ Unaudited |
| LoanFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45b5eda11f4a4079fbdf87c0fa01c5d182d70f69` | ⚠️ Unaudited |
| LoanLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x061e680724a10c24ffb87b6f74c0805c64087605`; ethereum `0xa550b278cb6d0ce393f80cf3e387e6f8badd2ae0`; ethereum `0xdad9a580758f8eb9d0dbe40382c13d06c1bba441` | ⚠️ Unaudited |
| LytPoolOFT | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-254786 | `0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc` | ⚠️ Unaudited |
| LytPoolOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc472d3a47719de5f9d808ca91d7b70bd2138bcaa` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7887fed5e2f9dc1a66fbb65f76ba3731d82341a` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x007b58a41566aa4075fd078d4147a1eaff75923c`; ethereum `0xc472d3a47719de5f9d808ca91d7b70bd2138bcaa` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x253ccc7672f8bf8881aefabd711740c0b8610070`; ethereum `0x66f6ea0ff7c62c24c60a4bf9ff9ed0907ecc2792`; ethereum `0x941f7b8f9267ecf1787e033d7f7ae4d27d4ec54f`; ethereum `0xe288827a6e605209c8616a30537367d2e3249247` | ⚠️ Unaudited |
| PoolAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb95a860b546933305618d7b8bd515e29a61b2454` | ⚠️ Unaudited |
| PoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4b356be5b818509ece59385c6ed46da460b92e97`; ethereum `0x653bd1f7e7fa9275dccb7c83c8935150e2c4ef39`; ethereum `0xc7883c3fea599ab60fc2039efde11061af080ea3` | ⚠️ Unaudited |
| PoolControllerDynamic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3303202b4b4b5155885ed529f3df704997afb3ba`; ethereum `0x580a0fafe563be1510b0b9ec453ad72a04b2b85c`; avalanche `0xf26b44be015f169f41357a9d56e87ead54560d0a` | ⚠️ Unaudited |
| PoolControllerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x95577109dd671ee73e9c867183de9f9b95a0ce25` | ⚠️ Unaudited |
| PoolControllerFactoryDynamic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93076fe579156bec96408332d21d360cd8cd2a71` | ⚠️ Unaudited |
| PoolControllerFactoryFlex | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x447239a5c9940ccafa566977c91f17f5d797dbf4`; ethereum `0x6f3cab9436ed7a416e00e43fbe029a95240b0dcc` | ⚠️ Unaudited |
| PoolControllerFlex | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x0264f33c7716d93053a28efec730bb5e7412c547`; ethereum `0x266a75b3a6c1b5193fda2c465e2e77e4b098d5d7`; ethereum `0x34bf31426e8f9f9411e68c53b833b126a171596b`; ethereum `0x4d827615812145983e88476376a7015fca402b99`; ethereum `0x6ac59194f77195e12a8d7f017a1195bed62b3d93`; ethereum `0x70b66190bd139e97ff894d6a3a4c285e17f1d2c3`; ethereum `0x758859d2d3131a313bc9db2a5a26c11cbe147ec8`; ethereum `0x912849c586ce05a225de2075e509686aa26953db`; ethereum `0xb7160ed4d0eddb165d5e3d05493bcc8c86a86529`; ethereum `0xea12f3f15c65f170c8f6e571dd1a9c0d50f33c6d`; avalanche `0x4d468f45eeb249d3cedefd8db8b30149159f3ae5`; avalanche `0x5523dfa5d34e58f8fc662c9ac555690b47bc3f02` | ⚠️ Unaudited |
| PoolControllerFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x67228cdec83c012cd4dd62c15f07e7f9f94b9e02`; avalanche `0xb7160ed4d0eddb165d5e3d05493bcc8c86a86529` | ⚠️ Unaudited |
| PoolDynamic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x08c6824fae6dcc966399739bf999b44c5aae7257`; ethereum `0x11fff7f8ffa78c537cab26be142d2ee91ea9622c`; avalanche `0x0eba83c7b2122e347eeafdc37edf9ed856f0ac46`; avalanche `0x33b13987d69f3f117579bef4b235ae909225a507` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e70b675ab0f296cee11de25b8368e8d30ba740b` | ⚠️ Unaudited |
| PoolFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: ethereum `0xdd496f2b977057e56a06eb3ac9f6552fbe96445e`; ethereum `0xea8ae2cb0c379d2847a5a8c27a7ce8cbe46fd0d4`; ethereum `0xf6e658a3c792dd1a71aec72ea766d8a08bb402e9`; avalanche `0x66be61e109ecff0e829313b605904cddeb88fff8`; avalanche `0xc85d9b69a3cfd606cf4564fcad85f9f04c41ea40`; avalanche `0xe946a01c2e82d665a155931da325f123595c5121` | ⚠️ Unaudited |
| PoolLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x33b13987d69f3f117579bef4b235ae909225a507`; ethereum `0x5e383030494a7cf4d03d502c97a96c221fd95561` | ⚠️ Unaudited |
| PoolLibFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x78bfc8a7197abfb81d4774e7936a76092be2e169`; ethereum `0xeadeacd7c003bbacb171597889c1271a6791865b`; avalanche `0xb19b8f2e7a65c0ed7ab8bc3eab2a6551429ef4bf` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0c6e11a37a7313c282621821455ad826fb61f692`; ethereum `0x9d5e36dfedbc55cfa30dce5fbf5cbce3261689b7` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3032005e8c86bc08b9e1d2a8e0a0dfd03b835233` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd05353b0c57c707a25013206e2e19f1233db92d9`; ethereum `0xe234cdb5e6138c79baf977a040935be6319dc7bc` | ⚠️ Unaudited |
| QueryLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa5677fd1d1caf56cd8924edc589045978cf1b33f`; ethereum `0xea7de06c31c7827d6c8e74d261d330c9ac20435e` | ⚠️ Unaudited |
| ServiceConfigurationV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1048f27729ed8cf70bff2cfd11a979d09dbdb6d8`; ethereum `0xec4f65e0a0268ff38ecec711ad5159b96dabab98` | ⚠️ Unaudited |
| ServiceConfigurationV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 15 deployments: ethereum `0x0c583a7926635301ddbc3cc9fd613df156206611`; ethereum `0x2f6d91b78a1514568e82cb0f21027f4e2c4853ce`; ethereum `0x51e8bb8d7dec46a889b550a170dbc168c6e356f6`; ethereum `0x673897505cf2c7d01ab698a2e6b619c7089d226f`; ethereum `0xbca5cf284c6d1efd7c8a5fd17556a28aed8990b2`; ethereum `0xc5524dc494dee139b9cd93efafcf07869d187380`; ethereum `0xde6bf117c5e0241f1ba38f395fb76504edf60aaa`; ethereum `0xe958bb2a865e523ee8029aabc5643ec2386e3c1b`; avalanche `0x061e680724a10c24ffb87b6f74c0805c64087605`; avalanche `0x45b5eda11f4a4079fbdf87c0fa01c5d182d70f69`; avalanche `0x566d58557734ca2b49cdd26d01cee3c13515601a`; avalanche `0x8df52365b04215ec20b916e45893dec784fedddf`; avalanche `0xa550b278cb6d0ce393f80cf3e387e6f8badd2ae0`; avalanche `0xccbde093d2fbc50d5adb705253ded33ad20d4a1b`; avalanche `0xd66d333d591114662aa2f9a619ab6aa97dd52c41` | ⚠️ Unaudited |
| ToSAcceptanceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0e610a503f541ff58a170a647426c89bba057733`; ethereum `0x6848a054f3a5de4201c3817521ab9fdb54f584b5` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb7799c33ea95345839f64544c8a3f32d263ae44` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3246677dad49bf6bcbe206741a408cd4c2aedb33`; ethereum `0x5dd6710fed29132325d3fe1aa138046dab641abc`; avalanche `0x72bd1f7d7121327a597cca3d59b8b363b1e21e97`; avalanche `0xe5db4859f45823e424f9c0dad1d13d4d1783957c` | ⚠️ Unaudited |
| WithdrawController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0f41b4898bdd22bb92e78bc2c31247306f9c6548`; ethereum `0xb46e0eaf928b46eb221815ce092adf267d6430bc`; ethereum `0xef675efc789371093425db4d3ac176a0112d7060` | ⚠️ Unaudited |
| WithdrawControllerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8fb0a9351d8d976a030dbbcf34536e8f9bf22679` | ⚠️ Unaudited |
| WithdrawDepositControllerFactoryFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d` | ⚠️ Unaudited |
| WithdrawDepositControllerFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0e02665b9c537822b99a2ff07cf854fcefdd7400`; ethereum `0x4d468f45eeb249d3cedefd8db8b30149159f3ae5`; avalanche `0x624de5bedfb47fc29fb300a731ebd973dc9d43a9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (88)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03827567b51bd38a0340f31ed20e321e4d9a5fda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038b5e49a74ed0eaddeac0e639e258b2353136b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06dc12e7df8d50e40decdaa1dd7c01203c835002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eba83c7b2122e347eeafdc37edf9ed856f0ac46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d742d56b8b5c6b489d9b57f5d6fd461782e84a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29c978a11044ea24d01f45a5dcfcd531bc1b95d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f973089d86a0c807210f1973898274001f1e2a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x312ee7318242f81b9a8406a6b098c65d4f43035e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34deae06f86ced748a743588ebe146399fed4de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3548ee23e489112a2207af2a068a5ec03b3a52bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7e4a8f9bf0e84608c99b5ab85adbdaf6500c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x436e490c9808a2def2ff68b560cdebebe8ef4e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x450b94db0efb1261e685839c2c4672360c1fffc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x483a8fd1335e87b47875f9247f3130c8a15e060a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bcac50a81ea5e0853503ef9286dea6ac24b6dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x518f65bfdb6494903cd0340871da7cab1fd5f7ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51f8f461dbd96eea8ffad68fbe18d77bc14f70e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5523dfa5d34e58f8fc662c9ac555690b47bc3f02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x560f4c0c25e7e8ae7f07c9b46a82ca63c40703e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6085f4e4dd40276bb1fe95b8a371961b0ea4cbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6320ee08fbcdfdfedb3bab1ea55fa01023731671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66be61e109ecff0e829313b605904cddeb88fff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67228cdec83c012cd4dd62c15f07e7f9f94b9e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eb641e59302377da329237b6849e859612b3432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8035c1e2ca27c2a9b6d0ed1cfb378e5ff0d2b2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82c5b93f215d7f82a6dd288a4fdf7949cfc22115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b0377afe529c7158d1db7114a1bce00098388ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bbd988fd507143f3d4aeb8d694c3b22f8699a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fb0a9351d8d976a030dbbcf34536e8f9bf22679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96b5da21af1d345c5d6bad90fa4dbcaecb7254c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a22f57f2e230da6a190f3b5f4054bed893d425d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa26791f5a6b233dfbacdb111638c3f26ca730559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabf5beb8b2503811017a8fb4062145ac93748010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1046d9fdbba300d2caf307adda195fbeaf624b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb19b8f2e7a65c0ed7ab8bc3eab2a6551429ef4bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb424e26df6dabc91eb888b8aef9d539176db103f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7c0b1b9c61f35068561077fbaa163707128597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe22ff4f24752130154b255e9ba719e5b8b550af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc020909c7df088474e14972b2b5aa1e3874c641f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d68d2c802c55b39d961f778b73954f8c0bcca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2df5cf00aa31073113af2d6818a404218250f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc641de59d9a55b6657e4bca9bb62822c8bb09ed3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6a01485cc4a054208c9532197ac79a58357e01d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbc913ba4a386fa243b6a135acc2913b5d15567e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf0d36b612b6b126925edd90d9d8696f05325d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5db4859f45823e424f9c0dad1d13d4d1783957c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe946a01c2e82d665a155931da325f123595c5121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed6171d2af614d4cf41e03ed4954f6ed43a14cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2b7b20c4008fc6e7db4395f771d04faaf444ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf26b44be015f169f41357a9d56e87ead54560d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4f3c127e79f99027b69d74a31f35e5678a5626a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x038b5e49a74ed0eaddeac0e639e258b2353136b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06dc12e7df8d50e40decdaa1dd7c01203c835002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09ca60ca323a6313ae144778c3ebdfccfbb5e5d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e610a503f541ff58a170a647426c89bba057733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d742d56b8b5c6b489d9b57f5d6fd461782e84a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fe74ca6c66a33b8b619d799af110741fb6d20e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29c978a11044ea24d01f45a5dcfcd531bc1b95d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34deae06f86ced748a743588ebe146399fed4de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d3f8fe9cce16e1c2743d5ace99f027df866c6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f4d27e9e83d82c971f1fc8c4b864b8a580b5e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x436e490c9808a2def2ff68b560cdebebe8ef4e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a2d60cf33ca8f72d7839435859f573d03cd4dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a8094f20906a453a4a74769aa74c4012b0d5df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4bcac50a81ea5e0853503ef9286dea6ac24b6dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c90c8a368f7d1f4a57906139bac23c72f38f4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x518f65bfdb6494903cd0340871da7cab1fd5f7ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6085f4e4dd40276bb1fe95b8a371961b0ea4cbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6320ee08fbcdfdfedb3bab1ea55fa01023731671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6848a054f3a5de4201c3817521ab9fdb54f584b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-254788 | `0x6e6080e15f8c0010d333d8caeead29292adb78f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f2239511051b875ccf84dab02d5a307adcd51c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82c5b93f215d7f82a6dd288a4fdf7949cfc22115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8bbd988fd507143f3d4aeb8d694c3b22f8699a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a22f57f2e230da6a190f3b5f4054bed893d425d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabf5beb8b2503811017a8fb4062145ac93748010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb1046d9fdbba300d2caf307adda195fbeaf624b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5dc6671e7cdaaa2386536295bf63a221b67311a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe22ff4f24752130154b255e9ba719e5b8b550af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc2df5cf00aa31073113af2d6818a404218250f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbc913ba4a386fa243b6a135acc2913b5d15567e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf0d36b612b6b126925edd90d9d8696f05325d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe288827a6e605209c8616a30537367d2e3249247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec4f65e0a0268ff38ecec711ad5159b96dabab98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xecc6ad0608e1e3fc6b314df221cf10ea07ae08d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed6171d2af614d4cf41e03ed4954f6ed43a14cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef2b7b20c4008fc6e7db4395f771d04faaf444ea` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 190
- Live contracts: 0
- Unknown liveness contracts: 190
- Source-verified contracts: 98
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=33, contamination review=9, source verified unclassified=56, unverified unclassified=92

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | source verified unclassified | FiatTokenV2_1<br>`0xa3fa3d254bf6af295b5b22cc6730b04144314890` | non_address_book | unknown | unknown | verified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | source verified unclassified | MasterMinter<br>`0xb7887fed5e2f9dc1a66fbb65f76ba3731d82341a` | non_address_book | unknown | unknown | verified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1fe74ca6c66a33b8b619d799af110741fb6d20e3` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3d3f8fe9cce16e1c2743d5ace99f027df866c6bc` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4c90c8a368f7d1f4a57906139bac23c72f38f4cf` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7f2239511051b875ccf84dab02d5a307adcd51c2` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb5dc6671e7cdaaa2386536295bf63a221b67311a` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xecc6ad0608e1e3fc6b314df221cf10ea07ae08d3` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | candidate review | DepositAddressRegistry<br>`0x194951b1f48b8145d0672b0b606337fab615bec2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | OpenfortUpgradeableProxy<br>`0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | PoolControllerFactory<br>`0x95577109dd671ee73e9c867183de9f9b95a0ce25` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | PoolControllerFactoryFlex<br>`0x67228cdec83c012cd4dd62c15f07e7f9f94b9e02` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | PoolControllerFlex<br>`0x4d468f45eeb249d3cedefd8db8b30149159f3ae5` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | PoolControllerFlex<br>`0x5523dfa5d34e58f8fc662c9ac555690b47bc3f02` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | PoolControllerFlex<br>`0xb7160ed4d0eddb165d5e3d05493bcc8c86a86529` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | PoolFlex<br>`0xc85d9b69a3cfd606cf4564fcad85f9f04c41ea40` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | PoolLibFlex<br>`0xb19b8f2e7a65c0ed7ab8bc3eab2a6551429ef4bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | ServiceConfigurationV6<br>`0x061e680724a10c24ffb87b6f74c0805c64087605` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | ServiceConfigurationV6<br>`0x45b5eda11f4a4079fbdf87c0fa01c5d182d70f69` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | ServiceConfigurationV6<br>`0x566d58557734ca2b49cdd26d01cee3c13515601a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | ServiceConfigurationV6<br>`0x8df52365b04215ec20b916e45893dec784fedddf` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | ServiceConfigurationV6<br>`0xa550b278cb6d0ce393f80cf3e387e6f8badd2ae0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | ServiceConfigurationV6<br>`0xc3016303096b07583ecc675eda0c7c52aa11fa4e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | ServiceConfigurationV6<br>`0xccbde093d2fbc50d5adb705253ded33ad20d4a1b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | ServiceConfigurationV6<br>`0xd66d333d591114662aa2f9a619ab6aa97dd52c41` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | VaultFactory<br>`0x72bd1f7d7121327a597cca3d59b8b363b1e21e97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | VaultFactory<br>`0xe5db4859f45823e424f9c0dad1d13d4d1783957c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | WithdrawControllerFactory<br>`0x8fb0a9351d8d976a030dbbcf34536e8f9bf22679` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | candidate review | WithdrawDepositControllerFlex<br>`0x624de5bedfb47fc29fb300a731ebd973dc9d43a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | source verified unclassified | ERC1967Proxy<br>`0x3548ee23e489112a2207af2a068a5ec03b3a52bd` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | source verified unclassified | ERC1967Proxy<br>`0x3d7e4a8f9bf0e84608c99b5ab85adbdaf6500c57` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | source verified unclassified | ERC1967Proxy<br>`0x3eeacc4309435ba1672d8d9265bc717a2c71a49a` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | source verified unclassified | ERC1967Proxy<br>`0xa3be07c2734ed1ce269cf026cbe8d09d146014e1` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | source verified unclassified | ERC1967Proxy<br>`0xc6a01485cc4a054208c9532197ac79a58357e01d` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | source verified unclassified | PoolControllerDynamic<br>`0xf26b44be015f169f41357a9d56e87ead54560d0a` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | source verified unclassified | PoolDynamic<br>`0x0eba83c7b2122e347eeafdc37edf9ed856f0ac46` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | source verified unclassified | PoolDynamic<br>`0x33b13987d69f3f117579bef4b235ae909225a507` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | source verified unclassified | PoolFlex<br>`0x66be61e109ecff0e829313b605904cddeb88fff8` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | source verified unclassified | PoolFlex<br>`0xe946a01c2e82d665a155931da325f123595c5121` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x038b5e49a74ed0eaddeac0e639e258b2353136b9` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x06dc12e7df8d50e40decdaa1dd7c01203c835002` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0e610a503f541ff58a170a647426c89bba057733` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1d742d56b8b5c6b489d9b57f5d6fd461782e84a7` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x29c978a11044ea24d01f45a5dcfcd531bc1b95d5` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2f973089d86a0c807210f1973898274001f1e2a8` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x34deae06f86ced748a743588ebe146399fed4de0` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3f4d27e9e83d82c971f1fc8c4b864b8a580b5e8b` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x436e490c9808a2def2ff68b560cdebebe8ef4e60` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4a2d60cf33ca8f72d7839435859f573d03cd4dae` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4bcac50a81ea5e0853503ef9286dea6ac24b6dfd` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x518f65bfdb6494903cd0340871da7cab1fd5f7ff` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6085f4e4dd40276bb1fe95b8a371961b0ea4cbd0` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6320ee08fbcdfdfedb3bab1ea55fa01023731671` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6848a054f3a5de4201c3817521ab9fdb54f584b5` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6eb641e59302377da329237b6849e859612b3432` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8035c1e2ca27c2a9b6d0ed1cfb378e5ff0d2b2da` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x82c5b93f215d7f82a6dd288a4fdf7949cfc22115` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8bbd988fd507143f3d4aeb8d694c3b22f8699a61` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9a22f57f2e230da6a190f3b5f4054bed893d425d` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xabf5beb8b2503811017a8fb4062145ac93748010` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb1046d9fdbba300d2caf307adda195fbeaf624b8` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb2a69a87fbaa0e2ab4b0fdae15b1a4e79f30d752` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbe22ff4f24752130154b255e9ba719e5b8b550af` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc2df5cf00aa31073113af2d6818a404218250f39` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcbc913ba4a386fa243b6a135acc2913b5d15567e` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdf0d36b612b6b126925edd90d9d8696f05325d1d` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe288827a6e605209c8616a30537367d2e3249247` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xec4f65e0a0268ff38ecec711ad5159b96dabab98` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xed6171d2af614d4cf41e03ed4954f6ed43a14cde` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xef2b7b20c4008fc6e7db4395f771d04faaf444ea` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | candidate review | PoolControllerFactoryFlex<br>`0x6f3cab9436ed7a416e00e43fbe029a95240b0dcc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | candidate review | PoolControllerFlex<br>`0x34bf31426e8f9f9411e68c53b833b126a171596b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | candidate review | PoolControllerFlex<br>`0x4d827615812145983e88476376a7015fca402b99` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | candidate review | PoolControllerFlex<br>`0xb7160ed4d0eddb165d5e3d05493bcc8c86a86529` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | candidate review | PoolFlex<br>`0xdd496f2b977057e56a06eb3ac9f6552fbe96445e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | candidate review | PoolFlex<br>`0xea8ae2cb0c379d2847a5a8c27a7ce8cbe46fd0d4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | candidate review | PoolFlex<br>`0xf6e658a3c792dd1a71aec72ea766d8a08bb402e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | candidate review | PoolLibFlex<br>`0x78bfc8a7197abfb81d4774e7936a76092be2e169` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | candidate review | PoolLibFlex<br>`0xeadeacd7c003bbacb171597889c1271a6791865b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | candidate review | WithdrawDepositControllerFactoryFlex<br>`0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | candidate review | WithdrawDepositControllerFlex<br>`0x0e02665b9c537822b99a2ff07cf854fcefdd7400` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | candidate review | WithdrawDepositControllerFlex<br>`0x4d468f45eeb249d3cedefd8db8b30149159f3ae5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | contamination review | BusinessDayRegistry<br>`0x194951b1f48b8145d0672b0b606337fab615bec2` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | contamination review | BusinessDayRegistryFactory<br>`0x566d58557734ca2b49cdd26d01cee3c13515601a` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | contamination review | Loan<br>`0x11f3373780aa778fcf8e3a78a5f301444cec5845` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | contamination review | LoanFactory<br>`0x45b5eda11f4a4079fbdf87c0fa01c5d182d70f69` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | contamination review | PoolAccessControl<br>`0xb95a860b546933305618d7b8bd515e29a61b2454` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | contamination review | PoolControllerFactoryDynamic<br>`0x93076fe579156bec96408332d21d360cd8cd2a71` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | contamination review | PoolFactory<br>`0x9e70b675ab0f296cee11de25b8368e8d30ba740b` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | contamination review | VaultFactory<br>`0x3246677dad49bf6bcbe206741a408cd4c2aedb33` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | contamination review | WithdrawController<br>`0x0f41b4898bdd22bb92e78bc2c31247306f9c6548` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | BusinessDayRegistry<br>`0xccbde093d2fbc50d5adb705253ded33ad20d4a1b` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | BusinessDayRegistry<br>`0xdec9c1ca9389a29bd021dc3c6921d230e2c3c4d8` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | BusinessDayRegistryFactory<br>`0xc3016303096b07583ecc675eda0c7c52aa11fa4e` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | DepositAddressRegistry<br>`0xcca3ccbe590813a674335ef0846ba446949f5367` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x0c6e11a37a7313c282621821455ad826fb61f692` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x3eeacc4309435ba1672d8d9265bc717a2c71a49a` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x4b5bf9971542d29713ab2c9c6a320dc3804227a8` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x6848a054f3a5de4201c3817521ab9fdb54f584b5` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x6c59ca7c14f480258549e3f365b97b4365447831` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0xb2a69a87fbaa0e2ab4b0fdae15b1a4e79f30d752` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0xd05353b0c57c707a25013206e2e19f1233db92d9` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0xe8490a7e608eaa8e0b14cf8befa256ba4766d421` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0xec4f65e0a0268ff38ecec711ad5159b96dabab98` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | Loan<br>`0x8df52365b04215ec20b916e45893dec784fedddf` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | Loan<br>`0xd66d333d591114662aa2f9a619ab6aa97dd52c41` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | Loan<br>`0xff88eadeeb4694d36e9198405553ba62bdbbfb51` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | LoanLib<br>`0x061e680724a10c24ffb87b6f74c0805c64087605` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | LoanLib<br>`0xa550b278cb6d0ce393f80cf3e387e6f8badd2ae0` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | LoanLib<br>`0xdad9a580758f8eb9d0dbe40382c13d06c1bba441` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | Pool<br>`0x007b58a41566aa4075fd078d4147a1eaff75923c` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | Pool<br>`0x253ccc7672f8bf8881aefabd711740c0b8610070` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | Pool<br>`0x66f6ea0ff7c62c24c60a4bf9ff9ed0907ecc2792` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | Pool<br>`0x941f7b8f9267ecf1787e033d7f7ae4d27d4ec54f` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | Pool<br>`0xe288827a6e605209c8616a30537367d2e3249247` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | PoolController<br>`0x4b356be5b818509ece59385c6ed46da460b92e97` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | PoolController<br>`0x653bd1f7e7fa9275dccb7c83c8935150e2c4ef39` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | PoolController<br>`0xc7883c3fea599ab60fc2039efde11061af080ea3` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | PoolControllerDynamic<br>`0x3303202b4b4b5155885ed529f3df704997afb3ba` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | PoolControllerDynamic<br>`0x580a0fafe563be1510b0b9ec453ad72a04b2b85c` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | PoolDynamic<br>`0x08c6824fae6dcc966399739bf999b44c5aae7257` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | PoolDynamic<br>`0x11fff7f8ffa78c537cab26be142d2ee91ea9622c` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | PoolLib<br>`0x33b13987d69f3f117579bef4b235ae909225a507` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | PoolLib<br>`0x5e383030494a7cf4d03d502c97a96c221fd95561` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | PoolRegistry<br>`0x3032005e8c86bc08b9e1d2a8e0a0dfd03b835233` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | PoolRegistry<br>`0x9d5e36dfedbc55cfa30dce5fbf5cbce3261689b7` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | PoolRegistry<br>`0xe234cdb5e6138c79baf977a040935be6319dc7bc` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | QueryLib<br>`0xa5677fd1d1caf56cd8924edc589045978cf1b33f` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | QueryLib<br>`0xea7de06c31c7827d6c8e74d261d330c9ac20435e` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | ServiceConfigurationV6<br>`0x1048f27729ed8cf70bff2cfd11a979d09dbdb6d8` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | ToSAcceptanceRegistry<br>`0x0e610a503f541ff58a170a647426c89bba057733` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | Vault<br>`0xfb7799c33ea95345839f64544c8a3f32d263ae44` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | VaultFactory<br>`0x5dd6710fed29132325d3fe1aa138046dab641abc` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | WithdrawController<br>`0xb46e0eaf928b46eb221815ce092adf267d6430bc` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | source verified unclassified | WithdrawController<br>`0xef675efc789371093425db4d3ac176a0112d7060` | non_address_book | unknown | unknown | verified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | DepositAddressRegistry<br>`0x9bbbd0f71365aee2b7165d59d2ff373647f02789` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | Pool<br>`0xc472d3a47719de5f9d808ca91d7b70bd2138bcaa` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x03827567b51bd38a0340f31ed20e321e4d9a5fda` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x038b5e49a74ed0eaddeac0e639e258b2353136b9` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x06dc12e7df8d50e40decdaa1dd7c01203c835002` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0eba83c7b2122e347eeafdc37edf9ed856f0ac46` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d742d56b8b5c6b489d9b57f5d6fd461782e84a7` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29c978a11044ea24d01f45a5dcfcd531bc1b95d5` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f973089d86a0c807210f1973898274001f1e2a8` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x312ee7318242f81b9a8406a6b098c65d4f43035e` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34deae06f86ced748a743588ebe146399fed4de0` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3548ee23e489112a2207af2a068a5ec03b3a52bd` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d7e4a8f9bf0e84608c99b5ab85adbdaf6500c57` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x436e490c9808a2def2ff68b560cdebebe8ef4e60` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x450b94db0efb1261e685839c2c4672360c1fffc6` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x483a8fd1335e87b47875f9247f3130c8a15e060a` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4bcac50a81ea5e0853503ef9286dea6ac24b6dfd` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51496cce586b1b89593c6341474a0ef541acf74b` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x518f65bfdb6494903cd0340871da7cab1fd5f7ff` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5523dfa5d34e58f8fc662c9ac555690b47bc3f02` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x560f4c0c25e7e8ae7f07c9b46a82ca63c40703e5` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6085f4e4dd40276bb1fe95b8a371961b0ea4cbd0` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6320ee08fbcdfdfedb3bab1ea55fa01023731671` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66be61e109ecff0e829313b605904cddeb88fff8` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67228cdec83c012cd4dd62c15f07e7f9f94b9e02` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6eb641e59302377da329237b6849e859612b3432` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x746253d0aeefeee00ae9295434db4851b48a1a9c` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x785b01f10496ec28aacec6fb19aec8a191199a18` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8035c1e2ca27c2a9b6d0ed1cfb378e5ff0d2b2da` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82c5b93f215d7f82a6dd288a4fdf7949cfc22115` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b0377afe529c7158d1db7114a1bce00098388ec` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8bbd988fd507143f3d4aeb8d694c3b22f8699a61` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8fb0a9351d8d976a030dbbcf34536e8f9bf22679` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96b5da21af1d345c5d6bad90fa4dbcaecb7254c8` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9a22f57f2e230da6a190f3b5f4054bed893d425d` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa26791f5a6b233dfbacdb111638c3f26ca730559` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa3be07c2734ed1ce269cf026cbe8d09d146014e1` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xabf5beb8b2503811017a8fb4062145ac93748010` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1046d9fdbba300d2caf307adda195fbeaf624b8` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb19b8f2e7a65c0ed7ab8bc3eab2a6551429ef4bf` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb424e26df6dabc91eb888b8aef9d539176db103f` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe22ff4f24752130154b255e9ba719e5b8b550af` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc020909c7df088474e14972b2b5aa1e3874c641f` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2d68d2c802c55b39d961f778b73954f8c0bcca3` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2df5cf00aa31073113af2d6818a404218250f39` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc641de59d9a55b6657e4bca9bb62822c8bb09ed3` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6a01485cc4a054208c9532197ac79a58357e01d` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcbc913ba4a386fa243b6a135acc2913b5d15567e` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf0d36b612b6b126925edd90d9d8696f05325d1d` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5db4859f45823e424f9c0dad1d13d4d1783957c` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe946a01c2e82d665a155931da325f123595c5121` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xed6171d2af614d4cf41e03ed4954f6ed43a14cde` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef2b7b20c4008fc6e7db4395f771d04faaf444ea` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf26b44be015f169f41357a9d56e87ead54560d0a` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf4f3c127e79f99027b69d74a31f35e5678a5626a` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca](https://cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3990] cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca — no match: Extracted from report header and findings referencing specific contracts.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca | LYTPool | unmatched — not counted | — | listed in scope | no |
| cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca | LYTPoolServiceConfiguration | unmatched — not counted | — | listed in scope | no |
| cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca | LYTPoolAccessControlFactory | unmatched — not counted | — | listed in scope | no |
| cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca | LYTPoolController | unmatched — not counted | — | listed in scope | no |
| cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca | LYTPoolAccessControl | unmatched — not counted | — | listed in scope | no |
| cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca | LYTPoolRegistry | unmatched — not counted | — | listed in scope | no |
| cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca | ILYTPoolStructures | unmatched — not counted | — | listed in scope | no |
| cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca | IPoolStructures | unmatched — not counted | — | listed in scope | no |
| cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca | IERC4626 | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc` | LytPoolOFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 92 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [3990] cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca

Fork inheritance lineage and inherited audits are included when available.
