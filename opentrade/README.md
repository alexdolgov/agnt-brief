# Agentic Audit Brief: OpenTrade

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: OpenTrade (`opentrade`)
- Website: [https://www.opentrade.io](https://www.opentrade.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, ethereum
- Contract surface: 148 unique implementations (150 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $218,060,300.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for OpenTrade. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across avalanche, ethereum. Structural roles: 1 infra, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: infra (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1e571c87556f216662fa8d25143b1b0618512ef6`, chain 1)
- UnnamedContract (`0x3ee320c9f73a84d1717557af00695a34b26d1f1d`, chain 1)
- UnnamedContract (`0xd06f235df80d4981816f7fb0936973155cde1f4c`, chain 1)
- UnnamedContract (`0x09ca60ca323a6313ae144778c3ebdfccfbb5e5d2`, chain 43114)
- UnnamedContract (`0x1d7e71d0cb499c31349df3e9205a4b16bccf2536`, chain 43114)
- UnnamedContract (`0xad6605f4987031fd2d6d6816be53eb7c5b764bf7`, chain 43114)
- UnnamedContract (`0xbfdef5e389bb403426337081ecd1d05bc5193203`, chain 43114)
- BeaconProxy (`0x061329361e0f163125225bf71a1e5af954b46869`, chain 43114)
- PoolFlex (`0x0f8cbdc544dc1d4bd1bdafe0039be07b825af82a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 139 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 9 of 148 unique; 139 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/30
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 118
- Unique implementations: 148
- Raw deployments: 150
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Ottersec | Tier 2 | 1 | 3.3% | 2024-02 |
| unknown | Tier 2 | 1 | 3.3% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PoolFlex | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250370 | `0x0f8cbdc544dc1d4bd1bdafe0039be07b825af82a` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeaconProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-250371 | `0x061329361e0f163125225bf71a1e5af954b46869` | ⚠️ Unaudited |
| BusinessDayRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x194951b1f48b8145d0672b0b606337fab615bec2` | ⚠️ Unaudited |
| BusinessDayRegistryFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566d58557734ca2b49cdd26d01cee3c13515601a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0c6e11a37a7313c282621821455ad826fb61f692`; ethereum `0x9d5e36dfedbc55cfa30dce5fbf5cbce3261689b7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3eeacc4309435ba1672d8d9265bc717a2c71a49a`; ethereum `0x785b01f10496ec28aacec6fb19aec8a191199a18` | ⚠️ Unaudited |
| Loan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11f3373780aa778fcf8e3a78a5f301444cec5845` | ⚠️ Unaudited |
| LoanFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45b5eda11f4a4079fbdf87c0fa01c5d182d70f69` | ⚠️ Unaudited |
| LoanLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x061e680724a10c24ffb87b6f74c0805c64087605` | ⚠️ Unaudited |
| LytPoolOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007b58a41566aa4075fd078d4147a1eaff75923c` | ⚠️ Unaudited |
| PoolAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb95a860b546933305618d7b8bd515e29a61b2454` | ⚠️ Unaudited |
| PoolController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b356be5b818509ece59385c6ed46da460b92e97` | ⚠️ Unaudited |
| PoolControllerDynamic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3303202b4b4b5155885ed529f3df704997afb3ba` | ⚠️ Unaudited |
| PoolControllerFactoryDynamic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93076fe579156bec96408332d21d360cd8cd2a71` | ⚠️ Unaudited |
| PoolControllerFactoryFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x447239a5c9940ccafa566977c91f17f5d797dbf4` | ⚠️ Unaudited |
| PoolControllerFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0264f33c7716d93053a28efec730bb5e7412c547` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e70b675ab0f296cee11de25b8368e8d30ba740b` | ⚠️ Unaudited |
| PoolFactoryDynamic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d3b32bb456a6e387682f6cd37facefe9a219d0c` | ⚠️ Unaudited |
| PoolFactoryFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61424410c0bb1c580ed6363fe9405d9e84fa0578` | ⚠️ Unaudited |
| PoolLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33b13987d69f3f117579bef4b235ae909225a507` | ⚠️ Unaudited |
| PoolLibFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78bfc8a7197abfb81d4774e7936a76092be2e169` | ⚠️ Unaudited |
| QueryLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5677fd1d1caf56cd8924edc589045978cf1b33f` | ⚠️ Unaudited |
| ServiceConfigurationV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c583a7926635301ddbc3cc9fd613df156206611` | ⚠️ Unaudited |
| ToSAcceptanceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e610a503f541ff58a170a647426c89bba057733` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb7799c33ea95345839f64544c8a3f32d263ae44` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3246677dad49bf6bcbe206741a408cd4c2aedb33` | ⚠️ Unaudited |
| WithdrawController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f41b4898bdd22bb92e78bc2c31247306f9c6548` | ⚠️ Unaudited |
| WithdrawDepositControllerFactoryFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d` | ⚠️ Unaudited |
| WithdrawDepositControllerFlex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e02665b9c537822b99a2ff07cf854fcefdd7400` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (118)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03827567b51bd38a0340f31ed20e321e4d9a5fda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038b5e49a74ed0eaddeac0e639e258b2353136b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06dc12e7df8d50e40decdaa1dd7c01203c835002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08c6824fae6dcc966399739bf999b44c5aae7257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a3b7bb45ac8e267cc4e4b2cbdb52b967d82df18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eba83c7b2122e347eeafdc37edf9ed856f0ac46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1048f27729ed8cf70bff2cfd11a979d09dbdb6d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11fff7f8ffa78c537cab26be142d2ee91ea9622c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d742d56b8b5c6b489d9b57f5d6fd461782e84a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250361 | `0x1e571c87556f216662fa8d25143b1b0618512ef6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253ccc7672f8bf8881aefabd711740c0b8610070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x266a75b3a6c1b5193fda2c465e2e77e4b098d5d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29c978a11044ea24d01f45a5dcfcd531bc1b95d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f6d91b78a1514568e82cb0f21027f4e2c4853ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f973089d86a0c807210f1973898274001f1e2a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3032005e8c86bc08b9e1d2a8e0a0dfd03b835233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x312ee7318242f81b9a8406a6b098c65d4f43035e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34bf31426e8f9f9411e68c53b833b126a171596b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34deae06f86ced748a743588ebe146399fed4de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3548ee23e489112a2207af2a068a5ec03b3a52bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d7e4a8f9bf0e84608c99b5ab85adbdaf6500c57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250362 | `0x3ee320c9f73a84d1717557af00695a34b26d1f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x436e490c9808a2def2ff68b560cdebebe8ef4e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x450b94db0efb1261e685839c2c4672360c1fffc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x483a8fd1335e87b47875f9247f3130c8a15e060a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b5bf9971542d29713ab2c9c6a320dc3804227a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bcac50a81ea5e0853503ef9286dea6ac24b6dfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d468f45eeb249d3cedefd8db8b30149159f3ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d827615812145983e88476376a7015fca402b99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51496cce586b1b89593c6341474a0ef541acf74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x518f65bfdb6494903cd0340871da7cab1fd5f7ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e8bb8d7dec46a889b550a170dbc168c6e356f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5523dfa5d34e58f8fc662c9ac555690b47bc3f02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x560f4c0c25e7e8ae7f07c9b46a82ca63c40703e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x580a0fafe563be1510b0b9ec453ad72a04b2b85c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dd6710fed29132325d3fe1aa138046dab641abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e383030494a7cf4d03d502c97a96c221fd95561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6085f4e4dd40276bb1fe95b8a371961b0ea4cbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6320ee08fbcdfdfedb3bab1ea55fa01023731671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x653bd1f7e7fa9275dccb7c83c8935150e2c4ef39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66be61e109ecff0e829313b605904cddeb88fff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66f6ea0ff7c62c24c60a4bf9ff9ed0907ecc2792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67228cdec83c012cd4dd62c15f07e7f9f94b9e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x673897505cf2c7d01ab698a2e6b619c7089d226f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6848a054f3a5de4201c3817521ab9fdb54f584b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac59194f77195e12a8d7f017a1195bed62b3d93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c59ca7c14f480258549e3f365b97b4365447831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eb641e59302377da329237b6849e859612b3432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f3cab9436ed7a416e00e43fbe029a95240b0dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70b66190bd139e97ff894d6a3a4c285e17f1d2c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x746253d0aeefeee00ae9295434db4851b48a1a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x758859d2d3131a313bc9db2a5a26c11cbe147ec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8035c1e2ca27c2a9b6d0ed1cfb378e5ff0d2b2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82c5b93f215d7f82a6dd288a4fdf7949cfc22115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b0377afe529c7158d1db7114a1bce00098388ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bbd988fd507143f3d4aeb8d694c3b22f8699a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8df52365b04215ec20b916e45893dec784fedddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fb0a9351d8d976a030dbbcf34536e8f9bf22679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x912849c586ce05a225de2075e509686aa26953db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x941f7b8f9267ecf1787e033d7f7ae4d27d4ec54f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96b5da21af1d345c5d6bad90fa4dbcaecb7254c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a22f57f2e230da6a190f3b5f4054bed893d425d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bbbd0f71365aee2b7165d59d2ff373647f02789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa26791f5a6b233dfbacdb111638c3f26ca730559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3be07c2734ed1ce269cf026cbe8d09d146014e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa550b278cb6d0ce393f80cf3e387e6f8badd2ae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabf5beb8b2503811017a8fb4062145ac93748010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1046d9fdbba300d2caf307adda195fbeaf624b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb19b8f2e7a65c0ed7ab8bc3eab2a6551429ef4bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2a69a87fbaa0e2ab4b0fdae15b1a4e79f30d752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb424e26df6dabc91eb888b8aef9d539176db103f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb46e0eaf928b46eb221815ce092adf267d6430bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7160ed4d0eddb165d5e3d05493bcc8c86a86529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbca5cf284c6d1efd7c8a5fd17556a28aed8990b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe22ff4f24752130154b255e9ba719e5b8b550af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc020909c7df088474e14972b2b5aa1e3874c641f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d68d2c802c55b39d961f778b73954f8c0bcca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2df5cf00aa31073113af2d6818a404218250f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3016303096b07583ecc675eda0c7c52aa11fa4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc472d3a47719de5f9d808ca91d7b70bd2138bcaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5524dc494dee139b9cd93efafcf07869d187380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc641de59d9a55b6657e4bca9bb62822c8bb09ed3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6a01485cc4a054208c9532197ac79a58357e01d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7883c3fea599ab60fc2039efde11061af080ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbc913ba4a386fa243b6a135acc2913b5d15567e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcca3ccbe590813a674335ef0846ba446949f5367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccbde093d2fbc50d5adb705253ded33ad20d4a1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd05353b0c57c707a25013206e2e19f1233db92d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250364 | `0xd06f235df80d4981816f7fb0936973155cde1f4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd66d333d591114662aa2f9a619ab6aa97dd52c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdad9a580758f8eb9d0dbe40382c13d06c1bba441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd496f2b977057e56a06eb3ac9f6552fbe96445e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde6bf117c5e0241f1ba38f395fb76504edf60aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdec9c1ca9389a29bd021dc3c6921d230e2c3c4d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf0d36b612b6b126925edd90d9d8696f05325d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe234cdb5e6138c79baf977a040935be6319dc7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe288827a6e605209c8616a30537367d2e3249247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5db4859f45823e424f9c0dad1d13d4d1783957c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8490a7e608eaa8e0b14cf8befa256ba4766d421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe946a01c2e82d665a155931da325f123595c5121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe958bb2a865e523ee8029aabc5643ec2386e3c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea12f3f15c65f170c8f6e571dd1a9c0d50f33c6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea7de06c31c7827d6c8e74d261d330c9ac20435e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea8ae2cb0c379d2847a5a8c27a7ce8cbe46fd0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeadeacd7c003bbacb171597889c1271a6791865b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec4f65e0a0268ff38ecec711ad5159b96dabab98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed6171d2af614d4cf41e03ed4954f6ed43a14cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2b7b20c4008fc6e7db4395f771d04faaf444ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef675efc789371093425db4d3ac176a0112d7060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf26b44be015f169f41357a9d56e87ead54560d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4f3c127e79f99027b69d74a31f35e5678a5626a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6e658a3c792dd1a71aec72ea766d8a08bb402e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff88eadeeb4694d36e9198405553ba62bdbbfb51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250366 | `0x09ca60ca323a6313ae144778c3ebdfccfbb5e5d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250367 | `0x1d7e71d0cb499c31349df3e9205a4b16bccf2536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x859532e143f5841cd0d8e0982f27fe013913c3bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250368 | `0xad6605f4987031fd2d6d6816be53eb7c5b764bf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-250369 | `0xbfdef5e389bb403426337081ecd1d05bc5193203` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 113
- Live contracts: 0
- Unknown liveness contracts: 113
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=113

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | unverified unclassified | UnnamedContract<br>`0x859532e143f5841cd0d8e0982f27fe013913c3bb` | non_address_book | unknown | unknown | unverified | n/a | `0xf25621b685c1c22fbcdd7e6728be2268b0e32d55` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x03827567b51bd38a0340f31ed20e321e4d9a5fda` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x038b5e49a74ed0eaddeac0e639e258b2353136b9` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x06dc12e7df8d50e40decdaa1dd7c01203c835002` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x08c6824fae6dcc966399739bf999b44c5aae7257` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0eba83c7b2122e347eeafdc37edf9ed856f0ac46` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1048f27729ed8cf70bff2cfd11a979d09dbdb6d8` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x11fff7f8ffa78c537cab26be142d2ee91ea9622c` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d742d56b8b5c6b489d9b57f5d6fd461782e84a7` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x253ccc7672f8bf8881aefabd711740c0b8610070` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x266a75b3a6c1b5193fda2c465e2e77e4b098d5d7` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29c978a11044ea24d01f45a5dcfcd531bc1b95d5` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f6d91b78a1514568e82cb0f21027f4e2c4853ce` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f973089d86a0c807210f1973898274001f1e2a8` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3032005e8c86bc08b9e1d2a8e0a0dfd03b835233` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x312ee7318242f81b9a8406a6b098c65d4f43035e` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34bf31426e8f9f9411e68c53b833b126a171596b` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34deae06f86ced748a743588ebe146399fed4de0` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3548ee23e489112a2207af2a068a5ec03b3a52bd` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d7e4a8f9bf0e84608c99b5ab85adbdaf6500c57` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x436e490c9808a2def2ff68b560cdebebe8ef4e60` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x450b94db0efb1261e685839c2c4672360c1fffc6` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x483a8fd1335e87b47875f9247f3130c8a15e060a` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b5bf9971542d29713ab2c9c6a320dc3804227a8` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4bcac50a81ea5e0853503ef9286dea6ac24b6dfd` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d468f45eeb249d3cedefd8db8b30149159f3ae5` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d827615812145983e88476376a7015fca402b99` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51496cce586b1b89593c6341474a0ef541acf74b` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x518f65bfdb6494903cd0340871da7cab1fd5f7ff` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51e8bb8d7dec46a889b550a170dbc168c6e356f6` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5523dfa5d34e58f8fc662c9ac555690b47bc3f02` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x560f4c0c25e7e8ae7f07c9b46a82ca63c40703e5` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x580a0fafe563be1510b0b9ec453ad72a04b2b85c` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5dd6710fed29132325d3fe1aa138046dab641abc` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e383030494a7cf4d03d502c97a96c221fd95561` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6085f4e4dd40276bb1fe95b8a371961b0ea4cbd0` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6320ee08fbcdfdfedb3bab1ea55fa01023731671` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x653bd1f7e7fa9275dccb7c83c8935150e2c4ef39` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66be61e109ecff0e829313b605904cddeb88fff8` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66f6ea0ff7c62c24c60a4bf9ff9ed0907ecc2792` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67228cdec83c012cd4dd62c15f07e7f9f94b9e02` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x673897505cf2c7d01ab698a2e6b619c7089d226f` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6848a054f3a5de4201c3817521ab9fdb54f584b5` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ac59194f77195e12a8d7f017a1195bed62b3d93` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c59ca7c14f480258549e3f365b97b4365447831` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6eb641e59302377da329237b6849e859612b3432` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f3cab9436ed7a416e00e43fbe029a95240b0dcc` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70b66190bd139e97ff894d6a3a4c285e17f1d2c3` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x746253d0aeefeee00ae9295434db4851b48a1a9c` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x758859d2d3131a313bc9db2a5a26c11cbe147ec8` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x785b01f10496ec28aacec6fb19aec8a191199a18` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8035c1e2ca27c2a9b6d0ed1cfb378e5ff0d2b2da` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82c5b93f215d7f82a6dd288a4fdf7949cfc22115` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b0377afe529c7158d1db7114a1bce00098388ec` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8bbd988fd507143f3d4aeb8d694c3b22f8699a61` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8df52365b04215ec20b916e45893dec784fedddf` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8fb0a9351d8d976a030dbbcf34536e8f9bf22679` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x912849c586ce05a225de2075e509686aa26953db` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x941f7b8f9267ecf1787e033d7f7ae4d27d4ec54f` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96b5da21af1d345c5d6bad90fa4dbcaecb7254c8` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9a22f57f2e230da6a190f3b5f4054bed893d425d` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9bbbd0f71365aee2b7165d59d2ff373647f02789` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9d5e36dfedbc55cfa30dce5fbf5cbce3261689b7` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa26791f5a6b233dfbacdb111638c3f26ca730559` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa3be07c2734ed1ce269cf026cbe8d09d146014e1` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa550b278cb6d0ce393f80cf3e387e6f8badd2ae0` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xabf5beb8b2503811017a8fb4062145ac93748010` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1046d9fdbba300d2caf307adda195fbeaf624b8` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb19b8f2e7a65c0ed7ab8bc3eab2a6551429ef4bf` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2a69a87fbaa0e2ab4b0fdae15b1a4e79f30d752` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb424e26df6dabc91eb888b8aef9d539176db103f` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb46e0eaf928b46eb221815ce092adf267d6430bc` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb7160ed4d0eddb165d5e3d05493bcc8c86a86529` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbca5cf284c6d1efd7c8a5fd17556a28aed8990b2` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe22ff4f24752130154b255e9ba719e5b8b550af` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc020909c7df088474e14972b2b5aa1e3874c641f` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2d68d2c802c55b39d961f778b73954f8c0bcca3` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2df5cf00aa31073113af2d6818a404218250f39` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3016303096b07583ecc675eda0c7c52aa11fa4e` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc472d3a47719de5f9d808ca91d7b70bd2138bcaa` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc5524dc494dee139b9cd93efafcf07869d187380` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc641de59d9a55b6657e4bca9bb62822c8bb09ed3` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6a01485cc4a054208c9532197ac79a58357e01d` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc7883c3fea599ab60fc2039efde11061af080ea3` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcbc913ba4a386fa243b6a135acc2913b5d15567e` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcca3ccbe590813a674335ef0846ba446949f5367` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xccbde093d2fbc50d5adb705253ded33ad20d4a1b` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd05353b0c57c707a25013206e2e19f1233db92d9` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd66d333d591114662aa2f9a619ab6aa97dd52c41` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdad9a580758f8eb9d0dbe40382c13d06c1bba441` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdd496f2b977057e56a06eb3ac9f6552fbe96445e` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde6bf117c5e0241f1ba38f395fb76504edf60aaa` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdec9c1ca9389a29bd021dc3c6921d230e2c3c4d8` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf0d36b612b6b126925edd90d9d8696f05325d1d` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe234cdb5e6138c79baf977a040935be6319dc7bc` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe288827a6e605209c8616a30537367d2e3249247` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5db4859f45823e424f9c0dad1d13d4d1783957c` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe8490a7e608eaa8e0b14cf8befa256ba4766d421` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe946a01c2e82d665a155931da325f123595c5121` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe958bb2a865e523ee8029aabc5643ec2386e3c1b` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xea12f3f15c65f170c8f6e571dd1a9c0d50f33c6d` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xea7de06c31c7827d6c8e74d261d330c9ac20435e` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xea8ae2cb0c379d2847a5a8c27a7ce8cbe46fd0d4` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeadeacd7c003bbacb171597889c1271a6791865b` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec4f65e0a0268ff38ecec711ad5159b96dabab98` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xed6171d2af614d4cf41e03ed4954f6ed43a14cde` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef2b7b20c4008fc6e7db4395f771d04faaf444ea` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef675efc789371093425db4d3ac176a0112d7060` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf26b44be015f169f41357a9d56e87ead54560d0a` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf4f3c127e79f99027b69d74a31f35e5678a5626a` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6e658a3c792dd1a71aec72ea766d8a08bb402e9` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff88eadeeb4694d36e9198405553ba62bdbbfb51` | non_address_book | unknown | unknown | unverified | n/a | `0xe58cdf885b5f939b5c0b8fb00ce31f8c64a17c78` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a3b7bb45ac8e267cc4e4b2cbdb52b967d82df18` | non_address_book | unknown | unknown | unverified | n/a | `0xf25621b685c1c22fbcdd7e6728be2268b0e32d55` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf](https://1202975695-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXB36F8w05PtbxlF2D9IN%2Fuploads%2FJW6LNorAKkBRluGUed86%2FOpenTrade%20LYT%20Protocol%20Audit%20(V1).pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf](https://1202975695-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXB36F8w05PtbxlF2D9IN%2Fuploads%2F9XOHTb77ArpTuka2PE9M%2FOpenTrade%20Protocol%20Audit%20(V5.1.0).pdf) | unknown | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf](https://1202975695-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXB36F8w05PtbxlF2D9IN%2Fuploads%2FLfqAzt4O1vmBUsMKQfU5%2FOpenTrade%20V5.0%20Audit%20-%20Cantina.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [OpenTrade Audit V4.pdf](https://content.gitbook.com/content/XB36F8w05PtbxlF2D9IN/blobs/kDCibfVNZTx5d6CJFeP7/OpenTrade%20Audit%20V4.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 8 | high |
| [OpenTrade V3 Audit.pdf](https://content.gitbook.com/content/XB36F8w05PtbxlF2D9IN/blobs/5LS0tGve4UlIgzDSdCEG/OpenTrade%20V3%20Audit.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 8 | high |
| [spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf](https://1202975695-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXB36F8w05PtbxlF2D9IN%2Fuploads%2F9kG75StzRxlp8Du7eLp4%2FProtocol%20Audit%20V2%20-%20Ottersec%20(1).pdf) | Ottersec | Audit | 2024-02 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20909] spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf — no match: The report does not have a dedicated scope section, but contract names are extracted from findings context and file references throughout the report. The audit date is explicitly stated on the cover page as 'September 1, 2025'.
- [20910] spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf — no match: Scope section explicitly lists all contracts and interfaces under contracts/ directory.
- [20911] spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf — no match: The report does not have an explicit 'Scope' section, but the contracts are clearly the subject of the audit based on the findings and context. The audit date is from the cover page: 'March 14, 2025'.
- [20912] OpenTrade Audit V4.pdf — matched: Extracted contract names from findings and scope section. Audit date is the follow-up review end date (August 29, 2024) as the most recent date mentioned.
- [20913] OpenTrade V3 Audit.pdf — matched: Extracted contract names from findings and scope description. Audit date is the follow-up review end date (February 16, 2024) as the report covers assessment period up to that date.
- [20914] spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf — matched: Extracted contract names from scope section and findings. Audit date is the follow-up review end date (February 16, 2024) as the latest date mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPool | unmatched — not counted | — | Listed in scope and findings context throughout report. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPoolServiceConfiguration | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPoolAccessControlFactory | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPoolAccessControl | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPoolRegistry | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPoolController | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | ILYTPoolStructures | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | IPoolStructures | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | IERC4626 | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPoolControllerFactory | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf | LYTPoolFactory | unmatched — not counted | — | Listed in scope and findings context. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf | DepositAddressRegistry | unmatched — not counted | — | listed in scope section | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf | ServiceConfigurationV6 | unmatched — not counted | — | listed in scope section | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf | PoolDynamic | unmatched — not counted | — | listed in scope section | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf | PoolControllerDynamic | unmatched — not counted | — | listed in scope section | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf | PoolControllerFlex | unmatched — not counted | — | listed in scope section | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf | IDepositAddressRegistry | unmatched — not counted | — | listed in scope section | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf | PoolDynamic | unmatched — not counted | — | Listed in scope and findings context throughout report. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf | PoolControllerDynamic | unmatched — not counted | — | Listed in scope and findings context throughout report. | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf | PoolControllerFactoryDynamic | unmatched — not counted | — | Mentioned in informational findings (3.5.3). | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf | IPoolDynamicStructures | unmatched — not counted | — | Mentioned in informational findings (3.5.3). | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf | ServiceConfigurationV5 | unmatched — not counted | — | Mentioned in informational findings (3.5.3, 3.5.6). | no |
| OpenTrade Audit V4.pdf | Pool | unmatched — not counted | — | mentioned in findings OS-OTD-ADV-00, OS-OTD-SUG-02 | no |
| OpenTrade Audit V4.pdf | PoolLib | unmatched — not counted | — | mentioned in finding OS-OTD-ADV-00 | no |
| OpenTrade Audit V4.pdf | Loan | unmatched — not counted | — | mentioned in findings OS-OTD-ADV-01 | no |
| OpenTrade Audit V4.pdf | WithdrawControllerFlex | unmatched — not counted | — | mentioned in findings OS-OTD-ADV-02, OS-OTD-ADV-03, OS-OTD-ADV-04 | no |
| OpenTrade Audit V4.pdf | PoolFlex | own proxy deployment | PoolFlex (proxy) (selected) `0x0f8cbdc544dc1d4bd1bdafe0039be07b825af82a` — deployed 2024-02-29 13:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenTrade Audit V4.pdf | BusinessDayRegistry | unmatched — not counted | — | mentioned in finding OS-OTD-ADV-04 | no |
| OpenTrade Audit V4.pdf | WithdrawDepositControllerFlex | unmatched — not counted | — | mentioned in findings OS-OTD-ADV-03, OS-OTD-ADV-05, OS-OTD-SUG-01 | no |
| OpenTrade Audit V4.pdf | Vault | unmatched — not counted | — | mentioned in findings OS-OTD-SUG-00, OS-OTD-SUG-01 | no |
| OpenTrade Audit V4.pdf | PoolAccessControl | unmatched — not counted | — | mentioned in finding OS-OTD-SUG-01 | no |
| OpenTrade V3 Audit.pdf | Pool | unmatched — not counted | — | listed in scope and findings | no |
| OpenTrade V3 Audit.pdf | PoolLib | unmatched — not counted | — | referenced in findings | no |
| OpenTrade V3 Audit.pdf | Loan | unmatched — not counted | — | referenced in findings | no |
| OpenTrade V3 Audit.pdf | WithdrawControllerFlex | unmatched — not counted | — | referenced in findings | no |
| OpenTrade V3 Audit.pdf | PoolFlex | own proxy deployment | PoolFlex (proxy) (selected) `0x0f8cbdc544dc1d4bd1bdafe0039be07b825af82a` — deployed 2024-02-29 13:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenTrade V3 Audit.pdf | BusinessDayRegistry | unmatched — not counted | — | referenced in findings | no |
| OpenTrade V3 Audit.pdf | WithdrawDepositControllerFlex | unmatched — not counted | — | referenced in findings | no |
| OpenTrade V3 Audit.pdf | Vault | unmatched — not counted | — | referenced in findings | no |
| OpenTrade V3 Audit.pdf | PoolAccessControl | unmatched — not counted | — | referenced in findings | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | Pool | unmatched — not counted | — | Listed in scope and findings (e.g., OS-OTD-ADV-00, OS-OTD-SUG-02) | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | PoolLib | unmatched — not counted | — | Referenced in finding OS-OTD-ADV-00 | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | Loan | unmatched — not counted | — | Listed in findings OS-OTD-ADV-01 | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | WithdrawControllerFlex | unmatched — not counted | — | Listed in findings OS-OTD-ADV-02, OS-OTD-ADV-04 | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | PoolFlex | own proxy deployment | PoolFlex (proxy) (selected) `0x0f8cbdc544dc1d4bd1bdafe0039be07b825af82a` — deployed 2024-02-29 13:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | BusinessDayRegistry | unmatched — not counted | — | Listed in finding OS-OTD-ADV-04 | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | WithdrawDepositControllerFlex | unmatched — not counted | — | Listed in findings OS-OTD-ADV-03, OS-OTD-ADV-05, OS-OTD-SUG-01 | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | Vault | unmatched — not counted | — | Listed in findings OS-OTD-SUG-00, OS-OTD-SUG-01 | no |
| spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf | PoolAccessControl | unmatched — not counted | — | Listed in finding OS-OTD-SUG-01 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 118 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 46 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: unique_name=3

Zero-match audit list:

- [20909] spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf
- [20910] spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf
- [20911] spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf

Fork inheritance lineage and inherited audits are included when available.
