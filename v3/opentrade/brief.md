# Agentic Audit Brief: OpenTrade

## Project Overview

- Project: OpenTrade (`opentrade`)
- Website: [https://www.opentrade.io](https://www.opentrade.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:38.631Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: avalanche, ethereum
- Contract surface: 30 unique implementations (30 raw deployments)
- DeFi Llama TVL: $218,060,300.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 27 project-authored contract(s) across 2 chain(s); 3 ERC4626 vaults, 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (beaconimplementation, deployeruupsupgradeable, beaconproxyfactory). Dominant framework: openzeppelin-upgradeable.

## Fork Lineage

This project reuses audited code from **Sierra Protocol** (`sierra-protocol`) in the PoolLib, QueryLib, ServiceConfigurationV6, WithdrawControllerFactory subsystem.
1 audits inherited from `sierra-protocol`, scoped to that subsystem.

Total inherited audits: 1. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 30 (30 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/30 (10.0%)
- Deployed-live implementations: 30 of 30 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/30
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 30
- Raw deployments: 30
- Audits discovered: 7 (6 direct, 1 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 10.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 3 | 10.0% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolLib | unknown | ethereum | n/a | [`0x33b139...25a507`](./contracts/ethereum-1/0x33b13987d69f3f117579bef4b235ae909225a507/) | ✅ Audited |
| QueryLib | unknown | ethereum | n/a | [`0xa5677f...f1b33f`](./contracts/ethereum-1/0xa5677fd1d1caf56cd8924edc589045978cf1b33f/) | ✅ Audited |
| ServiceConfigurationV6 | unknown | ethereum | n/a | [`0x0c583a...206611`](./contracts/ethereum-1/0x0c583a7926635301ddbc3cc9fd613df156206611/) | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeaconProxy | unknown | avalanche | n/a | [`0x061329...b46869`](./contracts/avalanche-43114/0x061329361e0f163125225bf71a1e5af954b46869/) | ⚠️ Unaudited |
| BusinessDayRegistry | unknown | ethereum | n/a | [`0x194951...15bec2`](./contracts/ethereum-1/0x194951b1f48b8145d0672b0b606337fab615bec2/) | ⚠️ Unaudited |
| BusinessDayRegistryFactory | unknown | ethereum | n/a | [`0x566d58...15601a`](./contracts/ethereum-1/0x566d58557734ca2b49cdd26d01cee3c13515601a/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x0c6e11...61f692`](./contracts/ethereum-1/0x0c6e11a37a7313c282621821455ad826fb61f692/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x3eeacc...71a49a`](./contracts/ethereum-1/0x3eeacc4309435ba1672d8d9265bc717a2c71a49a/) | ⚠️ Unaudited |
| Loan | unknown | ethereum | n/a | [`0x11f337...ec5845`](./contracts/ethereum-1/0x11f3373780aa778fcf8e3a78a5f301444cec5845/) | ⚠️ Unaudited |
| LoanFactory | unknown | ethereum | n/a | [`0x45b5ed...d70f69`](./contracts/ethereum-1/0x45b5eda11f4a4079fbdf87c0fa01c5d182d70f69/) | ⚠️ Unaudited |
| LoanLib | unknown | ethereum | n/a | [`0x061e68...087605`](./contracts/ethereum-1/0x061e680724a10c24ffb87b6f74c0805c64087605/) | ⚠️ Unaudited |
| LytPoolOFT | unknown | ethereum | n/a | [`0x6bf778...10e0fc`](./contracts/ethereum-1/0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc/) | ⚠️ Unaudited |
| Pool | unknown | ethereum | n/a | [`0x007b58...75923c`](./contracts/ethereum-1/0x007b58a41566aa4075fd078d4147a1eaff75923c/) | ⚠️ Unaudited |
| PoolAccessControl | unknown | ethereum | n/a | [`0xb95a86...1b2454`](./contracts/ethereum-1/0xb95a860b546933305618d7b8bd515e29a61b2454/) | ⚠️ Unaudited |
| PoolController | unknown | ethereum | n/a | [`0x4b356b...b92e97`](./contracts/ethereum-1/0x4b356be5b818509ece59385c6ed46da460b92e97/) | ⚠️ Unaudited |
| PoolControllerDynamic | unknown | ethereum | n/a | [`0x330320...afb3ba`](./contracts/ethereum-1/0x3303202b4b4b5155885ed529f3df704997afb3ba/) | ⚠️ Unaudited |
| PoolControllerFactoryDynamic | unknown | ethereum | n/a | [`0x93076f...cd2a71`](./contracts/ethereum-1/0x93076fe579156bec96408332d21d360cd8cd2a71/) | ⚠️ Unaudited |
| PoolControllerFactoryFlex | unknown | ethereum | n/a | [`0x447239...97dbf4`](./contracts/ethereum-1/0x447239a5c9940ccafa566977c91f17f5d797dbf4/) | ⚠️ Unaudited |
| PoolControllerFlex | unknown | ethereum | n/a | [`0x0264f3...12c547`](./contracts/ethereum-1/0x0264f33c7716d93053a28efec730bb5e7412c547/) | ⚠️ Unaudited |
| PoolFactory | unknown | ethereum | n/a | [`0x9e70b6...ba740b`](./contracts/ethereum-1/0x9e70b675ab0f296cee11de25b8368e8d30ba740b/) | ⚠️ Unaudited |
| PoolFactoryDynamic | unknown | avalanche | n/a | [`0x4d3b32...219d0c`](./contracts/avalanche-43114/0x4d3b32bb456a6e387682f6cd37facefe9a219d0c/) | ⚠️ Unaudited |
| PoolFactoryFlex | unknown | ethereum | n/a | [`0x614244...fa0578`](./contracts/ethereum-1/0x61424410c0bb1c580ed6363fe9405d9e84fa0578/) | ⚠️ Unaudited |
| PoolFlex | unknown | ethereum | n/a | [`0x0f8cbd...5af82a`](./contracts/ethereum-1/0x0f8cbdc544dc1d4bd1bdafe0039be07b825af82a/) | ⚠️ Unaudited |
| PoolLibFlex | unknown | ethereum | n/a | [`0x78bfc8...e2e169`](./contracts/ethereum-1/0x78bfc8a7197abfb81d4774e7936a76092be2e169/) | ⚠️ Unaudited |
| ToSAcceptanceRegistry | unknown | ethereum | n/a | [`0x0e610a...057733`](./contracts/ethereum-1/0x0e610a503f541ff58a170a647426c89bba057733/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0xfb7799...63ae44`](./contracts/ethereum-1/0xfb7799c33ea95345839f64544c8a3f32d263ae44/) | ⚠️ Unaudited |
| VaultFactory | unknown | ethereum | n/a | [`0x324667...aedb33`](./contracts/ethereum-1/0x3246677dad49bf6bcbe206741a408cd4c2aedb33/) | ⚠️ Unaudited |
| WithdrawController | unknown | ethereum | n/a | [`0x0f41b4...9c6548`](./contracts/ethereum-1/0x0f41b4898bdd22bb92e78bc2c31247306f9c6548/) | ⚠️ Unaudited |
| WithdrawDepositControllerFactoryFlex | unknown | ethereum | n/a | [`0x616c3d...07239d`](./contracts/ethereum-1/0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d/) | ⚠️ Unaudited |
| WithdrawDepositControllerFlex | unknown | ethereum | n/a | [`0x0e0266...dd7400`](./contracts/ethereum-1/0x0e02665b9c537822b99a2ff07cf854fcefdd7400/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca](https://cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca) | Spearbit | Audit | 2025-08 | fresh | Inherited from Sierra Protocol — forked code, scoped to PoolLib, QueryLib, ServiceConfigurationV6, WithdrawControllerFactory | inherited | 3 | n/a |
| [spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf](https://1202975695-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXB36F8w05PtbxlF2D9IN%2Fuploads%2FJW6LNorAKkBRluGUed86%2FOpenTrade%20LYT%20Protocol%20Audit%20(V1).pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf](https://1202975695-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXB36F8w05PtbxlF2D9IN%2Fuploads%2F9XOHTb77ArpTuka2PE9M%2FOpenTrade%20Protocol%20Audit%20(V5.1.0).pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf](https://1202975695-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXB36F8w05PtbxlF2D9IN%2Fuploads%2FLfqAzt4O1vmBUsMKQfU5%2FOpenTrade%20V5.0%20Audit%20-%20Cantina.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OpenTrade Audit V4.pdf](https://content.gitbook.com/content/XB36F8w05PtbxlF2D9IN/blobs/kDCibfVNZTx5d6CJFeP7/OpenTrade%20Audit%20V4.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OpenTrade V3 Audit.pdf](https://content.gitbook.com/content/XB36F8w05PtbxlF2D9IN/blobs/5LS0tGve4UlIgzDSdCEG/OpenTrade%20V3%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf](https://1202975695-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXB36F8w05PtbxlF2D9IN%2Fuploads%2F9kG75StzRxlp8Du7eLp4%2FProtocol%20Audit%20V2%20-%20Ottersec%20(1).pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=3

Zero-match audit list:

- [20909] spaces/XB36F8w05PtbxlF2D9IN/uploads/JW6LNorAKkBRluGUed86/OpenTrade LYT Protocol Audit (V1).pdf
- [20910] spaces/XB36F8w05PtbxlF2D9IN/uploads/9XOHTb77ArpTuka2PE9M/OpenTrade Protocol Audit (V5.1.0).pdf
- [20911] spaces/XB36F8w05PtbxlF2D9IN/uploads/LfqAzt4O1vmBUsMKQfU5/OpenTrade V5.0 Audit - Cantina.pdf
- [20912] OpenTrade Audit V4.pdf
- [20913] OpenTrade V3 Audit.pdf
- [20914] spaces/XB36F8w05PtbxlF2D9IN/uploads/9kG75StzRxlp8Du7eLp4/Protocol Audit V2 - Ottersec (1).pdf

Fork inheritance lineage and inherited audits are included when available.
