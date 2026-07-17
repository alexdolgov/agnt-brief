# Agentic Audit Brief: Neku

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Neku (`neku`)
- Website: [https://nekufinance.gitbook.io/neku-finance/](https://nekufinance.gitbook.io/neku-finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, moonriver
- Contract surface: 169 unique implementations (267 raw deployments)
- Coverage basis: 0/34 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,598,052.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Neku. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 34 contract row(s) across arbitrum, moonriver. Structural roles: 34 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 34
- Structural roles: core (34)
- Contract kinds: contract (34)
- Detected standards: erc20 (34), ownable (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 34 contracts are derived from known codebases. 34 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CErc20Delegator (`0x19714ee460f9d030e310bf1730b5172f5b50ab5f`, chain 42161)
- CErc20Delegator (`0x2907c3ece448f72e5399f07be87c0d39afa9b43b`, chain 42161)
- CErc20Delegator (`0x3631de81f1098df530015a97b092bdfff7e93ea8`, chain 42161)
- CErc20Delegator (`0x3823d2b0cec7d1023ac7d69e76b48bafcc31f28b`, chain 42161)
- CErc20Delegator (`0x38a0697a97fd4d65b8f1055821e3418d7c83cd1c`, chain 42161)
- CErc20Delegator (`0x3ae83a39ce92c13beb51e5e6b4280143d20ed251`, chain 42161)
- CErc20Delegator (`0x6557732b996e94e2b70d9ff8a8ded16715c01912`, chain 42161)
- CErc20Delegator (`0x660474510ec741368ad6a16f7731cbf03844396f`, chain 42161)
- CErc20Delegator (`0x679818bed06eb59a75b775f7384e654a1bbbe205`, chain 42161)
- CErc20Delegator (`0x70d27974441845811b36e9be0d3f43eb60c814a3`, chain 42161)
- CErc20Delegator (`0x70faf3509dc8320faffb40666d717224b26af0db`, chain 42161)
- CErc20Delegator (`0x71ad16c11b13466832c2aad2319820783032e920`, chain 42161)
- CErc20Delegator (`0x7fd87581d0eae4744a8625bffe909ffb3af52163`, chain 42161)
- CErc20Delegator (`0x8153303f72ab12f13180c946723bcacae05a4c4a`, chain 42161)
- CErc20Delegator (`0x82015cfee29e3697afcb6dfdce59dc07ed33eb20`, chain 42161)
- CErc20Delegator (`0x874a86e9e78d123abb745cae5e97369d79d41554`, chain 42161)
- CErc20Delegator (`0x8e9027803d0f448dd96dd73069c35b0641151b07`, chain 42161)
- CErc20Delegator (`0x9ac8f7a521dcbc12cb4d54b22fa1fbf1c5f50caf`, chain 42161)
- CErc20Delegator (`0xa9958d6a3ec9604507f6f99f402103eaa2cae784`, chain 42161)
- CErc20Delegator (`0xb5dc005d89d0b4d0bc4a9459c7f77a403e9bfeea`, chain 42161)
- CErc20Delegator (`0xba7dabf931a23c334b8f6be15eb1e9425330e6b3`, chain 42161)
- CErc20Delegator (`0xbd1bf670692aacbbc96f0cbdd2f868f20e8f3296`, chain 42161)
- CErc20Delegator (`0xbd65ae81d1d79236d69d01631ddde5a994c96915`, chain 42161)
- CErc20Delegator (`0xc7dec270bffc808458dcf687a378958afe7494ea`, chain 42161)
- CErc20Delegator (`0xcb2b0b3380f3993f051b9d5355e8ad8e1bdaf95a`, chain 42161)
- CErc20Delegator (`0xccb8da4ffc616060d7594250d19997fb2e98aa15`, chain 42161)
- CErc20Delegator (`0xd73ed2df40c7b671de0553b1f355ff46dd37bdd1`, chain 42161)
- CErc20Delegator (`0xdbfd9c0fc225e323a8eff1bcd1aa787be8c11a26`, chain 42161)
- CErc20Delegator (`0xdf19d746b5ab2b7b040daf0ec3341000cfe17bae`, chain 42161)
- CErc20Delegator (`0xee2a8949e5106d0b273bb6a63a01beb41ef6e07f`, chain 42161)
- CErc20Delegator (`0xfd4224a5358162d5d4f97c3c51966383642f0553`, chain 42161)
- CEther (`0xbc4a19345c598d73939b62371cf9891128eccb8b`, chain 42161)
- Comp (`0x3bf0880fd26e49c46d1a1e69adb268889b4be840`, chain 42161)
- WrappedToken (`0xa4cc4a18a44595d8c7dc34431a99994545997ce3`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 34; live-surface rows included: 34 (34 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 34/34 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/34 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 34 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 135 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 34 of 169 unique; 135 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/49
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 120
- Unique implementations: 169
- Raw deployments: 267
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248773 | `0x19714ee460f9d030e310bf1730b5172f5b50ab5f` | ⚠️ Unaudited |
| CErc20Delegator | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x1ea64325e194e0520a8e219c4d1227681cdbb2fe`; arbitrum `0x2fda3af71967add50380c7a35799ec3a41209bce`; arbitrum `0x374aed793f60a01aaf00385fd3a05cdccdb2799a`; arbitrum `0x3d2c1333309d3c2d91270a1f3ecac96dbbd50d5b`; arbitrum `0xa7ad08399bce6dd0f7110d88cc6303f9561acd48`; arbitrum `0xdac3b16d35bcdc3d135633a5d2e0d0d114070a29`; arbitrum `0xdee7e973657853a15305d360d2ac46a1e279c68c` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248774 | `0x2907c3ece448f72e5399f07be87c0d39afa9b43b` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248775 | `0x3631de81f1098df530015a97b092bdfff7e93ea8` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248776 | `0x3823d2b0cec7d1023ac7d69e76b48bafcc31f28b` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248777 | `0x38a0697a97fd4d65b8f1055821e3418d7c83cd1c` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248778 | `0x3ae83a39ce92c13beb51e5e6b4280143d20ed251` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248780 | `0x6557732b996e94e2b70d9ff8a8ded16715c01912` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248781 | `0x660474510ec741368ad6a16f7731cbf03844396f` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248782 | `0x679818bed06eb59a75b775f7384e654a1bbbe205` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248783 | `0x70d27974441845811b36e9be0d3f43eb60c814a3` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248784 | `0x70faf3509dc8320faffb40666d717224b26af0db` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248785 | `0x71ad16c11b13466832c2aad2319820783032e920` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248786 | `0x7fd87581d0eae4744a8625bffe909ffb3af52163` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248787 | `0x8153303f72ab12f13180c946723bcacae05a4c4a` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248788 | `0x82015cfee29e3697afcb6dfdce59dc07ed33eb20` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248789 | `0x874a86e9e78d123abb745cae5e97369d79d41554` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248790 | `0x8e9027803d0f448dd96dd73069c35b0641151b07` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248791 | `0x9ac8f7a521dcbc12cb4d54b22fa1fbf1c5f50caf` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248793 | `0xa9958d6a3ec9604507f6f99f402103eaa2cae784` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248794 | `0xb5dc005d89d0b4d0bc4a9459c7f77a403e9bfeea` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248795 | `0xba7dabf931a23c334b8f6be15eb1e9425330e6b3` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248797 | `0xbd1bf670692aacbbc96f0cbdd2f868f20e8f3296` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248798 | `0xbd65ae81d1d79236d69d01631ddde5a994c96915` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248799 | `0xc7dec270bffc808458dcf687a378958afe7494ea` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248800 | `0xcb2b0b3380f3993f051b9d5355e8ad8e1bdaf95a` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248801 | `0xccb8da4ffc616060d7594250d19997fb2e98aa15` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248802 | `0xd73ed2df40c7b671de0553b1f355ff46dd37bdd1` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248803 | `0xdbfd9c0fc225e323a8eff1bcd1aa787be8c11a26` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248805 | `0xdf19d746b5ab2b7b040daf0ec3341000cfe17bae` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248807 | `0xee2a8949e5106d0b273bb6a63a01beb41ef6e07f` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248809 | `0xfd4224a5358162d5d4f97c3c51966383642f0553` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248796 | `0xbc4a19345c598d73939b62371cf9891128eccb8b` | ⚠️ Unaudited |
| Comp | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248779 | `0x3bf0880fd26e49c46d1a1e69adb268889b4be840` | ⚠️ Unaudited |
| ComptrollerG7 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0983b43a40a2e36ce1ea55b2ac88041fc88e2613`; arbitrum `0xd5b649c7d27c13a2b80425daee8cb6023015dc6b` | ⚠️ Unaudited |
| GetMakerts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 2 deployments: moonriver `0x1227dff725beebc26469d1e6a0a37f61fd14fb43`; moonriver `0xdd5a13c00d6294d8d8d39532bc11799844bdef07` | ⚠️ Unaudited |
| GetPoolData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 3 deployments: moonriver `0x2b2433bf65b24eb2714efed544f026a950c8614d`; moonriver `0x686f59b6dcc54d8cbba5c54358d37bdf5d09b5ef`; moonriver `0x73ad709b6261f308f68be5b13697451968b49660` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1e930c6a1ec0e098617a2c202939ed0345a9641e` | ⚠️ Unaudited |
| NEKUController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 4 deployments: moonriver `0x3fea510bb50fca2dc2fbf6881dadd911cd99c33f`; moonriver `0x9e944be0ef1f9ba6ca0a2bb8b30748b13a1dfadc`; moonriver `0xe6f7c615a5d975faf8590eeb4cfe4201434e8a0c`; moonriver `0xec47b74be0cde643366ab14fa7971db72e5df79d` | ⚠️ Unaudited |
| NEKUHarvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x811dde77f7000220b20495684192ab6bd4b6aacb` | ⚠️ Unaudited |
| NEKUVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 15 deployments: moonriver `0x048de9509b166d02bb2c974e42801e3fb8af3fa2`; moonriver `0x1513722fe54519856097535e3a541763ffc1b58c`; moonriver `0x199e050ef5005cc4625afad2f8659f487459f8e4`; moonriver `0x1d7b1b56c8eb567382c13d97cf5c74db9453844c`; moonriver `0x1e42fe90bd2af56ede49248b91670bb134f16c57`; moonriver `0x262d754c362f89111bb83c53101b06057a976b85`; moonriver `0x6588875f5ea8db90507e4d660aab7d06dd5b57a1`; moonriver `0x7d49d0a5dfbc207015d1374be6030d626b2a035e`; moonriver `0xa703a9ecaf83376deb4bcc48b0d133b260c825b7`; moonriver `0xaa4e2f412c49317a4c752d99c5f400c9784143ce`; moonriver `0xaa600b8fb5ecfc781740f4ae4f792ec0b55bb993`; moonriver `0xc39641019a1cc1b9d3975314f498c67c90a5d3e8`; moonriver `0xd9fa3bb772abc60368fe98799f2c63f27c3ad086`; moonriver `0xe39283eddf407ba5d3aecfc20125dee88a7d7546`; moonriver `0xf52a0e922164e778a3c4a559a15931adfc7a904a` | ⚠️ Unaudited |
| OracleObserver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8e3c6d39a4f05fc8980cea6710c79d7a9d57c98` | ⚠️ Unaudited |
| PledgePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 4 deployments: moonriver `0x133daec9a0d345e10d1d37c070d853a75ac33634`; moonriver `0x4b103730109a75954139d4ff7a8ffc91f59b9812`; moonriver `0x654d0bdaed45429812521de20b8de27abd6ce871`; moonriver `0x85f6b71435b7828fce5df62225a594d0f033cbdf` | ⚠️ Unaudited |
| PledgePoolVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 10 deployments: moonriver `0x00c53517e1a1f106f5b26ec6d7b43cfde5272512`; moonriver `0x08b7fb089e5b773778351f350edfcc786e1f0314`; moonriver `0x0bb5deaaecdf70b7566dda95750a88b2b2f0ba56`; moonriver `0x26ffe4e747f43891fac8b440aaf200c95e02aa0c`; moonriver `0x270e4c9660f239564c109aea66fdc7e72c56e98a`; moonriver `0x3ebf7a00247ce95c16ede6af319c12ebcffd1ce8`; moonriver `0x6382783bc41f95683a2de876d46b917257c1062d`; moonriver `0x66d2ff5f3abe925b52576b2507db47f90de7863b`; moonriver `0xb1ec80b43df1737378b76fef67e9dbbe9e0de994`; moonriver `0xd21f1dd4db33cec9eb1422a1a78a40f8c2441e2e` | ⚠️ Unaudited |
| PledgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 31 deployments: moonriver `0x1135adf1c8bace56ae54836e152417b97ee54317`; moonriver `0x1b9eda7120a649049b64d6f8648488da6baa2c85`; moonriver `0x25db930e713c70fe82c4b1be7f75ad6c3cf0c0f2`; moonriver `0x2a5c88e6c1b746b3e00a6e4db3a1c00e5dcad7e4`; moonriver `0x2ed971051493b086644469188d8cc7fdd61b246c`; moonriver `0x3947c8ce267b970dc1d7a13540563869e2490da1`; moonriver `0x40a15633479cd0aee1c6b8798ae5be7722672091`; moonriver `0x5aba0ea5805428b4c12f67877def282eb24b0c16`; moonriver `0x68b01cab22cc84bdc647ce0c0a4892a42dd08b54`; moonriver `0x6ab485d8ee645974894139c8436864b84784cb7f`; moonriver `0x6da955979e710d2da74cf36abe9b0b41c14e0305`; moonriver `0x82a62d40c8df0b4b15c2dbdc0d326e49e6357d9e`; moonriver `0x838ef5560c9af84590fd7201ef95b88955ebe630`; moonriver `0x850560cef0d91fb5202c38f113fccbed857cd501`; moonriver `0xa5af3286a0c872f21ec482d84abc8280877571bc`; moonriver `0xaab94340aeb9d6941dedeffa65fbcac1b314e760`; moonriver `0xb58a201461db2e5890c8c02bc04b82d497b48f5d`; moonriver `0xb7da4c32a4d27f19f8e5cd46c6d6752a17dce68f`; moonriver `0xb9baab56b41c52cda5a11dbfa1d6a0764b79bc73`; moonriver `0xc6cebc580475668f121f36e1a7c5c5eeb6f1f4fe`; moonriver `0xccc08321020f8469282ac19fbe0f3a88c49db044`; moonriver `0xcd63474fe081d01c57b733a849ce462216256ce6`; moonriver `0xcde634da35bb6c9a1b4a67f39ef41bfe2f974376`; moonriver `0xcefc77d00991fddceca5357c1403aaf66b62820a`; moonriver `0xdba425aaa01fcaa9730f383a3614be53ef859a22`; moonriver `0xdc00dd80a57efa1822d6a389a23d591e32649047`; moonriver `0xec8d3c481c939afe5215ff56b6388c05efcd4cf3`; moonriver `0xf23bac61a2a90f4c0800b80c2486272f55e6071c`; moonriver `0xf7e5df7dcd368ac28d2dbef84433a2da39c92e9b`; moonriver `0xfb604615b4f2355917ce79a9a034f3262bfa8103`; moonriver `0xfebdf28d34e6d9ac7cdb18e1b34e678adc52e431` | ⚠️ Unaudited |
| StableMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb575244296c27e7897382e6c140708c44a6a4229` | ⚠️ Unaudited |
| StrategyForSolarLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 30 deployments: moonriver `0x0588c69fa243799e7890892820d3fd008446ae96`; moonriver `0x078687669db276413dad54da94b199afc3a1e50c`; moonriver `0x10e49565ee8a5caaa2ddc8404cef984cf9eb9089`; moonriver `0x1c8cc3dbd9f2bed173d01e424c9560dda879538b`; moonriver `0x2ef4b11e99fd1d99ff8b54016845ad2e104d2f99`; moonriver `0x37aae8ad6050cdb691649f3fd667a3187c4d2411`; moonriver `0x39071370ae6f30e26987805c17c4c9fb27ccd529`; moonriver `0x3ca10d50448ea8f46cae5a33a17ee9c4d6ecd9b9`; moonriver `0x3fcb6b27f5dcc117c2f1c9e8dff836c14eb26237`; moonriver `0x4f78afffb61c81765af642e26f2132cae8f3fd34`; moonriver `0x50652d6adff14b899ecf828a4c3318870155caa2`; moonriver `0x52a3607b7d3be1561a87bce3b4f1c4989e1dee37`; moonriver `0x55fab59dafd23a5d25ddd5b7aa4a015adeecae16`; moonriver `0x5d86be5342cbc7410480cf707c510fc066507878`; moonriver `0x65f23d83dbdbe723acd6ae3aef9f9a93ffadd497`; moonriver `0x68c24db3370c383fdb1006306cfabec9b5b9d96a`; moonriver `0xa40a127a3a19e503ec8055fdd6d91714878373e4`; moonriver `0xa7d778b6fda0b05955eb9306ef1e610acfd8016b`; moonriver `0xa8293ba26c74e8d27cf52957b7fad391c71b331a`; moonriver `0xad2bafae4adb79e11d28162b3cf55643ca6df6ae`; moonriver `0xb311f67ec7a16f3c0ae450bdbcc1375a64797f1b`; moonriver `0xb7931956a48f4df84ab4632d9410d2320367f335`; moonriver `0xbf81af7d7946f125dd487913c32c217180acfacb`; moonriver `0xc1178441eb1d3f82fad798809b2143826cfff94b`; moonriver `0xc6930201c8d165f0d9318f0bc205202f7e119b8e`; moonriver `0xd123709f0f262872530b64ddb117176657435e9b`; moonriver `0xe4b7d873c0cdff51bf234ef10a89042d6162e046`; moonriver `0xe970f39ef6cda40657cfb55606ac8f8f2a9cfd5b`; moonriver `0xee30900bb8724eeb41cc63691a3e7a2edece8552`; moonriver `0xf0ed927a2adabdd857c6b61fc05aab0345a6194d` | ⚠️ Unaudited |
| TVL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c02f377eec59f41b4ba3a83a03cae7f79d3691f` | ⚠️ Unaudited |
| WrappedToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-248792 | `0xa4cc4a18a44595d8c7dc34431a99994545997ce3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (120)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x02ef4c7d0ced1c2e5703ae32a939682f161cc9e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x09d2f3023cf5b9987bcabd14798c510b526f9d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0c233ec1d12401636c5bd6a8f56440f4f33607ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0f5bf2160e9927694827c5b3b939acd1ad85ec1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0f81bb0c28ba3e173fa3a25a168c1a34b89cec87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x10a90c1c4cc0944a905ed62eb32665630b99e87d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x10ca092dc6e30ac487a7c8c85a1fb04634f5e9f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x17fc53f822de6249309313bd6eb913e6da9350d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x18045bd78ec9f82c3ea3528ed56bf009a63f4233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1985f3cb9a38cf4e9c7f782ee177fa504dfe00c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1a8ef8ef8a0c9b5c6a7955f38fbf56bdb16017ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1cfffd7eb3df8cdca513622cb9beacc9a2099cc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1d96ace43978eb3af0f36592d0f4e525eaa1109a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1e08ae28753112202b7d39fc82682f72837df0b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1ff6f6652afa4b6ab6124ddff238f33064a2e72c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x20187f1f042811de4b45fbee1542077ca8090317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x22413712d6dd7a14fab4c91cfb3818622e5f9c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2259cd7a7d3f6398904659370af28beed221a027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2776ed190f574091d0b2155153338e9323b72077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x28b4d2f4cceec048203122105bab58870474a155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2dbd8d252ebba2c8c3cb6c4a26ba318f456966ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2eaa6cfb753ebac14f0ef5863137a45942b6eb8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x307fd8984e4f1185180aaf9897d2c12e9e3f1c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3153a0a781e0701ea52097e4939ac3e744aebba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x322b2e93414640be297380a642b5df45d1f64d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x34c0f1e25be36f63c3f4c4a813c570620b61d834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x37960ef3ae09f8412b1dcdcb9e1b2eab3a6ffc1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3805b1cdfa875ab01fb064d380432a19af74219b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3fd51f5edc98a0e52377403be6d4e367e4af7abf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x40a3271a107aa5196e71d73186546eac37d3405f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x435d1cccaa095f30ef210ab5b36d3dd0b673bf86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x44085223f041683e3881ca32e3b67f1c1c751ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x440b54caa00130ba0858e7014f8a16f93a5926ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x44ed29ceed5a5d4df1431108aa72e45e4f52374b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x46f43d1e7753f19eaba44d5fca02fd6c249c9417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x47206e16e0184e4f9ed56431bc994a3c4c276c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x480b30521a76e62867987dca83bf7754f0ead3cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4831b6de489c4058248168e5e4cb4745ac27a10c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4bfa4087121cb0b75d1bccab8be1743c437c4940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4c7c9585cbf4dfe5a36ec0cc319e55c957dd4361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4cfeb7f3ee2edd5099231fe48cb91a401fe9a02a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x50c1105aed575d49a38edcc90355fde2f45c18f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x527d10a1d6f41d01e550abef462bc3ab239f9fd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x535cd57db4a71691224fa74ab41a7a58a213c662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x563f5d8ac5f0d5f541016e501425608c8b5d8d93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x58436d4cb73889d81d62a182dacaf570812220bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5b8725a8cfbcb75d572b600743d8f28a0bbab617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5c027c178247b48e17c49f594410b62cd1f2b30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5c560969dde964c8e67b48955b13e15a90525ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5cb43755a9490bc069a80a5cec1a4701bced600a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5f9a3f21d40a8ea6ad540e3b845ab5bbe3f87e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x61a53af4594ce0d315e15ac178a12b72c999a12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x644781e608bc95831d76386f146b8ea9af61938c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x644a8506f9aa0dac2bfbb747adfa58da4e3c7cb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x64e2cda481086a09becf56f2b3be86b72a9ecb82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x65a8fe03f6a97fde60ca7ccc9b159d6f34a953c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x66f02fb1a6db511fe7859cfb17a0d49bea03ef44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6bbbb34c16e1e2046c26fdc7952ffbfa047578eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6ecfd021e5d7f6647efd623b9d9e9df35d6445bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7482f0d7f6903560419a4a0db1b638076f77b101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7485e3c36affd87b805cf303d37c11ef75980f28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x757207b722ce524ea8a692ae373c416b55680d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x797b9aa2228143ed798f57b3be67420952922bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7aed168b6a30d46474487fc6c0f4ff3de3930798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7b99bc7284229b9f0a6d776014a7a6c4dd62ba15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7daa3e47ec185b4bd4e877eb2522c3ac3a97ac2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x815f24c34230b833cd33f92388bc58d38386efec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8689352796a67d3333e0c9b4377473239f673486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8b8107f2128c6ae22333e2bb5514719e0e8fe930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8dfd47408b686dbd478a8119b43acc8cde5ec698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x91385b8fb153d44c9b9c084aac31d6d6bc057a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x91b6a9321c8b5ab7db54c47f799dd7177bb4a3ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9220c2a6f92a293bf694ec355aa7ee5a22d77d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x92d098a09301fa2585b73dea276cfd1615f33fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x93a6815312d267dcfb285b2e3f04a317df2f9193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x997b95f3fa2660793872270798e28ee16eb18035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9a0a85dcc6a4d42219cfc805d926721cb406f118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9b068c7862cfbf7b70de7e7a90c0b4a3f44f2d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa0f191846e476b1f1d0b54a2624f139eb1ba5a32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa49c30a762cf8b2def5dc7f292c1938a6f393660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa49f4c5e88914524d2bdd162cca083d09aafd82b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa73ab9d879bd2424b01dfc7a1ae64bee3e60dd18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa92b9d9c17f7ba8571f787b41c69041bcb03face` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xac5812f47ec9d72e3280f9d7076aa6b4d953cfaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xafe7ed8d635adfd6a576afca0607cbe7699536a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb1262475034efcb9c47271f07b9524e99a62fd3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb1bbd4b3e5ca7e12ff81a6b13af6eab8b0602ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb2ebfe6544a033642beb200b0607316fafabe797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb35172efd2049765b6f9dbae2fa646bafea1990c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb4955213e8615406d9b7e2c416b17bebb8fa48f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb5001fb81dd59209fe58c46550311e606d9a4f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbc9c029d436f7eb99c32e81f2c549b02bb25dafd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbd09565d19632364e62c622a84a24023bff5c443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc3976de48c35784d0433bfee7481028466a067b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc7aa0164c87cd71ced7cd436ed0a29ae30b1c1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xca9a77b3f778fed422941e148f37e671bbcaf396` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd4784cf01cd5f45342de9a45279bdd225583abe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd5f78143d18e35d5ae30768b533f1114b6ff59c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd86a409a30eb02b421feae953672c83914481f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xde97854a2d872681c437b35795cee49743010f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdea0869c13cb0ce5db64c4e2e5ebeb54dba0d28e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe18cc920c4d0486aac80d3a4386097364f92035a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe1f8c5825dcb7a4e3e94c56048e0f4dc54bd76cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe454d0f958861f1d63940771827004ac03e9502a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe7f6d60d4c1e13e4aa529d6b438f63e39ecb0f56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xea9853330f6df979e5d1a1122d6ead411b93163f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xebd1c0687826bff2bced93b9c3b554de80ec272e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xecb9ce1d3e05995349e298d73b32db2d35f720c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf261b306292d93beb7744e8e08cb2c4983b38806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf815e05584887c7b3995422bf8fb677a267b6d21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xfbd90abc5880c3005be6f734c0b356ae56c6b7fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0140d4b73128aefa1fb391cd24ecdb66c657a814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bddee9e22547b17f12180a872dd87d569b4d250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2703e446a00d42abf4b1fc93a46127b84e6774b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ba34d0ca796e31a075cc1f124c11502a6730629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87746c74a0f2143f16872d0d563c9136576f0d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x893c6f09237625f8474642420d90118b2c759ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae221886a8966df6a8ddd15c6b78b0661344f9e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbb52df876c3e4d5c3f08210b19d6c58980bd0a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4a982065f4ae0df9156456330803f5dab462b6b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/nekufinance](https://skynet.certik.com/projects/nekufinance) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3021] skynet.certik.com/projects/nekufinance — no match: Only two contract files explicitly listed in audited files; other 18 files not named in provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/nekufinance | CarefulMath | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/nekufinance | Exponential | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x19714ee460f9d030e310bf1730b5172f5b50ab5f` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2907c3ece448f72e5399f07be87c0d39afa9b43b` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3631de81f1098df530015a97b092bdfff7e93ea8` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3823d2b0cec7d1023ac7d69e76b48bafcc31f28b` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x38a0697a97fd4d65b8f1055821e3418d7c83cd1c` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3ae83a39ce92c13beb51e5e6b4280143d20ed251` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6557732b996e94e2b70d9ff8a8ded16715c01912` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x660474510ec741368ad6a16f7731cbf03844396f` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x679818bed06eb59a75b775f7384e654a1bbbe205` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x70d27974441845811b36e9be0d3f43eb60c814a3` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x70faf3509dc8320faffb40666d717224b26af0db` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x71ad16c11b13466832c2aad2319820783032e920` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7fd87581d0eae4744a8625bffe909ffb3af52163` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8153303f72ab12f13180c946723bcacae05a4c4a` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x82015cfee29e3697afcb6dfdce59dc07ed33eb20` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x874a86e9e78d123abb745cae5e97369d79d41554` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8e9027803d0f448dd96dd73069c35b0641151b07` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9ac8f7a521dcbc12cb4d54b22fa1fbf1c5f50caf` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa9958d6a3ec9604507f6f99f402103eaa2cae784` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb5dc005d89d0b4d0bc4a9459c7f77a403e9bfeea` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xba7dabf931a23c334b8f6be15eb1e9425330e6b3` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbd1bf670692aacbbc96f0cbdd2f868f20e8f3296` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbd65ae81d1d79236d69d01631ddde5a994c96915` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc7dec270bffc808458dcf687a378958afe7494ea` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcb2b0b3380f3993f051b9d5355e8ad8e1bdaf95a` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xccb8da4ffc616060d7594250d19997fb2e98aa15` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd73ed2df40c7b671de0553b1f355ff46dd37bdd1` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdbfd9c0fc225e323a8eff1bcd1aa787be8c11a26` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdf19d746b5ab2b7b040daf0ec3341000cfe17bae` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xee2a8949e5106d0b273bb6a63a01beb41ef6e07f` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfd4224a5358162d5d4f97c3c51966383642f0553` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbc4a19345c598d73939b62371cf9891128eccb8b` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3bf0880fd26e49c46d1a1e69adb268889b4be840` | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa4cc4a18a44595d8c7dc34431a99994545997ce3` | WrappedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 120 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [3021] skynet.certik.com/projects/nekufinance

Fork inheritance lineage and inherited audits are included when available.
