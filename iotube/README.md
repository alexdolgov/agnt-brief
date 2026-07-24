# Agentic Audit Brief: ioTube

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: ioTube (`iotube`)
- Website: [https://iotube.org](https://iotube.org)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 68 unique implementations (103 raw deployments)
- Coverage basis: 0/24 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,285,769.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for ioTube. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 24 contract row(s) across bsc, ethereum, polygon. Structural roles: 16 core, 8 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 24
- Structural roles: core (16), unclassified (8)
- Contract kinds: contract (24)
- Detected standards: ownable (6), erc20 (3)
- Frameworks: openzeppelin (16)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 26 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x8598df1ec0ac7dfba802f4bdd93a6b93bd0ad83f`, chain 1)
- UnnamedContract (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- CrosschainERC20 (`0x9f90b457dea25ef802e38d470dda7343691d8fe1`, chain 1)
- CrosschainERC20 (`0x2aaf50869739e317ab80a57bf87caa35f5b60598`, chain 56)
- CrosschainERC20 (`0x300211def2a644b036a9bdd3e58159bb2074d388`, chain 137)
- MinterPool (`0x964f4f19bc823e72cc1f806021937cfc06f63b45`, chain 1)
- MinterPool (`0xf72cfb704d49ac7bb7ffa420ae5f084c671a29be`, chain 56)
- MinterPool (`0x12af43ef94b05a0a3447a05eee629c7d88a30a5f`, chain 137)
- MinterPool (`0x4799d57abf5f12ca4ef5375c9dadf8fe7fa5a454`, chain 137)
- TokenCashierWithPayload (`0x1b9aa865d74b2b77ffdbcf507b56a7b3ab43bac4`, chain 1)
- TokenCashierWithPayload (`0x78de1e0b76523ac6e190f89ffc46571346940204`, chain 56)
- TokenCashierWithPayload (`0x990b503f8c7353f1cab6f9d5bbf8f0be2718d731`, chain 137)
- TokenList (`0x73ffdfc98983ad59fb441fc5fe855c1589e35b3e`, chain 1)
- TokenList (`0x7c0bef36e1b1cbeb1f1a5541300786a7b608aede`, chain 1)
- TokenList (`0x0d793f4d4287265b9bda86b7a4083193e8743b34`, chain 56)
- TokenList (`0xa6ae9312d0aa3cc74d969fcd4806d7729a321ee3`, chain 56)
- TokenList (`0xc8dc8dcdfd94f9cb953f379a7ad8da5fdc303f3e`, chain 137)
- TokenList (`0xde9395d2f4940aa501f9a27b98592589d14bb0f7`, chain 137)
- TokenSafe (`0xc2e0f31d739cb3153ba5760a203b3bd7c27f0d7a`, chain 1)
- TokenSafe (`0xfbe9a4138afdf1fa639a8c2818a0c4513fc4ce4b`, chain 56)
- TokenSafe (`0xa239f03cda98a7d2aaaa51e7bf408e5d73399e45`, chain 137)
- TransferValidatorWithPayload (`0xe7eba1cea51ec9b3accc16728e3b8786560c59d5`, chain 1)
- TransferValidatorWithPayload (`0x95c6f6af2c0fa069768203fda963d7626efc794a`, chain 56)
- TransferValidatorWithPayload (`0x87e2d48de6cc2029ffc1a915462e4aa597890cd6`, chain 137)
- WitnessList (`0x8119411f5a78f73784a1b87de43d452da4a1ee3f`, chain 56)
- WitnessList (`0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 24; live-surface rows included: 24 (24 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 26/43 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/24 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 26 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 42 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 26 of 68 unique; 42 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 68
- Raw deployments: 103
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CrosschainERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-243064 | `0x9f90b457dea25ef802e38d470dda7343691d8fe1` | ⚠️ Unaudited |
| CrosschainERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: ethereum `0x300211def2a644b036a9bdd3e58159bb2074d388`; ethereum `0x30e68facb9d4e04fedc12a8cc539639f90f40c63`; ethereum `0xb0ed1f44833c6b2afa39a6a85ff62c8ad96f5275`; ethereum `0xf79deabc1406a3ad07c70877fbaeb90777b77e68`; bsc `0x049dd7532148826cde956c7b45fec8c30b514052`; bsc `0x7e544f2feddc69b1cb12555779c824cfe100ee34`; bsc `0x8dfb1099c53f634becf3c98ae19eb1baa1b37d43`; bsc `0xa0cb9c8e470ec591dd7f5de650af9468ee6f7d5a` | ⚠️ Unaudited |
| CrosschainERC20 | token | project_anchor | own_supporting | 0 | bsc | unit-243086 | `0x2aaf50869739e317ab80a57bf87caa35f5b60598` | ⚠️ Unaudited |
| CrosschainERC20 | token | project_anchor | own_supporting | 0 | polygon | unit-243074 | `0x300211def2a644b036a9bdd3e58159bb2074d388` | ⚠️ Unaudited |
| CrosschainERC20V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x03f353dd6a5d65d533f4746aebc927e7fea34284`; ethereum `0x2babab214cb2edca4d2ea995ee9eabec4bc12687`; ethereum `0x33c9343db7ac99d61880dd6b32a3845885a81b5c`; ethereum `0x370f98048a45d04b57c6008b636ace4f6e8e1343`; ethereum `0x6ed84215c7c4e94b0dc55c16e574d407586d2116`; ethereum `0x77480e1e8441fadf4d67dab68249f08129d3dca4`; ethereum `0x9c3af6ffccac8a4ccb31a4b769b84a517c6c13b5`; ethereum `0xacf461ccec9c011f90252f04c4ce42c089378751`; ethereum `0xc4ffc19cb3dfe37152d07a5444254930e9ff7127`; ethereum `0xdff04a48baa71021e0221e9b26dd3c13cdc2fe7e`; ethereum `0xedf708dcf579d4c6ea7889ae255ba66ad2cf9757`; ethereum `0xf96c9ea3b23d7ba69c90d506ecb54a7e77958d50` | ⚠️ Unaudited |
| CrosschainTokenCashierRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x4c8d28345db8cb3284d50dd4b8d660ace7866044`; ethereum `0xc0ee096514faba4a843f4ed91430f68282606882`; ethereum `0xc7ac449979e7038691c154210e301db21091d7b2`; bsc `0x2a26fede01bfa03e65cd3c68f421cab83648391a` | ⚠️ Unaudited |
| CrosschainTokenCashierRouterWithoutPreapproval | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2a855056453a8c81d154b47e926f0c46c7395c2` | ⚠️ Unaudited |
| CrosschainTokenCashierWithPayloadRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x3030bdc2a70076d47adba3243a68ed894ed33305`; polygon `0x2c43e50fbdd5fa3ea4e10a5445274b4013a713a8` | ⚠️ Unaudited |
| MinterPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-243063 | `0x964f4f19bc823e72cc1f806021937cfc06f63b45` | ⚠️ Unaudited |
| MinterPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x12af43ef94b05a0a3447a05eee629c7d88a30a5f`; bsc `0xd2165d222b3daf2528fc1b1aa2db18b8821ee623`; polygon `0x3233ebc7d3f1ae364bb6e2f15f6bbb9be2f4b71c`; polygon `0x5cc65d3be29ba0f0b206abd7774ae6f58825e676`; polygon `0xa1dae17bac2d400ccde5b77b29dc4adbd4db50f9`; polygon `0xb525af1aee7033c04a50eccddc15264bab6c82b0` | ⚠️ Unaudited |
| MinterPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-243095 | `0xf72cfb704d49ac7bb7ffa420ae5f084c671a29be` | ⚠️ Unaudited |
| MinterPool | unknown | project_anchor | own_supporting | 0 | polygon | unit-243071 | `0x12af43ef94b05a0a3447a05eee629c7d88a30a5f` | ⚠️ Unaudited |
| MinterPool | core_logic | project_anchor | own_supporting | 0 | polygon | unit-243075 | `0x4799d57abf5f12ca4ef5375c9dadf8fe7fa5a454` | ⚠️ Unaudited |
| NubilaNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2bd425a63800731e3ae42b6596bdd783299fcb1` | ⚠️ Unaudited |
| TetherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4399228352476a4a2615c70717ea5eaf724947f7` | ⚠️ Unaudited |
| TokenCashier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0fd7430852361931b23a31f84374ba3314e1682` | ⚠️ Unaudited |
| TokenCashierWithPayload | token | project_anchor | own_supporting | 0 | ethereum | unit-243054 | `0x1b9aa865d74b2b77ffdbcf507b56a7b3ab43bac4` | ⚠️ Unaudited |
| TokenCashierWithPayload | token | project_anchor | own_supporting | 0 | bsc | unit-243087 | `0x78de1e0b76523ac6e190f89ffc46571346940204` | ⚠️ Unaudited |
| TokenCashierWithPayload | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0xd57bde0a8bb77a2f65769316f6343e0a13a8d7d4`; polygon `0x6bba6bab7faa5aa720f84468cba6086e0821e049` | ⚠️ Unaudited |
| TokenCashierWithPayload | token | project_anchor | own_supporting | 0 | polygon | unit-243079 | `0x990b503f8c7353f1cab6f9d5bbf8f0be2718d731` | ⚠️ Unaudited |
| TokenList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243059 | `0x73ffdfc98983ad59fb441fc5fe855c1589e35b3e` | ⚠️ Unaudited |
| TokenList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243060 | `0x7c0bef36e1b1cbeb1f1a5541300786a7b608aede` | ⚠️ Unaudited |
| TokenList | unknown | project_anchor | own_supporting | 0 | bsc | unit-243085 | `0x0d793f4d4287265b9bda86b7a4083193e8743b34` | ⚠️ Unaudited |
| TokenList | token | project_anchor | own_supporting | 0 | bsc | unit-243092 | `0xa6ae9312d0aa3cc74d969fcd4806d7729a321ee3` | ⚠️ Unaudited |
| TokenList | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: bsc `0xc8dc8dcdfd94f9cb953f379a7ad8da5fdc303f3e`; bsc `0xde9395d2f4940aa501f9a27b98592589d14bb0f7`; polygon `0x14bf347a597aac623240ae7ac8383ae198966277`; polygon `0xb4d3ce0ee6216615e649e1f01655256d779d6ad1` | ⚠️ Unaudited |
| TokenList | unknown | project_anchor | own_supporting | 0 | polygon | unit-243082 | `0xc8dc8dcdfd94f9cb953f379a7ad8da5fdc303f3e` | ⚠️ Unaudited |
| TokenList | unknown | project_anchor | own_supporting | 0 | polygon | unit-243084 | `0xde9395d2f4940aa501f9a27b98592589d14bb0f7` | ⚠️ Unaudited |
| TokenSafe | token | project_anchor | own_supporting | 0 | ethereum | unit-243068 | `0xc2e0f31d739cb3153ba5760a203b3bd7c27f0d7a` | ⚠️ Unaudited |
| TokenSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa239f03cda98a7d2aaaa51e7bf408e5d73399e45` | ⚠️ Unaudited |
| TokenSafe | unknown | project_anchor | own_supporting | 0 | bsc | unit-243096 | `0xfbe9a4138afdf1fa639a8c2818a0c4513fc4ce4b` | ⚠️ Unaudited |
| TokenSafe | unknown | project_anchor | own_supporting | 0 | polygon | unit-243080 | `0xa239f03cda98a7d2aaaa51e7bf408e5d73399e45` | ⚠️ Unaudited |
| TransferValidatorWithPayload | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243070 | `0xe7eba1cea51ec9b3accc16728e3b8786560c59d5` | ⚠️ Unaudited |
| TransferValidatorWithPayload | unknown | project_anchor | own_supporting | 0 | bsc | unit-243090 | `0x95c6f6af2c0fa069768203fda963d7626efc794a` | ⚠️ Unaudited |
| TransferValidatorWithPayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x86b7a9470d93e5ebfd1c099e173bce86196c85b2` | ⚠️ Unaudited |
| TransferValidatorWithPayload | unknown | project_anchor | own_supporting | 0 | polygon | unit-243077 | `0x87e2d48de6cc2029ffc1a915462e4aa597890cd6` | ⚠️ Unaudited |
| Unwrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0xedec2dad0b20a46678491bb04c53cdc89f1b4287`; polygon `0xc3b3fcc2df7dbcffbc7fb154eb7d41d6e6304efe` | ⚠️ Unaudited |
| VestingManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x31603c352dcb06e5973afcf7d831824e4900b001`; bsc `0x668b6092f0c33f6da9e4057b8624da5eab3baae0` | ⚠️ Unaudited |
| WIOTXUnwrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc051572665a00d55a534f6483b906297613eb894` | ⚠️ Unaudited |
| WitnessList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17`; bsc `0x2f1a0bca4005ebfd6a589850f436c8d8f9c2aed2` | ⚠️ Unaudited |
| WitnessList | unknown | project_anchor | own_supporting | 0 | bsc | unit-243088 | `0x8119411f5a78f73784a1b87de43d452da4a1ee3f` | ⚠️ Unaudited |
| WitnessList | unknown | project_anchor | own_supporting | 0 | polygon | unit-243072 | `0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17` | ⚠️ Unaudited |
| XCashier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0xe58997b72cf7115701fc3302f36d38670924006b`; polygon `0x6ccf305a21defff295e616ba5aa423eb563fc8db` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a60b06d8b2c0be447df6192911dab650d9c0b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62ee799b09c2b12f3350a73a54d07434023ebcca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243061 | `0x8598df1ec0ac7dfba802f4bdd93a6b93bd0ad83f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb76063476a79f73624386795f4cca855954c891` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243067 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8165188ccc135b3a3b2a5d2bc3af9d94753d955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe97a3ca2932c5a14efd1fa302fc4c79d5d0a1c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf70bdf9d3eedd1b243a03b45d1efc7b5e3f701ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7f73af0923a1f4bcda4e082094a41c7b64cddd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbe9a4138afdf1fa639a8c2818a0c4513fc4ce4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x082020ae0b38fd1bef48895c6cff4428e420f400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x116404f86e97846110ea08cd52fc2882d4ad3123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52702a7301be185cc97bf3fe6d497a83e7772fde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x797f1465796fd89ea7135e76dbc7cdb136bba1ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c0bef36e1b1cbeb1f1a5541300786a7b608aede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80ad2e3ff6676706157074d730366710946b0627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd20a138c15fd4e296e511cbe410c281d2ab9f0f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0aaea7b19e77a6e0913bcdf545e33d673071b446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f1a0bca4005ebfd6a589850f436c8d8f9c2aed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x33193d4c878ea2e62e4ef4d563282249fa203f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8119411f5a78f73784a1b87de43d452da4a1ee3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8dd2f9b3f7e2605747cf6bf5051152d7cbf2ec1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x964f4f19bc823e72cc1f806021937cfc06f63b45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0fd7430852361931b23a31f84374ba3314e1682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf72cfb704d49ac7bb7ffa420ae5f084c671a29be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbe9a4138afdf1fa639a8c2818a0c4513fc4ce4b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 69
- Live contracts: 9
- Unknown liveness contracts: 60
- Source-verified contracts: 47
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=1, contamination review=5, exact address book overlap=9, source verified unclassified=32, unverified unclassified=22

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | TetherToken<br>`0x4399228352476a4a2615c70717ea5eaf724947f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78177a69732ba913798db5b8cf9cf7d501287fcc` |
| contamination review | CrosschainTokenCashierRouter<br>`0x4c8d28345db8cb3284d50dd4b8d660ace7866044` | non_address_book | unknown | unknown | verified | n/a | `0x5b2363a2eaeacc89980eb33ffd5d714736340e22` |
| contamination review | CrosschainTokenCashierRouterWithoutPreapproval<br>`0xc2a855056453a8c81d154b47e926f0c46c7395c2` | non_address_book | unknown | unknown | verified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| contamination review | WIOTXUnwrapper<br>`0xc051572665a00d55a534f6483b906297613eb894` | non_address_book | unknown | unknown | verified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| contamination review | MinterPool<br>`0x12af43ef94b05a0a3447a05eee629c7d88a30a5f` | non_address_book | unknown | unknown | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| contamination review | TokenSafe<br>`0xa239f03cda98a7d2aaaa51e7bf408e5d73399e45` | non_address_book | unknown | unknown | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| exact address book overlap | TokenList<br>`0x73ffdfc98983ad59fb441fc5fe855c1589e35b3e` | project_anchor | unknown | live | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| exact address book overlap | TokenList<br>`0x7c0bef36e1b1cbeb1f1a5541300786a7b608aede` | project_anchor | unknown | live | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| exact address book overlap | MinterPool<br>`0xf72cfb704d49ac7bb7ffa420ae5f084c671a29be` | project_anchor | unknown | live | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| exact address book overlap | TokenList<br>`0x0d793f4d4287265b9bda86b7a4083193e8743b34` | project_anchor | unknown | live | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| exact address book overlap | TokenSafe<br>`0xfbe9a4138afdf1fa639a8c2818a0c4513fc4ce4b` | project_anchor | unknown | live | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| exact address book overlap | MinterPool<br>`0x12af43ef94b05a0a3447a05eee629c7d88a30a5f` | project_anchor | unknown | live | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| exact address book overlap | TokenList<br>`0xc8dc8dcdfd94f9cb953f379a7ad8da5fdc303f3e` | project_anchor | unknown | live | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| exact address book overlap | TokenList<br>`0xde9395d2f4940aa501f9a27b98592589d14bb0f7` | project_anchor | unknown | live | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| exact address book overlap | TokenSafe<br>`0xa239f03cda98a7d2aaaa51e7bf408e5d73399e45` | project_anchor | unknown | live | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| source verified unclassified | CrosschainERC20<br>`0x300211def2a644b036a9bdd3e58159bb2074d388` | non_address_book | unknown | unknown | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| source verified unclassified | CrosschainERC20<br>`0x30e68facb9d4e04fedc12a8cc539639f90f40c63` | non_address_book | unknown | unknown | verified | n/a | `0x5b2363a2eaeacc89980eb33ffd5d714736340e22` |
| source verified unclassified | CrosschainERC20<br>`0xb0ed1f44833c6b2afa39a6a85ff62c8ad96f5275` | non_address_book | unknown | unknown | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| source verified unclassified | CrosschainERC20V2<br>`0x03f353dd6a5d65d533f4746aebc927e7fea34284` | non_address_book | unknown | unknown | verified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| source verified unclassified | CrosschainERC20V2<br>`0x2babab214cb2edca4d2ea995ee9eabec4bc12687` | non_address_book | unknown | unknown | verified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| source verified unclassified | CrosschainERC20V2<br>`0x33c9343db7ac99d61880dd6b32a3845885a81b5c` | non_address_book | unknown | unknown | verified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| source verified unclassified | CrosschainERC20V2<br>`0x370f98048a45d04b57c6008b636ace4f6e8e1343` | non_address_book | unknown | unknown | verified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| source verified unclassified | CrosschainERC20V2<br>`0x6ed84215c7c4e94b0dc55c16e574d407586d2116` | non_address_book | unknown | unknown | verified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| source verified unclassified | CrosschainERC20V2<br>`0x77480e1e8441fadf4d67dab68249f08129d3dca4` | non_address_book | unknown | unknown | verified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| source verified unclassified | CrosschainERC20V2<br>`0xacf461ccec9c011f90252f04c4ce42c089378751` | non_address_book | unknown | unknown | verified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| source verified unclassified | CrosschainERC20V2<br>`0xc4ffc19cb3dfe37152d07a5444254930e9ff7127` | non_address_book | unknown | unknown | verified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| source verified unclassified | CrosschainERC20V2<br>`0xdff04a48baa71021e0221e9b26dd3c13cdc2fe7e` | non_address_book | unknown | unknown | verified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| source verified unclassified | CrosschainERC20V2<br>`0xedf708dcf579d4c6ea7889ae255ba66ad2cf9757` | non_address_book | unknown | unknown | verified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| source verified unclassified | CrosschainERC20V2<br>`0xf96c9ea3b23d7ba69c90d506ecb54a7e77958d50` | non_address_book | unknown | unknown | verified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| source verified unclassified | CrosschainTokenCashierRouter<br>`0xc0ee096514faba4a843f4ed91430f68282606882` | non_address_book | unknown | unknown | verified | n/a | `0x5b2363a2eaeacc89980eb33ffd5d714736340e22` |
| source verified unclassified | CrosschainTokenCashierRouter<br>`0xc7ac449979e7038691c154210e301db21091d7b2` | non_address_book | unknown | unknown | verified | n/a | `0x5b2363a2eaeacc89980eb33ffd5d714736340e22` |
| source verified unclassified | TokenCashier<br>`0xa0fd7430852361931b23a31f84374ba3314e1682` | non_address_book | unknown | unknown | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| source verified unclassified | CrosschainERC20<br>`0x049dd7532148826cde956c7b45fec8c30b514052` | non_address_book | unknown | unknown | verified | n/a | `0x4a388b64b86ab0aa27e159f492d52e3f55196fc0` |
| source verified unclassified | CrosschainERC20<br>`0x7e544f2feddc69b1cb12555779c824cfe100ee34` | non_address_book | unknown | unknown | verified | n/a | `0x4a388b64b86ab0aa27e159f492d52e3f55196fc0` |
| source verified unclassified | CrosschainERC20<br>`0x8dfb1099c53f634becf3c98ae19eb1baa1b37d43` | non_address_book | unknown | unknown | verified | n/a | `0x78177a69732ba913798db5b8cf9cf7d501287fcc` |
| source verified unclassified | CrosschainERC20<br>`0xa0cb9c8e470ec591dd7f5de650af9468ee6f7d5a` | non_address_book | unknown | unknown | verified | n/a | `0x4a388b64b86ab0aa27e159f492d52e3f55196fc0` |
| source verified unclassified | MinterPool<br>`0xd2165d222b3daf2528fc1b1aa2db18b8821ee623` | non_address_book | unknown | unknown | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| source verified unclassified | NubilaNetwork<br>`0xc2bd425a63800731e3ae42b6596bdd783299fcb1` | non_address_book | unknown | unknown | verified | n/a | `0x78177a69732ba913798db5b8cf9cf7d501287fcc` |
| source verified unclassified | TokenList<br>`0xc8dc8dcdfd94f9cb953f379a7ad8da5fdc303f3e` | non_address_book | unknown | unknown | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| source verified unclassified | TokenList<br>`0xde9395d2f4940aa501f9a27b98592589d14bb0f7` | non_address_book | unknown | unknown | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| source verified unclassified | WitnessList<br>`0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17` | non_address_book | unknown | unknown | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| source verified unclassified | WitnessList<br>`0x2f1a0bca4005ebfd6a589850f436c8d8f9c2aed2` | non_address_book | unknown | unknown | verified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| source verified unclassified | MinterPool<br>`0x3233ebc7d3f1ae364bb6e2f15f6bbb9be2f4b71c` | non_address_book | unknown | unknown | verified | n/a | `0x78177a69732ba913798db5b8cf9cf7d501287fcc` |
| source verified unclassified | MinterPool<br>`0x5cc65d3be29ba0f0b206abd7774ae6f58825e676` | non_address_book | unknown | unknown | verified | n/a | `0x78177a69732ba913798db5b8cf9cf7d501287fcc` |
| source verified unclassified | MinterPool<br>`0xa1dae17bac2d400ccde5b77b29dc4adbd4db50f9` | non_address_book | unknown | unknown | verified | n/a | `0x78177a69732ba913798db5b8cf9cf7d501287fcc` |
| source verified unclassified | MinterPool<br>`0xb525af1aee7033c04a50eccddc15264bab6c82b0` | non_address_book | unknown | unknown | verified | n/a | `0x78177a69732ba913798db5b8cf9cf7d501287fcc` |
| source verified unclassified | TokenList<br>`0xb4d3ce0ee6216615e649e1f01655256d779d6ad1` | non_address_book | unknown | unknown | verified | n/a | `0x78177a69732ba913798db5b8cf9cf7d501287fcc` |
| unverified unclassified | UnnamedContract<br>`0x0a60b06d8b2c0be447df6192911dab650d9c0b3a` | non_address_book | unknown | unknown | unverified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| unverified unclassified | UnnamedContract<br>`0x62ee799b09c2b12f3350a73a54d07434023ebcca` | non_address_book | unknown | unknown | unverified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| unverified unclassified | UnnamedContract<br>`0xbb76063476a79f73624386795f4cca855954c891` | non_address_book | unknown | unknown | unverified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| unverified unclassified | UnnamedContract<br>`0xd8165188ccc135b3a3b2a5d2bc3af9d94753d955` | non_address_book | unknown | unknown | unverified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| unverified unclassified | UnnamedContract<br>`0xe97a3ca2932c5a14efd1fa302fc4c79d5d0a1c86` | non_address_book | unknown | unknown | unverified | n/a | `0x937d09bc743b3eb41752454577dd0a628f986e90` |
| unverified unclassified | UnnamedContract<br>`0xf70bdf9d3eedd1b243a03b45d1efc7b5e3f701ab` | non_address_book | unknown | unknown | unverified | n/a | `0x937d09bc743b3eb41752454577dd0a628f986e90` |
| unverified unclassified | UnnamedContract<br>`0xf7f73af0923a1f4bcda4e082094a41c7b64cddd4` | non_address_book | unknown | unknown | unverified | n/a | `0x6dd31a526ee3ddbc7be888b729a445695c03148e` |
| unverified unclassified | UnnamedContract<br>`0xfbe9a4138afdf1fa639a8c2818a0c4513fc4ce4b` | non_address_book | unknown | unknown | unverified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| unverified unclassified | UnnamedContract<br>`0x082020ae0b38fd1bef48895c6cff4428e420f400` | non_address_book | unknown | unknown | unverified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| unverified unclassified | UnnamedContract<br>`0x116404f86e97846110ea08cd52fc2882d4ad3123` | non_address_book | unknown | unknown | unverified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| unverified unclassified | UnnamedContract<br>`0x52702a7301be185cc97bf3fe6d497a83e7772fde` | non_address_book | unknown | unknown | unverified | n/a | `0x78177a69732ba913798db5b8cf9cf7d501287fcc` |
| unverified unclassified | UnnamedContract<br>`0x7c0bef36e1b1cbeb1f1a5541300786a7b608aede` | non_address_book | unknown | unknown | unverified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| unverified unclassified | UnnamedContract<br>`0x80ad2e3ff6676706157074d730366710946b0627` | non_address_book | unknown | unknown | unverified | n/a | `0x78177a69732ba913798db5b8cf9cf7d501287fcc` |
| unverified unclassified | UnnamedContract<br>`0xd20a138c15fd4e296e511cbe410c281d2ab9f0f0` | non_address_book | unknown | unknown | unverified | n/a | `0x78177a69732ba913798db5b8cf9cf7d501287fcc` |
| unverified unclassified | UnnamedContract<br>`0x0aaea7b19e77a6e0913bcdf545e33d673071b446` | non_address_book | unknown | unknown | unverified | n/a | `0x78177a69732ba913798db5b8cf9cf7d501287fcc` |
| unverified unclassified | UnnamedContract<br>`0x2f1a0bca4005ebfd6a589850f436c8d8f9c2aed2` | non_address_book | unknown | unknown | unverified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| unverified unclassified | UnnamedContract<br>`0x8119411f5a78f73784a1b87de43d452da4a1ee3f` | non_address_book | unknown | unknown | unverified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| unverified unclassified | UnnamedContract<br>`0x8dd2f9b3f7e2605747cf6bf5051152d7cbf2ec1f` | non_address_book | unknown | unknown | unverified | n/a | `0x78177a69732ba913798db5b8cf9cf7d501287fcc` |
| unverified unclassified | UnnamedContract<br>`0x964f4f19bc823e72cc1f806021937cfc06f63b45` | non_address_book | unknown | unknown | unverified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| unverified unclassified | UnnamedContract<br>`0xa0fd7430852361931b23a31f84374ba3314e1682` | non_address_book | unknown | unknown | unverified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| unverified unclassified | UnnamedContract<br>`0xf72cfb704d49ac7bb7ffa420ae5f084c671a29be` | non_address_book | unknown | unknown | unverified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |
| unverified unclassified | UnnamedContract<br>`0xfbe9a4138afdf1fa639a8c2818a0c4513fc4ce4b` | non_address_book | unknown | unknown | unverified | n/a | `0x3ec4fb908f34ff0ed131cc48c7a626fe8f927a24` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Iotube Audit Report v2-fuzzland.pdf](https://185197389-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MgvoWpXLOm6Tf5h6ulz%2Fuploads%2Fe4XSu5pssWrgS5FyaqCj%2FIotube%20Audit%20Report%20v2-fuzzland.pdf) | Fuzzland | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20590] Iotube Audit Report v2-fuzzland.pdf — no match: Scope section states 'contracts/*.sol' and findings reference specific contracts. Audit date from executive summary: 'On Feb 6, 2025'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Iotube Audit Report v2-fuzzland.pdf | CrosschainTokenCashierWithPayloadRouter | unmatched — not counted | — | mentioned in finding [Low] Unrestricted Token Approval in CrosschainTokenCashierWithPayloadRouter | no |
| Iotube Audit Report v2-fuzzland.pdf | UniswapUnwrapper | unmatched — not counted | — | mentioned in findings [Low] Unauthorized token withdrawal, [Low] TetherToken::transfer has no return value..., [Low] Any user can call UniswapUnwrapper::onReceive... | no |
| Iotube Audit Report v2-fuzzland.pdf | ShadowTokenListManager | unmatched — not counted | — | mentioned in finding [Low] All functions of the ShadowTokenListManager contract cannot be called | no |
| Iotube Audit Report v2-fuzzland.pdf | TetherToken | unmatched — not counted | — | mentioned in findings [Low] TetherToken::transfer has no return value..., [Info] TetherToken::deprecate should only be called once | no |
| Iotube Audit Report v2-fuzzland.pdf | SolanaHub | unmatched — not counted | — | mentioned in finding [Low] Any user can call UniswapUnwrapper::onReceive... (also have the same problem) | no |
| Iotube Audit Report v2-fuzzland.pdf | EthereumHub | unmatched — not counted | — | mentioned in finding [Low] Any user can call UniswapUnwrapper::onReceive... (also have the same problem) | no |
| Iotube Audit Report v2-fuzzland.pdf | TokenConfigList | unmatched — not counted | — | mentioned in finding [Info] Many contracts did not correctly inherit the ownable of openzeppelin | no |
| Iotube Audit Report v2-fuzzland.pdf | CashierConfig | unmatched — not counted | — | mentioned in finding [Info] Many contracts did not correctly inherit the ownable of openzeppelin | no |
| Iotube Audit Report v2-fuzzland.pdf | EthereumHubPrepaid | unmatched — not counted | — | mentioned in finding [Info] Many contracts did not correctly inherit the ownable of openzeppelin | no |
| Iotube Audit Report v2-fuzzland.pdf | SolanaHubPrepaid | unmatched — not counted | — | mentioned in finding [Info] Many contracts did not correctly inherit the ownable of openzeppelin | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x9f90b457dea25ef802e38d470dda7343691d8fe1` | CrosschainERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2aaf50869739e317ab80a57bf87caa35f5b60598` | CrosschainERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x300211def2a644b036a9bdd3e58159bb2074d388` | CrosschainERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x964f4f19bc823e72cc1f806021937cfc06f63b45` | MinterPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf72cfb704d49ac7bb7ffa420ae5f084c671a29be` | MinterPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x12af43ef94b05a0a3447a05eee629c7d88a30a5f` | MinterPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4799d57abf5f12ca4ef5375c9dadf8fe7fa5a454` | MinterPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1b9aa865d74b2b77ffdbcf507b56a7b3ab43bac4` | TokenCashierWithPayload | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x78de1e0b76523ac6e190f89ffc46571346940204` | TokenCashierWithPayload | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x990b503f8c7353f1cab6f9d5bbf8f0be2718d731` | TokenCashierWithPayload | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x73ffdfc98983ad59fb441fc5fe855c1589e35b3e` | TokenList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7c0bef36e1b1cbeb1f1a5541300786a7b608aede` | TokenList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0d793f4d4287265b9bda86b7a4083193e8743b34` | TokenList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa6ae9312d0aa3cc74d969fcd4806d7729a321ee3` | TokenList | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc8dc8dcdfd94f9cb953f379a7ad8da5fdc303f3e` | TokenList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xde9395d2f4940aa501f9a27b98592589d14bb0f7` | TokenList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc2e0f31d739cb3153ba5760a203b3bd7c27f0d7a` | TokenSafe | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfbe9a4138afdf1fa639a8c2818a0c4513fc4ce4b` | TokenSafe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa239f03cda98a7d2aaaa51e7bf408e5d73399e45` | TokenSafe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe7eba1cea51ec9b3accc16728e3b8786560c59d5` | TransferValidatorWithPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x95c6f6af2c0fa069768203fda963d7626efc794a` | TransferValidatorWithPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x87e2d48de6cc2029ffc1a915462e4aa597890cd6` | TransferValidatorWithPayload | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8119411f5a78f73784a1b87de43d452da4a1ee3f` | WitnessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1e58ca53d90fe9b37f7f6aeb548b4bc7c6292c17` | WitnessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20590] Iotube Audit Report v2-fuzzland.pdf

Fork inheritance lineage and inherited audits are included when available.
