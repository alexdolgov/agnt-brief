# Agentic Audit Brief: KEEP Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 6 audit(s)
- Eligible audit results: 18 (6 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: KEEP Network (`keep-network`)
- Website: [https://app.threshold.network/](https://app.threshold.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 497 unique implementations (999 raw deployments)
- Coverage basis: 4/25 confirmed own live verified implementations (16.0%); conservative 16.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $982,073.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for KEEP Network. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 25 contract row(s) across arbitrum, base, ethereum, optimism, polygon. Structural roles: 11 infra, 8 supporting, 6 core. 16 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 25
- Structural roles: infra (11), supporting (8), core (6)
- Contract kinds: contract (25)
- Detected standards: erc1967proxy (14), ownable (7), accesscontrol (2), erc165 (2), erc20 (2), erc20permit (2)
- Frameworks: openzeppelin (25), openzeppelin-upgradeable (9)
- Upgradeable-pattern rows: 16

## Fork Analysis

0 of 42 contracts are derived from known codebases. 42 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x018473...f85a45`, chain 1)
- UnnamedContract (`0x03e342...4ee0f6`, chain 1)
- UnnamedContract (`0x1293a5...a15458`, chain 1)
- UnnamedContract (`0x2111a4...9866b9`, chain 1)
- UnnamedContract (`0x30019d...fbdec2`, chain 1)
- UnnamedContract (`0x46d52e...5204eb`, chain 1)
- UnnamedContract (`0x59fae6...b50106`, chain 1)
- UnnamedContract (`0x5e4861...0e8e7b`, chain 1)
- UnnamedContract (`0x6c84a8...d0de40`, chain 1)
- UnnamedContract (`0xb8df0a...38e6d3`, chain 1)
- UnnamedContract (`0xc9031f...3bc155`, chain 1)
- UnnamedContract (`0xda534b...681365`, chain 10)
- UnnamedContract (`0x41c9b5...79d91a`, chain 137)
- UnnamedContract (`0x41c9b5...79d91a`, chain 8453)
- UnnamedContract (`0xa2a81d...8c512e`, chain 8453)
- UnnamedContract (`0xdebd9a...540bd5`, chain 8453)
- UnnamedContract (`0x1c8d7b...258f9e`, chain 42161)
- CoveragePool (`0x7d7b62...6d811a`, chain 1)
- KeepRandomBeaconServiceImplV1 (`0x099597...599eab`, chain 1)
- RandomBeacon (`0x5499f5...e3d80b`, chain 1)
- Router (`0x80226f...146f7d`, chain 1)
- StakingPortBacker (`0x236aa5...ab794b`, chain 1)
- T (`0xcdf702...94bee5`, chain 1)
- TBTC (`0x18084f...d93a88`, chain 1)
- TBTCVault (`0x9c0700...4fe3cd`, chain 1)
- Timelock (`0x92f2d8...b4913d`, chain 1)
- TimelockController (`0x87f005...75f45f`, chain 1)
- TransparentUpgradeableProxy (`0x186d04...00a1fe`, chain 1)
- TransparentUpgradeableProxy (`0x5d4d83...23dbde`, chain 1)
- TransparentUpgradeableProxy (`0x75a6e4...2c619a`, chain 1)
- TransparentUpgradeableProxy (`0xb810ab...2a341a`, chain 1)
- TransparentUpgradeableProxy (`0x1293a5...a15458`, chain 10)
- TransparentUpgradeableProxy (`0x6c84a8...d0de40`, chain 10)
- TransparentUpgradeableProxy (`0x099597...599eab`, chain 137)
- TransparentUpgradeableProxy (`0x236aa5...ab794b`, chain 137)
- TransparentUpgradeableProxy (`0x099597...599eab`, chain 8453)
- TransparentUpgradeableProxy (`0x236aa5...ab794b`, chain 8453)
- TransparentUpgradeableProxy (`0xe931f1...d2d88b`, chain 8453)
- TransparentUpgradeableProxy (`0x1293a5...a15458`, chain 42161)
- TransparentUpgradeableProxy (`0x6c84a8...d0de40`, chain 42161)
- TransparentUpgradeableProxy (`0xd7cd99...34d9b7`, chain 42161)
- VendingMachineV3 (`0x7570a2...6437e6`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 25; live-surface rows included: 25 (25 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 39/67 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/25 (16.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 39 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 458 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Confirmed-live implementations: 39 of 497 unique; 458 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/111
- Verified + Unaudited implementations: 107
- Verified by bytecode match: 0
- Unverified implementations: 386
- Unique implementations: 497
- Raw deployments: 999
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 6 fresh, 1 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 4.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Least Authority | Tier 2 | 2 | 1.8% | 2023-08 |
| CertiK | Tier 2 | 1 | 0.9% | 2021-11 |
| ChainSecurity | Tier 1 | 1 | 0.9% | 2021-11 |
| LeastAuthority | Tier 2 | 1 | 0.9% | 2023-08 |
| unknown | Tier 2 | 1 | 0.9% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1BTCRedeemerWormhole | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244016 | `0x5d4d83...23dbde` | ✅ Audited |
| T | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244003 | `0xcdf702...94bee5` | ✅ Audited |
| TBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243969 | `0x18084f...d93a88` | ✅ Audited |
| TBTCVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-243996 | `0x9c0700...4fe3cd` | ✅ Audited |

### ⚠️ Verified + Unaudited (107)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Allowlist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0f7191...74591b`; ethereum `0x89c2f7...43cb2e`; ethereum `0x9b3342...170a2c`; ethereum `0xd6b1fe...5c6e2d` | ⚠️ Unaudited |
| AllVerifiers | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa67821...9da086` | ⚠️ Unaudited |
| ArbitrumWormholeGatewayUpgraded | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-244025 | `0x1293a5...a15458` | ⚠️ Unaudited |
| ARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b63b3...91fa1b` | ⚠️ Unaudited |
| Bank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65fbae...9d9fc6` | ⚠️ Unaudited |
| BaseWormholeGatewayUpgraded | unknown | project_anchor | own_supporting | 1 | base | unit-244027 | `0x099597...599eab` | ⚠️ Unaudited |
| BatchWithdraw | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x613d08...7a8964` | ⚠️ Unaudited |
| Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x13de6b...2402cc`; ethereum `0x51768b...5786cc`; ethereum `0x524db6...4a20c2`; ethereum `0x57e19e...ddf266`; ethereum `0x84e08e...c638e6`; ethereum `0x8ce200...ad1ce7`; ethereum `0xb0e9a7...0c9d96`; ethereum `0xd07298...201751`; ethereum `0xd0b1b7...63bd24`; ethereum `0xe845f4...3d6162`; ethereum `0xe88f95...6091cf` | ⚠️ Unaudited |
| BridgeGovernance | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbcfa3...2cc0cf` | ⚠️ Unaudited |
| BTCDepositorWormhole | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244019 | `0xb810ab...2a341a` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 21 deployments: ethereum `0x7559a8...2128ca`; ethereum `0x781964...dad288`; ethereum `0x80cc10...7de2d4`; ethereum `0x80e2dc...e4cfb8`; ethereum `0x8300e8...a6b12d`; ethereum `0x8bcd7e...ae9062`; ethereum `0x8c6028...422e56`; ethereum `0x9797e8...d828e6`; ethereum `0x9c6a6e...27e1dd`; ethereum `0xa17698...0701e7`; ethereum `0xba0e1c...c824c3`; ethereum `0xbf7cb6...dc0982`; ethereum `0xc62c31...1aad3e`; ethereum `0xcd196d...c73526`; ethereum `0xd72f70...87c66c`; ethereum `0xd8f734...66c351`; ethereum `0xdc85b5...8641a2`; ethereum `0xde71a0...e86f12`; ethereum `0xeae89e...669b73`; ethereum `0xf0d19c...7be823`; ethereum `0xf5224e...dcde99` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x8315bb...27336e`; ethereum `0x8ac682...a158d7`; ethereum `0x8c9015...66b760`; ethereum `0x8ee289...46a4a5`; ethereum `0x916d7d...866d44`; ethereum `0x9f02c1...b6d06c`; ethereum `0xc1d8f2...25d91a`; ethereum `0xc4abcd...4f5f58`; ethereum `0xc576d8...de5b73`; ethereum `0xce8342...098fde`; ethereum `0xcfd063...df23c4`; ethereum `0xe58edb...0a6a84`; ethereum `0xe727f7...dad811`; ethereum `0xe9bfb4...ac54ac`; ethereum `0xea5fd7...86ada1` | ⚠️ Unaudited |
| CairoBootloaderProgram | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x192292...8a8636`; ethereum `0x24105e...a24a47`; ethereum `0xb4c61d...a26a40`; ethereum `0xdf0b63...d1d917`; ethereum `0xfa93ca...3b4a20` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3597c5...2f9feb` | ⚠️ Unaudited |
| CommitStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 73 deployments: ethereum `0x013467...5e9084`; ethereum `0x0428df...b587de`; ethereum `0x0d26ba...052045`; ethereum `0x0f254e...a380d7`; ethereum `0x0f5552...2bbe75`; ethereum `0x0f89c7...c52959`; ethereum `0x10d561...945c75`; ethereum `0x180776...3f5633`; ethereum `0x1bddba...0533b9`; ethereum `0x27a4e7...9926fb`; ethereum `0x2aa101...a007ce`; ethereum `0x38a806...c43271`; ethereum `0x3f1c35...4c4527`; ethereum `0x459154...f1e5d0`; ethereum `0x4b50cd...ee3282`; ethereum `0x52275d...01f694`; ethereum `0x57b548...3fb9b3`; ethereum `0x57d6cd...3dd114`; ethereum `0x5fd81c...2e15ff`; ethereum `0x607c09...8f128c`; ethereum `0x67b972...a00b90`; ethereum `0x681827...703248`; ethereum `0x6c8b96...4bf4b9`; ethereum `0x6f4abc...c5bf75`; ethereum `0x6fe6f7...29d0a4`; ethereum `0x700b6a...794e02`; ethereum `0x70ac0f...27006a`; ethereum `0x762648...7f190e`; ethereum `0x7986c9...70a5fd`; ethereum `0x807dd6...799a04`; ethereum `0x831097...540c8f`; ethereum `0x83f3da...30250d`; ethereum `0x8705f7...646159`; ethereum `0x87c55d...793d75`; ethereum `0x8a1680...f8a2cf`; ethereum `0x8befca...dc11a0`; ethereum `0x8c3805...cf8555`; ethereum `0x8d846b...77b1ab`; ethereum `0x8dc27d...9bae04`; ethereum `0x8fc54e...e9e262`; ethereum `0x913a2a...ddc04b`; ethereum `0x95deb0...b82d64`; ethereum `0x98d0f8...a67ed9`; ethereum `0x9b2eed...1b7749`; ethereum `0x9b9ec8...83dcdb`; ethereum `0x9d93d5...794f8a`; ethereum `0x9f592c...d705cd`; ethereum `0xa4755c...110320`; ethereum `0xa48269...536d1c`; ethereum `0xa4d264...e3f194`; ethereum `0xa58818...3741b9`; ethereum `0xa9f9bf...a9a2b8`; ethereum `0xac0c6e...9cfd3e`; ethereum `0xaffa4f...643e46`; ethereum `0xbaf669...fc4cb7`; ethereum `0xc46890...56ad8d`; ethereum `0xc5164a...224f9f`; ethereum `0xd07926...d40235`; ethereum `0xd2428f...a6cd99`; ethereum `0xd37a60...beeb76`; ethereum `0xd8f93a...bff802`; ethereum `0xd9d3d9...c3da72`; ethereum `0xdac3a8...205ffe`; ethereum `0xdb156e...6e627c`; ethereum `0xdcf6f2...954110`; ethereum `0xe41677...7470a6`; ethereum `0xf19173...fd4793`; ethereum `0xf28f73...a6a62f`; ethereum `0xf7b343...e75ed3`; ethereum `0xf7d68c...bb8f02`; ethereum `0xfa94e5...7eb210`; ethereum `0xfacfe8...551fd6`; ethereum `0xfe73bc...fb0165` | ⚠️ Unaudited |
| Committee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x23cab3...9494e4`; ethereum `0x724908...0cf800` | ⚠️ Unaudited |
| CoveragePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-243989 | `0x7d7b62...6d811a` | ⚠️ Unaudited |
| CpuConstraintPoly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x1bde14...7d4420`; ethereum `0x2c9726...ab01a1`; ethereum `0x3e727f...b16eba`; ethereum `0x70fbec...817ee5`; ethereum `0x76815d...71c7dc`; ethereum `0x86abf7...8cda46`; ethereum `0x89b7a7...3edf20`; ethereum `0x943248...1378eb`; ethereum `0x9a62fa...2d31a9`; ethereum `0x9ddb8a...10ae6f`; ethereum `0xa9bac6...dc2dae`; ethereum `0xb195c6...d36b67`; ethereum `0xb62dc4...2fb15a`; ethereum `0xbe8bd7...2bc447`; ethereum `0xc39380...287f7b`; ethereum `0xc716c4...39dbd8`; ethereum `0xcd96f4...17cf02`; ethereum `0xcf8278...5235a1`; ethereum `0xd0aade...0d7418`; ethereum `0xd48801...afc064`; ethereum `0xd8c397...658aad`; ethereum `0xd8e473...cc81e5`; ethereum `0xdd4cbe...5b5253`; ethereum `0xe1a0b8...a8f79d`; ethereum `0xe4937a...a9b103`; ethereum `0xe5313f...920cac`; ethereum `0xf9b6a4...fb7ed8` | ⚠️ Unaudited |
| CpuFrilessVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 28 deployments: ethereum `0x015381...442cd6`; ethereum `0x0cd0cd...ca5cdc`; ethereum `0x2867a4...109b6b`; ethereum `0x30f3ab...70419b`; ethereum `0x6a6779...803f11`; ethereum `0x715740...53a26d`; ethereum `0x78af2b...78c590`; ethereum `0x7c8643...961cd3`; ethereum `0x7e7a7b...84bf29`; ethereum `0x805594...e3d22b`; ethereum `0x8488e8...cbe57b`; ethereum `0x8e2009...1ef188`; ethereum `0x8fe004...7ce85f`; ethereum `0x9e614a...f2bd21`; ethereum `0xaa2c9c...ef11b9`; ethereum `0xaaae0e...179f8a`; ethereum `0xab8c1a...c31934`; ethereum `0xbb06a8...a78c0d`; ethereum `0xbe0f8f...8caef3`; ethereum `0xbf8d12...7d26cc`; ethereum `0xc879af...7f31e3`; ethereum `0xd0fc19...9d88b4`; ethereum `0xd2fb1b...67f56b`; ethereum `0xe15515...1303ff`; ethereum `0xe5efcd...97b549`; ethereum `0xe9664d...8d0e24`; ethereum `0xec7195...48098d`; ethereum `0xffc797...476b44` | ⚠️ Unaudited |
| CpuOods | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 30 deployments: ethereum `0x35e9f6...83e7cb`; ethereum `0x704dff...53607f`; ethereum `0x73bab6...ac9d90`; ethereum `0x7902d5...e5fe9a`; ethereum `0x7ca020...af135e`; ethereum `0x7f1b43...a5f823`; ethereum `0x8518f4...5b17fe`; ethereum `0x88ba01...f715c1`; ethereum `0x89cadc...2eac4d`; ethereum `0x8f3af1...dc4775`; ethereum `0x97d4df...221449`; ethereum `0x99480b...dc3595`; ethereum `0xa40115...7bb766`; ethereum `0xa4d0bb...e15dd4`; ethereum `0xa9db7b...080f23`; ethereum `0xac6250...fe3ac0`; ethereum `0xae325c...ac2707`; ethereum `0xb2e7bc...3ca19f`; ethereum `0xb64093...5cd4dc`; ethereum `0xc47097...347288`; ethereum `0xc9e067...5ceed3`; ethereum `0xcc80e9...4bf2a4`; ethereum `0xd566ae...1d162f`; ethereum `0xd5700c...8d2a40`; ethereum `0xd67c67...014faa`; ethereum `0xdc2c54...aeae84`; ethereum `0xe709eb...7e7b6f`; ethereum `0xe72ebf...235af7`; ethereum `0xed2199...32ee8e`; ethereum `0xf9ee3f...e639b1` | ⚠️ Unaudited |
| DelayedExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff50d1...c2cc70` | ⚠️ Unaudited |
| Deposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9c6ada...768739`; ethereum `0xe56836...84fc4b`; ethereum `0xe83bcc...79fe02` | ⚠️ Unaudited |
| EcdsaPointsXColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x87945d...eeca21`; ethereum `0xa3da16...74b9ce`; ethereum `0xcb799c...a0286b` | ⚠️ Unaudited |
| EcdsaPointsYColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x9e4fdd...37ecc1`; ethereum `0xc354c1...098333`; ethereum `0xca59f6...3abf29`; ethereum `0xcaea50...62c771`; ethereum `0xe3929e...46b716` | ⚠️ Unaudited |
| Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbfadac...48d90b`; ethereum `0xfea178...e5f869` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 76 deployments: ethereum `0x0f1b1a...2e4ba2`; ethereum `0x109c66...dcd9fe`; ethereum `0x26a101...340fc3`; ethereum `0x330349...f65e61`; ethereum `0x332761...cb2b26`; ethereum `0x34eec7...24a604`; ethereum `0x3b45dd...75ef58`; ethereum `0x3c5990...4210c1`; ethereum `0x3c672f...8edc09`; ethereum `0x418dcb...79fbb4`; ethereum `0x467653...4cf214`; ethereum `0x49aac6...1f8edd`; ethereum `0x4bc602...225419`; ethereum `0x4e4003...1950d6`; ethereum `0x559c32...a5f48d`; ethereum `0x562a20...6d1d3b`; ethereum `0x5b6d29...5eaca5`; ethereum `0x5b859e...1da7ec`; ethereum `0x5e24de...8c559f`; ethereum `0x5eda68...97c3f4`; ethereum `0x64a5c6...88578b`; ethereum `0x66d84f...8d7c12`; ethereum `0x6868fe...563d69`; ethereum `0x6b4b63...5a9ebd`; ethereum `0x70c705...49c2ec`; ethereum `0x7115f0...5ea175`; ethereum `0x718672...d704a3`; ethereum `0x720ea8...b6ff81`; ethereum `0x794ae3...a5ce96`; ethereum `0x7a82d2...23666d`; ethereum `0x7afe70...b9171c`; ethereum `0x7e4c90...91f656`; ethereum `0x82dae1...d3a0fc`; ethereum `0x8693cd...6580c1`; ethereum `0x8b3eee...5018b8`; ethereum `0x8efae6...91f3e2`; ethereum `0x8fee86...594b28`; ethereum `0x92fbcf...9da04f`; ethereum `0x9a3ed7...20528d`; ethereum `0x9cbba1...18a90e`; ethereum `0x9de971...711988`; ethereum `0x9f0e81...d55181`; ethereum `0xa627f2...f758f0`; ethereum `0xa77c14...dc8f3b`; ethereum `0xa8c12a...992a14`; ethereum `0xaa0da3...b1769b`; ethereum `0xae2a2a...c437f0`; ethereum `0xb09590...f20bf7`; ethereum `0xb0f5b6...ec414f`; ethereum `0xb368c8...d143bf`; ethereum `0xb45cf8...b8d977`; ethereum `0xb57d52...56dd8f`; ethereum `0xbdd822...93fe72`; ethereum `0xc0c8d7...ef120d`; ethereum `0xc1ecce...9a1bf2`; ethereum `0xc71766...33ee94`; ethereum `0xc876d5...482f9c`; ethereum `0xcdca3f...96d7e4`; ethereum `0xce6364...f702e8`; ethereum `0xd50836...4dfd46`; ethereum `0xd98e80...19bfbb`; ethereum `0xde6608...bc8079`; ethereum `0xde81f1...ea57ac`; ethereum `0xdf615e...245ac9`; ethereum `0xdf85c8...cddfb3`; ethereum `0xdfd8c3...b768a4`; ethereum `0xe79705...962162`; ethereum `0xe8af3b...f09b92`; ethereum `0xe93ec2...7d47d4`; ethereum `0xefc4a1...286f4d`; ethereum `0xf2eb4c...a8656a`; ethereum `0xf3ac96...d3b7f9`; ethereum `0xf4468e...1ea9ae`; ethereum `0xfb0422...e28783`; ethereum `0xfc92c3...f0f0a3`; ethereum `0xff51c0...09cd24` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 53 deployments: ethereum `0x70b2b3...bca65d`; ethereum `0x741599...8e9f90`; ethereum `0x74cb66...e77931`; ethereum `0x75d536...49b84e`; ethereum `0x7b78f8...180a2b`; ethereum `0x7c32c6...e18bb2`; ethereum `0x7d7c49...2557b3`; ethereum `0x8469b5...a7d0df`; ethereum `0x86768e...c8d486`; ethereum `0x86b47d...5549d1`; ethereum `0x8b858e...f117ec`; ethereum `0x91d25a...ebfa69`; ethereum `0x925228...44a22c`; ethereum `0x948306...0b480d`; ethereum `0x9557b1...9aa1e0`; ethereum `0x992470...9946e7`; ethereum `0x9b14ae...8a365b`; ethereum `0x9cb0ff...9747d3`; ethereum `0xa32f81...0ebe94`; ethereum `0xa5ef33...8264ac`; ethereum `0xa6d806...8ccb48`; ethereum `0xab6066...4a10d0`; ethereum `0xafd31c...249d8a`; ethereum `0xb8a882...431937`; ethereum `0xba1aa2...653332`; ethereum `0xbeffef...886c42`; ethereum `0xc46e2f...4abf88`; ethereum `0xc5dbe2...ca3fc2`; ethereum `0xcaea22...d4b133`; ethereum `0xcb18b1...4be4c8`; ethereum `0xcbe7e5...a4e2c4`; ethereum `0xcc19bc...7780b0`; ethereum `0xccf971...f3672b`; ethereum `0xd0b5fc...282cf2`; ethereum `0xd1cc3a...cb2ac3`; ethereum `0xd54c93...95a89f`; ethereum `0xd8e872...b2e252`; ethereum `0xdaa386...016819`; ethereum `0xdb6ebb...4f19b6`; ethereum `0xdc5b57...b50844`; ethereum `0xddf4b4...0d234b`; ethereum `0xdefead...6423cc`; ethereum `0xdf1d7f...9f3b24`; ethereum `0xe2c2ab...4dadf7`; ethereum `0xe2eb22...60fe73`; ethereum `0xea6d4a...086f82`; ethereum `0xed5be9...2e3cfa`; ethereum `0xeee2ae...34a8e2`; ethereum `0xf50b9a...30f6f0`; ethereum `0xf538da...58cfd4`; ethereum `0xff31c8...a872db`; ethereum `0xffbd6b...2aa389`; ethereum `0xffbec4...bc4330` | ⚠️ Unaudited |
| FinalizableCommittee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4e0e46...7de611`; ethereum `0x8b3a66...7ca818`; ethereum `0xbe360d...67594f` | ⚠️ Unaudited |
| FinalizableGpsFactAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x86b939...c7bb56`; ethereum `0xe741e2...7fb953`; ethereum `0xf23754...46053c` | ⚠️ Unaudited |
| ForcedActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f862b...ae2bde` | ⚠️ Unaudited |
| FriStatementContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x30efaa...93d400`; ethereum `0x98871e...19f0cf`; ethereum `0xcdf95e...0a8806`; ethereum `0xdef8a3...df44fb` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x518385...cd3bfc` | ⚠️ Unaudited |
| GpsFactRegistryAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xacf6a4...e93f94`; ethereum `0xbcc174...7cedb1`; ethereum `0xe8a480...32f414` | ⚠️ Unaudited |
| GpsStatementVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x13e120...b0d934`; ethereum `0x5c1ce4...e3a9fe`; ethereum `0x7da122...2e3ff7`; ethereum `0x9069a5...e369ff`; ethereum `0x9fb7f4...751942`; ethereum `0xac09e9...8e1408`; ethereum `0xd51a3d...4dd8df`; ethereum `0xde7632...8aa170`; ethereum `0xe67515...86b406`; ethereum `0xfe5e5b...2b0066` | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | registry | project_anchor | own_supporting | 0 | ethereum | unit-243966 | `0x099597...599eab` | ⚠️ Unaudited |
| KeepToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85eee3...09afec` | ⚠️ Unaudited |
| L1BitcoinDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8e261d...56a99c`; ethereum `0xff79fc...a64db1` | ⚠️ Unaudited |
| L1BTCDepositorWormholeV2Arbitrum | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244018 | `0x75a6e4...2c619a` | ⚠️ Unaudited |
| L1BTCDepositorWormholeV2Base | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244017 | `0x186d04...00a1fe` | ⚠️ Unaudited |
| L1BTCRedeemerWormhole | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5aab7e...93b3f8` | ⚠️ Unaudited |
| L1BTCRedeemerWormhole | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa4b261...727310` | ⚠️ Unaudited |
| L2BTCRedeemerWormhole | unknown | project_anchor | own_supporting | 1 | base | unit-244029 | `0xe931f1...d2d88b` | ⚠️ Unaudited |
| L2BTCRedeemerWormhole | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-244024 | `0xd7cd99...34d9b7` | ⚠️ Unaudited |
| L2TBTC | unknown | project_anchor | own_supporting | 1 | optimism | unit-244021 | 2 deployments: optimism `0x6c84a8...d0de40`; optimism `0xda534b...681365` | ⚠️ Unaudited |
| L2TBTC | unknown | project_anchor | own_supporting | 1 | polygon | unit-244023 | 2 deployments: polygon `0x236aa5...ab794b`; polygon `0x41c9b5...79d91a` | ⚠️ Unaudited |
| L2TBTC | unknown | project_anchor | own_supporting | 1 | base | unit-244028 | 2 deployments: base `0x236aa5...ab794b`; base `0x41c9b5...79d91a` | ⚠️ Unaudited |
| L2TBTC | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-244026 | `0x6c84a8...d0de40` | ⚠️ Unaudited |
| L2WormholeGateway | unknown | project_anchor | own_supporting | 1 | optimism | unit-244020 | `0x1293a5...a15458` | ⚠️ Unaudited |
| L2WormholeGateway | unknown | project_anchor | own_supporting | 1 | polygon | unit-244022 | `0x099597...599eab` | ⚠️ Unaudited |
| LockedTokenCommon | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x70755a...62cb8a`; ethereum `0xbe194e...cfbab3` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 24 deployments: ethereum `0x73aeb5...3d90c1`; ethereum `0x8272db...ba413a`; ethereum `0x8291a8...9f3b06`; ethereum `0x82df5c...db012b`; ethereum `0x923f27...c3ee81`; ethereum `0xa00853...00cd91`; ethereum `0xa35304...16c215`; ethereum `0xa370ce...7574da`; ethereum `0xa82a87...eaf858`; ethereum `0xa904b9...19d000`; ethereum `0xa96787...9d349b`; ethereum `0xb5f146...8e0c80`; ethereum `0xb85453...19d7ba`; ethereum `0xc22919...570df4`; ethereum `0xc43c01...778df2`; ethereum `0xc456ea...56cd29`; ethereum `0xcc75c8...c8fa14`; ethereum `0xcd69c1...322733`; ethereum `0xd0b84f...d48595`; ethereum `0xd1b301...af49de`; ethereum `0xdca0a2...add6d0`; ethereum `0xde04b3...dd19df`; ethereum `0xe2f0da...93e366`; ethereum `0xf84bf7...15fa72` | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x2ccd6b...52b0f6`; ethereum `0x75a852...0d9799`; ethereum `0x79bc41...721d49`; ethereum `0x89c903...9a6d04`; ethereum `0x8e7ebb...3bcaea`; ethereum `0x9b8fef...db0dcc`; ethereum `0x9c7922...8fe192`; ethereum `0x9e72f9...8c75a0`; ethereum `0x9ec9f9...ec50f0`; ethereum `0xa27501...a5bbbd`; ethereum `0xa7689c...3a660f`; ethereum `0xac3453...5bf95b`; ethereum `0xafcc99...0bdd1d`; ethereum `0xbdcc99...0218b7`; ethereum `0xbfc86c...e63351`; ethereum `0xc2ef2f...379979`; ethereum `0xc55d7b...c01b79`; ethereum `0xe31009...291739`; ethereum `0xe48320...8ae86f`; ethereum `0xe742e9...c5810e`; ethereum `0xead31b...26461d`; ethereum `0xf57fc1...9ee89a`; ethereum `0xf6c88f...c11b99` | ⚠️ Unaudited |
| LockReleaseTokenPoolUpgradeable | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x04f522...707580`; ethereum `0x0d53c3...2d5a89`; ethereum `0x68a6f8...586e67`; ethereum `0x9cb621...ee9c1b`; ethereum `0xad793e...ffdc34`; ethereum `0xd23f06...7598fa`; ethereum `0xdc3994...1effba`; ethereum `0xe87a62...f12303`; ethereum `0xecc7a1...90146b`; ethereum `0xf7de0d...d55cc8` | ⚠️ Unaudited |
| MemoryPageBatcher | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0f50d...30eab3` | ⚠️ Unaudited |
| MemoryPageFactRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe583bc...2ec460`; ethereum `0xfd1456...7fd1b4` | ⚠️ Unaudited |
| MerkleStatementContract | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a91f...58fdad` | ⚠️ Unaudited |
| MintManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4d28d...ed7f20` | ⚠️ Unaudited |
| NativeBTCDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x254e2f...c94b0d`; ethereum `0x2fd204...8ef918`; ethereum `0x359ee7...1caea1`; ethereum `0x466615...bafd3f`; ethereum `0x6c2c43...02b135`; ethereum `0x809e35...c15714`; ethereum `0x9e821b...4fec52`; ethereum `0xdd5a2d...08f75c` | ⚠️ Unaudited |
| OnchainVaults | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcee62...7d99d5` | ⚠️ Unaudited |
| PedersenHashPointsXColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa62f35...1f0f86`; ethereum `0xc4f213...d18940`; ethereum `0xdc596b...1d9e70` | ⚠️ Unaudited |
| PedersenHashPointsYColumn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x7f81ad...d899e1`; ethereum `0xa55c0f...f4b6c2`; ethereum `0xa87710...21f37f`; ethereum `0xfd12a1...bbe7fd` | ⚠️ Unaudited |
| PerpetualEscapeVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaadfdb...37f7bd` | ⚠️ Unaudited |
| PerpetualForcedActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1f087...e203ca` | ⚠️ Unaudited |
| PerpetualState | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbdc6c9...2b3c41`; ethereum `0xdd5f42...48a859` | ⚠️ Unaudited |
| PerpetualTokensAndRamping | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f62a4...6ff8da` | ⚠️ Unaudited |
| PolygonRoot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x51825d...0cacb3`; ethereum `0xec20ed...0ff583` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey0Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x21578b...31ea8f`; ethereum `0x8004e8...3e16a6`; ethereum `0xc9a02d...44a540`; ethereum `0xdf1075...bab090`; ethereum `0xe7b835...573293`; ethereum `0xe8b13f...d75859`; ethereum `0xedffea...dbc573` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey1Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x9d820b...cf95fc`; ethereum `0xb4711a...28e267`; ethereum `0xc2969a...01ac5f`; ethereum `0xd7a713...6d1ee6`; ethereum `0xe58327...1f810d`; ethereum `0xe5ac93...f68fd0`; ethereum `0xf0b58e...9e05fc` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey2Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4576ba...50ba0b`; ethereum `0x698339...dc7755`; ethereum `0xb5a575...55660d`; ethereum `0xde8d55...6d41fd` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey0Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x5318ed...83953e`; ethereum `0x75d887...bbca0a`; ethereum `0x812c2a...b449cd`; ethereum `0xb45b87...5ea7a0`; ethereum `0xbaec49...d717ef`; ethereum `0xbbacbd...351575` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey1Column | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc1cd71...433ccc`; ethereum `0xecc282...790e20` | ⚠️ Unaudited |
| PriceRegistry | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x8c9b2e...b958ad`; ethereum `0xdafe69...b9b03d`; ethereum `0xed1a8c...d2d4f5` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x935bf7...fe8a89`; ethereum `0xb9c81a...487a0d`; ethereum `0xcd7a4f...4948bd`; ethereum `0xef0e19...543529` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x04c3e6...c4495e`; ethereum `0x343e96...5c606e`; ethereum `0x371695...355638`; ethereum `0x5ee284...30d0a0`; ethereum `0x64ecdc...bb4260`; ethereum `0x758279...de43e5`; ethereum `0x794fc0...0ea34b`; ethereum `0x890d38...5f67d4`; ethereum `0x92fcbd...8b9a21`; ethereum `0xc8cad4...8e8570`; ethereum `0xd5d30f...1ef917`; ethereum `0xe0d2e1...b970a6`; ethereum `0xf9dae7...d5590b`; base `0x3e765e...474168` | ⚠️ Unaudited |
| ProxyV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3641bf...c16b10`; ethereum `0x3cde3e...0519a8`; ethereum `0x75c881...493f7d`; ethereum `0xa3f44b...2c929e`; ethereum `0xd20f04...bcdff4` | ⚠️ Unaudited |
| RandomBeacon | registry | project_anchor | own_supporting | 0 | ethereum | unit-243984 | `0x5499f5...e3d80b` | ⚠️ Unaudited |
| RebateStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x326adc...dd8735`; ethereum `0x6e25ef...3ccbee`; ethereum `0xe490c8...1e2535` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1b0534...d7e29d`; ethereum `0x1d1385...56e9a4`; ethereum `0x713f58...dceb35`; ethereum `0xa7fed1...2f5d0d` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13022e...b2e533` | ⚠️ Unaudited |
| RMN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcd484...adf84f` | ⚠️ Unaudited |
| RolesExternalInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eb822...1becce` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7fb589...fde90b`; ethereum `0x8c6d31...81ed46`; ethereum `0xe561d5...9a1476` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | ethereum | unit-243990 | `0x80226f...146f7d` | ⚠️ Unaudited |
| StakingPortBacker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243972 | `0x236aa5...ab794b` | ⚠️ Unaudited |
| StarkExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64c6c...e68479` | ⚠️ Unaudited |
| StarkgateManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd39be4...5fcb01` | ⚠️ Unaudited |
| StarkgateRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7baa11...0eda10`; ethereum `0xf710fd...699d40` | ⚠️ Unaudited |
| Starknet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x739a65...1ffe42`; ethereum `0xa964d6...f5ed08` | ⚠️ Unaudited |
| StarknetERC20Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7f2a18...777a71`; ethereum `0xf0b3ee...7225fb` | ⚠️ Unaudited |
| StarknetEthBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x95ff25...c7fd95`; ethereum `0xd94f29...23a0e2` | ⚠️ Unaudited |
| StarknetTokenBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x70a368...59a356`; ethereum `0xe0d1fa...ba3f18` | ⚠️ Unaudited |
| StarkPerpetual | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd8133...528396` | ⚠️ Unaudited |
| TACoApplication | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x347cc7...edcf07` | ⚠️ Unaudited |
| TACoApplication | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x76e9e5...6854a8`; ethereum `0x947685...b630b9`; ethereum `0x98f643...6659db`; ethereum `0x9a4c2f...5e2b51`; ethereum `0xafa132...3ae743` | ⚠️ Unaudited |
| TestToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0ecb...468746` | ⚠️ Unaudited |
| Timelock | governance | project_anchor | own_supporting | 0 | ethereum | unit-243993 | `0x92f2d8...b4913d` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-243992 | `0x87f005...75f45f` | ⚠️ Unaudited |
| TokenAdminRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb22764...c05cb6` | ⚠️ Unaudited |
| TokenholderGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd101f2...6f5447` | ⚠️ Unaudited |
| TokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf9166...089ff1` | ⚠️ Unaudited |
| TokensAndRamping | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8b736b...7df087`; ethereum `0xb97394...c71e98` | ⚠️ Unaudited |
| TokenStaking | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6c544...98259e` | ⚠️ Unaudited |
| TransientProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x995f6c...e4094e`; ethereum `0xaa3f7a...750fae`; ethereum `0xcb5e55...76e8b8`; ethereum `0xce4857...e76dac`; ethereum `0xdb0221...3d6bc2`; ethereum `0xe303a0...717a18`; ethereum `0xe916b5...f48dd0`; ethereum `0xf80fb8...eac9cc`; ethereum `0xff6206...4f9449` | ⚠️ Unaudited |
| USDCTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa81f4a...0fefda` | ⚠️ Unaudited |
| V3toV45ChangesExternalInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd88100...cf5910` | ⚠️ Unaudited |
| VendingMachineV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243988 | `0x7570a2...6437e6` | ⚠️ Unaudited |
| WithBatcher | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf17a2f...926268` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (386)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b046...dd082b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01228f...283bf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243963 | `0x018473...f85a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b67b...765dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032e5c...b43046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032f73...3ec1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x035e92...227148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038968...b0ae78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03bd59...eb4409` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243965 | `0x03e342...4ee0f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03fa91...f912e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047dd4...7e86d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04be0e...efa8eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ff65...2d5566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052c81...7b50c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05c985...798035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0746e3...8fafee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0880a6...841610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x094bd6...6e0ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x097c4f...90700e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09807c...c6b191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e429...4d5627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9558...4d9359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0acc32...9ec5cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bf8e8...f83f1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c099c...9bb434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c5ae9...7d5b60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d1d56...8e2767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0da684...359ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f21d9...5eaf44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ff801...c3ce9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x108717...c36e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10de37...4af8b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1268cc...c96812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243968 | `0x1293a5...a15458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14106a...7ce0c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16938e...4177e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16a023...4f0378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b484...14c4c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x175359...f92ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x175989...ff88b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x179fa5...3656a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17de59...566090` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18bf13...d075d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18d3f4...65138e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a6f3b...5899ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a9589...d3fb05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b612f...9acd53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bc9c6...8b9310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bd4f3...feb1ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ce5d7...353c65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1db84e...01e975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e8e41...3d5a94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ecfb5...33f08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f038c...6de676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb8ea...5d281c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe738...e47dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1febb8...1633bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205e0d...7bb5d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205fef...4762b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20f109...ec868e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243971 | `0x2111a4...9866b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x217750...acc214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x217c1d...124089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x218ec2...21ffe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21abd6...d10829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228a27...8d9ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x229bbd...a4fe21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243682...e25791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25aaf0...2ec22f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x264c70...4df778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265cb5...022930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x277d82...3d8b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x279301...b71e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2794ee...7990f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27a883...114d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a074...74be52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e3ad...2be32a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28f234...42e91f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x297951...d9c962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29db02...8a1191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b1590...c46045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7a09...bc05d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2deea2...387150` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243974 | `0x30019d...fbdec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x300d75...adc795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307982...3eecea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a155...dbf483` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x316761...03eae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31e2d9...423f64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3236da...a50124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32771a...5311fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32ddfd...353ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3320fd...2695b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3405f6...af3280` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34e7cf...b55035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x351666...9563f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35cbaf...5bf253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35d670...f66db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x367b33...7dfbb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36d293...70f1ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37070f...db1abe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3715f0...109eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373eb6...0868e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39621b...8e3d6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39bff2...408b8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39c3b4...4c8cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a546c...cb31cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ba1b0...85e562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c5d87...65afa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cc6b6...362dbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d2aca...f37f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d571a...9682bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d5752...166c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e6118...7dd2dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e6baa...5640b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e972b...52afd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f3a13...0f2809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f5d59...c9970c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f7240...a394e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa0a9...b61671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ffee7...ad69f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x408645...0770fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x409bf7...4933de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40e1e5...098b22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4124e1...b09346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41c432...da3989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420c99...a1ac6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42af94...cb7771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43a1c0...d0b9e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43cf9e...31964e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43f421...9c86e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x446d52...ae64bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44dfd4...d6ffd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ffe6...eee2e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x450909...1811c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x455603...603581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45de24...ba0175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x465536...26dd03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243980 | `0x46d52e...5204eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46fa00...5d7167` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47103a...8eb5bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x473e7b...10f367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4742f8...3621c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x476839...a1c773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47f0eb...60f281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x487175...d5d2c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x488551...0ce7b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48bc60...f487ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x498b55...5fe9f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a33a6...327c37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a3635...e48c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a7e4f...2031a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b2bf1...8b6669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bf82e...bd2ff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c0de5...70fb1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c27a0...a2b112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c3ad5...278159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cae5f...86740e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cf5c1...1d2950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d0e80...d874b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d333b...1e0888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d654c...3b2ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d776c...32006a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddb89...f4ef0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e59fc...86c20f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ea91e...5744d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fb05b...a1f835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fcd7d...31860f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fefa7...33abe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c188...d7664f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x519da5...096002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52314e...d6aa4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x526ed6...8299d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52c65b...c9b9d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x533a7f...161dce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5383bd...fa5838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53dac4...a14451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x540ad8...5854a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x547eec...ce0717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5504ff...9784d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5524cb...cb6298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55653a...8c509c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x564be3...04b5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x564ea7...5ad058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57a4b2...ff620a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57e1a8...1e009d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57edf6...88d762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58600a...6cc515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5870f2...81e5fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5899ef...f65fa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x593a71...b329b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x594cca...135d7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596e3f...363410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599f5d...dc22ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59b1dd...ffafb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59b288...543143` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243985 | `0x59fae6...b50106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a1659...4b187f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a444d...7d71fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a50e2...d17d8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a994f...d45fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bfbe8...bb93da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c6d2d...23cee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cd684...42379c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d07af...6a9ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e1b4e...88386f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e2cf7...df67a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243986 | `0x5e4861...0e8e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec343...3a4bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f1aba...4cd65d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fa444...8ab5b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6095f6...67175a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6097fc...6cc460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60c282...3d5b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x613ee5...48f376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61bf6c...d398d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62960c...2eda12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x630a97...caf239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x634dcf...45804c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63ba6a...0e641e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x642f04...b07dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6454b5...fd4a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64608b...7bbb33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655a91...ac09c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66136f...9d523c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66ac6a...f64595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66f234...21a970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67bc24...dec5f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e198...1e1f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x682932...44e090` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68d9e6...0d5612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e598...c4a092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68eb4d...981200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x690697...a24989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x691b0d...832dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x691ca5...34e55e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697ce8...d14a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a8376...c5581a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a984f...107487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad74d...1fdc85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bdac5...05f1da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243987 | `0x6c84a8...d0de40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cb3ee...361bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d1140...c67600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e0acf...464e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6efca9...1ff51e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f3229...9eefd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f67a8...779d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fa346...f15feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x723878...f5b64b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78396a...0a081d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a5256...299e07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a7f9c...987f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ab577...20da10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d43c9...601677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f025c...889e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ff02b...beb9a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x825960...ea8d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x829242...3f9107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834fc8...3322e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84a87a...2eda0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85906d...79c9d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c43c9...abd35d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x928899...afc1d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x928cae...2b5f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93379c...e6e7ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93e8b4...f8b16a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x953bd8...896e67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95d7ff...bdd55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e19c...84f2ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9961d3...0f172a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aaa37...96860e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bb621...5af2ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f84fd...43ceda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fada9...b7ea7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d544...52dcbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa70136...c96d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa86b9b...32ab10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90e35...18c260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9fa97...7d0efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaab13f...ae1f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab635e...d5aa72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad7c6d...c9aaa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae5adb...e003c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb006a3...5d33cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1958c...ed4d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb62bcd...f1945c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8224c...9535a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244000 | `0xb8df0a...38e6d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8fde0...253142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe89e8...e42900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc14e40...e3e359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ae00...610924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3b2ec...00ddc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4a7c5...34fc74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc78aac...674c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7a06d...761d4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244002 | `0xc9031f...3bc155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc94567...4a9576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcae5c1...4e4306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb54e3...b83c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccfeb9...e0bb4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce25c9...235cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf5853...a876c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfe4a9...3b4056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd29986...f671bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd35859...b8b2ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e418...909888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4c956...740bf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd55a6b...db699e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8cf88...5d8581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb2fff...7085ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeb49f...d7b8fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf2f24...b0f583` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdffec9...4fe804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe261b3...3616e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe53a6e...482e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5862a...521a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe59b5b...a8e5a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5de32...b4b995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe93cfa...3824cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe94b16...48c595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9e353...7fbb3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3d37...534ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea90d8...6f244e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed0add...0e1fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf01c60...17c3d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1e3d7...1f2824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf338ca...c23640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf39d31...563aff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3f62f...7e3df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf46241...9c4a59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf52a28...e93a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5a2cc...7cbb65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5b6ee...3f69eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf83878...ca422d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf88496...417c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9301b...a4c8e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf983b1...19f345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa9061...76c1a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfacc22...065b96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc1e05...14526b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe0b8e...3938fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x02612d...8a3db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1293a5...a15458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0972e6...adb887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c46f4...2ede4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x122a60...d280bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1293a5...a15458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x132254...3d26f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15c465...3f4467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x186d04...00a1fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18d917...cf4a35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2663a2...c5d2b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27321f...89a3d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x307348...338656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3eb418...cd1bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a4537...048285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c759e...afa32d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e220f...eae016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e4dfc...247cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x744596...4c5340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d6151...c38366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82ab5f...c76108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86b035...b85017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94afb5...93c193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94c70c...93d063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x964d45...2ec157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa29d7a...456299` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244014 | `0xa2a81d...8c512e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa42b5f...5faee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa981a3...8b5d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa60f9...3b672f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf3fff...f94789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb08e45...04c637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4d2e4...ab8985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf5180...f5f491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc4e0b2...c09e5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-244015 | `0xdebd9a...540bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf6542...41f4c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4b591...a07c8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeffee5...ca8ab3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-244010 | `0x1c8d7b...258f9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68c0dc...7214a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75a6e4...2c619a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [diligence.security/audits/2020/02/thesis-tbtc-and-keep](https://diligence.security/audits/2020/02/thesis-tbtc-and-keep) | Consensys Diligence | Audit | 2020-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |
| [diligence.security/audits/2020/03/thesis-cryptographic-review](https://diligence.security/audits/2020/03/thesis-cryptographic-review) | ConsenSys Diligence | Audit | 2020-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view](https://drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view](https://drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view?usp=sharing) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view](https://drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view](https://drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760](https://www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760?source=copy_link) | Code4rena | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | medium |
| [240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [leastauthority.com/blog/audit-of-keep-network-solana-smart-contracts](https://leastauthority.com/blog/audit-of-keep-network-solana-smart-contracts) | Least Authority | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [29-Sep-2022-LeastAuthority.pdf](https://github.com/threshold-network/security-audits/blob/main/29-Sep-2022-LeastAuthority.pdf) | Least Authority | Audit | 2022-09 | stale | Direct | n/a | matched | 2 | 0 | 0 | 20 | n/a |
| [leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2](https://leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2) | Least Authority | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [19-Nov-2021-CertiK.pdf](https://github.com/threshold-network/security-audits/blob/main/19-Nov-2021-CertiK.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [skynet.certik.com/projects/threshold-network](https://skynet.certik.com/projects/threshold-network) | CertiK | Audit | 2021-11 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [09-Nov-2021-ChainSecurity.pdf](https://github.com/threshold-network/security-audits/blob/main/09-Nov-2021-ChainSecurity.pdf) | ChainSecurity | Audit | 2021-11 | stale | Direct | n/a | matched | 1 | 0 | 0 | 7 | n/a |
| [www.chainsecurity.com/security-audit/threshold-network](https://www.chainsecurity.com/security-audit/threshold-network) | ChainSecurity | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [29-Aug-2023-LeastAuthority.pdf](https://github.com/threshold-network/security-audits/blob/main/29-Aug-2023-LeastAuthority.pdf) | LeastAuthority | Audit | 2023-08 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3402] diligence.security/audits/2020/02/thesis-tbtc-and-keep — no match: Extracted contracts from scope section and findings. Audit date from end of engagement (March 27, 2020).
- [3403] diligence.security/audits/2020/03/thesis-cryptographic-review — no match: Extracted contract/module names from the Code Modules section. The audit date is March 2020, converted to last day of month.
- [3404] drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view — no match: Two contracts in scope: Allowlist and RebateStaking. Audit final report date is September 25, 2025.
- [3405] drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view — no match: Scope lists three files: Bridge.sol, BridgeGovernance.sol, BridgeState.sol. RebateStaking is mentioned as the new contract being integrated, but its file path is not provided. Audit final report date is December 12, 2025.
- [3406] drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view — no match: Scope section lists two files: WalletRegistry.sol and EcdsaDkg.sol. Audit final report date is November 5, 2025.
- [3407] drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view — no match: Only one contract in scope: NativeBTCDepositor. Audit final report date is October 31, 2025.
- [3408] drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view — no match: All contracts explicitly listed in scope section. Audit date from work period end date.
- [3409] drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view — matched: Scope table lists 4 contracts. Audit date from timeline: 03.07.2025 - 05.09.2025, end date used.
- [3410] www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 — no match: The document is a compilation of multiple audit reports with different dates. The published time is used as the audit date. Contract names are extracted from scope descriptions, but many are generic descriptions rather than specific contract names.
- [3411] 240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf — matched: No reason recorded
- [3412] leastauthority.com/blog/audit-of-keep-network-solana-smart-contracts — no match: The provided text is a blog post announcing the audit, not the full report. No contract names or scope details are included.
- [3413] 29-Sep-2022-LeastAuthority.pdf — matched: No reason recorded
- [3414] leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2 — no match: The report text is a blog post summary, not the full report. No specific contract names or file paths are provided. Only the system name 'tBTC Bridge v2' is mentioned.
- [3415] 19-Nov-2021-CertiK.pdf — no match: Only VendingMachine.sol is in scope; T.sol is a third-party dependency mentioned in findings but not in scope.
- [3416] skynet.certik.com/projects/threshold-network — matched: No reason recorded
- [3417] 09-Nov-2021-ChainSecurity.pdf — matched: No reason recorded
- [3418] www.chainsecurity.com/security-audit/threshold-network — no match: The provided text is a summary/overview of an audit report, not the full report with a scope section. No specific contract names or file paths are mentioned.
- [3419] 29-Aug-2023-LeastAuthority.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | Deposit | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | TBTCSystem | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | TBTCDepositToken | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | TBTCToken | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | FeeRebateToken | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | VendingMachine | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | DepositFactory | unmatched — not counted | — | mentioned in findings | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | DepositRedemption | unmatched — not counted | — | mentioned in system overview | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | DepositLiquidation | unmatched — not counted | — | mentioned in system overview | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | DepositFunding | unmatched — not counted | — | mentioned in system overview | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | DepositUtils | unmatched — not counted | — | mentioned in system overview | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | BTCUtils | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | CheckBitcoinSigs | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | ValidateSPV | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | BondedECDSAKeep | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | BondedECDSAKeepFactory | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | BondedECDSAKeepVendor | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | BondedECDSAKeepVendorImplV1 | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | KeepRandomBeaconOperator | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | KeepRandomBeaconService | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | TokenStaking | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | TokenGrant | unmatched — not counted | — | listed in scope | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | Registry | ambiguous — not counted | RandomBeacon (alternative) `0x5499f5...e3d80b` — deployed 2022-09-29 15:14:23+03 — liveness: live (current_address_book_code)<br>KeepRandomBeaconServiceImplV1 (alternative) `0x099597...599eab` — deployed 2020-09-10 15:49:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | DKGResultVerification | unmatched — not counted | — | mentioned in findings | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | BLS | unmatched — not counted | — | mentioned in findings | no |
| diligence.security/audits/2020/02/thesis-tbtc-and-keep | AltBn128 | unmatched — not counted | — | mentioned in findings | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | protocol.go | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | signing.go | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | altbn128.go | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | bls.go | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | key.go | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | local/signing.go | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | AltBn128.sol | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | BLS.sol | unmatched — not counted | — | listed in scope under Code Modules | no |
| diligence.security/audits/2020/03/thesis-cryptographic-review | ModUtils.sol | unmatched — not counted | — | mentioned as internal library used by AltBn128.sol | no |
| drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view | Allowlist | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view | RebateStaking | unmatched — not counted | — | listed in scope and findings | no |
| drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view | Bridge | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view | BridgeGovernance | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view | BridgeState | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view | RebateStaking | unmatched — not counted | — | mentioned as new contract being wired into Bridge | no |
| drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view | WalletRegistry | unmatched — not counted | — | listed in scope section as file in scope | no |
| drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view | EcdsaDkg | unmatched — not counted | — | listed in scope section as file in scope | no |
| drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view | NativeBTCDepositor | unmatched — not counted | — | listed in scope as the only file in scope | no |
| drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view | BurnFromMintTokenPoolUpgradeable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view | LockReleaseTokenPoolUpgradeable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view | TokenPoolUpgradeable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view | Pool | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view | RateLimiter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view | AbstractBTCRedeemer | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view | L2WormholeGateway | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1293a5...a15458` — deployed 2023-04-13 15:40:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x099597...599eab` — deployed 2023-04-14 11:48:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view | L2BTCRedeemerWormhole | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xd7cd99...34d9b7` — deployed 2025-09-08 03:35:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe931f1...d2d88b` — deployed 2025-09-08 04:54:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view | L1BTCRedeemerWormhole | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5d4d83...23dbde` — deployed 2025-09-07 09:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | T staking rebates | unmatched — not counted | — | Scope: Smart contracts for T staking rebates. | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | WalletRegistry | unmatched — not counted | — | Scope: WalletRegistry and EcdsaDkg smart contracts | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | EcdsaDkg | unmatched — not counted | — | Scope: WalletRegistry and EcdsaDkg smart contracts | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | NativeBTCDepositor | unmatched — not counted | — | Scope: NativeBTCDepositor contract | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | Threshold CCIP Update | unmatched — not counted | — | Scope: Threshold CCIP Update | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | Cross-chain bridge transfers | unmatched — not counted | — | Scope: Cross-chain bridge transfers | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | tBTC v2 | unmatched — not counted | — | Scope: Threshold Network tBTC v2 Security Audit Report.pdf | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | tBTC integration with Sui | unmatched — not counted | — | Scope: tBTC integration with the Sui blockchain | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | tBTC integration with StarkNet | unmatched — not counted | — | Scope: tBTC integration with the StarkNet blockchain | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | tBTC integration with Base | unmatched — not counted | — | Scope: tBTC integration with the Base blockchain | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | tBTC Bridge on Solana | unmatched — not counted | — | Scope: Smart contracts for the tBTC Bridge on Solana | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | core tBTC Bridge contracts | unmatched — not counted | — | Scope: Security audit of the core tBTC Bridge contracts | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | Vending machine | unmatched — not counted | — | Scope: Vending machine security audit | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | Staking contracts | unmatched — not counted | — | Scope: Staking contracts, T token logic, and vending machine mechanisms | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | T token logic | unmatched — not counted | — | Scope: Staking contracts, T token logic, and vending machine mechanisms | no |
| www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760 | vending machine mechanisms | unmatched — not counted | — | Scope: Staking contracts, T token logic, and vending machine mechanisms | no |
| 240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf | Deposit | unmatched — not counted | — | — | no |
| 240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf | L1BitcoinDepositor | unmatched — not counted | — | — | no |
| 240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf | L2BitcoinDepositor | own contract | 0xdebd9a… (selected) `0xdebd9a...540bd5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 29-Sep-2022-LeastAuthority.pdf | BTCUtils | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Bank | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | BeaconAuthorization | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Bridge | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Bytes | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | CheckBitcoinSigs | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Deposit | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | DonationVault | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | EcdsaAuthorization | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | EcdsaDkgValidator | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Fraud | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | MaintainerProxy | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | MovingFunds | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Redemption | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Rewards | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | SortitionPool | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | TBTC | own contract | TBTC (selected) `0x18084f...d93a88` — deployed 2021-08-17 14:12:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 29-Sep-2022-LeastAuthority.pdf | TBTCVault | own contract | TBTCVault (selected) `0x9c0700...4fe3cd` — deployed 2023-01-24 02:18:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 29-Sep-2022-LeastAuthority.pdf | ValidateSPV | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | WalletRegistry | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | WalletRegistryGovernance | unmatched — not counted | — | — | no |
| 29-Sep-2022-LeastAuthority.pdf | Wallets | unmatched — not counted | — | — | no |
| leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2 | tBTC Bridge v2 | unmatched — not counted | — | mentioned in title and description as the audited system | no |
| 19-Nov-2021-CertiK.pdf | VendingMachine | unmatched — not counted | — | listed in Audit Scope table | no |
| skynet.certik.com/projects/threshold-network | T.sol | own contract | T (selected) `0xcdf702...94bee5` — deployed 2021-12-31 12:49:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| skynet.certik.com/projects/threshold-network | VendingMachine.sol | unmatched — not counted | — | — | no |
| 09-Nov-2021-ChainSecurity.pdf | Checkpoints | unmatched — not counted | — | — | no |
| 09-Nov-2021-ChainSecurity.pdf | IApplication | unmatched — not counted | — | — | no |
| 09-Nov-2021-ChainSecurity.pdf | IStaking | unmatched — not counted | — | — | no |
| 09-Nov-2021-ChainSecurity.pdf | PercentUtils | unmatched — not counted | — | — | no |
| 09-Nov-2021-ChainSecurity.pdf | StakingProviders | unmatched — not counted | — | — | no |
| 09-Nov-2021-ChainSecurity.pdf | T | own contract | T (selected) `0xcdf702...94bee5` — deployed 2021-12-31 12:49:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 09-Nov-2021-ChainSecurity.pdf | TokenStaking | unmatched — not counted | — | — | no |
| 09-Nov-2021-ChainSecurity.pdf | VendingMachine | unmatched — not counted | — | — | no |
| 29-Aug-2023-LeastAuthority.pdf | tBTC | own contract | TBTC (selected) `0x18084f...d93a88` — deployed 2021-08-17 14:12:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 29-Aug-2023-LeastAuthority.pdf | wormhole-gateway | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x1293a5...a15458` | ArbitrumWormholeGatewayUpgraded | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x099597...599eab` | BaseWormholeGatewayUpgraded | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb810ab...2a341a` | BTCDepositorWormhole | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7d7b62...6d811a` | CoveragePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x099597...599eab` | KeepRandomBeaconServiceImplV1 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x75a6e4...2c619a` | L1BTCDepositorWormholeV2Arbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x186d04...00a1fe` | L1BTCDepositorWormholeV2Base | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe931f1...d2d88b` | L2BTCRedeemerWormhole | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd7cd99...34d9b7` | L2BTCRedeemerWormhole | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x6c84a8...d0de40` | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x236aa5...ab794b` | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x236aa5...ab794b` | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6c84a8...d0de40` | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1293a5...a15458` | L2WormholeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x099597...599eab` | L2WormholeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5499f5...e3d80b` | RandomBeacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x80226f...146f7d` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x236aa5...ab794b` | StakingPortBacker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x92f2d8...b4913d` | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7570a2...6437e6` | VendingMachineV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 107 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 386 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 98 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=3, medium=1
- Match method counts: unique_name=7

Zero-match audit list:

- [3402] diligence.security/audits/2020/02/thesis-tbtc-and-keep
- [3403] diligence.security/audits/2020/03/thesis-cryptographic-review
- [3404] drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view
- [3405] drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view
- [3406] drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view
- [3407] drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view
- [3408] drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view
- [3410] www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760
- [3412] leastauthority.com/blog/audit-of-keep-network-solana-smart-contracts
- [3414] leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2
- [3415] 19-Nov-2021-CertiK.pdf
- [3418] www.chainsecurity.com/security-audit/threshold-network

Fork inheritance lineage and inherited audits are included when available.
