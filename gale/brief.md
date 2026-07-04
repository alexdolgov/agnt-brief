# Agentic Audit Brief: Gale

## Project Overview

- Project: Gale (`gale`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:17.373Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc
- Contract surface: 131 unique implementations (132 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 4 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 139; live-surface contracts included: 132 (2 live, 130 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 131 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 129
- Unique implementations: 131
- Raw deployments: 132
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | bsc | n/a | [`0x627e86...88aa97`](./contracts/bsc-56/0x627e86e9ec832b59018bf91456599e752288aa97/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | 2 deployments: bsc [`0x0b374f...43737e`](./contracts/bsc-56/0x0b374f3c618ff06583e7c4a1207bcaf22343737e/); bsc `0x537f6e...9e7ed4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (129)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x00d447...527b43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x011eba...3bab5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01f24b...d92768` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02e7ff...e2c992` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0412ae...967ef1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0535f8...1be830` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x073b47...ec0df1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07c8b3...cc79dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x086108...fe7845` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0869ba...87bcd7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b75b0...7705a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c3be9...1b70cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0dedc6...066b9a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0eed4d...86bc35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f17c1...836cff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11f107...ba0664` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1428b1...cb3e12` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x179b89...beefad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1aa75f...e1c735` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1affb4...b9e1ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x201659...804b7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20fa80...87e997` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x226ec5...e1f905` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24edc4...6e1790` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24f62e...5f8cd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x290b33...76ce01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a4271...7ad6eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b677d...532b5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2bbdf7...f54fb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d6329...9db11a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3037d6...8df256` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31b99b...d5f048` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x349b7a...fba39f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37e5f6...741a5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a38d2...94df24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41f097...cf55c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4410ea...0eb679` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a2232...69afe9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c1d1a...668146` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51b3a1...a625fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52874d...dcbed1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54c1d1...67cf52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54f446...f800b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a132a...31cc25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a19aa...cbf3cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b902b...07b690` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c49b1...39d9c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ece2b...8dafc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62203a...097d58` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63380d...124aeb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x642642...517eaf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66f17f...18bff6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68087f...acb18d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dd3b2...cfd0a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f7756...bfbeb9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x711835...365fd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72baef...9b69bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x753b0b...f6c731` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x768cdc...1014fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x777818...19f6f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x782c4c...c63b97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a135d...d5d22b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b29e8...b0aa1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c2864...20d72c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8082ea...5cc081` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x824b97...562050` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88b590...cb9f39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89da98...5b3557` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8adf4f...852615` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90ad42...05e5f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x959fa6...977e3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9852e9...1b9d64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a316a...c9c2ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c4781...9f2acc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa17c43...78dccf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa29ff9...69d57d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa73d5b...a4cb04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa786db...39ddb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7fb9e...0a0b54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa9bec...d7c6ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab9e2f...c2298a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xacc50b...dcb1bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0d7a9...45d368` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0f08f...89bf56` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb28ea2...01f917` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb92f6a...309b11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb93945...af46c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb93cf1...94364c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba4b4d...7a85f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba69b8...a23121` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb27af...1f79d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb8da6...f707f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbccbde...4af4e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe34d7...f2e30d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe5f56...594039` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc09719...b55516` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0e17b...5ca313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc304a2...ddbadd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc41327...d1d75f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc47fea...21135f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5c4da...5d85ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca53bb...867dc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca8aef...eeb56f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb945d...39e332` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbd697...e578e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcdc266...6b76c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd13fe9...f44217` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2dbd8...2974be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3ceda...b94574` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd50ea7...39826f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdaf062...553692` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb12c6...e89f66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb478a...d7e349` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde48f5...9bfc60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe099b3...24dc77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0b996...057841` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1b023...d85e70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4acb0...51ca1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe67b2c...ca1b0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6c2c8...1a4a59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6cacb...4c3b35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe88104...6b3054` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe99157...c60b1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb3806...6dc76f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf237a6...4de2d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf420a5...bdc246` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8c114...83e252` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf99091...8c8f5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfdc6d8...86c05a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SmartContract_Audit_Solidproof_GaleToken.pdf](https://github.com/solidproof/projects/blob/main/Gale/SmartContract_Audit_Solidproof_GaleToken.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x627e86...88aa97`](./contracts/bsc-56/0x627e86e9ec832b59018bf91456599e752288aa97/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 129 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13172] SmartContract_Audit_Solidproof_GaleToken.pdf

Fork inheritance lineage and inherited audits are included when available.
