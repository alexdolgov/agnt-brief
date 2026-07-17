# Agentic Audit Brief: Kogefarm

## Project Overview

- Project: Kogefarm (`kogefarm`)
- Website: [https://kogefarm.io](https://kogefarm.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.309Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: polygon
- Contract surface: 156 unique implementations (162 raw deployments)
- DeFi Llama TVL: $131,336.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 14 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 14 contract(s).

## Contract Surface Quality

- Indexed contracts: 228; live-surface contracts included: 162 (10 live, 152 unknown).
- Excluded by liveness: 66 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/3 (33.3%)
- Deployed-live implementations: 4 of 156 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 152
- Unique implementations: 156
- Raw deployments: 162
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 25.0% | 2021-10 |
| unknown | Tier 2 | 1 | 25.0% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| vaultBase | core_logic | polygon | n/a | 7 deployments: polygon [`0x2d03892d0fae4479ae2b0d945f67675f006f7271`](./contracts/polygon-137/0x2d03892d0fae4479ae2b0d945f67675f006f7271/); polygon `0x510d776fea6469531f8be69e669e553c0de69621`; polygon `0x55c08f4f053170009010cf7435064d5e0e6905e3`; polygon `0x58201c1331bf7f36ed326af0789a33851019875b`; polygon `0x58fe96934a595df1c03bdda09f0fdba38063770b`; polygon `0x7a9be7cdf26c8311625ed97c174869fca9b791ec`; polygon `0x992ae1912ce6b608e0c0d2bf66259ab1ae62a657` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Koge | unknown | polygon | n/a | [`0x13748d548d95d78a3c83fe3f32604b4796cffa23`](./contracts/polygon-137/0x13748d548d95d78a3c83fe3f32604b4796cffa23/) | ⚠️ Unaudited |
| MasterChef | unknown | polygon | n/a | [`0x6275518a63e891b1bc54feebbb5333776e32fabd`](./contracts/polygon-137/0x6275518a63e891b1bc54feebbb5333776e32fabd/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0x3885503aef5e929fcb7035fbdca87239651c8154`](./contracts/polygon-137/0x3885503aef5e929fcb7035fbdca87239651c8154/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (152)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x02bc4f42b998fc23355c780a756446d9998d78de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x036aa08b29b29955f76708a4efe551a7e6ecdc0e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x055f6e9772bf88d3c18bddf1fefa41657da21983` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a5e266afb071cb0f69310706154f2893a208d1c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0d473ce1bbed034eae96e0855a4ceca93344cbca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x150504edb7c8aa717d731b37c8686d5e4018192e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x175ccef2082380e700a7fbdb5c564e59e0d8c490` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1b15dcb7dc4ac930d10746ba9423464b2fc56b24` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1c5fceedff4ad22f86b67ae53b5e737f13bf662d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1f4124500d27ed6a3f637f51ff7f2a648bcbb5fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1fa43cd5b5ba91e9e14d48d93910e48721f8580c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1fbe0086499b187715985928c31e1262d8ed7df9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x248d6ef40059d0fa3cec68c7ac52f5e13264c2fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x25ae4578add490d8ee2b16c762f6713bbf7626cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x266b88cb117d500b4061e793a3137ae24759d448` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x28c5749f66fd89983f97a242e0ced73b04a08b45` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x38a4ec6d6785f7470e2ad64783a58b1d04e7b263` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3ccb87cd0c8a832eefcfdb403134b85fca58019d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3edf01c929552d86f9296cde4af4551f25102c45` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x440f602eb2fef0da26042f80c53ad289f6185f64` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x47026b9989329d120a645c11ac13df37c031e439` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a4efa4909d9d5eb7aec43e038915dc1853d7cfb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4b21b85f01502a88b4a5a2fc27918393a329f718` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5bdc94c7b323bf64954cf7fc0d9ddc53621e72a2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6c3c05f52b7103c1bede6c3454478b4fab8d751a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6cb10b76ee6600e0b030fd7f6f4e179dffe4092a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7846a5e6615960a1599ea6f8e3992886d0b690f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78bc87fc0ea164cf64e80c7c69ebfaf3a35fcb97` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78ed10b2742bbfa8c7955345e4b8b1b93be20558` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x79578e8ed06e9b38b522d60717710fbbe729bf1c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7a0333e059ad4492b5db187aa7047204a0bf53ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7a412e9611242177e56f346dd038b78246b99db8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b12644f3d6ec3dbaa78432718eb6ee8b06fbb53` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b21b49c6d374b4caee3b5fd8942d79e7f800a78` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b87e4f73bcf2e9ae24b2f32f22648d841f2607d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7db3a8fda64bdb4c290b7b45c6caaa16dbcdd270` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f9fc5ba0c2d213c9eee7940fefa1a7a297b2320` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82e553b4b645a195bea0e6c78c05483a07cf6116` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x846c27ec821f67a9177c56f0ca6fec4cfc5e5c8e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8488e2f70055fdc2acdf511be789aeb93ae0b1b3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x85a4f9591938b68b08b197d2b1ae3c3e3b2bcac1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x86da4681509b170ad1b9619e26d77b236385443a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x88a60dec5e6e4a2fe09a8dcfee64e0f768fa06bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a1044b404172fdfe3a35a1b76e532bf25431994` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a8c784dde052de731a4477bb95b4f594f5b9bc3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b9c797dbcfad409747962d1fe4718a9660db94b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8bb39beecf8b5d0560c813e56860f5d35a7312ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x90e2293376a18211ae307f6a6b880490498bdacc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x918b7068672df173d685fa580701bb5115b04bb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x93b709ae83e59682edb5e4869cfd5b836dd1976d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x95ad05b40e79e78053360a7656d4e4bbf90df6f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x962c3b1c9190f90a80ab69e87e059990b57e4dfe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x970ac164935461746c89961858bea1728822aa96` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97789a4619c093faaa0d8bd729464193c6a99e49` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97b0262670f3f640a6be287f403302e2285f5a87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97f27fc4d54d0002e800f484f25037a0a00d1345` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9961f4a06cc1fdb826b204b8d7b87d3b8aa7ae49` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99d41644b80a9c44715e263f61387a9351901647` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a48219d7b3106baad3f5d6cf50d94f1cf747c8d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9adeb15b242d7382fff1b8447c6afb0ba55634a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c347d804429bc37d65e56aa6c5a07cb8e0edabb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c576f637ba2e7ca363feb522592766e6cb34cca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c66b4add6d601c5a6f8849e5fff24001d504655` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d78128f12de489352668b41709d956830a3b4b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9dfdbf4f0ed65b6a88f086d2380d269641453cb6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9f21f57f8bb17bc12757f3f37b40ee763c10fd7c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9fe7994b82797eae8a1fddd90aeccdb15a59a021` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa097ac524db214ea5ee9542578748978d166926b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa104c9aad3ee07676d23159282124dcd3f542c62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa241d8e297e95badede8579b3bd1dcd18be2dd70` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa32de2a04f68a17f6289105ce98baaa97f415309` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa344053479abc2f457f02b62a434ed07b29e9bac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa41b050404332af83aef51b0eeb0d8872272417c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa89414dd5e57b896a3b20137d36b46a3af12066a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa981fce675d365557c325232881c001f8aa3c6ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaa5237ff567987445e1ac35d5148c11ef3703173` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaadd72fa47284ae53f67f2b769566fcd8fd3aeba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xad547dd385c5cc923f9a0d107f06ebb60ba2b21b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaddabe5a8ff9d6efd51461734b917329c946dc72` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xadeab5e15c09c5f35b9a6ece204c5abd51fbb1fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae3bdcf55fe53408ec4ad07480368e04c795575d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae426d5e4034d1ffba0e3af7a34495ecc588ae95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae48acc701151061a5bfff8e4c3f0dcfe4a957e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb02d3afe88a5ed89d5ba334a18c9044ff2381445` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb0c26ce1eecb503dcc488163853332ff61f2f6df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb131089e899a6f2e7726b83b85c32bbe097b138b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb159b942d2d2f3855d200eb194f810d0af426257` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1d3857e4435199cd6bae09f6eca346355bdbe12` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1dc0486ea7d41b6cde43267ea4b896b17827b57` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb2026e662fc2ee847aeba83fa5f0c5b6ebb4f9bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb33576835cc51ef8d71ccb861775b2821470bb71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb491979cb7771ca7566d9c81c8183a53b947ea47` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb496f3b180919248ebe1252ec29de0b14f99e697` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5f4c152870b39bd7e300d4bcdff1ecc0c6426c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb6dfcc4d1ab179d981f00eeace677973ed6a3c50` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb9a4d32a547a4865e5247d611de7f3d7f3b2d378` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbac4fc975561c31f2fd2ed22e48855c1957e5cea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbc036a0c3f0bfd81bd1e1708f5005a3ed9ce771a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbdb501edd5b3c26746ba9b3ef2e64e805ccdc61a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc0c776e73d5af5f0879563908036546b5b60703e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc22f98618320e4d47b2893740070a98dc1cc3516` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc2386546a9710c00a0383d896a861154d45dac94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc47479bdec23fa3661a15398a139908c834ac589` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc4f9efd0cf62ddef06581e0def84a3783ba60d9e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc548352aeb28af9eba82dd5ad9965d7be6f0a912` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc76572e6d148d95f3c23c70e5db29554b88c33aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcc5eeb64dd0bccfa51c048575f1f8457f782a07b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xceaba5d0486feae3c2d5cebe46f04f81a9a8118a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf0a5c28c99f48b44420cd2cec56249e867c1806` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd1807eb605a2ec13b2ede875536a89b1e07efb80` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd1fdfb2be4fd5e7ee5b9d6e91538b2cf073b8aa2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd2056dd1cba4eb4580d6d4886fa757c1a84fc71e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd266268782c10d2999c56d1f643a3531886769a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd26b6b9dc91de80079d352dc235fccdf418a2fe3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd40775038b8ed30ad8ce754f716e5c2701845a93` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd4d8ba0fe0e21a5cc686397869b4c1ff92dfc8ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd69ff9b272e38a94350626850368c0fba5ca705b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd73a3c12cbbbf3960ca7089f246ea91e9a22a753` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd76958342e87455df271988f0d7e38f7cb872347` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd78223162063b67f3e6783db32cc2e7a6c891e8b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd9aca87c77b4b9126bdaa25584d0aaa23b53c861` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd9c804fd586f355eabe60506f8dd218d4711e2ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdb382885cfd2a2fd2e2c3d4d6964c8a8b17c0f84` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdd6f1c031d53ae5ef77888806285f937a905d6b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdf47221a2240754245dd3b88e01100c0d1d85aa9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1123d7e329b78b95889f50a711a7ca46cff6521` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1a9ab14b4c0efa25a1ee6f1348ef4c34418c258` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe2084688c1c3df704c5533eb8d3dfa0492d90c70` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3f2aa03d4826fd1124603552543a599a465f407` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe42fdde0d202b892c4c234fe01d259ba604f581e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe4b488eb428aa7393663e7c8e0a10c44321fa19c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe60ff9b586e645f80cd761890f0c548b512a55b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe6b896baa491eb2695ec5f5ead35b473ea1386fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe80d7246ecd89cb8707001c61f652b90eea0dbc4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe8f57c74b6e8712c9715263b91bf19a4190616c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe92f4cc69e43ec88a4f7e17d1e19b99bc130e571` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe967b0b12d8eb23c91b1ad776487c3639c4ffb91` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea2f645691d114f0a7fa7a759032f8c6f90d58d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeadcb0469f05fa07d4f5178fc762c5c872b6d9c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeb0181e444eda912b8fad222bf9d35fde2d8f0c7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeb13036d00994559630405e688ea120e00f41fe6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xecaad0a58633c8df3639ca27b06237243ed90edb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xedcedd8c53b4f7f65d82d4ed8394192119f8a05e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf0280811710f45808b2da5e4078bb722cb3c54ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf0db902352dfe1eaf8deb2a2eb5c760568821f58` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf214ecc139f32783c815e783772a46258790a691` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4fb31b3925c81f4dfe0406ff6d84598bc215bfc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6cf9a3cb64c97d6278a57fa322d9945aa42e417` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf76cd9abd77ce5f0d205671f5bce839f4e9192d9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf94a2f937904842c04d3bc6fcffd523dfa3b263f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf9a86631e0b00f40a93b4575f2c90629b0083a75` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc29b3a59aaa6f1bc138ba17ef80ad5ba13d53de` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Kogefarm.pdf](https://github.com/Tibereum/obelisk-audits/blob/main/Kogefarm.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 1 | n/a |
| [paladinsec.co/projects/kogefarm](https://paladinsec.co/projects/kogefarm) | Paladin | Audit | 2021-10 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x13748d548d95d78a3c83fe3f32604b4796cffa23`](./contracts/polygon-137/0x13748d548d95d78a3c83fe3f32604b4796cffa23/) | Koge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6275518a63e891b1bc54feebbb5333776e32fabd`](./contracts/polygon-137/0x6275518a63e891b1bc54feebbb5333776e32fabd/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 152 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
