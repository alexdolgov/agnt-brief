# Agentic Audit Brief: Hybra

## Project Overview

- Project: Hybra (`hybra`)
- Website: [https://www.hybra.finance?code=GRYN2U](https://www.hybra.finance?code=GRYN2U)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.686Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: hyperliquid
- Contract surface: 76 unique implementations (91 raw deployments)
- DeFi Llama TVL: $2,148,492.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 13 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 6 common project-authored base contract(s) (peripheryimmutablestate, peripheryvalidation, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 92; live-surface contracts included: 91 (24 live, 67 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/14 (50.0%)
- Deployed-live implementations: 14 of 76 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/14
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 62
- Unique implementations: 76
- Raw deployments: 91
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 50.0% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 7 | 50.0% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BribeFactoryV3 | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2555f79ac6e8096c755096e3a8d175a4bf5fc82f`](./contracts/hyperliquid-999/0x2555f79ac6e8096c755096e3a8d175a4bf5fc82f/); hyperliquid `0x6ba9f916068cea67766de6951f2cbd4aeb7f752a` | ✅ Audited |
| CLFactory | registry | hyperliquid | n/a | [`0x32b9da73215255d50d84feb51540b75acc1324c2`](./contracts/hyperliquid-999/0x32b9da73215255d50d84feb51540b75acc1324c2/) | ✅ Audited |
| CLPool | core_logic | hyperliquid | n/a | 2 deployments: hyperliquid [`0xa421f7aada7d11eb6002bc53090fb8d5409552ab`](./contracts/hyperliquid-999/0xa421f7aada7d11eb6002bc53090fb8d5409552ab/); hyperliquid `0xe31c7b8485053417c0c0a2ff50ef369f354e1e23` | ✅ Audited |
| GaugeFactory | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x84fa8d513ee93ddea72b6fbd45fa957bd9e0de45`](./contracts/hyperliquid-999/0x84fa8d513ee93ddea72b6fbd45fa957bd9e0de45/); hyperliquid `0xb4892c817a07985f85c98ddb6ee99c3ba5aa5a46` | ✅ Audited |
| GaugeFactoryCL | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1c0ebc5cf683e20d427d08d9e0920b07f9abdd09`](./contracts/hyperliquid-999/0x1c0ebc5cf683e20d427d08d9e0920b07f9abdd09/); hyperliquid `0xeb60888176d0c6af4c539d64b2e83e470a63e4f9` | ✅ Audited |
| HYBR | unknown | hyperliquid | n/a | [`0x067b0c72aa4c6bd3bfefff443c536dcd6a25a9c8`](./contracts/hyperliquid-999/0x067b0c72aa4c6bd3bfefff443c536dcd6a25a9c8/) | ✅ Audited |
| VoterV3 | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x5623f012d15eb828c12fe32e46d40adc2a9e4fa3`](./contracts/hyperliquid-999/0x5623f012d15eb828c12fe32e46d40adc2a9e4fa3/); hyperliquid `0xcd9599ff0b72d2cc5246b15bc6d6836581920576` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GrowthHYBR | unknown | hyperliquid | n/a | [`0x348b11cbb801fab12834e66691b7f25fe72b8aa5`](./contracts/hyperliquid-999/0x348b11cbb801fab12834e66691b7f25fe72b8aa5/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | hyperliquid | n/a | 3 deployments: hyperliquid [`0x48b88f07f22fcab3b72e5659f94f1bb773097350`](./contracts/hyperliquid-999/0x48b88f07f22fcab3b72e5659f94f1bb773097350/); hyperliquid `0x88d4c35b2107c976770922162fb64fa40243176f`; hyperliquid `0xcc9e3991360229fd13694022b9456d371f1a2568` | ⚠️ Unaudited |
| PositionValueQuery | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x05db07299ee752aef6aa1b3e895c973a6007dbc0`](./contracts/hyperliquid-999/0x05db07299ee752aef6aa1b3e895c973a6007dbc0/); hyperliquid `0x2ea3240cb4b85b7f8019d2565b10f774b617c068` | ⚠️ Unaudited |
| QuoterV2 | periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x8cd6acff822ee9e3240501b3ceda64364791e4e2`](./contracts/hyperliquid-999/0x8cd6acff822ee9e3240501b3ceda64364791e4e2/); hyperliquid `0xf5fcffd0cca480042efe7af480024f577829a3e6` | ⚠️ Unaudited |
| RewardHYBR | unknown | hyperliquid | n/a | [`0x6879db7e84c38e5f580b464d2f19e91e09f4bc98`](./contracts/hyperliquid-999/0x6879db7e84c38e5f580b464d2f19e91e09f4bc98/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | hyperliquid | n/a | [`0x04fcae9af38e79b7bb96d4f2ef0f020e9c8739a9`](./contracts/hyperliquid-999/0x04fcae9af38e79b7bb96d4f2ef0f020e9c8739a9/) | ⚠️ Unaudited |
| SwapRouter | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0384c767774a51e395f913c64d744dd00a8304b7`](./contracts/hyperliquid-999/0x0384c767774a51e395f913c64d744dd00a8304b7/); hyperliquid `0xbec2bf10b7172c8e5621569bd285e9adb1806426` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (62)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MinterUpgradeable | unknown | hyperliquid | n/a | `0xa8265e40e4cdf6db345861f4fcb75f9cc63e149b` | ❓ Unverified |
| Proxy (impl: 0x3cda22a593b35a3554300b8968d20b9fc15bab8c) | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0x218e666db7a8cea1dc3e1db3185d24276c0f73e6`; hyperliquid `0x3cda22a593b35a3554300b8968d20b9fc15bab8c` | ❓ Unverified |
| Proxy (impl: 0x5faebfc659fe95a49f536d8e8ba6ab9dbede7d9a) | proxy | hyperliquid | n/a | `0x110e1c60ccdccbef58ad125022f0310176a41525` | ❓ Unverified |
| Proxy (impl: 0xb761a187808fbb307cb5c5e01c01b729da432471) | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0x45ea86b0231054e8378e5215a85c86539fecd316`; hyperliquid `0xb761a187808fbb307cb5c5e01c01b729da432471` | ❓ Unverified |
| Proxy (impl: 0xcd5f4e4cf2dcd7d9d72ef997ebd5f57bc0443988) | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0x742caa5ba7c92ca6cfebfd0e73c21739b3b65d5e`; hyperliquid `0xcd5f4e4cf2dcd7d9d72ef997ebd5f57bc0443988` | ❓ Unverified |
| Proxy (impl: 0xdcb84d0b4036a2467ca01e0e5adf0a0d078eb78c) | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0x9c4bcfa85cf860d076cb90a6bfab4c7a816233e2`; hyperliquid `0xdcb84d0b4036a2467ca01e0e5adf0a0d078eb78c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x020351905245c956ace2d0f2091396724531228b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x067440632170e8c74929dbe50cb9891a2e802aff` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x088d2c77f10ed9eed1e3ad0622cad5154fd3b76d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x08e95b42ec900b5dae4b53db53d3e344b27953f4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0deade3405440b15a049f6b9aad335bfaaf96570` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2caf27a097b96773f686875161e888c2b8d93cb4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x37ed685335e01fab1474adf4853711edf370d36e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3a14a58340813cbbd7b37e47bdfeab33dc4c1e93` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3c9c609b873952b9bdc184cf9fbd1b300c6d73fa` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3dcfa02c44604525f5fcd8b8fbbe466cc2900f58` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4992d95c26297ae7b08544f4d59bc870e3134ab7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x51ac834b414760d9c21ecdc63a5debbb72c0fded` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x54dc148b558b2b43a33b7716a98bd64ee5247369` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x57952be6eda8fd9d676c1d09d95c36158eec1f16` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5acb02c7933b4fb194352ed165ebc54ac0a6d6f0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5b3443c6e1a5a480aeb74a7b74b37787a9c087f0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5c981fb37b4e5e381e500c8f61432655666f0836` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5e33a10ad7b3d63b727ed72baef9819d69ac3dcc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5fbb1a02f2bdec1f42c24474855900cd1203b793` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0x69edd0c8f85faff4f4610941816a2301fc10647b`; hyperliquid `0x775e40fe28e92fbacf696dbc76bae15f14350197` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6aeb861ce0d231bdcb5797e0538ba057b5cc0e79` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6d1d4aee2cb90b5b505a5b3f513881f7b5fd58fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6f1bf14e77189eda1a341e382311f5df16154d53` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7babb795a02892eaf32dfb43ed59edcae59a1931` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7cda9f3de9b097cff11a5c11c7c655e3fb7c51b3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x814af879c7c663e5a43e587fc409cfaf2d528028` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x85046ab2cb184decdfe2e7d7f1b32fc3a953cbe9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x85d0e935d65cf693c8abd51ce24ecb9aef6c1869` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x88374ac4cd3d5229fd5ba79d2cba702fb4e742f3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9670a0504a00dd13f9cb0a04679dbf369e3cc624` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x976adf756ae1e84694b0a14da7dafbb39d846ed8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9e2b82c399df97dfcabb8e4d0e50f082a01f0efc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa2fc9b286362b46da68979dbaec52b122c82ba77` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa313d1af6f4104fffbc982dd1104c2c2d608f78b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xaae6986f4d0a449a2431c566d2825f4ca2559d38` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xac256d51180749f05ea6471d4450039dc1391f5f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb72e05fe85369b3abc0224323c818a65bf50907a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbac3849eb410b191a1ea85ca1c45737985b9412d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbdf3b2a8c1ee0767917b4c0fb2eb030e93b56c67` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc03da98b4a239ba1269f1b31609a7696b08e4020` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc4ad2ab767f45365767c9bab50c7f3d6715ff021` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc6ac41ba4db2d7ed6800eb95d4b2bd024f3d1853` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd0b9022d8f09d54b288f3bea13e5e81a5af5aac1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd4d7799d06cfabc2c19c4c570a36bff80ec93307` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd7ed7792f71f3920dba01c544639fd546d87f4fd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd9df85391c1bd6ef5530ce350f098869a7d0b396` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdbf13ad5e34a280bfb4216790a8a0912ba0fb78b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xeb109ebfde3e8930b4e65a89968aee101ee5e939` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xed0ca82c18e12d6d8b8cd6ec9b5173de87778ca2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf00e3b46938f320c59de3eb68a2e456c3d71de20` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf658fd8b86b4f28f613117a7a2adc765856cb978` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf722f4cff5ddcba1a13bb5397961c9bc4fdfc3b1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf7f86e4f10342f2a93a199fcf841eb5dc32acc52` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf9cbef4eee732a21936ee0df39d27e6580df93fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfda9fd9577fe8d384599a9085435296d4b315865` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfe339089d8b37b8f72339a290d292a81aef9f398` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [code4rena.com/reports/2025-10-hybra-finance](https://code4rena.com/reports/2025-10-hybra-finance) | Code4rena | Contest | 2025-10 | fresh | Direct | contract_name | 12 | high |
| [code4rena.com/audits/2025-10-hybra-finance](https://code4rena.com/audits/2025-10-hybra-finance) | Code4rena | Contest | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [code4rena.com/audits/2025-11-hybra-finance-mitigation-review](https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review) | Code4rena | Contest | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [code4rena.com/audits/2025-11-hybra-finance-mitigation-review-round-2](https://code4rena.com/audits/2025-11-hybra-finance-mitigation-review-round-2) | Code4rena | Contest | 2025-11 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x348b11cbb801fab12834e66691b7f25fe72b8aa5`](./contracts/hyperliquid-999/0x348b11cbb801fab12834e66691b7f25fe72b8aa5/) | GrowthHYBR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x48b88f07f22fcab3b72e5659f94f1bb773097350`](./contracts/hyperliquid-999/0x48b88f07f22fcab3b72e5659f94f1bb773097350/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x05db07299ee752aef6aa1b3e895c973a6007dbc0`](./contracts/hyperliquid-999/0x05db07299ee752aef6aa1b3e895c973a6007dbc0/) | PositionValueQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x8cd6acff822ee9e3240501b3ceda64364791e4e2`](./contracts/hyperliquid-999/0x8cd6acff822ee9e3240501b3ceda64364791e4e2/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x6879db7e84c38e5f580b464d2f19e91e09f4bc98`](./contracts/hyperliquid-999/0x6879db7e84c38e5f580b464d2f19e91e09f4bc98/) | RewardHYBR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x04fcae9af38e79b7bb96d4f2ef0f020e9c8739a9`](./contracts/hyperliquid-999/0x04fcae9af38e79b7bb96d4f2ef0f020e9c8739a9/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0384c767774a51e395f913c64d744dd00a8304b7`](./contracts/hyperliquid-999/0x0384c767774a51e395f913c64d744dd00a8304b7/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 64 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=12

Zero-match audit list:

- [20725] code4rena.com/audits/2025-10-hybra-finance
- [20726] code4rena.com/audits/2025-11-hybra-finance-mitigation-review
- [20727] code4rena.com/audits/2025-11-hybra-finance-mitigation-review-round-2

Fork inheritance lineage and inherited audits are included when available.
