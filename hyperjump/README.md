# Agentic Audit Brief: HyperJump

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: HyperJump (`hyperjump`)
- Website: [https://hyperjump.fi/](https://hyperjump.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, fantom, metis
- Contract surface: 220 unique implementations (220 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $185,953.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for HyperJump. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc, fantom, metis. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: ownable (3), erc20 (2), pausable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xfd5b495d6ce1a98102a14a7443928fc1b31a200d`, chain 56)
- UnnamedContract (`0x7afca69dcd68a8b36764cce35b89a76450cca411`, chain 250)
- HyperAlloy (`0x5ef5994fa33ff4eb6c82d51ee1dc145c546065bd`, chain 56)
- HyperBurn (`0x03d6bd3d48f956d783456695698c407a46ecd54d`, chain 56)
- HyperCity (`0x4f1818ff649498a2441ae1ad29ccf55a8e1c6250`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 39 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 176 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 5 of 220 unique; 215 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 206
- Unique implementations: 220
- Raw deployments: 220
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeefyVaultV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02931dca7f6360fbfafde00be784b8c80123d913` | ⚠️ Unaudited |
| BurnMachineV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef6a9d388071cfa59534c625e03df002f64af52b` | ⚠️ Unaudited |
| HyperAlloy | unknown | project_anchor | own_supporting | 0 | bsc | unit-242267 | `0x5ef5994fa33ff4eb6c82d51ee1dc145c546065bd` | ⚠️ Unaudited |
| HyperBurn | unknown | project_anchor | own_supporting | 0 | bsc | unit-242262 | `0x03d6bd3d48f956d783456695698c407a46ecd54d` | ⚠️ Unaudited |
| HyperCity | unknown | project_anchor | own_supporting | 0 | bsc | unit-242266 | `0x4f1818ff649498a2441ae1ad29ccf55a8e1c6250` | ⚠️ Unaudited |
| HyperMechs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ae713c662b8852d686e718e0762631a4cb84954` | ⚠️ Unaudited |
| HyperPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b04a6cdd6422f44eeea2dbe9bf1127a1ae82f4b` | ⚠️ Unaudited |
| HyperPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x027587c42d8c43b5e8e622aa9981a409ef625a85` | ⚠️ Unaudited |
| HyperWarp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x624e7c88b6884bffbab31623f4d1f8bc8b8ae756` | ⚠️ Unaudited |
| LPFeeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fa9420a4bfc08dbb6bdd1728b1555a96c59fa8d` | ⚠️ Unaudited |
| StarVaultLPF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64776d5bdbd391716a01c9fff35fc18fbce01447` | ⚠️ Unaudited |
| StrategyHyperLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02db4d714641f46dd70bec80e4e4c33f8fd65cf8` | ⚠️ Unaudited |
| StrategyHyperLPV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78609e486ec17441e250d949df395a37e00454ab` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89861bf28cedabba52ea4b06869186294cd00265` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (206)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00886ffc995daddd4ad888ab251bf594fff3baa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x012da12c0501cffc8389a32adebb15cdf31cd71d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x031ebeec0f798045122e6bf5845860bdd752de6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03abc3f20718051c29f447532b33c0adde3bc0bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03eb1efed46b74e9a02c517ce9326647d6f822a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04102fa87d1c62cf3f215ee7c07b20c530e0b26c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04a6e641027e1906cd745cf3128f5b3dbdf41ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0598e8180d8df40318043fa5e349eb40b6873c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0837d5c8380a9194dee24a22d41f06f7f32a3529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08aa78b4ff51d82324ba9e1379bac55ac18bdc73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a43b2e38814f0fb952109bea9281e74ec07ce7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b4d2a5c7a3a12e996fa1634a0ad488b8ce0edc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bbd4b40df35401b3887be72faa1d29db51f0edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c1127816975190470ecb49dcff70ce14070f604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d4489e34b62c45e78fd554754aca97b4338125b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10b4722629d70b2515f90c88dde278ff48985cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1133839787c2dc349b6394d7b24db83887f7b7d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1282fe78d092e6077b05fee27f239b49b2725978` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x130025ee738a66e691e6a7a62381cb33c6d9ae83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14284621bcfbaf7e58283f9b3b27965797a64a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x150881921b1933b0a49991b921fbceb8a971a1e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x186fc4942e70e0c3f1aa82aab98e1defe945bb57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x195875c9aecdedc9c1f2278cb2d49d4d64a24723` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x1985cd7af3b410cfe87b59eaf8a0833816729c49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19b8bac2c9bd3cc4de0665e9868190e03b87d65e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b50c067c5d539182a80a512c6c8b859ffb0cde6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c28ed6298016344c144756c3a41f84c3464b2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e1a954d96ef2efa8b2f49f458182638253acad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e92ef8469de58dd9d608a4ebe85211a25ea698d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1edf8e38352860769b2def563382599b131cff4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f1b7e2fc3b3d852a7abde8b788c298568b15efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x208f1c8333ac840294a44eec56a053d445b59647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x230d6db3cf56bf543d3bbbf22f10264283f7d751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23209f4390a3ad23bde41e8c82c17fbf24c843d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24157b3e8676d991048fc9d3b8ade855a7182764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x289f840ea297db4a3d2b0695a56c897da1d5b2be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x297dede79b249edf27d1fec1f1e5b64a78b569eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x2b4618996fad3ee7bc9ba8c98969a8eaf01b5e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fa41e8512372fed85c101fda7700e1a2afc0fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x324023f9fc63e0c779db983bdb4c768581b732ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3300fdb5cce4a8625b9bedcffcba412b3d252d0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3339e128fe4df4d80f2aa95ffda953b983815c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34fe37ca58d9814179f548ba39de485fcab3633e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x368a15354eb6b2126104b4d8316fede05048b401` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3876720ef21cd7036b8a247a695cb82d5319e588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39ad957c7e90c36cb36ea59a6cac977ace36ed70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a3e88f26c455ee316702f393a0c59252a38aedd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ab8981fabe3d7b8768a6f19eb80aac09ac988c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3bc677674df90a9e5d741f28f6ca303357d0e4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e5f9476c33a307aaed374f03ae35da2e98c91d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4406d7cf208fcc3503bb23b4964a558d68a3cd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x469940850c232ee6040a85298f13416cd7b918f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46e34440ced0b55f38b662c7f8b142ac0c7d2d4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x471ff10a810ce5a367042b55c56753cb1e385410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4783a377383e413a42fc2f4522fcce4a1d09a61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4adc9b5aaafed932586a1b383f2f0f9ce3454c3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4dd01687329c05ac9db46fefc5c6482e7175b378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e92a784f0985caa59a4dec79bbf74a1223ce26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f19004b7012035d1ddd30795860e44d79a59bea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5029cb7bb56caa8bbd192b059f1b6c3179fc1488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x517ecb1bd66ca8853c4db671d660a62d011ba913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x520390909c66d502fcc14ecb7254448c506e4a34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x522650de53e79ead931e4eb3537b12d7fe06697d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x549b69d8fd585398c59f62c0619562e027b1b96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x559c93cf64005dfda3e417e7c866a7f40f52c6c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55bf73afcf2622e979aee0831ac624b40c0dd297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56d646c7731248cde7b6adce405df5fdcc12765d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x573e7021733315a866bcbb449553ce320e7285bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5905a00b032ccfe018ba1e4967093833437739b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x596e33ae61e1ca2a2a89826140a6769947d903c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bc94c212b1dd627b8064691df2edf7d982aea2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bf1eb597964a374f29c3ab57d8855d7b2dd6739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c9c4b9412e193d38374ef954d10c74dd4f1c9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60956137517cec3aec0569dfc56543990bc92e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x634667a0e0c6c6097a8838843521d7423bd562e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6aee755c302d8dadbd7fa37a91e60a2bb36f96c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6edf88dd71c9469e90540b1af740f052e99903ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f777ea4e6f447dc7e0b7845495df2153eebfe47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fc83f455c5471dc77b10e35f989667e3bb51308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x703e6f2de286acb5ceba711c6f6c3dcf27efbe3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71ee32e1ed3189773c952242b9d1ea3ce4dd2f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73c4af27cbb6018d11ed179f09870aed25574283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7470c1bb7e8200a1add0037fba5feb3182c4f5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7522e6ba131256358c5ce77c6a0668ce22c539ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75575be0a062d2ff6906997232dea549db98556d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76467bee2f4f7063100f01f59f9bf98a1983d74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x790837588dede1daaacd58a34a6bb9837872a963` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x794ea1625eaf3054435e156f76a612ad79d4f36a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7a0de9a006129a18ae8d3c4e609fa866ee29a5b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a838c7f7ef0ce75f6ea3fbcac8dd12a1b755298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7aa0e23ebf9fd342f3f4b1eb62636f74ca3d2825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7afb2c5123c18fc8ec890e5f962fd86de11a02b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7f0a733b03ec455cb340e0f6af736a13d8fbb851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x805a1ceb04677da5a7b4c20b15ae251535ca2a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80dce08b4228a41629ec5448933bbc4e0343eda7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81a7c8a564cbd4f9552468ce54bf3e6bcf7ffe7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81bb7c46ce61173697ef42d3c7177e4f03209f2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81ede44091b00ec867aee1d5d4aefe22d973f516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81f3be5a73a941a0cfca354e562431115a4cdffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82d36cb2472eaadfdaa5a237042879a03da49217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x830eb6b1c8476ef491c703d326b86c918eeb2ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8498ed98e95a833ccd246c4f0e29b64352707007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85a6513de4bc61e98df8c2ceefa9b9af78f89385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85f5c15ac6ce37e769ace77f9503c7bc0bdc7caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86a6d2ad5c3ef0c107df9e123f34775e271917ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89c046b55ee9c3667c27258e72e3507cbab2f23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b0f9f37fb0a84bb2964dca51ba20a6a2496801f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c915c8dda2bc10ab00d3701d33282a291655c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8dcbe2e93ec0fd8283fbd3a2dcfb092c7b8d9189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91ed56d16ca749c6ee0ec6a5c3693a5ce479137d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9353edf21d6c63fd9290662c41d1f98448b01c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93fe1dd0148a54ade8dd9dfaeaa2787b7a3da85d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9608c26063b006e9b118580e2e037ec15dccf28b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98497ec76f76a3aa40f80b77e1112589a3509ec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x992584ff7857e3c3731e6a63251cef5a245df486` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x9a493874b5e1fa9ec900a48d46c2791d894be454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ad6aef288cc6f83606bbd3235c46de31b4b0424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b2532ffe851bfc5d48139e972f207fbe5789b2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f9348b599e26f37b6042658ee3830fa5e0c6b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fc01bbf65b405f6aec3f3abae20c14517b5260a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2b38d3383fc28c4cef8370c9561c94b719ed6c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa389faa5396a3ec8eaa91b874135569480366798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa442e89052b74b89d72697043aa50be44fd7cea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4df79eb246150d33ccc6dc4773d543cbed6fda8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5d645f1b947a9f47dc3eda20aad9ccc70993237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6eedef39fbf8d57670b40086a8a23cb03b80247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa90d889d4f3bea7c18768acf1cc0dc92cc3f77ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa0b96faf1431e428223d9ffe1d9667d5f2ac451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa1504c878b158906b78a471fd6bdbf328688aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa8e054cdcba7b635f390949d66be382d9e0e95e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xac653ce27e04c6ac565fd87f18128ad33ca03ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac95a725de420528901e600e34ac6d447f571f71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaecd439a6bb5c7339361c8659870c08e8c43561e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf3481e9d0a825afea32216c1adc1ff74204aa9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0ddde4201fd99568888034d64f8fb2487279b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1160fa55ba9e91c17c6e12cb6cd3ef1ecd3f552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb23d6a535fa2764a042abb44e46e4fbde95a1930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7303d97b690c9205bfd689035bed4d7e035910f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc14a31a76b8b49a6600da33003a6dd2a90da2c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd598c9ac704284d3fa8f9dbb55b5433689877ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd71b233806e359acc60624b9e29c5f008b3d436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbee48a11a3e94da70e436d8147430ec1c5dcb645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1178641cedc00848d645e488f17e579994495f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc11bd6c6babd9e6279a4485e6494423d8d53230f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc39c57609bf885a388bc527f544a736dcae3e96f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7f6055c9294a5bf033ae7b1c7fb46bdacb3d14f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb46baaab0667615f3e90c3edd4ec7f021a5dca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc20695f08871466289a65673a818728e760a965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf62d922f1d396ba99fdeadd643fa9504f926910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0bf73565571948ee0a2d95482f4afa960ea8f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd323acc8c58ee38bd5855cd90573844a11657318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4e8812e46d7b37a370bf4213eee5e70cfc2e953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd651056941566b5376452d4b177b4a961f54d386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7145c97556b026d7276a78a63fd79d47bdef3e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7da1fe9fe5c339401640652374bd635313aa055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd88969070e9fda22d47c02a41154af52573ad881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda8023f5354be28677e519a76f16750b3ea22967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcf2e3c93802dc1efd958cc3e423d48419456cfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddc66b82bfeac163f096c5dd91fab099f382470a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddd64f470d3bf5125601ffcb008731bdf810c12d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xdf26b7bf6f059f0ef9524c8ad2a09ccfc4f27604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfb9f73fb56d5aacedf0d1d650a3614d21acfdeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe12afb807379b3f56ab5efde6c47dc21434ea7d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2957c35af821f4e75dd23c443f68d6929f20c63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe29bd1a7ff904b9ddaaf0a81e76895dc9adad536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe50e6e669ee4ac26caacf681d13bae961ca4c6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5d32358200c23dc5ac2cacc0eb6923e0d669952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecc23a13bfca5bfa6b2946b95ee8df6082036fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed072db10bc60e11d109958865e89fd10bffa696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed3b9003839f9b58d05bd2e13f8f33dbaf83a5f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee5dccc6c10fe2cfe546e10602c80956955c7db9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf153911d912de1f4fe576fbe4ab29c075d656b58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4dd1c9676e0eff4dbd3179d28bd84d42a0ea7ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5666b63aa51d96d1d8b6eb893ef54a8cb7ec019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf64b58c10c08ea8445415f924e2586e90f43becf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf80f7e8271070d201fc2ac3fd4230bf67ff31c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf83400e9cce0837730d6bdd4b5ef7f3a5d4c0772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd2ef5d42997d72a9831d15ac33a4299ae26b406` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242270 | `0xfd5b495d6ce1a98102a14a7443928fc1b31a200d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x0575f8738efda7f512e3654f277c77e80c7d2725` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x13f3d1b75caba433da82d8a72e4d75f66da30313` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x2b4618996fad3ee7bc9ba8c98969a8eaf01b5e20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x2e03284727ff6e50bb00577381059a11e5bb01de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x4e81dba135eb3e541c65ee811ec071eaecb531a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x53c153a0df7e050bbefbb70ee9632061f12795fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x5621ca989428cf105784164b84d500f4a6bec889` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x593ea5e7689a07ec1131a90f176ddd63c48725a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x78de9326792ce1d6eca0c978753c6953cdeedd73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-242261 | `0x7afca69dcd68a8b36764cce35b89a76450cca411` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x863130381c476a3dabcd6f287ab967fe4c3a7d13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x991152411a7b5a14a8cf0cdde8439435328070df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xb0aa3a0458bd85f859345e2251c7665c5f7a9d18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xbc2451aad349b6b43fd05f4f0cc327f8a6bca2d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xd27d38694aadb487aea67db70fcebb411a7ac3ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xeae39a03fb06b9a1f9540c5c15711ac67dd0e464` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xf195ee230ec8dd16d8e3d0572c28b81b3d70c1a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xf640259e4032ef4f7e0a1b7a14b2473373c0245c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xfd44ae75b934335262654600006e93594129caa9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xfedd479723b03350cff007fe0db19d1c6f179457` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | n/a | `0x3339e128fe4df4d80f2aa95ffda953b983815c4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | n/a | `0x7b649f38286231755ffccbe6c82e8d7529800ed4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | n/a | `0x9239ce2946e90adf4519cce82eeabf6ee3dc7d49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | n/a | `0xa565037058df44f336e01683e096cdde45cfe5c2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | n/a | `0xaa1504c878b158906b78a471fd6bdbf328688aeb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | n/a | `0xd96aee439e6e5b4f3544bf105eb78f3b8b6cd774` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | n/a | `0xe3c82a836ec85311a433fbd9486efaf4b1afbf48` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 175
- Live contracts: 0
- Unknown liveness contracts: 175
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=10, unverified unclassified=165

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0x1985cd7af3b410cfe87b59eaf8a0833816729c49` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| exact address book overlap | UnnamedContract<br>`0x2b4618996fad3ee7bc9ba8c98969a8eaf01b5e20` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| exact address book overlap | UnnamedContract<br>`0x3876720ef21cd7036b8a247a695cb82d5319e588` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| exact address book overlap | UnnamedContract<br>`0x4406d7cf208fcc3503bb23b4964a558d68a3cd70` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| exact address book overlap | UnnamedContract<br>`0x522650de53e79ead931e4eb3537b12d7fe06697d` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| exact address book overlap | UnnamedContract<br>`0x7a0de9a006129a18ae8d3c4e609fa866ee29a5b3` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| exact address book overlap | UnnamedContract<br>`0x7f0a733b03ec455cb340e0f6af736a13d8fbb851` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| exact address book overlap | UnnamedContract<br>`0x9a493874b5e1fa9ec900a48d46c2791d894be454` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| exact address book overlap | UnnamedContract<br>`0xdf26b7bf6f059f0ef9524c8ad2a09ccfc4f27604` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| exact address book overlap | UnnamedContract<br>`0xf153911d912de1f4fe576fbe4ab29c075d656b58` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0x00886ffc995daddd4ad888ab251bf594fff3baa6` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x012da12c0501cffc8389a32adebb15cdf31cd71d` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x031ebeec0f798045122e6bf5845860bdd752de6d` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x03abc3f20718051c29f447532b33c0adde3bc0bc` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x03eb1efed46b74e9a02c517ce9326647d6f822a2` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x04102fa87d1c62cf3f215ee7c07b20c530e0b26c` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x04a6e641027e1906cd745cf3128f5b3dbdf41ce6` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0x0598e8180d8df40318043fa5e349eb40b6873c5d` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x0837d5c8380a9194dee24a22d41f06f7f32a3529` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x08aa78b4ff51d82324ba9e1379bac55ac18bdc73` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x0a43b2e38814f0fb952109bea9281e74ec07ce7f` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x0b4d2a5c7a3a12e996fa1634a0ad488b8ce0edc7` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x0bbd4b40df35401b3887be72faa1d29db51f0edd` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x0c1127816975190470ecb49dcff70ce14070f604` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x0d4489e34b62c45e78fd554754aca97b4338125b` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x10b4722629d70b2515f90c88dde278ff48985cf2` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x1133839787c2dc349b6394d7b24db83887f7b7d0` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x1282fe78d092e6077b05fee27f239b49b2725978` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x14284621bcfbaf7e58283f9b3b27965797a64a65` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x150881921b1933b0a49991b921fbceb8a971a1e6` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x186fc4942e70e0c3f1aa82aab98e1defe945bb57` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x195875c9aecdedc9c1f2278cb2d49d4d64a24723` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x19b8bac2c9bd3cc4de0665e9868190e03b87d65e` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x1b50c067c5d539182a80a512c6c8b859ffb0cde6` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0x1c28ed6298016344c144756c3a41f84c3464b2ef` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x1e1a954d96ef2efa8b2f49f458182638253acad9` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x1e92ef8469de58dd9d608a4ebe85211a25ea698d` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x1edf8e38352860769b2def563382599b131cff4e` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0x1f1b7e2fc3b3d852a7abde8b788c298568b15efb` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0x208f1c8333ac840294a44eec56a053d445b59647` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x230d6db3cf56bf543d3bbbf22f10264283f7d751` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x23209f4390a3ad23bde41e8c82c17fbf24c843d0` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x24157b3e8676d991048fc9d3b8ade855a7182764` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x289f840ea297db4a3d2b0695a56c897da1d5b2be` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x297dede79b249edf27d1fec1f1e5b64a78b569eb` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x2fa41e8512372fed85c101fda7700e1a2afc0fe4` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x324023f9fc63e0c779db983bdb4c768581b732ac` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x3300fdb5cce4a8625b9bedcffcba412b3d252d0e` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x3339e128fe4df4d80f2aa95ffda953b983815c4e` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0x34fe37ca58d9814179f548ba39de485fcab3633e` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x368a15354eb6b2126104b4d8316fede05048b401` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0x39ad957c7e90c36cb36ea59a6cac977ace36ed70` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x3a3e88f26c455ee316702f393a0c59252a38aedd` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x3ab8981fabe3d7b8768a6f19eb80aac09ac988c8` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0x3e5f9476c33a307aaed374f03ae35da2e98c91d0` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x469940850c232ee6040a85298f13416cd7b918f1` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x46e34440ced0b55f38b662c7f8b142ac0c7d2d4d` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0x471ff10a810ce5a367042b55c56753cb1e385410` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x4783a377383e413a42fc2f4522fcce4a1d09a61f` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x4adc9b5aaafed932586a1b383f2f0f9ce3454c3a` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x4dd01687329c05ac9db46fefc5c6482e7175b378` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x4e92a784f0985caa59a4dec79bbf74a1223ce26b` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x4f19004b7012035d1ddd30795860e44d79a59bea` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0x5029cb7bb56caa8bbd192b059f1b6c3179fc1488` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x517ecb1bd66ca8853c4db671d660a62d011ba913` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x520390909c66d502fcc14ecb7254448c506e4a34` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0x549b69d8fd585398c59f62c0619562e027b1b96c` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x559c93cf64005dfda3e417e7c866a7f40f52c6c6` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0x55bf73afcf2622e979aee0831ac624b40c0dd297` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0x56d646c7731248cde7b6adce405df5fdcc12765d` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x573e7021733315a866bcbb449553ce320e7285bd` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x5905a00b032ccfe018ba1e4967093833437739b7` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x596e33ae61e1ca2a2a89826140a6769947d903c7` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x5bc94c212b1dd627b8064691df2edf7d982aea2f` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x5bf1eb597964a374f29c3ab57d8855d7b2dd6739` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x5c9c4b9412e193d38374ef954d10c74dd4f1c9d0` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x60956137517cec3aec0569dfc56543990bc92e33` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x634667a0e0c6c6097a8838843521d7423bd562e1` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x6aee755c302d8dadbd7fa37a91e60a2bb36f96c0` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x6edf88dd71c9469e90540b1af740f052e99903ab` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x6f777ea4e6f447dc7e0b7845495df2153eebfe47` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x6fc83f455c5471dc77b10e35f989667e3bb51308` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x703e6f2de286acb5ceba711c6f6c3dcf27efbe3c` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0x71ee32e1ed3189773c952242b9d1ea3ce4dd2f46` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x73c4af27cbb6018d11ed179f09870aed25574283` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x7470c1bb7e8200a1add0037fba5feb3182c4f5a6` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x7522e6ba131256358c5ce77c6a0668ce22c539ab` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x75575be0a062d2ff6906997232dea549db98556d` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x76467bee2f4f7063100f01f59f9bf98a1983d74b` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x790837588dede1daaacd58a34a6bb9837872a963` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x794ea1625eaf3054435e156f76a612ad79d4f36a` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x7a838c7f7ef0ce75f6ea3fbcac8dd12a1b755298` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x7aa0e23ebf9fd342f3f4b1eb62636f74ca3d2825` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x7afb2c5123c18fc8ec890e5f962fd86de11a02b1` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x805a1ceb04677da5a7b4c20b15ae251535ca2a04` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x80dce08b4228a41629ec5448933bbc4e0343eda7` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x81a7c8a564cbd4f9552468ce54bf3e6bcf7ffe7e` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x81bb7c46ce61173697ef42d3c7177e4f03209f2f` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x81ede44091b00ec867aee1d5d4aefe22d973f516` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x81f3be5a73a941a0cfca354e562431115a4cdffd` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x82d36cb2472eaadfdaa5a237042879a03da49217` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x830eb6b1c8476ef491c703d326b86c918eeb2ad5` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x8498ed98e95a833ccd246c4f0e29b64352707007` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x85a6513de4bc61e98df8c2ceefa9b9af78f89385` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x85f5c15ac6ce37e769ace77f9503c7bc0bdc7caf` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x86a6d2ad5c3ef0c107df9e123f34775e271917ce` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x89c046b55ee9c3667c27258e72e3507cbab2f23d` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x8b0f9f37fb0a84bb2964dca51ba20a6a2496801f` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x8c915c8dda2bc10ab00d3701d33282a291655c24` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x8dcbe2e93ec0fd8283fbd3a2dcfb092c7b8d9189` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x91ed56d16ca749c6ee0ec6a5c3693a5ce479137d` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x9353edf21d6c63fd9290662c41d1f98448b01c47` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x93fe1dd0148a54ade8dd9dfaeaa2787b7a3da85d` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x9608c26063b006e9b118580e2e037ec15dccf28b` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x98497ec76f76a3aa40f80b77e1112589a3509ec2` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x992584ff7857e3c3731e6a63251cef5a245df486` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x9ad6aef288cc6f83606bbd3235c46de31b4b0424` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x9b2532ffe851bfc5d48139e972f207fbe5789b2c` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x9f9348b599e26f37b6042658ee3830fa5e0c6b9a` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0x9fc01bbf65b405f6aec3f3abae20c14517b5260a` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xa2b38d3383fc28c4cef8370c9561c94b719ed6c9` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xa389faa5396a3ec8eaa91b874135569480366798` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xa442e89052b74b89d72697043aa50be44fd7cea8` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xa4df79eb246150d33ccc6dc4773d543cbed6fda8` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xa5d645f1b947a9f47dc3eda20aad9ccc70993237` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xa6eedef39fbf8d57670b40086a8a23cb03b80247` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xa90d889d4f3bea7c18768acf1cc0dc92cc3f77ed` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xaa0b96faf1431e428223d9ffe1d9667d5f2ac451` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xaa1504c878b158906b78a471fd6bdbf328688aeb` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0xaa8e054cdcba7b635f390949d66be382d9e0e95e` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xac95a725de420528901e600e34ac6d447f571f71` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xaecd439a6bb5c7339361c8659870c08e8c43561e` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xaf3481e9d0a825afea32216c1adc1ff74204aa9f` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xb0ddde4201fd99568888034d64f8fb2487279b97` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xb1160fa55ba9e91c17c6e12cb6cd3ef1ecd3f552` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xb23d6a535fa2764a042abb44e46e4fbde95a1930` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xb7303d97b690c9205bfd689035bed4d7e035910f` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xbc14a31a76b8b49a6600da33003a6dd2a90da2c1` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xbd598c9ac704284d3fa8f9dbb55b5433689877ea` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xbd71b233806e359acc60624b9e29c5f008b3d436` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xbee48a11a3e94da70e436d8147430ec1c5dcb645` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xc1178641cedc00848d645e488f17e579994495f7` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xc11bd6c6babd9e6279a4485e6494423d8d53230f` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xc39c57609bf885a388bc527f544a736dcae3e96f` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xc7f6055c9294a5bf033ae7b1c7fb46bdacb3d14f` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xcb46baaab0667615f3e90c3edd4ec7f021a5dca1` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0xcc20695f08871466289a65673a818728e760a965` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xcf62d922f1d396ba99fdeadd643fa9504f926910` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xd0bf73565571948ee0a2d95482f4afa960ea8f4e` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xd323acc8c58ee38bd5855cd90573844a11657318` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xd4e8812e46d7b37a370bf4213eee5e70cfc2e953` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xd651056941566b5376452d4b177b4a961f54d386` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0xd7145c97556b026d7276a78a63fd79d47bdef3e8` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xd7da1fe9fe5c339401640652374bd635313aa055` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xd88969070e9fda22d47c02a41154af52573ad881` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xda8023f5354be28677e519a76f16750b3ea22967` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xdcf2e3c93802dc1efd958cc3e423d48419456cfa` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xddc66b82bfeac163f096c5dd91fab099f382470a` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xddd64f470d3bf5125601ffcb008731bdf810c12d` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xdfb9f73fb56d5aacedf0d1d650a3614d21acfdeb` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0xe12afb807379b3f56ab5efde6c47dc21434ea7d4` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xe2957c35af821f4e75dd23c443f68d6929f20c63` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xe29bd1a7ff904b9ddaaf0a81e76895dc9adad536` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xe50e6e669ee4ac26caacf681d13bae961ca4c6f8` | non_address_book | unknown | unknown | unverified | n/a | `0x2e8993d354b64311868e246d17e8e361404eebcb` |
| unverified unclassified | UnnamedContract<br>`0xe5d32358200c23dc5ac2cacc0eb6923e0d669952` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xecc23a13bfca5bfa6b2946b95ee8df6082036fdd` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xed072db10bc60e11d109958865e89fd10bffa696` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xed3b9003839f9b58d05bd2e13f8f33dbaf83a5f8` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xee5dccc6c10fe2cfe546e10602c80956955c7db9` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xf4dd1c9676e0eff4dbd3179d28bd84d42a0ea7ea` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xf5666b63aa51d96d1d8b6eb893ef54a8cb7ec019` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xf64b58c10c08ea8445415f924e2586e90f43becf` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xf80f7e8271070d201fc2ac3fd4230bf67ff31c76` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xf83400e9cce0837730d6bdd4b5ef7f3a5d4c0772` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |
| unverified unclassified | UnnamedContract<br>`0xfd2ef5d42997d72a9831d15ac33a4299ae26b406` | non_address_book | unknown | unknown | unverified | n/a | `0x2692ea996bcd6e36f40389015f7e6d2223dd3b76` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Certik HyperJump Audit: <>](https://skynet.certik.com/projects/hyperjump) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Diving in to the Certik Audit of HyperJump](https://hyperjumpfi.medium.com/diving-in-to-the-certik-audit-of-hyperjump-b7ae6bb5d5bb) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [- [Audit]()](https://hyperjump.gitbook.io/hyperguides/security/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20519] Certik HyperJump Audit: <> — no match: The document is a CertiK Skynet project insight page, not a formal audit report. It mentions an audit delivered on 5/26/2021 but does not list specific contracts in scope. No contract names are identifiable.
- [20520] Diving in to the Certik Audit of HyperJump — no match: The document is a blog post summarizing a Certik audit, but it does not list specific contract names, file paths, or a scope section. Only finding codes (e.g., HBH-07, HCH-11) are mentioned, which are not contract names.
- [20521] - [Audit]() — no match: The provided text is a general description of auditing and a reference to a Certik audit, but does not contain the actual audit report with a scope section or contract names.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x5ef5994fa33ff4eb6c82d51ee1dc145c546065bd` | HyperAlloy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x03d6bd3d48f956d783456695698c407a46ecd54d` | HyperBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4f1818ff649498a2441ae1ad29ccf55a8e1c6250` | HyperCity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 206 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=3
- Match method counts: n/a

Zero-match audit list:

- [20519] Certik HyperJump Audit: <>
- [20520] Diving in to the Certik Audit of HyperJump
- [20521] - [Audit]()

Fork inheritance lineage and inherited audits are included when available.
