# Agentic Audit Brief: Zircon Gamma

## Project Overview

- Project: Zircon Gamma (`zircon-gamma`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.907Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: moonriver
- Contract surface: 182 unique implementations (197 raw deployments)
- DeFi Llama TVL: $2.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 10 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 231; live-surface contracts included: 197 (22 live, 175 unknown).
- Excluded by liveness: 34 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/7 (85.7%)
- Deployed-live implementations: 7 of 182 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/7
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 175
- Unique implementations: 182
- Raw deployments: 197
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 85.7% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Migrator | unknown | moonriver | n/a | [`0x7276dcc889c92234b0d2d2562dd9fd0e94d24248`](./contracts/moonriver-1285/0x7276dcc889c92234b0d2d2562dd9fd0e94d24248/) | ✅ Audited |
| PsionicFarmFactory | unknown | moonriver | n/a | [`0x97b2ae105dafb7dc8a73c93e5f56d3f095d0dcf3`](./contracts/moonriver-1285/0x97b2ae105dafb7dc8a73c93e5f56d3f095d0dcf3/) | ✅ Audited |
| ZirconEnergyFactory | unknown | moonriver | n/a | 7 deployments: moonriver [`0x1a1956b60623cd52cc38d8aa62ac4e54d6a47e50`](./contracts/moonriver-1285/0x1a1956b60623cd52cc38d8aa62ac4e54d6a47e50/); moonriver `0x1f580724b4b2a95c00b144fb2ebecd41a15eba74`; moonriver `0x33c5b2131244a5a0ab05242364233414e5a7e325`; moonriver `0x3b7d45092a6776b5b2fb6358e41a6e0c7cf5305e`; moonriver `0x911fce21afca0b3e63d700ff3a22bfce6c53e6f3`; moonriver `0xdeb930f8518d0a9169836944b6e176813c3718fa`; moonriver `0xfc413b0b8481eebcf335eb35b1a7a634fef64649` | ✅ Audited |
| ZirconFactory | unknown | moonriver | n/a | 4 deployments: moonriver [`0x6b6071ccc534fcee7b699aab87929faf8806d5bd`](./contracts/moonriver-1285/0x6b6071ccc534fcee7b699aab87929faf8806d5bd/); moonriver `0x8c91cc36a2a1910d2bd0c18ac5964b07b5fa96db`; moonriver `0x98340c9a7aa3a32a5780c726f7a61fd3828d1775`; moonriver `0xbbd8547fe87f670dcc94d7b9543285844edba9a2` | ✅ Audited |
| ZirconPTFactory | unknown | moonriver | n/a | 3 deployments: moonriver [`0x2d4ddeb8b183413e9d88a98fa3dd844e34d41c54`](./contracts/moonriver-1285/0x2d4ddeb8b183413e9d88a98fa3dd844e34d41c54/); moonriver `0x3dc6f6d890cbf8a14146adacb0d07981e6f5f4b1`; moonriver `0xbc67eb3617d3bc07acfb282de32495baa49531df` | ✅ Audited |
| ZirconPylonFactory | unknown | moonriver | n/a | 5 deployments: moonriver [`0x1153550210bbef5b74890b242f37ae24e1f41440`](./contracts/moonriver-1285/0x1153550210bbef5b74890b242f37ae24e1f41440/); moonriver `0x2e08262c99431d60b11c3ffcdd9bebfbdcc2d299`; moonriver `0x65815a6e55fa08fcde76ad772bd64a4f264a6924`; moonriver `0x96dee24356d4db902be49811f4043663e3f23b97`; moonriver `0xde75d76c7471ff2f5363433222412f6cdac0ef1c` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ZirconGammaToken | token | moonriver | n/a | [`0x4545e94974adacb82fc56bcf136b07943e152055`](./contracts/moonriver-1285/0x4545e94974adacb82fc56bcf136b07943e152055/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (175)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonriver | n/a | `0x021d56b1684ea69a795b414f498998b2d140f18b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x03209097d62b3eb7e62b2db13bb2729a3431f437` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x051c97988ba9fcb26ad52edfdb0466f9f239a582` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x061857daff128aa20d270b761ca6541f0584d3a5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x082520edd36a2e2a896000c87ccc43f1d2e53742` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x09f8e0aea93bcb511276a166e6e57e02e5cc1e0a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0b1ff2061508fbda9b350356f50ca005f05da3cd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0b2ad6c1f73791133e3df479285895ddc090db34` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0bd83aed3831b109c85346aa697c8d720e7befe7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0c304a371f07ce68f593bd95221d04b79a3b6e7b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0d03022f1b409151357122d017cc19067bea02df` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0eb07cf03405255f6c406b33b5fe029fc6f60fa8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0f45f120d6e596c44d0f85817caa65bd697f1d60` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x118c5a1806dac6b9914e9d7f74b488cf504c7fb3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x118d64f1cb7f843a50eae76a5ce5a02deb617e4f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1234f5318ae71813fb03013a4ab3c302b750837c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x177f2f7cf520915a57f3f90635a6a42504e9fc8b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1781ec0e33a40063156bace7daad6e843ab14e0e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1c265baf8307cadaff3e3eb0eb9085cbf7e3c217` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1e0c08ef0cccc4ef1b54b2a923f748152179578c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1fe5a22070ba9489f64b5eebea753641b875f4ad` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1ffa4dd0eefb886cbde427bc29d2cc8b877c3a58` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x232d5109154a3e41c77e2d2ddc8b918df368cd9e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x26afe97ea9af1a1ebae5bc2c16715a0a20822dda` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x274b8752ca123712d9b966e53673092bb4d10311` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2939ccbf012206327dd9febfbf227e03a9ad2a40` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x298f663f3bf899480fbd00b7c728527a794b30a1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2ab8047dc30caafb83ce386590d08b806ad65e6e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2b0b3e7b54c3c551a09b01536a52f1dcd1c20405` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2b5c5d00d3193bef4241ae42b4c888945ce53ccc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2ce0bae1f6ad62bea22cfef1b4fb0ada345b2eeb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2dbb1aa7502cbc9a107b74354736353999eb97af` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x301f476b5add5ccbc713507442d255d07255e4eb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x30b7f2983366828d627f9a269c8fea2fc9bf41e6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3413b287b0b75d9111ebcc220d624e84aa5c00e8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3524196a3bd704c000e35c89e88600fff529df04` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x364359bc20ae187d36f016487a254117bea66767` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x385cc0c86def4dea78f6b3f0dbbfa3fb12ffecb5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3adcd009cbfc5434432f487933dc4d64f87f04d9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3be5af02f608516524bed7d299108d1ff3a75b33` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3da19d8f9f1208f844ede1b6ac6caf2c14a318bd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3f81fbb7ac2848e3e18bd235ebf854f0308a8aff` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3f95dbd4d572232cfdf0c93bbf0a7f84ba25ab70` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x442849e20cee072d154448d10b49a3937aa6efa2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4438e4b0a08598054a08b5f1a2d7dae97021627f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x45fd7e8b33b992450f6f4f2a4cc2b9599c39a1a9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x460a19b1fa01f267002cfe5a972274e1e8b8119c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x46e0a2b03a9fcf782b68d85fa26d2d6d238ee6b4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x472c865fa045fbfd119d0d7f9d4308afd54557c0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x48fc617e3f2ea237ceda133af9d425e2fd3d4fd3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x495dd744908f33d74afb2d21d6301e83bd39e1e4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x49e15a5ea67fd7ebe70eb539a51abf1919282de8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4a1626eb29d4e5dd250861e843dc60d3eb6d6792` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4a77db9dbad7e2cd1126103bcb732c242fcc8deb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4ba754989b77925f47e26c54aaa1b03df23b32ce` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4c6bfdf044808f9004c08852b6aa1fa324d2213b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4d9c0fc4a25c25887d3f51278eaadf4449ef26a7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x512333ee7e1d2ce42bb9b4073843fd9eaab60e10` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x513ec24f685a1baf54851aebf9d0dbd373f6aa74` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x51a6ca07667196d4332c5a05cdc7d8ad8708dc25` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x51cb2bd2414462d8ca344af6de57c86859832112` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x529bd3511faebf95a1e39fbfcd35786588354751` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x544bb8e75d541b9fa06525d0cfb2ebd0fb8278b5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x545fff3f12e3674314f844e8cdf6d5f403d2d8c6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x597d1f64c2d021d3791cb12b62a80a7ede956d63` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x59db42b3b0cb1b778b46d2f9ae9a81b58cfa8fa2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b1b125e496c4a61331e9d9cce32f6fc5cf86b2e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5ce2567e23e1152288ad72c32e2eee77bc82f923` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5f3cafdedaa573e8f2072b56dbe3c62702c3c09d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x615836b275afbc67abc777b3b740ecb0d412488b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x623ba0d237cd2dfe405a77d057245af1c68ce519` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x64be876f66d099f23cbd390f947f410bad40efc4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x67fe4cb16d6914e3262a7c289b9cd80f9704c1a5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6ac364e604b84c69e8caca9edd127b8b8e03af7a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6b4e731b587250ab717128a02409d0f2f6a6ae7f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6ced7b8ff465fc49008dddb2e2ea9693650d71d9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6ed187de3e489f1177c8a2ce999b9ce8865935d9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x72ae77b4e2629ef337ef8201895e4d6bb0ffb612` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x76652a802b48bc7a6e2a77cda93af4b90a7e99b0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7837666f362894b0587bbee99a8fb22a6a6eb382` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7888f370cb86744488220581e952e0bb042a4ea5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x79fde027ce47f1ed800e80c18c8dd2074c9dcd72` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7a8f8638146b6934d87473dea43df1e49b708322` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7b773380ef56c428b33359325d96577413279ee4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7c4d8445fc7c4923e2268b2eabed12c8736a1eb4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7c8512f2ef02cbd11e5cd6f4d690733d3f138d69` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7cbea52c270831a6732ee7be24ca69788fddd7ab` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7dbd08a0b27b1c288ddd3b47a116690dc6eaac62` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7def160a832b2b0072998cdf27fc41a353eee8d0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7ed589cb395b67cd1aa3d632122030abfa08d2dd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7fd3ebb22e5a3de24df392083fa3f55ed0293cd4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7ffcbc325e582e972d72f757b2c21457f5885224` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x80219b0641806541320c8ea169945093eea363fa` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x80de63d510d2db9a3b580154f0745414f267ac5f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x842e0cf3e857a891a0ffedd0e105ce50035e2b98` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x86f8091d9128d42fc6224a67570839cff28bde5b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x88e218602d77cc8263a8cc507b3c9265935d02c0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8ac0dd391cbca066c5678135ed6d876dfa0850ec` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8c7b45d2b86b92ff6c19737b6b25e5d8cc401e42` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8cd0e458d0d4156304225ceb8ab82c54847abd37` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8da75bd2d2828e2877fe1f27c8f9d4d6743a7d3a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x91d5c6ebd93f60b398c854ec3a1e748a33ce56ce` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x924451cb4a75e84bfb0be25da2d1d133a33880f2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9505ee7cc8c9479d1d771f6ae0f7a750908ef005` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x97abc07c5053a866bd7a429f55dfd79f08db0b46` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x97ad0fc4de0cc46ccabdbfba142c1056e7605693` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x992182a71c9d8dd6faf5ff54d7acf753c3462dcc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9adef5e6f2c04e19a4fb84ea0d706d717028fd12` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9aef9098af9d1e2d78fcd9b928c946a7f23307d3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9b38fd03faf64dcc5f1da1101326a072092420a8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9d7154894326de99c4ae23c43cead7627913f46e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa1428f71616254e9c2e80946bb0c0f1948e808db` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa3da1408b04c88c6aac2b408d51e8aa3f3702cb0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa511a2448a103353584cc2230d7c4a55778eab11` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa61146d67425e6c9b7ddc2ab264ac6a317130368` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa82e973126867ddf6b811c83f881c5203c66961c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa908614444c3a51352e92ff8de716f31233d25ec` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xabb9fc2aa939b80108d0f3801aa67883b9c732b7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xad42184437c8558087b2b096acba3184f7279f7e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xafa7272665b19dc303ce1dea8c7cc23869977b9b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb48f90735e782af1b3653059c199a4836ce277b8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb5892476c53ca55f35a72bd83d3fa219862e76f2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb7adc6c137c6cce6a6a20c76ae29984eaa224bed` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb8b97b363185b223b62bd6084a4aa9b4a56e4c6a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbc6820766591fb9b40dd34ab20d4154393c24391` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbd57ada451fc1c33188b5eae32b3812d54e2c719` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbd8899a46622e381be2efb270fc984fa863d9d50` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbe58f86cdc437d802d7ac1350b173d984c9be5a2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbfbb1e717cb17144523f988e9c32f9f1a1bfdc83` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc076f41e682fd43738a30b140ec8ab2d72c81715` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc09ad8edc417121f88c40604fafcdf2d2a6f1b3c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc38cfbe1b1c031e1afa46ccdd72eec24efc27479` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcc4993a8d8c9e6ed0757e0455c5ceadcd48b6520` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcc97c1274f958af5cfa13e49982cb4143013498a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xccc644bc8bc391b5d7c80aea22d5475d1a321d55` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xce2cb5b2f16cc8a0ea951ef13b8ac314e23a747c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xce75cd8880f8f91175f37995a0e85734a6643f9c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd0dc01f89adce60f5b462e09ebe32a1cc80e02d1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd1eac2d8e3ff8b40a3de6a32efb8cb00380f0420` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd2b566ef0cf1537165da0895c6032c848df52d42` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd424f1312d870d16d2526ef4e87ddbcd6ca28d2f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd59b742283f8018f6414c8df4ee2627999b764f3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd62d8d7e8b457020f222d45565a0b1e6c0194232` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd92274659b4439db900e348299415555ee5c0d7b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd97498a6b9ccd1faafc67eb9d817cbad57a2894d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdb26a203b0fc7766a1b1ce943f187c89eb027e8c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdb6c4065b4673e82f28a2f76a5acc742d665e22e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdf109a381f0e9ec6751430279c9d817075a5d3c3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdf463710134a49ba38e22d3e56edf218b06ab5fa` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe23f448720e7fd29e4a6813a6ff52dfd8804dcd0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe44e74d408ff196c36d4dce1e9ab2341efcd6126` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe4a236adb63cec8afd9e7dc57999aaa94547b8d8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe6d378d31c6e2221d7b779ae183b2336e72e58de` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe7aad2a1b5387111186d0cbfc092c56f9ea6cb10` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe942299a6c48bd3ae1eb5754ff52ceb6dca8157f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe9db6edc6b4330e7c06f5a7f79822c1361d38548` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xea0125eecd3f75907794155ff754ea0485b69af1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xeab02f61739aff24465ad7a665d6c4c23e9333f2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xebeacde3188775c12f7f9ef3b2419ecc185a1c07` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xec4a0c8bdfb81cc046a017e99d51dcad1e10dffa` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xedac4d931119f40c2ca3e441103eccf3e52bce6b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xedd38f9eebed0d9370800bedb10ca2c6ad94cb7f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xefa50ea154c96d26fbad93ea38ac7c6e19b5bac6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf2113334f1d5c5482cf9a9f851f48e64a376324c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf2a2c00c590b8d1826df49f6323930946d3db8d4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf3cd98b29aabc6dc0f22f1b962f537a22b514188` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf3d806d53dd97f21e7cbd2e857eff9a5ed0d27df` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf5486831a1c7039825bd7fbedf8e6350ea516134` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf71fcc27d8e7d3c292802d7c590fc8c7aa919350` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf7704601ad2f8ceb94c5c0ff76d893699b16c00e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf7eee02817c1302eecc93bca77e1239a513ec300` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfa9f93ec9a54d8ecbb9febfdb3a904c4578eafc8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfe50e1d704bddd46e0fdef226a4bcbd31b6c39da` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfe931bf51d7767507c9611d7abfa2747219a8d9f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xffde67fcea336acbadcaede41ffc8b7e0d45e529` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Zircon_Protocol2_SecAssessment_report_v1.1.pdf](https://github.com/Zircon-Finance/zircon-protocol-2/blob/master/audit/chaintroopers/Zircon_Protocol2_SecAssessment_report_v1.1.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 21 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonriver | [`0x4545e94974adacb82fc56bcf136b07943e152055`](./contracts/moonriver-1285/0x4545e94974adacb82fc56bcf136b07943e152055/) | ZirconGammaToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 175 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=21

Fork inheritance lineage and inherited audits are included when available.
