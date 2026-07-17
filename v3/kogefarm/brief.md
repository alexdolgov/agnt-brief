# Agentic Audit Brief: Kogefarm

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Kogefarm (`kogefarm`)
- Website: [https://kogefarm.io](https://kogefarm.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: fantom, kava, moonriver, polygon
- Contract surface: 168 unique implementations (229 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $131,336.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Kogefarm. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across polygon. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: ownable (2), erc20 (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Koge (`0x13748d548d95d78a3c83fe3f32604b4796cffa23`, chain 137)
- MasterChef (`0x6275518a63e891b1bc54feebbb5333776e32fabd`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 166 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 168 unique; 166 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 152
- Unique implementations: 168
- Raw deployments: 229
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FishMATICJar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2bb510a979fe3f277636a94b86fa304c6631581c` | ⚠️ Unaudited |
| GajUSDCJar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4929f3d8934640fd93a21e89cd22ddb4b2aff8c1` | ⚠️ Unaudited |
| IronUsdcQuickBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x2a40f363b1ad5cd14e433a7b4c43a9e67c841dc9`; polygon `0x3fae5e941b7eb3a7bee94399bf669224efa9432c`; polygon `0x43f71565f99073903cfa0e072345f8a05e0b0ca4`; polygon `0x72812112d635873f5fef2b0bcab22cc5bba2e0dd` | ⚠️ Unaudited |
| Koge | unknown | project_anchor | own_supporting | 0 | polygon | unit-388374 | `0x13748d548d95d78a3c83fe3f32604b4796cffa23` | ⚠️ Unaudited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | polygon | unit-388375 | `0x6275518a63e891b1bc54feebbb5333776e32fabd` | ⚠️ Unaudited |
| MasterChefFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x1db0c172de5c7575268f1e50b882da74e6d3d341`; polygon `0x6a82fde3033a969cf1ece48d76aa942e9fc567db` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3bdeae3a0db5db37f260fed77438af91729573b2` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9b80986470daaac7aa24fc36788b74e92cfd8c3` | ⚠️ Unaudited |
| StrategyBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 11 deployments: polygon `0x04599efee416e11776c98a9fe82ed37a437b075b`; polygon `0x0fb94059b7c0f3f1dace85ce312f2523973e5c4c`; polygon `0x1931684cb9f178e8079f418e0089ecf82049e91c`; polygon `0x344e551bedc6149f1a4830edf1a4cefa830db573`; polygon `0x3885c0f49aca99e74789dc04e5ff06bb1e12b3e3`; polygon `0x4c5b8745a6169707e349501b1604e0d8e9e564c2`; polygon `0x5d29d97aa45bdae4ebf71242df6ebba7917280ae`; polygon `0x61321cbee1a0a255fc708cd517826e7cfbf89660`; polygon `0x64ba8db8c5ff6ca13eb1ebeea9553321255453d5`; polygon `0x64c17988992ee06088631efa021a8841cfb4f39f`; polygon `0x65cc7818986a6f089608c4eb12fc50706e52deb7` | ⚠️ Unaudited |
| StrategyGajMatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c42f8224e16b40d79beb775bf1df1a63967fc7c` | ⚠️ Unaudited |
| StrategyGajUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x005d1d02e396d4b47dd92e3c068a6cec153238cd` | ⚠️ Unaudited |
| StrategyIron | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x31645aefbcf37127f511b7bd9a7bfda7427aef8e` | ⚠️ Unaudited |
| StrategySingle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 9 deployments: polygon `0x1b4c5aaeb74150f2aa25645a5cf676259e0148e9`; polygon `0x1be31ca4d4c47b7728e180813264d770ae841aea`; polygon `0x33d9d921e0a040b50523b246488566fd41357c8b`; polygon `0x4f624dc3100d585585d3f74778a2e9e20d3e456e`; polygon `0x5161c705b68e0da0d6fc6ba4cbb4da27781e409a`; polygon `0x587a50436b97f2278abc01e00180539ee98fe415`; polygon `0x684c18d5d19f9d5c1b092df6dae69a646161f2fd`; polygon `0x75a5da53f3df2729ad2c137f08cb66a709c55fcd`; polygon `0x78a714e456f6466530d0d7d882a8a3a922849fdd` | ⚠️ Unaudited |
| StrategyTwoAssets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x29604a9144473eaaeb9b6392d2e0665b7334cc15`; polygon `0x383fa10f0b4d1ced03ba4adbca839ad2c88fd960`; polygon `0x3a3fdfd40b1e1cdb2b4edd605186eaa204df772d`; polygon `0x5d72ed9826ab718fd4157262515366746f7a720e`; polygon `0x72cd377b8de328de1630c36e6953b9b0cd734a84` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3885503aef5e929fcb7035fbdca87239651c8154` | ⚠️ Unaudited |
| vaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 36 deployments: polygon `0x0379b4456fd47b4334b5cba7b3ea19025eac5fd5`; polygon `0x055d2f068336f05a6f2b02e5472905d67ff23c21`; polygon `0x05d83f3ef95f921971763b035c00298bc42ff008`; polygon `0x0a3a2e46e3edcb63977d39eefc842b30698bbd12`; polygon `0x0be469de6635a71a07df915d65d5f08fb4ac007f`; polygon `0x0ef967559fb9a94f8ecd305096e8387eefb01f23`; polygon `0x11f75ef77f15effd7ad72f99fc5c5ab4e97e8acc`; polygon `0x12977edf05a6718036f4ecc9be2d26366a97b96b`; polygon `0x12ecd8d297c7695a58a41676a8e442c934243cbf`; polygon `0x17051bb60771888bc908b6946f4fb7850042fe1d`; polygon `0x1f98d8bf1cd7602b63d7a90e443e06263124d081`; polygon `0x24dbf973cc3fe6357cab6394d94781784a55d930`; polygon `0x28e9f150217ddb53a29633432ce907e791a70583`; polygon `0x2b0382a8b884641de827794243c1b20e4fb9b0a2`; polygon `0x2d03892d0fae4479ae2b0d945f67675f006f7271`; polygon `0x2f3e17b34a79f4990153ee5588ac04724e773c6e`; polygon `0x32219c86b0317601ea4ced7586a278ac89b465eb`; polygon `0x37578a076b7faa63280e1fd4b2113fdcb9814420`; polygon `0x3c928f0ee37bafeb6e90d835e7000ef533a09472`; polygon `0x3cea052826e6c51cf14681708db0f9e7287cec0e`; polygon `0x42b2ff05e8cf13e046bbdc50121620e7cb641ee3`; polygon `0x49a0c6951de1376180dd876c9306b04fcb3b6a17`; polygon `0x510d776fea6469531f8be69e669e553c0de69621`; polygon `0x54507ee8e18fb6d7e4771a6619b04a84635bff4b`; polygon `0x55c08f4f053170009010cf7435064d5e0e6905e3`; polygon `0x58201c1331bf7f36ed326af0789a33851019875b`; polygon `0x58c12402428ca79da43bf14b70cbc59df5dfe61a`; polygon `0x58fe96934a595df1c03bdda09f0fdba38063770b`; polygon `0x5ab24ba8183da4d0e050fd00257de291cdd17a89`; polygon `0x6726775952de79b66c2340fcb4dd1cb3d48944e5`; polygon `0x780c1f8054051e2f003b5f8d52ab2e8634d902a3`; polygon `0x7a9be7cdf26c8311625ed97c174869fca9b791ec`; polygon `0x992ae1912ce6b608e0c0d2bf66259ab1ae62a657`; polygon `0xbfad80456c71be0fde53ecd623605662cf808e53`; polygon `0xe5b7402d8ccae02d3baa65140a50b26f876cec8b`; polygon `0xf457000d481df3c486dfd38d8fa0c4fc949a6bbe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (152)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02bc4f42b998fc23355c780a756446d9998d78de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x036aa08b29b29955f76708a4efe551a7e6ecdc0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x055f6e9772bf88d3c18bddf1fefa41657da21983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a5e266afb071cb0f69310706154f2893a208d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d473ce1bbed034eae96e0855a4ceca93344cbca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x150504edb7c8aa717d731b37c8686d5e4018192e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x175ccef2082380e700a7fbdb5c564e59e0d8c490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b15dcb7dc4ac930d10746ba9423464b2fc56b24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c5fceedff4ad22f86b67ae53b5e737f13bf662d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f4124500d27ed6a3f637f51ff7f2a648bcbb5fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1fa43cd5b5ba91e9e14d48d93910e48721f8580c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1fbe0086499b187715985928c31e1262d8ed7df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x248d6ef40059d0fa3cec68c7ac52f5e13264c2fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x25ae4578add490d8ee2b16c762f6713bbf7626cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x266b88cb117d500b4061e793a3137ae24759d448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28c5749f66fd89983f97a242e0ced73b04a08b45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38a4ec6d6785f7470e2ad64783a58b1d04e7b263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ccb87cd0c8a832eefcfdb403134b85fca58019d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3edf01c929552d86f9296cde4af4551f25102c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x440f602eb2fef0da26042f80c53ad289f6185f64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x47026b9989329d120a645c11ac13df37c031e439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a4efa4909d9d5eb7aec43e038915dc1853d7cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b21b85f01502a88b4a5a2fc27918393a329f718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5bdc94c7b323bf64954cf7fc0d9ddc53621e72a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6c3c05f52b7103c1bede6c3454478b4fab8d751a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6cb10b76ee6600e0b030fd7f6f4e179dffe4092a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7846a5e6615960a1599ea6f8e3992886d0b690f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78bc87fc0ea164cf64e80c7c69ebfaf3a35fcb97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78ed10b2742bbfa8c7955345e4b8b1b93be20558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x79578e8ed06e9b38b522d60717710fbbe729bf1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a0333e059ad4492b5db187aa7047204a0bf53ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a412e9611242177e56f346dd038b78246b99db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b12644f3d6ec3dbaa78432718eb6ee8b06fbb53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b21b49c6d374b4caee3b5fd8942d79e7f800a78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b87e4f73bcf2e9ae24b2f32f22648d841f2607d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7db3a8fda64bdb4c290b7b45c6caaa16dbcdd270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f9fc5ba0c2d213c9eee7940fefa1a7a297b2320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x82e553b4b645a195bea0e6c78c05483a07cf6116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x846c27ec821f67a9177c56f0ca6fec4cfc5e5c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8488e2f70055fdc2acdf511be789aeb93ae0b1b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x85a4f9591938b68b08b197d2b1ae3c3e3b2bcac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x86da4681509b170ad1b9619e26d77b236385443a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88a60dec5e6e4a2fe09a8dcfee64e0f768fa06bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a1044b404172fdfe3a35a1b76e532bf25431994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a8c784dde052de731a4477bb95b4f594f5b9bc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b9c797dbcfad409747962d1fe4718a9660db94b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8bb39beecf8b5d0560c813e56860f5d35a7312ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90e2293376a18211ae307f6a6b880490498bdacc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x918b7068672df173d685fa580701bb5115b04bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93b709ae83e59682edb5e4869cfd5b836dd1976d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x95ad05b40e79e78053360a7656d4e4bbf90df6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x962c3b1c9190f90a80ab69e87e059990b57e4dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x970ac164935461746c89961858bea1728822aa96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97789a4619c093faaa0d8bd729464193c6a99e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97b0262670f3f640a6be287f403302e2285f5a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97f27fc4d54d0002e800f484f25037a0a00d1345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9961f4a06cc1fdb826b204b8d7b87d3b8aa7ae49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x99d41644b80a9c44715e263f61387a9351901647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a48219d7b3106baad3f5d6cf50d94f1cf747c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9adeb15b242d7382fff1b8447c6afb0ba55634a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c347d804429bc37d65e56aa6c5a07cb8e0edabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c576f637ba2e7ca363feb522592766e6cb34cca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c66b4add6d601c5a6f8849e5fff24001d504655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d78128f12de489352668b41709d956830a3b4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9dfdbf4f0ed65b6a88f086d2380d269641453cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f21f57f8bb17bc12757f3f37b40ee763c10fd7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9fe7994b82797eae8a1fddd90aeccdb15a59a021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa097ac524db214ea5ee9542578748978d166926b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa104c9aad3ee07676d23159282124dcd3f542c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa241d8e297e95badede8579b3bd1dcd18be2dd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa32de2a04f68a17f6289105ce98baaa97f415309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa344053479abc2f457f02b62a434ed07b29e9bac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa41b050404332af83aef51b0eeb0d8872272417c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa89414dd5e57b896a3b20137d36b46a3af12066a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa981fce675d365557c325232881c001f8aa3c6ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaa5237ff567987445e1ac35d5148c11ef3703173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaadd72fa47284ae53f67f2b769566fcd8fd3aeba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad547dd385c5cc923f9a0d107f06ebb60ba2b21b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaddabe5a8ff9d6efd51461734b917329c946dc72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xadeab5e15c09c5f35b9a6ece204c5abd51fbb1fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae3bdcf55fe53408ec4ad07480368e04c795575d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae426d5e4034d1ffba0e3af7a34495ecc588ae95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae48acc701151061a5bfff8e4c3f0dcfe4a957e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb02d3afe88a5ed89d5ba334a18c9044ff2381445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0c26ce1eecb503dcc488163853332ff61f2f6df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb131089e899a6f2e7726b83b85c32bbe097b138b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb159b942d2d2f3855d200eb194f810d0af426257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1d3857e4435199cd6bae09f6eca346355bdbe12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1dc0486ea7d41b6cde43267ea4b896b17827b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2026e662fc2ee847aeba83fa5f0c5b6ebb4f9bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb33576835cc51ef8d71ccb861775b2821470bb71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb491979cb7771ca7566d9c81c8183a53b947ea47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb496f3b180919248ebe1252ec29de0b14f99e697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5f4c152870b39bd7e300d4bcdff1ecc0c6426c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb6dfcc4d1ab179d981f00eeace677973ed6a3c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb9a4d32a547a4865e5247d611de7f3d7f3b2d378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbac4fc975561c31f2fd2ed22e48855c1957e5cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbc036a0c3f0bfd81bd1e1708f5005a3ed9ce771a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbdb501edd5b3c26746ba9b3ef2e64e805ccdc61a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc0c776e73d5af5f0879563908036546b5b60703e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc22f98618320e4d47b2893740070a98dc1cc3516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2386546a9710c00a0383d896a861154d45dac94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc47479bdec23fa3661a15398a139908c834ac589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4f9efd0cf62ddef06581e0def84a3783ba60d9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc548352aeb28af9eba82dd5ad9965d7be6f0a912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc76572e6d148d95f3c23c70e5db29554b88c33aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc5eeb64dd0bccfa51c048575f1f8457f782a07b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xceaba5d0486feae3c2d5cebe46f04f81a9a8118a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf0a5c28c99f48b44420cd2cec56249e867c1806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1807eb605a2ec13b2ede875536a89b1e07efb80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1fdfb2be4fd5e7ee5b9d6e91538b2cf073b8aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd2056dd1cba4eb4580d6d4886fa757c1a84fc71e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd266268782c10d2999c56d1f643a3531886769a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd26b6b9dc91de80079d352dc235fccdf418a2fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd40775038b8ed30ad8ce754f716e5c2701845a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4d8ba0fe0e21a5cc686397869b4c1ff92dfc8ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd69ff9b272e38a94350626850368c0fba5ca705b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd73a3c12cbbbf3960ca7089f246ea91e9a22a753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd76958342e87455df271988f0d7e38f7cb872347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd78223162063b67f3e6783db32cc2e7a6c891e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9aca87c77b4b9126bdaa25584d0aaa23b53c861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9c804fd586f355eabe60506f8dd218d4711e2ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb382885cfd2a2fd2e2c3d4d6964c8a8b17c0f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdd6f1c031d53ae5ef77888806285f937a905d6b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf47221a2240754245dd3b88e01100c0d1d85aa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1123d7e329b78b95889f50a711a7ca46cff6521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1a9ab14b4c0efa25a1ee6f1348ef4c34418c258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe2084688c1c3df704c5533eb8d3dfa0492d90c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3f2aa03d4826fd1124603552543a599a465f407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe42fdde0d202b892c4c234fe01d259ba604f581e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4b488eb428aa7393663e7c8e0a10c44321fa19c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe60ff9b586e645f80cd761890f0c548b512a55b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe6b896baa491eb2695ec5f5ead35b473ea1386fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe80d7246ecd89cb8707001c61f652b90eea0dbc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8f57c74b6e8712c9715263b91bf19a4190616c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe92f4cc69e43ec88a4f7e17d1e19b99bc130e571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe967b0b12d8eb23c91b1ad776487c3639c4ffb91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea2f645691d114f0a7fa7a759032f8c6f90d58d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeadcb0469f05fa07d4f5178fc762c5c872b6d9c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb0181e444eda912b8fad222bf9d35fde2d8f0c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb13036d00994559630405e688ea120e00f41fe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xecaad0a58633c8df3639ca27b06237243ed90edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xedcedd8c53b4f7f65d82d4ed8394192119f8a05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0280811710f45808b2da5e4078bb722cb3c54ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0db902352dfe1eaf8deb2a2eb5c760568821f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf214ecc139f32783c815e783772a46258790a691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4fb31b3925c81f4dfe0406ff6d84598bc215bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6cf9a3cb64c97d6278a57fa322d9945aa42e417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf76cd9abd77ce5f0d205671f5bce839f4e9192d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf94a2f937904842c04d3bc6fcffd523dfa3b263f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9a86631e0b00f40a93b4575f2c90629b0083a75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc29b3a59aaa6f1bc138ba17ef80ad5ba13d53de` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Kogefarm.pdf](https://github.com/Tibereum/obelisk-audits/blob/main/Kogefarm.pdf) | unknown | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [paladinsec.co/projects/kogefarm](https://paladinsec.co/projects/kogefarm) | Paladin | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13354] Kogefarm.pdf — no match: No reason recorded
- [13357] paladinsec.co/projects/kogefarm — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Kogefarm.pdf | StrategyBase | unmatched — not counted | — | — | no |
| Kogefarm.pdf | StrategyFarmTwoAssets | unmatched — not counted | — | — | no |
| Kogefarm.pdf | StrategyIronBase | unmatched — not counted | — | — | no |
| Kogefarm.pdf | StrategySingle | unmatched — not counted | — | — | no |
| Kogefarm.pdf | strategyBase | unmatched — not counted | — | — | no |
| Kogefarm.pdf | strategySingleAssets | unmatched — not counted | — | — | no |
| Kogefarm.pdf | strategyTwoAssets | unmatched — not counted | — | — | no |
| Kogefarm.pdf | vaultBase | unmatched — not counted | — | — | no |
| paladinsec.co/projects/kogefarm | BIStrategyDependency | unmatched — not counted | — | — | no |
| paladinsec.co/projects/kogefarm | BaseStrategyMasterChef | unmatched — not counted | — | — | no |
| paladinsec.co/projects/kogefarm | StrategyFarmTwoAssets | unmatched — not counted | — | — | no |
| paladinsec.co/projects/kogefarm | StrategyTwoAssets | unmatched — not counted | — | — | no |
| paladinsec.co/projects/kogefarm | strategyBase | unmatched — not counted | — | — | no |
| paladinsec.co/projects/kogefarm | vaultBase | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x13748d548d95d78a3c83fe3f32604b4796cffa23` | Koge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6275518a63e891b1bc54feebbb5333776e32fabd` | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 152 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13354] Kogefarm.pdf
- [13357] paladinsec.co/projects/kogefarm

Fork inheritance lineage and inherited audits are included when available.
