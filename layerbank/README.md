# Agentic Audit Brief: LayerBank

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: LayerBank (`layerbank`)
- Website: [https://layerbank.finance](https://layerbank.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: b2, bitlayer, bob, bsc, hemi, linea, manta-pacific, mode, scroll
- Contract surface: 301 unique implementations (396 raw deployments)
- Coverage basis: 0/87 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,032,193.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for LayerBank. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 87 contract row(s) across b2, bitlayer, bob, bsc, hemi, linea, manta-pacific, mode, scroll. Structural roles: 51 core, 25 unclassified, 11 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 87
- Structural roles: core (51), unclassified (25), supporting (11)
- Contract kinds: contract (86), abstract (1)
- Detected standards: ownable (36), erc20 (23), pausable (10)
- Frameworks: openzeppelin (36)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 172 contracts are derived from known codebases. 172 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1dfa1a1a9e746796834eea85d714801b2dfb87ff`, chain 223)
- UnnamedContract (`0x438845c18b1358835eb327fb72189d526bed454d`, chain 223)
- UnnamedContract (`0x53bda0574be207745f5ce72706f4ddf59f0d6139`, chain 223)
- UnnamedContract (`0x5478caa24512e4865fc494b3996d319387f3ed58`, chain 223)
- UnnamedContract (`0x636f71d82d46addf37e63bd6494af98cc8739dc3`, chain 223)
- UnnamedContract (`0x67016362527a13850fe7775b818777a930b5a3a2`, chain 223)
- UnnamedContract (`0x72f7a8eb9f83de366ae166dc50f16074076c3ea6`, chain 223)
- UnnamedContract (`0x8b03af6ca293fee5a64497b8d50a5186a5becaa9`, chain 223)
- UnnamedContract (`0x98d685cddbc099e07a605483763dab9a2dae4307`, chain 223)
- UnnamedContract (`0xa692556548186e0bb2fed372a021f468591a9a03`, chain 223)
- UnnamedContract (`0xa9be5906974698a9c743e881b0acc2954399ff2a`, chain 223)
- UnnamedContract (`0xaac19657558dcf4b3724231ac790fd22a6dd5bed`, chain 223)
- UnnamedContract (`0xe2417cce3fd8c01f929c9d3a5b6dfeab3faa4ff2`, chain 223)
- UnnamedContract (`0xeb58c2b3bfd28a5f3bd94854ad493b3118cdf698`, chain 223)
- UnnamedContract (`0x7c57dba8512e2ebeeac37aa65f51256b9326cc4d`, chain 34443)
- UnnamedContract (`0xbd9edf764bc1f219c124ad5cfa7084bbed124aa8`, chain 34443)
- UnnamedContract (`0x16b3a05f1adaca8f028aad7c5b0475cc512a0619`, chain 43111)
- UnnamedContract (`0x1e34282b1048d0675b13c191a0a75e3d809ecf9d`, chain 43111)
- UnnamedContract (`0x23155b16f818409d33c934aa7d3873aaa6a4c10b`, chain 43111)
- UnnamedContract (`0x3a7232bfc55a680a72929925fa82c40b2eb8ba3b`, chain 43111)
- UnnamedContract (`0x46adc4bcd803821ae3b30da7533bde2d72236697`, chain 43111)
- UnnamedContract (`0x5a8c91f3e5dac6992e0faecbc2e954321f67c96d`, chain 43111)
- UnnamedContract (`0x6d91994d261c0fc362a59e78ff12c90f408d543a`, chain 43111)
- UnnamedContract (`0x7990937bb8c0c3f13fa89bd17f66f89917554087`, chain 43111)
- UnnamedContract (`0x79b7a65ea1bf58a84b69ec3daa6f0ca05cfe2623`, chain 43111)
- UnnamedContract (`0x79ce458476f27373b446b6dfd8ca0ed07dc80713`, chain 43111)
- UnnamedContract (`0x7aa826763bc44385c0eebc0ad6575cf67783315b`, chain 43111)
- UnnamedContract (`0x8edd7f8532c466f6751ec2e1f0b35020104a9b87`, chain 43111)
- UnnamedContract (`0x92ce82ab8ae3648f03ccfd16d7a7ae8ca4911bba`, chain 43111)
- UnnamedContract (`0x9a52655b2e41b93aff924d5af7cd243d037dcab6`, chain 43111)
- UnnamedContract (`0x9e3603937b3ccd8cf60843e405d222fa35ac36fc`, chain 43111)
- UnnamedContract (`0xa6bbbae25277a10f2258384c114920a4712d4798`, chain 43111)
- UnnamedContract (`0xb30a18834fd11baf0f58a02820cff00e2d601759`, chain 43111)
- UnnamedContract (`0xeaf3ba0dad9f63c05e8db834bfd15ac3585613cb`, chain 43111)
- UnnamedContract (`0xed0d42687ad5b302db8953ddb6c4156b8d84a581`, chain 43111)
- UnnamedContract (`0xf676ba00b0a2cdfe70a25647da82184882475990`, chain 43111)
- UnnamedContract (`0xf930785cb93d2ab6e483015aee6442b59566b0fb`, chain 43111)
- UnnamedContract (`0xfa20b04e1c992648cc5f59a067720bbca287b2b0`, chain 43111)
- UnnamedContract (`0x037598b71a8f27443be8e352a67f7f73c70ea423`, chain 60808)
- UnnamedContract (`0x043962844e12555968777722e6ed2714c1851475`, chain 60808)
- UnnamedContract (`0x0c1f45adc1fc37ea2d47c2feb0a7e60671115fa4`, chain 60808)
- UnnamedContract (`0x1097cc6f09cc0731e596d91d8b3b50de331cb5a7`, chain 60808)
- UnnamedContract (`0x151d54da06751c876308adc0b10a92fe2824c8f9`, chain 60808)
- UnnamedContract (`0x462ebb8395b6c08661b3d9f0ca8819527bcf3db3`, chain 60808)
- UnnamedContract (`0x51aca2cd4355227beae20a8a0a7e30b8f85caa98`, chain 60808)
- UnnamedContract (`0x626fbec20d6a9fde562f512f0d6ea7f9f923e27c`, chain 60808)
- UnnamedContract (`0x6bc3edeee5d182cd4d5d5b26f54fdda0fab2b5d1`, chain 60808)
- UnnamedContract (`0x77cabfd057bd7c81c011059f1bf74ec1fbeda971`, chain 60808)
- UnnamedContract (`0x7851b2f6287e79faf76f67a0dad6846292983e0b`, chain 60808)
- UnnamedContract (`0xbd00e7923775c781d1bf0cae4e0de8efe8b60ccb`, chain 60808)
- UnnamedContract (`0xc8485b4b7899e75149c74c18798b0cc3487cab37`, chain 60808)
- UnnamedContract (`0xce584875a584485bff208a4fc2c70cb7e98f98c3`, chain 60808)
- UnnamedContract (`0xd855eef2d22a96b65e38a1cb8079dfc70bd971f2`, chain 60808)
- UnnamedContract (`0xdabeb9602f1e0b112136675069016f79eeda8e59`, chain 60808)
- UnnamedContract (`0xe714576aba1d46f54bd00ceb04c4b9c384e054ea`, chain 60808)
- UnnamedContract (`0xf30e2dd11128fd745c235b2f59bf56e16d6d87db`, chain 60808)
- UnnamedContract (`0x04a4697415147a400a45b913ef6098aa7561c544`, chain 200901)
- UnnamedContract (`0x1471b4fac13d42f3447fba145bdfe95c6e7e7540`, chain 200901)
- UnnamedContract (`0x674e1db2e343ee704fc783529ba0050432d690d8`, chain 200901)
- UnnamedContract (`0x72cb37bd7fb84f4edef4ca1947d2cefdcf067a47`, chain 200901)
- UnnamedContract (`0x8269390d7496678c5dc56d18c31c052b12e632b4`, chain 200901)
- UnnamedContract (`0x870c1a416872841f0d2b70a3eed3cb92065e5a07`, chain 200901)
- UnnamedContract (`0x8dbffa0881ca4f5bfe7c36451c6a2ccf2a1b0316`, chain 200901)
- UnnamedContract (`0xc876cd18c3a7ca6eef115deb5f4ecd95e0fa2e76`, chain 200901)
- UnnamedContract (`0xd2740958cf90072f540b934a03ca9c6a884cadfe`, chain 200901)
- UnnamedContract (`0xe0d50a5eaa1dc9270baa24f2edee5ec1a8d6a1e1`, chain 200901)
- UnnamedContract (`0xf1e25704e75da0496b46bf4e3856c5480a3c247f`, chain 200901)
- UnnamedContract (`0x0d8f8e271dd3f2fc58e5716d3ff7041dbe3f0688`, chain 534352)
- UnnamedContract (`0x0eb776f939bc1ef2dd8efb4b4e01729f43a24148`, chain 534352)
- UnnamedContract (`0x0f67e84ddd9f68ba7bef6eb6c9f084721de3aa95`, chain 534352)
- UnnamedContract (`0x18941f10b29a7f6d5290f3b1d5fcc7ae9f6f8df4`, chain 534352)
- UnnamedContract (`0x20112c6128550e13600d52200a5f185c6aae4e42`, chain 534352)
- UnnamedContract (`0x274c3795dadfebf562932992bf241ae087e0a98c`, chain 534352)
- UnnamedContract (`0x2a00647f45047f05bded961eb8ecabc42780e604`, chain 534352)
- UnnamedContract (`0x3335dbefe7d40d43b1891109294938336f429a4c`, chain 534352)
- UnnamedContract (`0x4e3a9d352cc89b18dfddc6af1b578fcb2cb6d0ba`, chain 534352)
- UnnamedContract (`0x576d2072403cc35a2d5cda140c07fef557065dd2`, chain 534352)
- UnnamedContract (`0x615b3fa9e6546cd95864ca6c8a7f66b9a6545778`, chain 534352)
- UnnamedContract (`0xb6966083c7b68175b4bf77511608aee9a80d2ca4`, chain 534352)
- UnnamedContract (`0xbd1d62e74c6d165ccae6d161588a3768023dcc18`, chain 534352)
- UnnamedContract (`0xc40d6957b8110ec55f0f1a20d7d3430e1d8aa4cf`, chain 534352)
- UnnamedContract (`0xe0cee49cc3c9d047c0b175943ab6fcc3c4f40fb0`, chain 534352)
- UnnamedContract (`0xe3168c8d1bcf6aaf5e090f61be619c060f3ad508`, chain 534352)
- UnnamedContract (`0xe4a759c228c11a71e828492391c98fc0f3e8524d`, chain 534352)
- UnnamedContract (`0xe5c40a3331d4fb9a26f5e48b494813d977ec0a8e`, chain 534352)
- UnnamedContract (`0xec0ad3f43e85fc775a9c9b77f0f0aa7fe5a587d6`, chain 534352)
- UnnamedContract (`0xf1f897601a525f57c5ea751a1f3ec5f9adac0321`, chain 534352)
- UnnamedContract (`0xf5aa63785eee2712f1e971a6a917e7e14a393c23`, chain 534352)
- Core (`0x8efdd7396b83cd53ae7555224a30c41b1a100ffa`, chain 56)
- Core (`0xb7a23fc0b066051de58b922dc1a08f33df748bbf`, chain 169)
- Core (`0x80980869d90a737aff47aba6fbaa923012c1ff50`, chain 34443)
- Core (`0x009a0b7c38b542208936f1179151cd08e2943833`, chain 59144)
- Core (`0x43eac5bfea14531b8de0b334e123ea98325de866`, chain 59144)
- Core (`0xec53c830f4444a8a56455c6836b5d2aa794289aa`, chain 534352)
- LABDistributor (`0x67c10b7b8eefe92eb4dfdeeedd94263632e483b0`, chain 169)
- LABDistributor (`0xe8c3ba0c2ac39f9d97bcebf913e480b55d4c1aec`, chain 34443)
- LABDistributor (`0x5d06067f86946620c326713b846ddc8b97470957`, chain 59144)
- LABToken (`0x20a512dbdc0d006f46e6ca11329034eb3d18c997`, chain 169)
- LABToken (`0xfe67e16313f4b38743a153f74d5762f7c83e59ae`, chain 34443)
- LABToken (`0xb97f21d1f2508ff5c73e7b5af02847640b1ff75d`, chain 59144)
- Leverager (`0x4054f478ec834fbdb2b192f144d4615d31bda9a6`, chain 169)
- Leverager (`0xf0dcba2dd51311b5ad5770573edb8d39d39029e5`, chain 34443)
- Leverager (`0xc98b936d7540ba67c2260916ae91b3eeb9eefff3`, chain 59144)
- Locker (`0x14c5a2b562754ed412708a103fb9cb65b1b16494`, chain 59144)
- LToken (`0x00bce4d6c3e138c25b79a6fbf09e9335e188d33c`, chain 56)
- LToken (`0x10e4a696a8856ec30df96d3de96f84dc30e78e41`, chain 56)
- LToken (`0x1c0577f2d57e0bf3f4ad5a055a4dd2e52a0c325d`, chain 56)
- LToken (`0x308294607b5bc2ebbcd8b30074a37ba59b6919ff`, chain 56)
- LToken (`0x864ae2880cfdee8dd98b74cd0325d89024744e88`, chain 56)
- LToken (`0xc0600bfb1dc7b0c584bf67b15c773be891408865`, chain 56)
- LToken (`0xd1a761248ac61bc566212c3931c2605d8cb8ad3d`, chain 56)
- LToken (`0xdf62df0986fd8e7a3844949ca9918b6b9b3c8edf`, chain 56)
- LToken (`0xe009af49a384722657579812a304602f430f8750`, chain 56)
- LToken (`0xe07492f13d67bff89a82ea0102fb70eac49b0cae`, chain 56)
- LToken (`0xe6a89cfee340ebfe9d05b5af131526e006baf543`, chain 56)
- LToken (`0xeb27ea9f1891bbfe7fbc3d111d7bf3aa9709fef2`, chain 56)
- LToken (`0xf2794efbf9c510f107928e1400eb2a108252725d`, chain 56)
- LToken (`0xf8a89b4586c76e30853923b8e2803f80fd230d60`, chain 56)
- LToken (`0xfb9292c180bb6056487af44ef077fde90b9c86b3`, chain 56)
- LToken (`0x472d43a8f00a41c3431e549367d2de2e07c5e388`, chain 169)
- LToken (`0x604ddc9c59572d197b983f0578e58e61026765ed`, chain 169)
- LToken (`0x71384b2c17433ba1d8f6fe895e9b2e7953dced68`, chain 169)
- LToken (`0x7479c717f2b72116d15b4eaf8d540c497e07e0b6`, chain 169)
- LToken (`0x7def25c6c2b4bc9e9fb5122d22650f8ecdfeff45`, chain 169)
- LToken (`0x9d8ecb502d2ac290644d70a096165188d47e21a4`, chain 169)
- LToken (`0xdf4b60ce539648ab05541827a3bf0a079a5fc1c2`, chain 169)
- LToken (`0x59dd441184024a77fd17e68f07e242622806c256`, chain 34443)
- LToken (`0x66a5e18e36bfea86074a047954fec7c94ced366e`, chain 34443)
- LToken (`0x6a0d9584d88d22bcad7d4f83e7d6ab7949895ddf`, chain 34443)
- LToken (`0xba6e89c9cda3d72b7d8d5b05547a29f9bdbdbaec`, chain 34443)
- LToken (`0xc5b9cb1a26fb1f9b8e26d8d357cb950f53df4959`, chain 34443)
- LToken (`0xd97905cc56030a6e9b618d6e26cc9ee2eaa15948`, chain 34443)
- LToken (`0xe855b8018c22a05f84724e93693caf166912add5`, chain 34443)
- LToken (`0xfd160b6818254af48171a7731eba26dee6f16902`, chain 34443)
- LToken (`0x14abc603b6471aae51f92e6f7cc5be7cc6eefd14`, chain 59144)
- LToken (`0x2ad69a0cf272b9941c7ddcada7b0273e9046c4b0`, chain 59144)
- LToken (`0x2c88a441418e06b9f3e565c2f866fcb03c9409e2`, chain 59144)
- LToken (`0x5924117c4a5e000312684a5e76e90cc93addde6b`, chain 59144)
- LToken (`0x67492784ec588681e55b2bfc0118d882a8f23e48`, chain 59144)
- LToken (`0x6fe39525298118a6b58646b83f6b23e48208a855`, chain 59144)
- LToken (`0x8fefabe1b9a530d9d0f0ef25e84a9d8b56ab2053`, chain 59144)
- LToken (`0x9e9aec6a296f94c8530e2dd01ff3e9c61555d39a`, chain 59144)
- LToken (`0x9f8b5de4191db60e7b1d2ed448084657c0b46c19`, chain 59144)
- LToken (`0xa630475ef1511e54f9b061d6d830e19be182bc79`, chain 59144)
- LToken (`0xb01f9de93374a6b287372008ab8739c7ddb7ce28`, chain 59144)
- LToken (`0xb81b1e2ee4c867c95ec7041f6c22e0e89328d890`, chain 59144)
- LToken (`0xc7d8489dae3d2ebef075b1db2257e2c231c9d231`, chain 59144)
- LToken (`0xccba9ac94531e15aa55d9065e398812f06b84f14`, chain 59144)
- LToken (`0xcdfcfdb11b75c53e43e4f1f19ecfc16b321d15f8`, chain 59144)
- LToken (`0xe33520c74bac3c537bfeee0f65e80471f3d564b9`, chain 59144)
- LToken (`0xea0f73296a6147fb56bae29306aae0ffaff9de5f`, chain 59144)
- LToken (`0xf46680e9987f334041656abeb83b87c2494dc751`, chain 59144)
- PriceCalculator (`0xe1a2d363fa2645830f137f589de29bf7bfe12fff`, chain 56)
- PriceCalculator (`0x90286f894020950981c9e3196bacb03a223e4cfd`, chain 169)
- PriceCalculator (`0xa6b2535b1c10ca5592be90a01dd1b6018062f7cf`, chain 34443)
- PriceCalculator (`0x42e62fec1036f874a7579806530d628a59b6d7fb`, chain 59144)
- RateModelSlope (`0x56294e2de1f7da3bfd9d0b26a06279c7e3c94899`, chain 56)
- RateModelSlope (`0x8a6c881a5fdb42604c9fe6e206350dfdd6616178`, chain 56)
- RateModelSlope (`0xd2ef9a563525c1409c1d48518dbf164ef9df3cf4`, chain 56)
- RateModelSlope (`0x27f85bd47740139a56e34124b33481ea6e1e660d`, chain 169)
- RateModelSlope (`0x709be039a87e5c6f1a085de0d167fa0a4e7477fc`, chain 59144)
- RateModelSlope (`0xc690549e0215192d1ffb527bb3ca4d4ba638cad2`, chain 59144)
- RebateDistributor (`0xc85836a3878e4dbbec91ac0701d4f6db08ce616d`, chain 169)
- RebateDistributor (`0x67d21527b227ec286409c6dd28d4704424ce006f`, chain 34443)
- RebateDistributor (`0xea01659b66a682d41f4718bb62134ea8109fbfc6`, chain 59144)
- RewardController (`0x68b30d4c712bb9b629eb79595a6c804e5968eb40`, chain 169)
- Validator (`0x9afa0a536d695f915adea6575f102dc1a228dfa6`, chain 56)
- Validator (`0x3447275b4252b7929483528cf966eb466e71277e`, chain 169)
- Validator (`0x0ccd703acfe6ce83377243c2dbf9d55a09e12769`, chain 34443)
- Validator (`0x720a99762bb3d2b98c8ddd64e13b0851355ca0e7`, chain 59144)
- Validator (`0xe9e061172117e7bdee0df103e8f697b0858d4ab9`, chain 59144)
- xLAB (`0x69e38d781183a52de5e7506cd57bc6c55bb74467`, chain 169)

## Contract Surface Quality

- Logic-topography rows: 87; live-surface rows included: 87 (87 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 175/175 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/87 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 175 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 126 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 175 of 301 unique; 126 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/100
- Verified + Unaudited implementations: 100
- Verified by bytecode match: 0
- Unverified implementations: 201
- Unique implementations: 301
- Raw deployments: 396
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (100)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Core | unknown | project_anchor | own_supporting | 0 | bsc | unit-244958 | `0x8efdd7396b83cd53ae7555224a30c41b1a100ffa` | ⚠️ Unaudited |
| Core | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-244859 | `0xb7a23fc0b066051de58b922dc1a08f33df748bbf` | ⚠️ Unaudited |
| Core | unknown | project_anchor | own_supporting | 0 | mode | unit-244894 | `0x80980869d90a737aff47aba6fbaa923012c1ff50` | ⚠️ Unaudited |
| Core | unknown | project_anchor | own_supporting | 0 | linea | unit-244972 | `0x009a0b7c38b542208936f1179151cd08e2943833` | ⚠️ Unaudited |
| Core | unknown | project_anchor | own_supporting | 0 | linea | unit-244978 | `0x43eac5bfea14531b8de0b334e123ea98325de866` | ⚠️ Unaudited |
| Core | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: bsc `0xea1531e2916c81b2f1f453610f143dd5bf8aaab7`; linea `0x8505150f20cca81f61d967f581bd2c22c60577fb`; linea `0x887d6412e1839f123adc32943bf103084cfec715` | ⚠️ Unaudited |
| Core | unknown | project_anchor | own_supporting | 0 | scroll | unit-244948 | `0xec53c830f4444a8a56455c6836b5d2aa794289aa` | ⚠️ Unaudited |
| LABDistributor | operational_periphery | project_anchor | own_supporting | 0 | manta-pacific | unit-244851 | `0x67c10b7b8eefe92eb4dfdeeedd94263632e483b0` | ⚠️ Unaudited |
| LABDistributor | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-244903 | `0xe8c3ba0c2ac39f9d97bcebf913e480b55d4c1aec` | ⚠️ Unaudited |
| LABDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: bsc `0x1739c821842ac754ce890feda923fd704e30aec7`; bsc `0x651d172fea8139f5476f8bcf8be415aba255d480`; linea `0x10a26643340791e57920fc0cd519786d3ac21202`; linea `0x3df121931dc2e72dc4746da933126f6d50595605`; linea `0x928715a1a54ef83052bdd710d08e6156447c1e80` | ⚠️ Unaudited |
| LABDistributor | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-244980 | `0x5d06067f86946620c326713b846ddc8b97470957` | ⚠️ Unaudited |
| LABToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x91fe82ed27c9e63442af515edd9b359dd824975b`; bsc `0xf88f8602507e1ae1ca9c2b2c50d0fcf32df2f039` | ⚠️ Unaudited |
| LABToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244845 | `0x20a512dbdc0d006f46e6ca11329034eb3d18c997` | ⚠️ Unaudited |
| LABToken | token | project_anchor | own_supporting | 0 | mode | unit-244906 | `0xfe67e16313f4b38743a153f74d5762f7c83e59ae` | ⚠️ Unaudited |
| LABToken | token | project_anchor | own_supporting | 0 | linea | unit-244991 | `0xb97f21d1f2508ff5c73e7b5af02847640b1ff75d` | ⚠️ Unaudited |
| Leverager | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-244848 | `0x4054f478ec834fbdb2b192f144d4615d31bda9a6` | ⚠️ Unaudited |
| Leverager | unknown | project_anchor | own_supporting | 0 | mode | unit-244904 | `0xf0dcba2dd51311b5ad5770573edb8d39d39029e5` | ⚠️ Unaudited |
| Leverager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: bsc `0x0d281e2252432fb0987b401bc6da6e8c67df242c`; bsc `0x6be81b0b641ed65c07ccd08da09d9e6303a88ade`; linea `0x06502df8986d53bb44444ba065e42f53f475d7eb`; linea `0xe10157b95f7c905ae00f3257851f9d8e56c8200a` | ⚠️ Unaudited |
| Leverager | unknown | project_anchor | own_supporting | 0 | linea | unit-244994 | `0xc98b936d7540ba67c2260916ae91b3eeb9eefff3` | ⚠️ Unaudited |
| Locker | unknown | project_anchor | own_supporting | 0 | linea | unit-244974 | `0x14c5a2b562754ed412708a103fb9cb65b1b16494` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244951 | `0x00bce4d6c3e138c25b79a6fbf09e9335e188d33c` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244952 | `0x10e4a696a8856ec30df96d3de96f84dc30e78e41` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244953 | `0x1c0577f2d57e0bf3f4ad5a055a4dd2e52a0c325d` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244954 | `0x308294607b5bc2ebbcd8b30074a37ba59b6919ff` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244956 | `0x864ae2880cfdee8dd98b74cd0325d89024744e88` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244960 | `0xc0600bfb1dc7b0c584bf67b15c773be891408865` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244961 | `0xd1a761248ac61bc566212c3931c2605d8cb8ad3d` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244963 | `0xdf62df0986fd8e7a3844949ca9918b6b9b3c8edf` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244964 | `0xe009af49a384722657579812a304602f430f8750` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244965 | `0xe07492f13d67bff89a82ea0102fb70eac49b0cae` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244967 | `0xe6a89cfee340ebfe9d05b5af131526e006baf543` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244968 | `0xeb27ea9f1891bbfe7fbc3d111d7bf3aa9709fef2` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244969 | `0xf2794efbf9c510f107928e1400eb2a108252725d` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244970 | `0xf8a89b4586c76e30853923b8e2803f80fd230d60` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244971 | `0xfb9292c180bb6056487af44ef077fde90b9c86b3` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244849 | `0x472d43a8f00a41c3431e549367d2de2e07c5e388` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244850 | `0x604ddc9c59572d197b983f0578e58e61026765ed` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244854 | `0x71384b2c17433ba1d8f6fe895e9b2e7953dced68` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244855 | `0x7479c717f2b72116d15b4eaf8d540c497e07e0b6` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244856 | `0x7def25c6c2b4bc9e9fb5122d22650f8ecdfeff45` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244858 | `0x9d8ecb502d2ac290644d70a096165188d47e21a4` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244861 | `0xdf4b60ce539648ab05541827a3bf0a079a5fc1c2` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244889 | `0x59dd441184024a77fd17e68f07e242622806c256` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244890 | `0x66a5e18e36bfea86074a047954fec7c94ced366e` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244892 | `0x6a0d9584d88d22bcad7d4f83e7d6ab7949895ddf` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244897 | `0xba6e89c9cda3d72b7d8d5b05547a29f9bdbdbaec` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244899 | `0xc5b9cb1a26fb1f9b8e26d8d357cb950f53df4959` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244901 | `0xd97905cc56030a6e9b618d6e26cc9ee2eaa15948` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244902 | `0xe855b8018c22a05f84724e93693caf166912add5` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244905 | `0xfd160b6818254af48171a7731eba26dee6f16902` | ⚠️ Unaudited |
| LToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 23 deployments: bsc `0x05f1e4011320eaeee99323957cc053f311e8a396`; bsc `0x089da191f3fc326104ae16427a96f934cf87a572`; bsc `0x10e33326c47d3f77173d8763826c612d60d4d7b4`; bsc `0x11ce071eb533e790956c5ce1eeb22b8aa050f5ba`; bsc `0x2b241da03b39f45baa274d533841f22a8a690205`; bsc `0x44cd006f50a6f405a7f544afc91524d463e6890a`; bsc `0x48684ae3cdd8ea2dadd7b602f7b2bfb4d0cb37ca`; bsc `0x4d4d26f0c29f637e7543d46648242e455ace528a`; bsc `0x7d00034b0d2053f37e7242913fe100ce8a12abad`; bsc `0xa0f44787395392e9ebb815545aa7422fe42dc1b8`; bsc `0xa50f37fc48a781494d9eda0170335ecf87b48eb1`; bsc `0xa82e3abafafbc5823be6291925616523ac8ce04c`; bsc `0xaf8660d94417948925f99d9bbfba84dc30d6db62`; bsc `0xe12301380b72b83d1274c2265b957a1729e3e76d`; bsc `0xf1028b9995062197aaaba34628f1df4b6003ef90`; linea `0x0534e5580a07d53e2f8c06368f0d3b8fb022e9ca`; linea `0x1dff581929f8af5dddc1ceac2c28517fe020de2e`; linea `0x26987881f88772c51e134dbe1027891bbc851755`; linea `0x445e3186fa2dfca06a797c5cb66f5c29a3a808ff`; linea `0x5a7e47f924056eed8bf073c1a0e53597b7dfe6cf`; linea `0x8be5870a6d68416c559299fa7b13521f1629c277`; linea `0x8e98c7ec80de49cddec040ddd21cb55e9cc012c4`; linea `0xbeed4714d4f1bc8bdc74c37f9b9d9231f6467d37` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244973 | `0x14abc603b6471aae51f92e6f7cc5be7cc6eefd14` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244975 | `0x2ad69a0cf272b9941c7ddcada7b0273e9046c4b0` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244976 | `0x2c88a441418e06b9f3e565c2f866fcb03c9409e2` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244979 | `0x5924117c4a5e000312684a5e76e90cc93addde6b` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244981 | `0x67492784ec588681e55b2bfc0118d882a8f23e48` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244982 | `0x6fe39525298118a6b58646b83f6b23e48208a855` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244985 | `0x8fefabe1b9a530d9d0f0ef25e84a9d8b56ab2053` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244986 | `0x9e9aec6a296f94c8530e2dd01ff3e9c61555d39a` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244987 | `0x9f8b5de4191db60e7b1d2ed448084657c0b46c19` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244988 | `0xa630475ef1511e54f9b061d6d830e19be182bc79` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244989 | `0xb01f9de93374a6b287372008ab8739c7ddb7ce28` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244990 | `0xb81b1e2ee4c867c95ec7041f6c22e0e89328d890` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244993 | `0xc7d8489dae3d2ebef075b1db2257e2c231c9d231` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244995 | `0xccba9ac94531e15aa55d9065e398812f06b84f14` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244996 | `0xcdfcfdb11b75c53e43e4f1f19ecfc16b321d15f8` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244997 | `0xe33520c74bac3c537bfeee0f65e80471f3d564b9` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-245000 | `0xea0f73296a6147fb56bae29306aae0ffaff9de5f` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-245001 | `0xf46680e9987f334041656abeb83b87c2494dc751` | ⚠️ Unaudited |
| PriceCalculator | unknown | project_anchor | own_supporting | 0 | bsc | unit-244966 | `0xe1a2d363fa2645830f137f589de29bf7bfe12fff` | ⚠️ Unaudited |
| PriceCalculator | operational_periphery | project_anchor | own_supporting | 0 | manta-pacific | unit-244857 | `0x90286f894020950981c9e3196bacb03a223e4cfd` | ⚠️ Unaudited |
| PriceCalculator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 8 deployments: bsc `0xa1826762ab66367029fe175797387c5dd1e626aa`; bsc `0xac6f8379f17d9232a4ccf55170647f8625697a66`; manta-pacific `0x38f4384b457f81a4895c93a7503c255efd0746d2`; mode `0x310e183416d7f266c150e7244733d1dcb1470172`; linea `0x35a8c6050591c2f65b3e926b4b2ef825e3766bd6`; linea `0x4f5f443fec450fd64dce57ccace8f5ad10b4028f`; linea `0x9798058b8564f706e8c16badf993cd5cb3fd7936`; linea `0xd943a018a8042e0bdbc2acf8c56521dfd28ee56a` | ⚠️ Unaudited |
| PriceCalculator | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-244896 | `0xa6b2535b1c10ca5592be90a01dd1b6018062f7cf` | ⚠️ Unaudited |
| PriceCalculator | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-244977 | `0x42e62fec1036f874a7579806530d628a59b6d7fb` | ⚠️ Unaudited |
| RateModelSlope | unknown | project_anchor | own_supporting | 0 | bsc | unit-244955 | `0x56294e2de1f7da3bfd9d0b26a06279c7e3c94899` | ⚠️ Unaudited |
| RateModelSlope | unknown | project_anchor | own_supporting | 0 | bsc | unit-244957 | `0x8a6c881a5fdb42604c9fe6e206350dfdd6616178` | ⚠️ Unaudited |
| RateModelSlope | unknown | project_anchor | own_supporting | 0 | bsc | unit-244962 | `0xd2ef9a563525c1409c1d48518dbf164ef9df3cf4` | ⚠️ Unaudited |
| RateModelSlope | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 32 deployments: bsc `0x04a594b48d959f0f0e6c39094db81576ea74873b`; bsc `0x4ef025ce3b7ed458a9b8b1b17f401fcc142f56b0`; bsc `0xfbe359419505428d68392df057180f3c1248f5f0`; manta-pacific `0x01be49c7734673bd407fc54735c2ac02504c27c1`; manta-pacific `0x7e76a2112706814477a3f7638a0fcedde85733a6`; manta-pacific `0x7ebf48f06fed5fa165748c7f30337a5d0d65fb14`; manta-pacific `0x8d965181bdfd026cf5a09889898d70c4afae4684`; manta-pacific `0x91ad6fb355252f731ecbeb30aeff6464cbbe0c07`; manta-pacific `0xbea4070909dc939282ecc953d99840e390d891d1`; manta-pacific `0xd30726b29fae71d28c15f5632ec9ab2c2716a2f6`; manta-pacific `0xe8c8cfc7750abaf26e5889c5e3f56d1e5f96902a`; manta-pacific `0xf7e5d5afae27305b371c4d183f887b77f0848acc`; manta-pacific `0xf9a2e1cfa9760a1edc405047df638da71815ef95`; mode `0x0442bea39e4307c0523027319e06e2145b7ff62a`; mode `0x072cd619678efe125099d7d167f6ce6cf3c3bc62`; mode `0x2a0c7d8e23d7be9cc8e7c0b2895299f11690e295`; mode `0x7187b3e844589c3c6bd41b56867e269ffbe1dc71`; mode `0x83df63c060c248541e93488e94ac55b11efa7ff4`; mode `0xe71957bffbcdad7278f4dc2cb44aa6e35d0f5967`; linea `0x2ad5116293a3f011b0f42e1de05ce05b53f678dd`; linea `0x33c61097be7b990f52e573584729d4bfdcfac4f9`; linea `0x44b68e1a4f89e6973ad29612a52393ddb698b305`; linea `0x50a2d2339533bf11f4c2a3a288e48b7eafaa5148`; linea `0x527b8351e9e10a524f3e665da32189be75941bae`; linea `0x5aa12782aad9ce43a96c73e0ca057b5543c607b4`; linea `0x6358da269cd3bae93edd57822ac5a94013c6ad74`; linea `0x763033e53d8175aa3e1d5adaad3d94738a4a2f3f`; linea `0x78f8bd9e2310dbbfa3822c57b0f3577ae5790859`; linea `0xc6be5f2c561c7f7e981261840baf53a458a1d208`; linea `0xd24e30a628ca8ceb6d35d05485e7866de50a8321`; linea `0xe4297b0644518d2a118cd3abb2a4ff11b3ff82b5`; linea `0xe7d66729d8e0bc32711a14bd33f717c6181959c5` | ⚠️ Unaudited |
| RateModelSlope | operational_periphery | project_anchor | own_supporting | 0 | manta-pacific | unit-244846 | `0x27f85bd47740139a56e34124b33481ea6e1e660d` | ⚠️ Unaudited |
| RateModelSlope | unknown | project_anchor | own_supporting | 0 | mode | unit-244888 | `0x16cd8dace8569c7bd4e903c864444367b9f7b1af` | ⚠️ Unaudited |
| RateModelSlope | unknown | project_anchor | own_supporting | 0 | linea | unit-244983 | `0x709be039a87e5c6f1a085de0d167fa0a4e7477fc` | ⚠️ Unaudited |
| RateModelSlope | unknown | project_anchor | own_supporting | 0 | linea | unit-244992 | `0xc690549e0215192d1ffb527bb3ca4d4ba638cad2` | ⚠️ Unaudited |
| RebateDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x8569f61ffe206fbf61c811141697bb7c8880d306`; bsc `0x86572fcc55e18b852fabcc95187c5e205c5d1fac`; linea `0x87bec95c9a414f9a83599138ba9e754d15f855bf` | ⚠️ Unaudited |
| RebateDistributor | operational_periphery | project_anchor | own_supporting | 0 | manta-pacific | unit-244860 | `0xc85836a3878e4dbbec91ac0701d4f6db08ce616d` | ⚠️ Unaudited |
| RebateDistributor | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-244891 | `0x67d21527b227ec286409c6dd28d4704424ce006f` | ⚠️ Unaudited |
| RebateDistributor | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-244999 | `0xea01659b66a682d41f4718bb62134ea8109fbfc6` | ⚠️ Unaudited |
| RewardController | governance | project_anchor | own_supporting | 0 | manta-pacific | unit-244852 | `0x68b30d4c712bb9b629eb79595a6c804e5968eb40` | ⚠️ Unaudited |
| RewardController | unknown | project_anchor | own_supporting | 0 | mode | unit-244895 | `0xa2c4ff1500f7e5137d2299642118df7a2c0ba82a` | ⚠️ Unaudited |
| RewardController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: bsc `0x3f4a6cc5f56db17477e68d87dd7909181f8b97de`; bsc `0xb09301c99b08bf2ea1caf62e6755c18ec3d87101`; linea `0x31bd8b6a5ff654bb79b484b549205f5173f0b92f`; linea `0x4caddf8c0d19b270f2dc4ebb0e225c20184b80a5`; linea `0xc37e5c38bb4a6c0db64cb5f3f36603cd61c8ab6d` | ⚠️ Unaudited |
| SaleLabOverflowFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6474df49abab65c0d06b5b4336fea2f1f9373b51` | ⚠️ Unaudited |
| Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 14 deployments: bsc `0x2ab09847aef39023e7bb784475914014c0fc05cd`; bsc `0xe12757790b75abda07720bdca570519a897957a5`; manta-pacific `0xca892a10908a38044e933836c21f28ac34ff157f`; manta-pacific `0xf2c1e27a4bf0d81bb4a6e6e3e5dcd1dc6ed3a7fa`; mode `0x5ae221cec86bcdd0cdc616b6c2bbd95d0e68030f`; mode `0x8acbbeafd432b86a0772a2ae16df87885f062cdb`; mode `0xec47eb47ff67ec527e72e82d220eb057d69be055`; linea `0x3cba4209c03df89060307288fe668198a82cb29c`; linea `0x3f015570ba5ddfba06347f093f6ff1d4ddb297ff`; linea `0x57d8311842f41ec811352f5d68616fd51551a391`; linea `0x924c23248a9fe58355a89c5129df46ec329daae8`; linea `0xcef9be627b95a2cd24de5ff1cbf9f816d8964e34`; linea `0xdd47e4d0389411de787ea0310f47ae5d321dd6f1`; linea `0xf8886f5a8de08d48444bbee19b38419dec3c5573` | ⚠️ Unaudited |
| Validator | unknown | project_anchor | own_supporting | 0 | bsc | unit-244959 | `0x9afa0a536d695f915adea6575f102dc1a228dfa6` | ⚠️ Unaudited |
| Validator | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-244847 | `0x3447275b4252b7929483528cf966eb466e71277e` | ⚠️ Unaudited |
| Validator | unknown | project_anchor | own_supporting | 0 | mode | unit-244887 | `0x0ccd703acfe6ce83377243c2dbf9d55a09e12769` | ⚠️ Unaudited |
| Validator | unknown | project_anchor | own_supporting | 0 | linea | unit-244984 | `0x720a99762bb3d2b98c8ddd64e13b0851355ca0e7` | ⚠️ Unaudited |
| Validator | unknown | project_anchor | own_supporting | 0 | linea | unit-244998 | `0xe9e061172117e7bdee0df103e8f697b0858d4ab9` | ⚠️ Unaudited |
| Vesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 5 deployments: manta-pacific `0x683049b66b55a202bfc9a60e954ff9b41ba7b39a`; manta-pacific `0x6d28332dda6b38408fec31f775d5b2e6d6c7781e`; manta-pacific `0x9125548148fb44af1e772a6c1f3727a65d043599`; manta-pacific `0x9fea1782b5deff62e32576cd29993824ecd2c9d3`; manta-pacific `0xc44a204705e0919266aee243df915ec3ae16d9a4` | ⚠️ Unaudited |
| xLAB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x154aac49a72313227a43e0a09fb7cd214e4da58e`; bsc `0x243fc9c0c0d2aa6b28080dd05cfb83844e13827b`; linea `0x88da54181065c8dce9142152cc575791b3d7d09c` | ⚠️ Unaudited |
| xLAB | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-244853 | `0x69e38d781183a52de5e7506cd57bc6c55bb74467` | ⚠️ Unaudited |
| xLAB | unknown | project_anchor | own_supporting | 0 | mode | unit-244900 | `0xd4ab4799e66c40485b136580ffa233f7bd2a9f8b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (201)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cd31bb63fab1917abaf50809006e0a062710bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44ad9ef55ce955b696a4880e4669d99b2d0cc107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54572fa57f6f68bdda46e634c41304bda8aa2d2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e740da89d9703c37ff29eeb60fef8a942853d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e6e9eaf2aee0a6fbca6873af5ed8f33492def4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d8148bab26630f45eb4b1d27f5fffbc2b205961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8ed849ba3e7d747636492316fc5d1f1975ce79f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe003a695019de65d2411b5a595468cba5d9baf58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x126eb7b882651c228157fe5aec2be88438d8d118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x147967e44ba47b607aca0cb014c8d359dc14aba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x21a3d684b32703bb56f308ce5ed79ba42abb5069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x4ad32c69eb3eecbb16d1748fde754b6ad50318d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x4be8c1da5e38458b16cf476070c526d55af8bb01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x90bdfb3a9051288973272b60314239fb11522a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x9cad141b542a46947bcb53121da0334cbb1a5250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xa28b3b0a10138f49ac7593812d2ffb7bfb73d927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xb8eecb81def12113bc163f29a9a8904d23339d44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xbdaf1446d6064e95c44fe94401fb5dd7a4d48962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc30808b757d59a815da41487e2dd6dea7eb44b50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xcd5f48a4a7c5d34aad3f73bd2d63392a15e32d6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xcec210fd9334686ae8663c05ca4efef32c0fd2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xcf235013efa9b1453f3b7c216b37ff7459c2d7d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xf04ec6dddd4fab38e690e2731973869e953b996a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xf3e0707db3282ad53f64cd22d8583c92541df5cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xf90f48c6f7f37ee73373f6ce06aae9d822994b0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244873 | `0x1dfa1a1a9e746796834eea85d714801b2dfb87ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244874 | `0x438845c18b1358835eb327fb72189d526bed454d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244875 | `0x53bda0574be207745f5ce72706f4ddf59f0d6139` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244876 | `0x5478caa24512e4865fc494b3996d319387f3ed58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244877 | `0x636f71d82d46addf37e63bd6494af98cc8739dc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244878 | `0x67016362527a13850fe7775b818777a930b5a3a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244879 | `0x72f7a8eb9f83de366ae166dc50f16074076c3ea6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244880 | `0x8b03af6ca293fee5a64497b8d50a5186a5becaa9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244881 | `0x98d685cddbc099e07a605483763dab9a2dae4307` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244882 | `0xa692556548186e0bb2fed372a021f468591a9a03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244883 | `0xa9be5906974698a9c743e881b0acc2954399ff2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244884 | `0xaac19657558dcf4b3724231ac790fd22a6dd5bed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244885 | `0xe2417cce3fd8c01f929c9d3a5b6dfeab3faa4ff2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244886 | `0xeb58c2b3bfd28a5f3bd94854ad493b3118cdf698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0f225d10dd29d4703d42c5e93440f828bf04d150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2551aedb152b66f5be0b5ded19287f7fcacc557f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x273a36b282ed96d12666a9bd49298d495a679b8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2a7efe59431835ea84008b852828808e892f5fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2b8867b0c93dcbefcc69be3eb6176779c23ef169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2ba3ade8778808d8d40ddef28fe5b63585779e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3a0362a50dd5df5887125ba5f12953989e072977` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x4ac518dbf0cc730a1c880739cfa98fe0bb284959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x72f7a8eb9f83de366ae166dc50f16074076c3ea6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-244893 | `0x7c57dba8512e2ebeeac37aa65f51256b9326cc4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x803a61d82bad2743be35be5dc6dea0ccce82c056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x892d09ad4085d214363b06bc0f25654c40d5cba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa91a0471593603f2376c2d2571dc122e982153aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xab3e7cb8a2dddef2c300e136003b8cde69b97151` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-244898 | `0xbd9edf764bc1f219c124ad5cfa7084bbed124aa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf1e25704e75da0496b46bf4e3856c5480a3c247f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xfb31a0fc2fd2b786aa54bd155b043f4077f20b99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244907 | `0x16b3a05f1adaca8f028aad7c5b0475cc512a0619` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244908 | `0x1e34282b1048d0675b13c191a0a75e3d809ecf9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244909 | `0x23155b16f818409d33c934aa7d3873aaa6a4c10b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244910 | `0x3a7232bfc55a680a72929925fa82c40b2eb8ba3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244911 | `0x46adc4bcd803821ae3b30da7533bde2d72236697` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244912 | `0x5a8c91f3e5dac6992e0faecbc2e954321f67c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244913 | `0x6d91994d261c0fc362a59e78ff12c90f408d543a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244914 | `0x7990937bb8c0c3f13fa89bd17f66f89917554087` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244915 | `0x79b7a65ea1bf58a84b69ec3daa6f0ca05cfe2623` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244916 | `0x79ce458476f27373b446b6dfd8ca0ed07dc80713` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244917 | `0x7aa826763bc44385c0eebc0ad6575cf67783315b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244918 | `0x8edd7f8532c466f6751ec2e1f0b35020104a9b87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244919 | `0x92ce82ab8ae3648f03ccfd16d7a7ae8ca4911bba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244920 | `0x9a52655b2e41b93aff924d5af7cd243d037dcab6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244921 | `0x9e3603937b3ccd8cf60843e405d222fa35ac36fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244922 | `0xa6bbbae25277a10f2258384c114920a4712d4798` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244923 | `0xb30a18834fd11baf0f58a02820cff00e2d601759` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244924 | `0xeaf3ba0dad9f63c05e8db834bfd15ac3585613cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244925 | `0xed0d42687ad5b302db8953ddb6c4156b8d84a581` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244926 | `0xf676ba00b0a2cdfe70a25647da82184882475990` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244927 | `0xf930785cb93d2ab6e483015aee6442b59566b0fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244928 | `0xfa20b04e1c992648cc5f59a067720bbca287b2b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x016aa4299881239c15fea325cdc5e644ae6137b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x048a6ccb63f4dffac23b8dc724fc4e1a2268d20a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0f5bb9c22c9b3ef079d139e52450fd1d9cbecaef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1d51ef81a4e45013106b3d34863751e7001d7f51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x232780dc4eaf570cdbeafbfd119b65e85edda892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2b46e8625f48bf190b95556c23be607e343545d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2c4cbd05f01e4870197b4bd1fd70538efbf60999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2f96c932731e11f2bbaf6997ea21c56e9b9e3e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x52b47029c19e5c69eb3678a618b46bcd25ac6ae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x57cb249b94f88f30b0a605e23418b53c0b5c29d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5e838a74f4e21dc8876bed136fd35c4e960b1448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6749900ebfdf070cd4fb5acbb71db4db3208d2b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6d1ca2cb0de960dae80f9dde4c9043c66010d43d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6efb01e09a2d77c73aedf1df185d7213b865fea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7225e1249152506eaa492df12d571425e93d54ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa15f453e8bd8bbb28eb599e05ec1fde8956ea816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xad8d03c1edf91d4e6153146c67ee7c5eba92a8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xae5c5535f475c07315a52b2607cfe7f2d869c552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xae79f221284c9a57817ee6e1a8f04967d9ee0bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xaeb4afe47f1c92797087378a4c9d5d964b2a29f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xafa621a96bd027e26ceb93c37d5a674fb0682e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb05fe91f9ad887ab46eccfc5cc4c6e1a6d4ce076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb5b25d9192f582568363243677dd25a939fe7112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb9bf4af75179c87aa2356cc3efcc24f10f7ebb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb9dd38c7ee558633b9498cbbab0eb316c1f58df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbb5fe256f5d68cae11bfd5bd9acdbef8bfdc445d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc1d76a2ea390d05119b6f7d18bc4b5304db1ec4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc44c04f657012dae504250f8fcc87df1005b151f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcc77ba41cd1d2c0f04947b23058f2dca2667472c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcd88eea868d3acc500ee3069738c028166c0a620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd4ac03af102a0f5e008c73cdc4896e3741adb04b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd69fdd02ad3b7b94cae1e5b4330b82e30299fdf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd8385524d566823e7ce1829144fa4b76a613f0df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe43976e0ad6ffe02500069ae21e376fb87845ed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe937de87cff1b15d6edd56ea39c3a2a3826a6102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xea34ef86661b034d280760c91b589be83ccc1d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf90e4e1ead06ae9b2fba4ac3cf42eaa7cba0ee9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfbed1737fa12b90b91e86339ca6413e36bca085e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfc64ac71e97067080bf1ac3bc7b79790f185cc32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfd7f7af88c006e9c7aa371b6c94fc04ce80eafb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfde206138d3314a421de06e4bb9f18f3237a8051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xff8030c391ec0d89b8fee189721f300b77790053` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245002 | `0x037598b71a8f27443be8e352a67f7f73c70ea423` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245003 | `0x043962844e12555968777722e6ed2714c1851475` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245004 | `0x0c1f45adc1fc37ea2d47c2feb0a7e60671115fa4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245005 | `0x1097cc6f09cc0731e596d91d8b3b50de331cb5a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245006 | `0x151d54da06751c876308adc0b10a92fe2824c8f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245007 | `0x462ebb8395b6c08661b3d9f0ca8819527bcf3db3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245008 | `0x51aca2cd4355227beae20a8a0a7e30b8f85caa98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245009 | `0x626fbec20d6a9fde562f512f0d6ea7f9f923e27c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245010 | `0x6bc3edeee5d182cd4d5d5b26f54fdda0fab2b5d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245011 | `0x77cabfd057bd7c81c011059f1bf74ec1fbeda971` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245012 | `0x7851b2f6287e79faf76f67a0dad6846292983e0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245013 | `0xbd00e7923775c781d1bf0cae4e0de8efe8b60ccb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245014 | `0xc8485b4b7899e75149c74c18798b0cc3487cab37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245015 | `0xce584875a584485bff208a4fc2c70cb7e98f98c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245016 | `0xd855eef2d22a96b65e38a1cb8079dfc70bd971f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245017 | `0xdabeb9602f1e0b112136675069016f79eeda8e59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245018 | `0xe714576aba1d46f54bd00ceb04c4b9c384e054ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245019 | `0xf30e2dd11128fd745c235b2f59bf56e16d6d87db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244862 | `0x04a4697415147a400a45b913ef6098aa7561c544` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244863 | `0x1471b4fac13d42f3447fba145bdfe95c6e7e7540` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244864 | `0x674e1db2e343ee704fc783529ba0050432d690d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244865 | `0x72cb37bd7fb84f4edef4ca1947d2cefdcf067a47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244866 | `0x8269390d7496678c5dc56d18c31c052b12e632b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244867 | `0x870c1a416872841f0d2b70a3eed3cb92065e5a07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244868 | `0x8dbffa0881ca4f5bfe7c36451c6a2ccf2a1b0316` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244869 | `0xc876cd18c3a7ca6eef115deb5f4ecd95e0fa2e76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244870 | `0xd2740958cf90072f540b934a03ca9c6a884cadfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244871 | `0xe0d50a5eaa1dc9270baa24f2edee5ec1a8d6a1e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244872 | `0xf1e25704e75da0496b46bf4e3856c5480a3c247f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0329e165f7ae102e1c622681243378c60d1aa8c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x09ad162e117efcc5cbd5fd4865818f2aba8e80d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0d87897de4b3117d7820934026da639f6f7364d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244929 | `0x0d8f8e271dd3f2fc58e5716d3ff7041dbe3f0688` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244930 | `0x0eb776f939bc1ef2dd8efb4b4e01729f43a24148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0ee0e8fa1005769f1d10b5c09e3c3b664d1415cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244931 | `0x0f67e84ddd9f68ba7bef6eb6c9f084721de3aa95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x119f312c25a1ceb9e6708660a1d47d4034bb8441` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244932 | `0x18941f10b29a7f6d5290f3b1d5fcc7ae9f6f8df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1ad1d4ae52a878a951d474ead62840e21da85ace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1e2410272bc9dcab8f368e9298d7620698062e78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244933 | `0x20112c6128550e13600d52200a5f185c6aae4e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x21b291f5ec155393245df574ee27bed9c0891068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244934 | `0x274c3795dadfebf562932992bf241ae087e0a98c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244935 | `0x2a00647f45047f05bded961eb8ecabc42780e604` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244936 | `0x3335dbefe7d40d43b1891109294938336f429a4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x37097a6c1f933dbc536bb08754a248634b0bc045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x43beb6d619722146b0fa0e78e6243283ee1eb2dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4a920c111dafb3271d6300af2cb7764874383e60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244937 | `0x4e3a9d352cc89b18dfddc6af1b578fcb2cb6d0ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x50609fe6a078eb201077b9856392b158a15611de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244938 | `0x576d2072403cc35a2d5cda140c07fef557065dd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5fb4d2a4d1bd6d69eed6e1900b287e860ec28b17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244939 | `0x615b3fa9e6546cd95864ca6c8a7f66b9a6545778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6820efa8ea99af12f97278b66b5bbada6350eb8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6d833bde03c6483dee38430524340fdb282c5791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x746a0693ee5a1c4c7020775a4e715ff9982909a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x760bd7fc100f217678d1b521404d2e93db7bec5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7e986b80f0e26495a96180af38638f41ac27e9ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x804946e588441408a6a9d98ed046bc42f36ed388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8390045f82f93905a845730c9f7a4ddb147aa7f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8b66510d2c7e1ce60f8d751a35c12b2441792a1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9095a0b786cc7550f723a6d8716a41cfbbc4f4c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9659abd2b0c4cec3dca4c3ac8baddee68763058e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa36813565d91f8478006fa8f893df0214a5c9bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xae3b25575e344e26551ac9f929415b184e5af522` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244940 | `0xb6966083c7b68175b4bf77511608aee9a80d2ca4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244941 | `0xbd1d62e74c6d165ccae6d161588a3768023dcc18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244942 | `0xc40d6957b8110ec55f0f1a20d7d3430e1d8aa4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc9d79a493513a4e4db21679ef134075d4c609862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd387327e3ece634f34b045ed506ed1554733d09f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd5afd8838dc7b7e00cdc937aef14205718c4c61c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244943 | `0xe0cee49cc3c9d047c0b175943ab6fcc3c4f40fb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244944 | `0xe3168c8d1bcf6aaf5e090f61be619c060f3ad508` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244945 | `0xe4a759c228c11a71e828492391c98fc0f3e8524d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244946 | `0xe5c40a3331d4fb9a26f5e48b494813d977ec0a8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244947 | `0xec0ad3f43e85fc775a9c9b77f0f0aa7fe5a587d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xec2d833c243ff7e96014cbaa0be12481f78edadd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xeeeef9a4c16c68708b1e2fe7826e41e28c2bf819` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244949 | `0xf1f897601a525f57c5ea751a1f3ec5f9adac0321` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244950 | `0xf5aa63785eee2712f1e971a6a917e7e14a393c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf893d5510bd220fb84c3a116d220271a850ad979` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 165
- Live contracts: 26
- Unknown liveness contracts: 139
- Source-verified contracts: 111
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=11, exact address book overlap=23, source verified unclassified=77, unverified unclassified=54

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | exact address book overlap | LToken<br>`0x00bce4d6c3e138c25b79a6fbf09e9335e188d33c` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | LToken<br>`0x10e4a696a8856ec30df96d3de96f84dc30e78e41` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | LToken<br>`0x1c0577f2d57e0bf3f4ad5a055a4dd2e52a0c325d` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | LToken<br>`0x308294607b5bc2ebbcd8b30074a37ba59b6919ff` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | LToken<br>`0x864ae2880cfdee8dd98b74cd0325d89024744e88` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | LToken<br>`0xc0600bfb1dc7b0c584bf67b15c773be891408865` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | LToken<br>`0xd1a761248ac61bc566212c3931c2605d8cb8ad3d` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | LToken<br>`0xdf62df0986fd8e7a3844949ca9918b6b9b3c8edf` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | LToken<br>`0xe009af49a384722657579812a304602f430f8750` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | LToken<br>`0xe07492f13d67bff89a82ea0102fb70eac49b0cae` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | LToken<br>`0xe6a89cfee340ebfe9d05b5af131526e006baf543` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | LToken<br>`0xeb27ea9f1891bbfe7fbc3d111d7bf3aa9709fef2` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | LToken<br>`0xf2794efbf9c510f107928e1400eb2a108252725d` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | LToken<br>`0xf8a89b4586c76e30853923b8e2803f80fd230d60` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | LToken<br>`0xfb9292c180bb6056487af44ef077fde90b9c86b3` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | PriceCalculator<br>`0xe1a2d363fa2645830f137f589de29bf7bfe12fff` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | RateModelSlope<br>`0x56294e2de1f7da3bfd9d0b26a06279c7e3c94899` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | RateModelSlope<br>`0x8a6c881a5fdb42604c9fe6e206350dfdd6616178` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | RateModelSlope<br>`0xd2ef9a563525c1409c1d48518dbf164ef9df3cf4` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | exact address book overlap | Validator<br>`0x9afa0a536d695f915adea6575f102dc1a228dfa6` | project_anchor | unknown | live | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | Core<br>`0xea1531e2916c81b2f1f453610f143dd5bf8aaab7` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LABDistributor<br>`0x1739c821842ac754ce890feda923fd704e30aec7` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LABDistributor<br>`0x651d172fea8139f5476f8bcf8be415aba255d480` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LABToken<br>`0x91fe82ed27c9e63442af515edd9b359dd824975b` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LABToken<br>`0xf88f8602507e1ae1ca9c2b2c50d0fcf32df2f039` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | Leverager<br>`0x0d281e2252432fb0987b401bc6da6e8c67df242c` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | Leverager<br>`0x6be81b0b641ed65c07ccd08da09d9e6303a88ade` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0x05f1e4011320eaeee99323957cc053f311e8a396` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0x089da191f3fc326104ae16427a96f934cf87a572` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0x10e33326c47d3f77173d8763826c612d60d4d7b4` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0x11ce071eb533e790956c5ce1eeb22b8aa050f5ba` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0x2b241da03b39f45baa274d533841f22a8a690205` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0x44cd006f50a6f405a7f544afc91524d463e6890a` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0x48684ae3cdd8ea2dadd7b602f7b2bfb4d0cb37ca` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0x4d4d26f0c29f637e7543d46648242e455ace528a` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0x7d00034b0d2053f37e7242913fe100ce8a12abad` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0xa0f44787395392e9ebb815545aa7422fe42dc1b8` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0xa50f37fc48a781494d9eda0170335ecf87b48eb1` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0xa82e3abafafbc5823be6291925616523ac8ce04c` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0xaf8660d94417948925f99d9bbfba84dc30d6db62` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0xe12301380b72b83d1274c2265b957a1729e3e76d` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | LToken<br>`0xf1028b9995062197aaaba34628f1df4b6003ef90` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | PriceCalculator<br>`0xa1826762ab66367029fe175797387c5dd1e626aa` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | PriceCalculator<br>`0xac6f8379f17d9232a4ccf55170647f8625697a66` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | RateModelSlope<br>`0x04a594b48d959f0f0e6c39094db81576ea74873b` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | RateModelSlope<br>`0x4ef025ce3b7ed458a9b8b1b17f401fcc142f56b0` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | RateModelSlope<br>`0xfbe359419505428d68392df057180f3c1248f5f0` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | RebateDistributor<br>`0x8569f61ffe206fbf61c811141697bb7c8880d306` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | RebateDistributor<br>`0x86572fcc55e18b852fabcc95187c5e205c5d1fac` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | RewardController<br>`0x3f4a6cc5f56db17477e68d87dd7909181f8b97de` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | RewardController<br>`0xb09301c99b08bf2ea1caf62e6755c18ec3d87101` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | Validator<br>`0x2ab09847aef39023e7bb784475914014c0fc05cd` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | Validator<br>`0xe12757790b75abda07720bdca570519a897957a5` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | xLAB<br>`0x154aac49a72313227a43e0a09fb7cd214e4da58e` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | source verified unclassified | xLAB<br>`0x243fc9c0c0d2aa6b28080dd05cfb83844e13827b` | non_address_book | unknown | unknown | verified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3cd31bb63fab1917abaf50809006e0a062710bd5` | non_address_book | unknown | unknown | unverified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | unverified unclassified | UnnamedContract<br>`0x44ad9ef55ce955b696a4880e4669d99b2d0cc107` | non_address_book | unknown | unknown | unverified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | unverified unclassified | UnnamedContract<br>`0x54572fa57f6f68bdda46e634c41304bda8aa2d2d` | non_address_book | unknown | unknown | unverified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7e740da89d9703c37ff29eeb60fef8a942853d43` | non_address_book | unknown | unknown | unverified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8e6e9eaf2aee0a6fbca6873af5ed8f33492def4e` | non_address_book | unknown | unknown | unverified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9d8148bab26630f45eb4b1d27f5fffbc2b205961` | non_address_book | unknown | unknown | unverified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc8ed849ba3e7d747636492316fc5d1f1975ce79f` | non_address_book | unknown | unknown | unverified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe003a695019de65d2411b5a595468cba5d9baf58` | non_address_book | unknown | unknown | unverified | n/a | `0x4b97210b0fb1bc00d6a0097eca3dc1c668d6f475` |
| linea | exact address book overlap | RateModelSlope<br>`0x709be039a87e5c6f1a085de0d167fa0a4e7477fc` | project_anchor | unknown | live | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | exact address book overlap | RateModelSlope<br>`0xc690549e0215192d1ffb527bb3ca4d4ba638cad2` | project_anchor | unknown | live | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | exact address book overlap | Validator<br>`0xe9e061172117e7bdee0df103e8f697b0858d4ab9` | project_anchor | unknown | live | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | Core<br>`0x8505150f20cca81f61d967f581bd2c22c60577fb` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | Core<br>`0x887d6412e1839f123adc32943bf103084cfec715` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | LABDistributor<br>`0x10a26643340791e57920fc0cd519786d3ac21202` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | LABDistributor<br>`0x928715a1a54ef83052bdd710d08e6156447c1e80` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | Leverager<br>`0x06502df8986d53bb44444ba065e42f53f475d7eb` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | Leverager<br>`0xe10157b95f7c905ae00f3257851f9d8e56c8200a` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | LToken<br>`0x0534e5580a07d53e2f8c06368f0d3b8fb022e9ca` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | LToken<br>`0x1dff581929f8af5dddc1ceac2c28517fe020de2e` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | LToken<br>`0x26987881f88772c51e134dbe1027891bbc851755` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | LToken<br>`0x445e3186fa2dfca06a797c5cb66f5c29a3a808ff` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | LToken<br>`0x5a7e47f924056eed8bf073c1a0e53597b7dfe6cf` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | LToken<br>`0x8be5870a6d68416c559299fa7b13521f1629c277` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | LToken<br>`0x8e98c7ec80de49cddec040ddd21cb55e9cc012c4` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | LToken<br>`0xbeed4714d4f1bc8bdc74c37f9b9d9231f6467d37` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | PriceCalculator<br>`0x4f5f443fec450fd64dce57ccace8f5ad10b4028f` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | PriceCalculator<br>`0x9798058b8564f706e8c16badf993cd5cb3fd7936` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | PriceCalculator<br>`0xd943a018a8042e0bdbc2acf8c56521dfd28ee56a` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RateModelSlope<br>`0x2ad5116293a3f011b0f42e1de05ce05b53f678dd` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RateModelSlope<br>`0x33c61097be7b990f52e573584729d4bfdcfac4f9` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RateModelSlope<br>`0x44b68e1a4f89e6973ad29612a52393ddb698b305` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RateModelSlope<br>`0x50a2d2339533bf11f4c2a3a288e48b7eafaa5148` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RateModelSlope<br>`0x527b8351e9e10a524f3e665da32189be75941bae` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RateModelSlope<br>`0x5aa12782aad9ce43a96c73e0ca057b5543c607b4` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RateModelSlope<br>`0x6358da269cd3bae93edd57822ac5a94013c6ad74` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RateModelSlope<br>`0x763033e53d8175aa3e1d5adaad3d94738a4a2f3f` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RateModelSlope<br>`0x78f8bd9e2310dbbfa3822c57b0f3577ae5790859` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RateModelSlope<br>`0xc6be5f2c561c7f7e981261840baf53a458a1d208` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RateModelSlope<br>`0xd24e30a628ca8ceb6d35d05485e7866de50a8321` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RateModelSlope<br>`0xe4297b0644518d2a118cd3abb2a4ff11b3ff82b5` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RateModelSlope<br>`0xe7d66729d8e0bc32711a14bd33f717c6181959c5` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RewardController<br>`0x31bd8b6a5ff654bb79b484b549205f5173f0b92f` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RewardController<br>`0x4caddf8c0d19b270f2dc4ebb0e225c20184b80a5` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | RewardController<br>`0xc37e5c38bb4a6c0db64cb5f3f36603cd61c8ab6d` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | SaleLabOverflowFarm<br>`0x6474df49abab65c0d06b5b4336fea2f1f9373b51` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | Validator<br>`0x3cba4209c03df89060307288fe668198a82cb29c` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | Validator<br>`0x3f015570ba5ddfba06347f093f6ff1d4ddb297ff` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | Validator<br>`0x57d8311842f41ec811352f5d68616fd51551a391` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | Validator<br>`0x924c23248a9fe58355a89c5129df46ec329daae8` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | Validator<br>`0xcef9be627b95a2cd24de5ff1cbf9f816d8964e34` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | Validator<br>`0xdd47e4d0389411de787ea0310f47ae5d321dd6f1` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | Validator<br>`0xf8886f5a8de08d48444bbee19b38419dec3c5573` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | source verified unclassified | xLAB<br>`0x88da54181065c8dce9142152cc575791b3d7d09c` | non_address_book | unknown | unknown | verified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | unverified unclassified | UnnamedContract<br>`0x57cb249b94f88f30b0a605e23418b53c0b5c29d7` | non_address_book | unknown | unknown | unverified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | unverified unclassified | UnnamedContract<br>`0x5e838a74f4e21dc8876bed136fd35c4e960b1448` | non_address_book | unknown | unknown | unverified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | unverified unclassified | UnnamedContract<br>`0x6d1ca2cb0de960dae80f9dde4c9043c66010d43d` | non_address_book | unknown | unknown | unverified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | unverified unclassified | UnnamedContract<br>`0xa15f453e8bd8bbb28eb599e05ec1fde8956ea816` | non_address_book | unknown | unknown | unverified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | unverified unclassified | UnnamedContract<br>`0xad8d03c1edf91d4e6153146c67ee7c5eba92a8f3` | non_address_book | unknown | unknown | unverified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | unverified unclassified | UnnamedContract<br>`0xae5c5535f475c07315a52b2607cfe7f2d869c552` | non_address_book | unknown | unknown | unverified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | unverified unclassified | UnnamedContract<br>`0xb9dd38c7ee558633b9498cbbab0eb316c1f58df1` | non_address_book | unknown | unknown | unverified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | unverified unclassified | UnnamedContract<br>`0xc1d76a2ea390d05119b6f7d18bc4b5304db1ec4e` | non_address_book | unknown | unknown | unverified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | unverified unclassified | UnnamedContract<br>`0xc44c04f657012dae504250f8fcc87df1005b151f` | non_address_book | unknown | unknown | unverified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | unverified unclassified | UnnamedContract<br>`0xcd88eea868d3acc500ee3069738c028166c0a620` | non_address_book | unknown | unknown | unverified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | unverified unclassified | UnnamedContract<br>`0xd8385524d566823e7ce1829144fa4b76a613f0df` | non_address_book | unknown | unknown | unverified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | unverified unclassified | UnnamedContract<br>`0xea34ef86661b034d280760c91b589be83ccc1d4c` | non_address_book | unknown | unknown | unverified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| linea | unverified unclassified | UnnamedContract<br>`0xfd7f7af88c006e9c7aa371b6c94fc04ce80eafb9` | non_address_book | unknown | unknown | unverified | n/a | `0x76e1bafa3c3271c7f3b1b247efbe9e52a9a8c449` |
| mode | candidate review | RateModelSlope<br>`0x0442bea39e4307c0523027319e06e2145b7ff62a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6461fc3ea4f5eeaf59e08e263572f0efb9f4541f` |
| mode | candidate review | RateModelSlope<br>`0x072cd619678efe125099d7d167f6ce6cf3c3bc62` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6461fc3ea4f5eeaf59e08e263572f0efb9f4541f` |
| mode | candidate review | RateModelSlope<br>`0x16cd8dace8569c7bd4e903c864444367b9f7b1af` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6461fc3ea4f5eeaf59e08e263572f0efb9f4541f` |
| mode | candidate review | RateModelSlope<br>`0x2a0c7d8e23d7be9cc8e7c0b2895299f11690e295` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6461fc3ea4f5eeaf59e08e263572f0efb9f4541f` |
| mode | candidate review | RateModelSlope<br>`0x7187b3e844589c3c6bd41b56867e269ffbe1dc71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6461fc3ea4f5eeaf59e08e263572f0efb9f4541f` |
| mode | candidate review | RateModelSlope<br>`0x83df63c060c248541e93488e94ac55b11efa7ff4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6461fc3ea4f5eeaf59e08e263572f0efb9f4541f` |
| mode | candidate review | RateModelSlope<br>`0xe71957bffbcdad7278f4dc2cb44aa6e35d0f5967` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6461fc3ea4f5eeaf59e08e263572f0efb9f4541f` |
| mode | candidate review | RewardController<br>`0xa2c4ff1500f7e5137d2299642118df7a2c0ba82a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6461fc3ea4f5eeaf59e08e263572f0efb9f4541f` |
| mode | candidate review | Validator<br>`0x5ae221cec86bcdd0cdc616b6c2bbd95d0e68030f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6461fc3ea4f5eeaf59e08e263572f0efb9f4541f` |
| mode | candidate review | Validator<br>`0x8acbbeafd432b86a0772a2ae16df87885f062cdb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6461fc3ea4f5eeaf59e08e263572f0efb9f4541f` |
| mode | candidate review | xLAB<br>`0xd4ab4799e66c40485b136580ffa233f7bd2a9f8b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x6461fc3ea4f5eeaf59e08e263572f0efb9f4541f` |
| mode | unverified unclassified | UnnamedContract<br>`0x3a0362a50dd5df5887125ba5f12953989e072977` | non_address_book | unknown | unknown | unverified | n/a | `0x6461fc3ea4f5eeaf59e08e263572f0efb9f4541f` |
| mode | unverified unclassified | UnnamedContract<br>`0xa91a0471593603f2376c2d2571dc122e982153aa` | non_address_book | unknown | unknown | unverified | n/a | `0x6461fc3ea4f5eeaf59e08e263572f0efb9f4541f` |
| scroll | unverified unclassified | UnnamedContract<br>`0x0329e165f7ae102e1c622681243378c60d1aa8c3` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x09ad162e117efcc5cbd5fd4865818f2aba8e80d7` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x0d87897de4b3117d7820934026da639f6f7364d6` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x0ee0e8fa1005769f1d10b5c09e3c3b664d1415cb` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x119f312c25a1ceb9e6708660a1d47d4034bb8441` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x1ad1d4ae52a878a951d474ead62840e21da85ace` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x1e2410272bc9dcab8f368e9298d7620698062e78` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x21b291f5ec155393245df574ee27bed9c0891068` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x37097a6c1f933dbc536bb08754a248634b0bc045` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x43beb6d619722146b0fa0e78e6243283ee1eb2dd` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x4a920c111dafb3271d6300af2cb7764874383e60` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x50609fe6a078eb201077b9856392b158a15611de` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x5fb4d2a4d1bd6d69eed6e1900b287e860ec28b17` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x6820efa8ea99af12f97278b66b5bbada6350eb8c` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x6d833bde03c6483dee38430524340fdb282c5791` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x746a0693ee5a1c4c7020775a4e715ff9982909a0` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x760bd7fc100f217678d1b521404d2e93db7bec5f` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x7e986b80f0e26495a96180af38638f41ac27e9ab` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x804946e588441408a6a9d98ed046bc42f36ed388` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x8390045f82f93905a845730c9f7a4ddb147aa7f6` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x8b66510d2c7e1ce60f8d751a35c12b2441792a1e` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x9095a0b786cc7550f723a6d8716a41cfbbc4f4c3` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0x9659abd2b0c4cec3dca4c3ac8baddee68763058e` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0xa36813565d91f8478006fa8f893df0214a5c9bdb` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0xae3b25575e344e26551ac9f929415b184e5af522` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0xc9d79a493513a4e4db21679ef134075d4c609862` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0xd387327e3ece634f34b045ed506ed1554733d09f` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0xd5afd8838dc7b7e00cdc937aef14205718c4c61c` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0xec2d833c243ff7e96014cbaa0be12481f78edadd` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0xeeeef9a4c16c68708b1e2fe7826e41e28c2bf819` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |
| scroll | unverified unclassified | UnnamedContract<br>`0xf893d5510bd220fb84c3a116d220271a850ad979` | non_address_book | unknown | unknown | unverified | n/a | `0xc69db8646ebb786631f4bc357977eae9f66c353c` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-LineaBank-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LineaBank-v1.0.pdf) | PeckShield | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [PeckShield-Audit-Report-LayerBank-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LayerBank-v1.0.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [20250123-LayerBank-Final-Audit-Report.pdf](https://movebit.xyz/reports/20250123-LayerBank-Final-Audit-Report.pdf) | MoveBit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fvi5sScuffF7lLX6pHEo5%2Fuploads%2FgSR9vUclew9CtwxZGIL4%2FAstraSec-AuditReport-Layerbank-V3%20(1).pdf?alt=media) | AstraSec | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1856] PeckShield-Audit-Report-LineaBank-v1.0.pdf — no match: Contracts extracted from findings targets; no explicit scope table but report clearly identifies audited contracts.
- [1857] PeckShield-Audit-Report-LayerBank-v1.0.pdf — no match: Contracts extracted from 'Target' fields in findings. No explicit scope table found, but report clearly identifies audited contracts.
- [1858] 20250123-LayerBank-Final-Audit-Report.pdf — no match: Extracted 41 contract names from the 'Files in Scope' table (section 1.2) and findings code locations. Audit date from cover page: Wed Jan 22 2025.
- [1859] spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf — no match: Extracted contract names from scope directories and findings. Only three specific contracts are named in the report; other directories (leverage-looping, morpho-adapter, nest-adapter) are in scope but no specific contract names are given.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-LineaBank-v1.0.pdf | SaleLabOverflowFarm | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-LineaBank-v1.0.pdf | RebateDistributor | ambiguous — not counted | RebateDistributor (alternative) `0xc85836a3878e4dbbec91ac0701d4f6db08ce616d` — deployed 2023-10-27 09:29:39+03 — liveness: live (current_address_book_code)<br>0x1097cc… (alternative) `0x1097cc6f09cc0731e596d91d8b3b50de331cb5a7` — liveness: live (current_address_book_code)<br>RebateDistributor (alternative) `0x67d21527b227ec286409c6dd28d4704424ce006f` — deployed 2024-02-20 10:13:43+03 — liveness: live (code_present_context)<br>0x615b3f… (alternative) `0x615b3fa9e6546cd95864ca6c8a7f66b9a6545778` — deployed 2023-10-20 10:25:25+03 — liveness: live (current_address_book_code)<br>RebateDistributor (alternative) `0xea01659b66a682d41f4718bb62134ea8109fbfc6` — deployed 2023-07-19 09:22:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-LineaBank-v1.0.pdf | Liquidation | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-LayerBank-v1.0.pdf | xLAB | ambiguous — not counted | xLAB (alternative) `0x69e38d781183a52de5e7506cd57bc6c55bb74467` — deployed 2023-10-27 09:29:09+03 — liveness: live (code_present_context)<br>0x4e3a9d… (alternative) `0x4e3a9d352cc89b18dfddc6af1b578fcb2cb6d0ba` — deployed 2023-10-20 10:25:01+03 — liveness: live (current_address_book_code)<br>0xce5848… (alternative) `0xce584875a584485bff208a4fc2c70cb7e98f98c3` — liveness: live (current_address_book_code)<br>xLAB (alternative) `0xd4ab4799e66c40485b136580ffa233f7bd2a9f8b` — deployed 2024-02-20 10:13:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-LayerBank-v1.0.pdf | Leverager | ambiguous — not counted | 0xc876cd… (alternative) `0xc876cd18c3a7ca6eef115deb5f4ecd95e0fa2e76` — liveness: live (current_address_book_code)<br>Leverager (alternative) `0xf0dcba2dd51311b5ad5770573edb8d39d39029e5` — deployed 2024-02-20 10:15:17+03 — liveness: live (current_address_book_code)<br>Leverager (alternative) `0xc98b936d7540ba67c2260916ae91b3eeb9eefff3` — deployed 2024-03-12 12:10:38+03 — liveness: live (code_present_context)<br>0x51aca2… (alternative) `0x51aca2cd4355227beae20a8a0a7e30b8f85caa98` — liveness: live (current_address_book_code)<br>Leverager (alternative) `0x4054f478ec834fbdb2b192f144d4615d31bda9a6` — deployed 2023-10-27 09:31:59+03 — liveness: live (current_address_book_code)<br>0x670163… (alternative) `0x67016362527a13850fe7775b818777a930b5a3a2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-LayerBank-v1.0.pdf | RewardController | ambiguous — not counted | RewardController (alternative) `0xa2c4ff1500f7e5137d2299642118df7a2c0ba82a` — deployed 2024-02-20 10:14:07+03 — liveness: live (code_present_context)<br>0x20112c… (alternative) `0x20112c6128550e13600d52200a5f185c6aae4e42` — deployed 2023-10-20 10:25:55+03 — liveness: live (current_address_book_code)<br>RewardController (alternative) `0x68b30d4c712bb9b629eb79595a6c804e5968eb40` — deployed 2023-10-27 09:30:19+03 — liveness: live (code_present_context)<br>0xc8485b… (alternative) `0xc8485b4b7899e75149c74c18798b0cc3487cab37` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-LayerBank-v1.0.pdf | RateModelSlope | ambiguous — not counted | RateModelSlope (alternative) `0x709be039a87e5c6f1a085de0d167fa0a4e7477fc` — deployed 2023-08-10 10:42:56+03 — liveness: live (current_address_book_code)<br>RateModelSlope (alternative) `0xd2ef9a563525c1409c1d48518dbf164ef9df3cf4` — deployed 2025-01-15 14:32:54+03 — liveness: live (code_present_context)<br>RateModelSlope (alternative) `0x16cd8dace8569c7bd4e903c864444367b9f7b1af` — deployed 2024-02-20 10:14:29+03 — liveness: live (current_address_book_code)<br>0x5478ca… (alternative) `0x5478caa24512e4865fc494b3996d319387f3ed58` — liveness: live (current_address_book_code)<br>0xa6bbba… (alternative) `0xa6bbbae25277a10f2258384c114920a4712d4798` — liveness: live (current_address_book_code)<br>0x04a469… (alternative) `0x04a4697415147a400a45b913ef6098aa7561c544` — liveness: live (current_address_book_code)<br>0xf93078… (alternative) `0xf930785cb93d2ab6e483015aee6442b59566b0fb` — liveness: live (current_address_book_code)<br>RateModelSlope (alternative) `0x56294e2de1f7da3bfd9d0b26a06279c7e3c94899` — deployed 2025-01-15 14:33:03+03 — liveness: live (code_present_context)<br>RateModelSlope (alternative) `0x8a6c881a5fdb42604c9fe6e206350dfdd6616178` — deployed 2025-01-15 14:33:12+03 — liveness: live (code_present_context)<br>RateModelSlope (alternative) `0x27f85bd47740139a56e34124b33481ea6e1e660d` — deployed 2023-10-27 09:30:59+03 — liveness: live (current_address_book_code)<br>0xd27409… (alternative) `0xd2740958cf90072f540b934a03ca9c6a884cadfe` — liveness: live (current_address_book_code)<br>0x92ce82… (alternative) `0x92ce82ab8ae3648f03ccfd16d7a7ae8ca4911bba` — liveness: live (current_address_book_code)<br>RateModelSlope (alternative) `0xc690549e0215192d1ffb527bb3ca4d4ba638cad2` — deployed 2023-07-19 09:24:31+03 — liveness: live (current_address_book_code)<br>0x18941f… (alternative) `0x18941f10b29a7f6d5290f3b1d5fcc7ae9f6f8df4` — deployed 2023-10-20 10:26:23+03 — liveness: live (current_address_book_code)<br>0x043962… (alternative) `0x043962844e12555968777722e6ed2714c1851475` — liveness: live (current_address_book_code)<br>LToken (alternative) `0x7def25c6c2b4bc9e9fb5122d22650f8ecdfeff45` — deployed 2023-10-27 09:31:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-LayerBank-v1.0.pdf | LToken | ambiguous — not counted | LToken (alternative) `0x864ae2880cfdee8dd98b74cd0325d89024744e88` — deployed 2025-01-15 14:34:45+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x9e9aec6a296f94c8530e2dd01ff3e9c61555d39a` — deployed 2024-03-12 12:09:18+03 — liveness: live (code_present_context)<br>LToken (alternative) `0xd97905cc56030a6e9b618d6e26cc9ee2eaa15948` — deployed 2024-04-02 17:24:09+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x71384b2c17433ba1d8f6fe895e9b2e7953dced68` — deployed 2023-12-15 09:17:59+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x66a5e18e36bfea86074a047954fec7c94ced366e` — deployed 2024-04-19 09:26:41+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xfd160b6818254af48171a7731eba26dee6f16902` — deployed 2024-04-02 17:24:21+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x6fe39525298118a6b58646b83f6b23e48208a855` — deployed 2024-06-13 08:35:45+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xdf4b60ce539648ab05541827a3bf0a079a5fc1c2` — deployed 2023-11-08 09:42:29+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xba6e89c9cda3d72b7d8d5b05547a29f9bdbdbaec` — deployed 2024-02-20 10:14:53+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xfb9292c180bb6056487af44ef077fde90b9c86b3` — deployed 2025-01-15 14:35:12+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xc7d8489dae3d2ebef075b1db2257e2c231c9d231` — deployed 2023-07-19 09:24:55+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x2ad69a0cf272b9941c7ddcada7b0273e9046c4b0` — deployed 2023-07-19 09:25:19+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x67492784ec588681e55b2bfc0118d882a8f23e48` — deployed 2024-05-22 08:59:18+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xc5b9cb1a26fb1f9b8e26d8d357cb950f53df4959` — deployed 2024-02-20 10:15:05+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x10e4a696a8856ec30df96d3de96f84dc30e78e41` — deployed 2025-01-15 14:33:39+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xc0600bfb1dc7b0c584bf67b15c773be891408865` — deployed 2025-01-15 14:35:03+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x1c0577f2d57e0bf3f4ad5a055a4dd2e52a0c325d` — deployed 2025-01-15 14:33:48+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x308294607b5bc2ebbcd8b30074a37ba59b6919ff` — deployed 2025-01-15 14:33:57+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xea0f73296a6147fb56bae29306aae0ffaff9de5f` — deployed 2023-08-10 10:42:32+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xa630475ef1511e54f9b061d6d830e19be182bc79` — deployed 2024-06-13 08:35:55+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x59dd441184024a77fd17e68f07e242622806c256` — deployed 2024-04-19 09:26:29+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xb81b1e2ee4c867c95ec7041f6c22e0e89328d890` — deployed 2024-05-22 08:59:30+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xe855b8018c22a05f84724e93693caf166912add5` — deployed 2024-02-20 10:14:41+03 — liveness: live (code_present_context)<br>LToken (alternative) `0xdf62df0986fd8e7a3844949ca9918b6b9b3c8edf` — deployed 2025-01-15 14:34:15+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xe6a89cfee340ebfe9d05b5af131526e006baf543` — deployed 2025-01-15 14:33:21+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xccba9ac94531e15aa55d9065e398812f06b84f14` — deployed 2024-03-12 12:09:58+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x9d8ecb502d2ac290644d70a096165188d47e21a4` — deployed 2023-11-01 10:41:59+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xe009af49a384722657579812a304602f430f8750` — deployed 2025-01-15 14:34:33+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x00bce4d6c3e138c25b79a6fbf09e9335e188d33c` — deployed 2025-01-15 14:34:27+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x9f8b5de4191db60e7b1d2ed448084657c0b46c19` — deployed 2024-05-22 08:59:12+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xb01f9de93374a6b287372008ab8739c7ddb7ce28` — deployed 2024-05-22 08:59:24+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x472d43a8f00a41c3431e549367d2de2e07c5e388` — deployed 2023-12-15 09:18:19+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x7479c717f2b72116d15b4eaf8d540c497e07e0b6` — deployed 2023-10-27 09:31:19+03 — liveness: live (code_present_context)<br>LToken (alternative) `0xe33520c74bac3c537bfeee0f65e80471f3d564b9` — deployed 2023-11-09 10:28:59+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x8fefabe1b9a530d9d0f0ef25e84a9d8b56ab2053` — deployed 2024-03-12 12:10:18+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xf2794efbf9c510f107928e1400eb2a108252725d` — deployed 2025-01-15 14:35:30+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x6a0d9584d88d22bcad7d4f83e7d6ab7949895ddf` — deployed 2024-04-02 17:23:57+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xcdfcfdb11b75c53e43e4f1f19ecfc16b321d15f8` — deployed 2024-06-13 08:35:33+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xe07492f13d67bff89a82ea0102fb70eac49b0cae` — deployed 2025-01-15 14:35:21+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x2c88a441418e06b9f3e565c2f866fcb03c9409e2` — deployed 2024-04-04 08:23:49+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xd1a761248ac61bc566212c3931c2605d8cb8ad3d` — deployed 2025-01-15 14:34:06+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xeb27ea9f1891bbfe7fbc3d111d7bf3aa9709fef2` — deployed 2025-01-15 14:34:54+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x7def25c6c2b4bc9e9fb5122d22650f8ecdfeff45` — deployed 2023-10-27 09:31:39+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xf8a89b4586c76e30853923b8e2803f80fd230d60` — deployed 2025-01-15 14:33:30+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xf46680e9987f334041656abeb83b87c2494dc751` — deployed 2024-05-22 08:59:36+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x14abc603b6471aae51f92e6f7cc5be7cc6eefd14` — deployed 2024-05-22 08:59:42+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x5924117c4a5e000312684a5e76e90cc93addde6b` — deployed 2024-03-12 12:09:42+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x604ddc9c59572d197b983f0578e58e61026765ed` — deployed 2024-01-19 07:51:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-LayerBank-v1.0.pdf | Market | unmatched — not counted | — | Target in finding PVE-006 | no |
| PeckShield-Audit-Report-LayerBank-v1.0.pdf | CoreAdmin | unmatched — not counted | — | Target in finding PVE-007 | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | helper | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | standard_token | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | coin_wrapper | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | stream | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | oracle | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | reserve_config | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | user_config | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | error_config | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | math_utils | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | wad_ray_math | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | large_packages | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | acl_manage | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | a_token_factory | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | token_base | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | fungible_asset_manager | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | variable_debt_token_factory | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | supply_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | flashloan_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | generic_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | bridge_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | liquidation_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | validation_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | user_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | borrow_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | emode_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | isolation_mode_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | pool_data_provider | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | pool_configurator | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | pool | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | staked_token | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | emission_manager | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | ui_pool_data_provider_v3 | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | eac_aggregator_proxy | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | collector | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | ui_incentive_data_provider_v3 | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | package-manager | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | admin_controlled_ecosystem_reserve | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | rewards_controller | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | ecosystem_reserve_v2 | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | coin_migrator | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | transfer_strategy | unmatched — not counted | — | listed in scope | no |
| spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf | MaverickSwapAdapter | unmatched — not counted | — | Listed in scope and mentioned in findings H-1, M-1 | no |
| spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf | MaverickLeverageStrategy | unmatched — not counted | — | Listed in scope and mentioned in findings M-2, L-1 | no |
| spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf | MaverickAdapter | unmatched — not counted | — | Listed in scope and mentioned in finding H-1 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x8efdd7396b83cd53ae7555224a30c41b1a100ffa` | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0xb7a23fc0b066051de58b922dc1a08f33df748bbf` | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x80980869d90a737aff47aba6fbaa923012c1ff50` | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x009a0b7c38b542208936f1179151cd08e2943833` | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x43eac5bfea14531b8de0b334e123ea98325de866` | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xec53c830f4444a8a56455c6836b5d2aa794289aa` | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x67c10b7b8eefe92eb4dfdeeedd94263632e483b0` | LABDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xe8c3ba0c2ac39f9d97bcebf913e480b55d4c1aec` | LABDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x5d06067f86946620c326713b846ddc8b97470957` | LABDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x20a512dbdc0d006f46e6ca11329034eb3d18c997` | LABToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xfe67e16313f4b38743a153f74d5762f7c83e59ae` | LABToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xb97f21d1f2508ff5c73e7b5af02847640b1ff75d` | LABToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x4054f478ec834fbdb2b192f144d4615d31bda9a6` | Leverager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xf0dcba2dd51311b5ad5770573edb8d39d39029e5` | Leverager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xc98b936d7540ba67c2260916ae91b3eeb9eefff3` | Leverager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x14c5a2b562754ed412708a103fb9cb65b1b16494` | Locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x00bce4d6c3e138c25b79a6fbf09e9335e188d33c` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x10e4a696a8856ec30df96d3de96f84dc30e78e41` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1c0577f2d57e0bf3f4ad5a055a4dd2e52a0c325d` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x308294607b5bc2ebbcd8b30074a37ba59b6919ff` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x864ae2880cfdee8dd98b74cd0325d89024744e88` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc0600bfb1dc7b0c584bf67b15c773be891408865` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd1a761248ac61bc566212c3931c2605d8cb8ad3d` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xdf62df0986fd8e7a3844949ca9918b6b9b3c8edf` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe009af49a384722657579812a304602f430f8750` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe07492f13d67bff89a82ea0102fb70eac49b0cae` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe6a89cfee340ebfe9d05b5af131526e006baf543` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xeb27ea9f1891bbfe7fbc3d111d7bf3aa9709fef2` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf2794efbf9c510f107928e1400eb2a108252725d` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf8a89b4586c76e30853923b8e2803f80fd230d60` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfb9292c180bb6056487af44ef077fde90b9c86b3` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x472d43a8f00a41c3431e549367d2de2e07c5e388` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x604ddc9c59572d197b983f0578e58e61026765ed` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x71384b2c17433ba1d8f6fe895e9b2e7953dced68` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x7479c717f2b72116d15b4eaf8d540c497e07e0b6` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x7def25c6c2b4bc9e9fb5122d22650f8ecdfeff45` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x9d8ecb502d2ac290644d70a096165188d47e21a4` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0xdf4b60ce539648ab05541827a3bf0a079a5fc1c2` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x59dd441184024a77fd17e68f07e242622806c256` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x66a5e18e36bfea86074a047954fec7c94ced366e` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x6a0d9584d88d22bcad7d4f83e7d6ab7949895ddf` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xba6e89c9cda3d72b7d8d5b05547a29f9bdbdbaec` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xc5b9cb1a26fb1f9b8e26d8d357cb950f53df4959` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd97905cc56030a6e9b618d6e26cc9ee2eaa15948` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xe855b8018c22a05f84724e93693caf166912add5` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xfd160b6818254af48171a7731eba26dee6f16902` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x14abc603b6471aae51f92e6f7cc5be7cc6eefd14` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x2ad69a0cf272b9941c7ddcada7b0273e9046c4b0` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x2c88a441418e06b9f3e565c2f866fcb03c9409e2` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x5924117c4a5e000312684a5e76e90cc93addde6b` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x67492784ec588681e55b2bfc0118d882a8f23e48` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x6fe39525298118a6b58646b83f6b23e48208a855` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x8fefabe1b9a530d9d0f0ef25e84a9d8b56ab2053` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9e9aec6a296f94c8530e2dd01ff3e9c61555d39a` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9f8b5de4191db60e7b1d2ed448084657c0b46c19` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xa630475ef1511e54f9b061d6d830e19be182bc79` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xb01f9de93374a6b287372008ab8739c7ddb7ce28` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xb81b1e2ee4c867c95ec7041f6c22e0e89328d890` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xc7d8489dae3d2ebef075b1db2257e2c231c9d231` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xccba9ac94531e15aa55d9065e398812f06b84f14` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xcdfcfdb11b75c53e43e4f1f19ecfc16b321d15f8` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xe33520c74bac3c537bfeee0f65e80471f3d564b9` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xea0f73296a6147fb56bae29306aae0ffaff9de5f` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xf46680e9987f334041656abeb83b87c2494dc751` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe1a2d363fa2645830f137f589de29bf7bfe12fff` | PriceCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x90286f894020950981c9e3196bacb03a223e4cfd` | PriceCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xa6b2535b1c10ca5592be90a01dd1b6018062f7cf` | PriceCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x42e62fec1036f874a7579806530d628a59b6d7fb` | PriceCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x56294e2de1f7da3bfd9d0b26a06279c7e3c94899` | RateModelSlope | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8a6c881a5fdb42604c9fe6e206350dfdd6616178` | RateModelSlope | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd2ef9a563525c1409c1d48518dbf164ef9df3cf4` | RateModelSlope | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x27f85bd47740139a56e34124b33481ea6e1e660d` | RateModelSlope | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x16cd8dace8569c7bd4e903c864444367b9f7b1af` | RateModelSlope | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x709be039a87e5c6f1a085de0d167fa0a4e7477fc` | RateModelSlope | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xc690549e0215192d1ffb527bb3ca4d4ba638cad2` | RateModelSlope | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0xc85836a3878e4dbbec91ac0701d4f6db08ce616d` | RebateDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x67d21527b227ec286409c6dd28d4704424ce006f` | RebateDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xea01659b66a682d41f4718bb62134ea8109fbfc6` | RebateDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x68b30d4c712bb9b629eb79595a6c804e5968eb40` | RewardController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xa2c4ff1500f7e5137d2299642118df7a2c0ba82a` | RewardController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9afa0a536d695f915adea6575f102dc1a228dfa6` | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x3447275b4252b7929483528cf966eb466e71277e` | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x0ccd703acfe6ce83377243c2dbf9d55a09e12769` | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x720a99762bb3d2b98c8ddd64e13b0851355ca0e7` | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xe9e061172117e7bdee0df103e8f697b0858d4ab9` | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x69e38d781183a52de5e7506cd57bc6c55bb74467` | xLAB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd4ab4799e66c40485b136580ffa233f7bd2a9f8b` | xLAB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 100 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 201 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 6 ambiguous, 48 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [1856] PeckShield-Audit-Report-LineaBank-v1.0.pdf
- [1857] PeckShield-Audit-Report-LayerBank-v1.0.pdf
- [1858] 20250123-LayerBank-Final-Audit-Report.pdf
- [1859] spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf

Fork inheritance lineage and inherited audits are included when available.
