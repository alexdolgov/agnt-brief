# Agentic Audit Brief: FortiFi

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

- Project: FortiFi (`fortifi`)
- Website: [https://www.fortifi.pro](https://www.fortifi.pro)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 85 unique implementations (109 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $348,664.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for FortiFi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x88c7e2eace47cffb55231790f736c19667dbd348`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 84 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 85 unique; 84 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/19
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 66
- Unique implementations: 85
- Raw deployments: 109
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FortiFiDIAPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x0c53b73efdde61874c945395a813253326de8eea`; avalanche `0xdc655e3dc8f36096c779294d03c62b3af15de8b0` | ⚠️ Unaudited |
| FortiFiFeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x97f9fe54aa908ac0e8b2d10244bd4bba87d51160`; avalanche `0xc15711c7c8deac7a360f9b8826e7c151088d0d8c`; avalanche `0xfe3350916b44004145a30158f56f8369e096b24d` | ⚠️ Unaudited |
| FortiFiFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf964894470afc11037f6bcb38609f77e9eba9851` | ⚠️ Unaudited |
| FortiFiGGAvaxRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa5eec52dd815ee7b3b91da8af5face1aa996336c` | ⚠️ Unaudited |
| FortiFiGLPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3403f28551d5fdebbd07a289a1fd03930b1bb23c`; avalanche `0x45e1762b617140692daa80857b6a8b1c3229a25b`; avalanche `0x72a1702785e1208973819b9f692801ab26fca882` | ⚠️ Unaudited |
| FortiFiLBRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x43bde5c14c781a1062779eb2d75034f8a075aadc`; avalanche `0x8b8cb06b4e9b171064345e32ff575c77ca805ce3`; avalanche `0x8e936ef88078534663929d55c3094567dca2f7ad` | ⚠️ Unaudited |
| FortiFiLBRouter2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x30503d5edb95a817d05709961862ce74b94edd53`; avalanche `0xd2746098c8ff73cd676f293b061248b124eb2806`; avalanche `0xdccf40003ffb52a013aba6fdf2995bc687960df7` | ⚠️ Unaudited |
| FortiFiMASSVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x6aad65a6b101cfcca9be429c8ea5bf990475cc91`; avalanche `0xa513625fa60917f70279681da983ba860dda9a5c`; avalanche `0xd767a6daa2f9841a9d0caa03658e6a04bec60418` | ⚠️ Unaudited |
| FortiFiMASSVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x432963c721599cd039ff610fad447d487380d858` | ⚠️ Unaudited |
| FortiFiMASSVaultV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fd7153e102bddcacc4d119015e686b899ddca83` | ⚠️ Unaudited |
| FortiFiNativeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a4bc64396ea683244ce36a40114ac6713afc725` | ⚠️ Unaudited |
| FortiFiPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x4a30cb77aac31c9b7fec0700feacd3bdb44147f6`; avalanche `0x8f4086f1bdb412723b45ed78676a49de3cd5a13f`; avalanche `0xdfabbc3d82b8234a88a9f64faab1f514a857a3df` | ⚠️ Unaudited |
| FortiFiSAMSVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x6210591c3636b9c89f8c973c072238fb8f4d9092`; avalanche `0xa146e5358213c53ea28f37a1242a3029532662ed`; avalanche `0xd81c73f35a4a59c6363239ff2cff48262fa0b7d3`; avalanche `0xf570a4834f770829c74f1140d1b026b24362f1ad` | ⚠️ Unaudited |
| FortiFiStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x4f6e23e5d0e0c146599544c0411b10a7ad8af74b`; avalanche `0x5292d60ce35c6e953747ea489444e7b658a3b7b1`; avalanche `0xd2f407871626a445ab4a1495f101e47b6ef6d290` | ⚠️ Unaudited |
| FortiFiTokenHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28b6a75c0fa696f31d88c2c4ba9ad0e4ba5e3ca3` | ⚠️ Unaudited |
| FortiFiWNativeMASSVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x2adf67fdcd80cafca0201ef6c3c4daf39a26fda8`; avalanche `0xd04655fa20209a5b134b2a6182b20b7cdae0f24a` | ⚠️ Unaudited |
| FortiFiWNativeMASSVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x319276e97c479a08bade8741f7c65302fbc005b9`; avalanche `0x5f2dd58a5a2e921bc415ca7faf7a35a952aae1f7`; avalanche `0x853e7a9dcc5037cd624834dc5f33151aa49d2d73` | ⚠️ Unaudited |
| FortiFiWombatGGAvaxZapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf4280b0e67f8cdd90bd1d4b441ac00d29558a5d` | ⚠️ Unaudited |
| FortiFiWombatStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x666d883b9d5bb40f4d100d3c9919abfe29608f30`; avalanche `0x7e7bd77fdd701a0b46eea1371e97a0cdc676f6f5`; avalanche `0xb2fce38760476fdc7f9ad86f2196f489b3f6f487`; avalanche `0xca33e819b1a3e519b02830ced658fd0543599410` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (66)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03d8137b35206dda7d6313ba0fde02ec4c265414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0538491f32bdb91d8f0886a2f09d807c5bfed27b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09dd7e16eecad9f661d673caccfdfe3dd6d8da39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11f40bbebf8c0f8b424eac20bc1bab3f2f4186d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1306c55e878094558a00e11b46d956b1ef27a54b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14517a26005f3f92aea60b6619ac0e10e3a718d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a5f90191ff1df32e10f1da7de776fe19da91ab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1acd9eab461267c7cd044a088269e7afa3ea2184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20a70fad59c0d3f83faf4cf26a7cd706c9e8945c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x231bf492caa862dfd11c004b51247c90537a180f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26585c835227ab31b00d1e696bfd2318004ed414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2dc79873b2de32f29f595534cf159f5c81ea4ce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3158fced590d82ddcefd3de5da3b04d5bad56d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33ab93b73d45d680f6ffb6c7915cf20fbac9a11d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37b5b711495be24c50a1093be8851b1e5d21e4e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x404b5627b4957b515e5bee9635ff48dcfa71983e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45c53fb370ca5066d93fe64913e24b886322be3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x461bba28d395658100cf94977d901e1571d2a7fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x486af6a08fa227f6886734455814a5b2b3344386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a47efa1dba4d606468a8af2e5250eae0c935971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5216177a62a68f5b60a3703cfcc57834ddda1a94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57bbc4db8fcac0fb9853c7a22a6caf768e0e9e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5dfee593b135ad1467c4870719d562f6d8132921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x642fdad3916e3ac6bfe7234376f2414bef895be8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6aa5aa63ce4fcdc59b039b72080ac0fdbd5646c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f24c85bbdafe71791690a90e8aeb0b64454ad9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7022adf08c3599efb9b98dd0d3672dce7beb1cc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70e9c5d61fb1361a8e617a1c90f75391be69c63a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x714a70a1236d63e04b0b68022b7b2ffc19c3affe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7158017cc710585bde7d692144071ef4b4995078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7479982a78617e4823683acb5951106d642bcaae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x75f8330b90aad64409f9b833fbeb88f6ea3579bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x78a840a7651866ff6eaca84ee9e5ca28856816d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79b2a045af27f7518d4aef82d5fd6c92e7d5920e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x839b76821382f087d1ff28279ca60a6593e2544e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-386578 | `0x88c7e2eace47cffb55231790f736c19667dbd348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x91aaf431ded7b2da67c38bf64214762311fc4230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92581e042d0a5029430562c0959aebdfecbffd36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x98b57e33156a95ffd42cd3faa4d70bb1d61b9904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9bacebf9863fae43297e54135b8b8eea4dca9b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e103d8697621368deda7d9edbbaf5b6001cdd02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f1ee78cf6eadda82aeca2e18d2a7989a4ccf575` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2daec400ed67c8012c8c692d20dda166d72c032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4d0b216d4f928ff54654b830edb6f5e536ef63d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac01cdb27d424b6b3b93b33e21cf3db1601bf087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf7665846e6b3a4e2fed078b355483e79b5bfe74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb70784fb1b7ee2a78905339ccd1d89a71802134f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb97afc8d6d6f100358e21d6ab3a3aa3ec1435731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbfba34c69b6db5eea4d55850925411feffcf8c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3630c2a0b6e6341d4601c861028a9aa83cbeb39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5fbcbb327d2705b23bae543774817446a429f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd10f91b4ee7c66ec57289ee0c979e7893b845e36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd174d9b3bbbf82a6d0d7631b7b08ee07b059a15e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd3ed15fe1651f66ee94ebdf3288c2fe2033fef9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd693919604689824eaedf5a506141d49fc3a5ee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6c70d64ab58f4c8a2850e3eda519aece66f6b10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdae240626c56cb22ee96393044000e87310854cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdcb2eac60f8e86f06a859eb2fb735503df61600e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe017f54e3210974fb70960bd434226073f61d117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe2079290a95f971da221cfe263affff9d54be3f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5c4a98bc97b193d42724b1e5473be08771d6ec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe64233eac375a47dcacd9c943d66e076573d0550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee758d194a705d956f06968d9b4b49aec2489f3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf0f55e8c9e23c627b253876f3b4bf1ef3eba4db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc7427aeb2c76487aef5c20736c2197f139d898b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd3196badcc1df00ab352b4e9bd83f0a23293b14` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [FortiFi-audit-report-[26-Oct-2023].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/f/fortifi/FortiFi-audit-report-%5B26-Oct-2023%5D.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [blaize.tech/clients/smart-contract-security-audit-for-fortifi](https://blaize.tech/clients/smart-contract-security-audit-for-fortifi) | Blaize | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13131] FortiFi-audit-report-[26-Oct-2023].pdf — no match: All contracts listed in scope section on page 2. Date from cover page.
- [13132] blaize.tech/clients/smart-contract-security-audit-for-fortifi — no match: The report text does not list specific contract names, file paths, or a scope section. It only mentions 'FortiFi Vaults Ecosystem' and 'MASS Vaults' generically, without naming individual contracts.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| FortiFi-audit-report-[26-Oct-2023].pdf | FortiFiFeeCalculator | unmatched — not counted | — | listed in scope | no |
| FortiFi-audit-report-[26-Oct-2023].pdf | FortiFiFeeManager | unmatched — not counted | — | listed in scope | no |
| FortiFi-audit-report-[26-Oct-2023].pdf | FortiFiDPFortress | unmatched — not counted | — | listed in scope | no |
| FortiFi-audit-report-[26-Oct-2023].pdf | FortiFiDPStrategy | unmatched — not counted | — | listed in scope | no |
| FortiFi-audit-report-[26-Oct-2023].pdf | FortiFiFortress | unmatched — not counted | — | listed in scope | no |
| FortiFi-audit-report-[26-Oct-2023].pdf | FortiFiStrategy | unmatched — not counted | — | listed in scope | no |
| FortiFi-audit-report-[26-Oct-2023].pdf | FortiFiVectorFortress | unmatched — not counted | — | listed in scope | no |
| FortiFi-audit-report-[26-Oct-2023].pdf | FortiFiVectorStrategy | unmatched — not counted | — | listed in scope | no |
| FortiFi-audit-report-[26-Oct-2023].pdf | FortiFiMASSVault | unmatched — not counted | — | listed in scope | no |
| FortiFi-audit-report-[26-Oct-2023].pdf | FortiFiSAMSVault | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 66 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [13131] FortiFi-audit-report-[26-Oct-2023].pdf
- [13132] blaize.tech/clients/smart-contract-security-audit-for-fortifi

Fork inheritance lineage and inherited audits are included when available.
