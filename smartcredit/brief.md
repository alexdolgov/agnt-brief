# Agentic Audit Brief: SmartCredit

## Project Overview

- Project: SmartCredit (`smartcredit`)
- Website: [https://smartcredit.io](https://smartcredit.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.395Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 90 unique implementations (101 raw deployments)
- DeFi Llama TVL: $708,424.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 10 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 2 common project-authored base contract(s) (upgradeabilityproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 104; live-surface contracts included: 101 (16 live, 85 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/7 (14.3%)
- Deployed-live implementations: 9 of 90 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/9
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 81
- Unique implementations: 90
- Raw deployments: 101
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 11.1% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SMARTCREDIT | unknown | ethereum | n/a | [`0x72e9d9...9ada13`](./contracts/ethereum-1/0x72e9d9038ce484ee986fea183f8d8df93f9ada13/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x84cb83...3638a7`](./contracts/ethereum-1/0x84cb833f3f2e0443c5fc40f4a4619881213638a7/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x11c0a2...bbcf8b`](./contracts/ethereum-1/0x11c0a2a7e33f1227105e6f22c571acc5bfbbcf8b/); ethereum `0x81590d...474ecd` | ⚠️ Unaudited |
| ReputationToken | token | ethereum | n/a | [`0x221657...f5c9bb`](./contracts/ethereum-1/0x221657776846890989a759ba2973e427dff5c9bb/) | ⚠️ Unaudited |
| SmartCreditTimelock | governance | ethereum | n/a | 5 deployments: ethereum [`0x967f97...bd87b6`](./contracts/ethereum-1/0x967f978e36299cc2c250587e0a150e113ebd87b6/); ethereum `0x96b424...caf59a`; ethereum `0xac1c03...ae7118`; ethereum `0xd0209d...a77179`; ethereum `0xf29a2f...0c5e73` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1a0a75...10afbf`](./contracts/ethereum-1/0x1a0a75cd4b0e43e7a2cce92ce1406d30ec10afbf/); ethereum `0xf26848...3f5e43`; ethereum `0xfc94c0...907d0d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x31ba58...d42c28`](./contracts/ethereum-1/0x31ba589072278d82207212702de9a1c2b9d42c28/); ethereum `0x90de6b...ebf7e4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36e861...0dcc6d`](./contracts/ethereum-1/0x36e8616a2e5c3681e256a489d32c31430b0dcc6d/); ethereum `0x784c9c...7c30e6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x44b003...fe9631`](./contracts/ethereum-1/0x44b00324f72f10896bf3a18bb25fb161a8fe9631/); ethereum `0x4c9145...ee82df`; ethereum `0x52291d...616cff` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (81)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x03e33b...3f8fff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0755a6...95686d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0931c1...6078fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e6444...4daf90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13998c...560ce7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13c7c6...afa6df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14bd94...673757` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x183b12...4fa2ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1abd82...226fad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c3ea9...7e3c84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f05dc...82018c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20af96...ab16bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x213a7b...a07e7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2208c7...ec4dbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24805a...d59455` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x251597...4b6532` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x273808...e6e5c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2841a0...49f6de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c3307...e6be11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f4d7a...2bc57d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x402446...385572` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4122ef...114249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41a812...e62a4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x432d09...2278fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45d456...dacff9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x495adb...d94eb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b14dd...192730` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ba13e...7221ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e7ce3...ae565c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f9d9b...ffb6af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x508d31...9134a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x540934...aa8ab8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x550bf9...8b1d86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56a88c...f76794` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58c0ce...e180f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c13b6...189c58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60af54...0581d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x659773...fa1d4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6af292...cdb1ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d3d91...c3bbde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e300f...5de6c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x701f89...ebd16d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70ca91...7f293c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76c05c...6d2891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x772b45...ca7056` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7768c4...e1fd21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x788b23...1ac663` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79dfac...611c51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a3a18...c22f03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b9ca7...a31f1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91a149...4d2e58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9454a0...1d393e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x981808...3e26d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a39ac...9118cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d385e...4f4767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f9c9b...b50f82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0e9c9...9e4b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa229d0...ad30f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4f309...b634ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5d072...404abc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb255f7...b72063` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc099fe...2e79b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc46507...d9c46f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc92203...d85d35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9a4a8...9cbc18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcad5ab...e5e2ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfe4d6...c1e628` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd090cc...954879` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0f553...4dcc90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd516cd...dd7ac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd88080...42e675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdab506...d4908e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb5187...8fdb0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0e323...0728a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe582dc...b4d981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7cf60...9587a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe97f36...c121bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea873c...448908` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee3235...939e42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2ec7c...29c793` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7af33...24d447` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SmartCredit Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/ca048cb8eaba4f7959fb83c1c6f5cb4803c85718/SmartCredit%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x221657...f5c9bb`](./contracts/ethereum-1/0x221657776846890989a759ba2973e427dff5c9bb/) | ReputationToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x967f97...bd87b6`](./contracts/ethereum-1/0x967f978e36299cc2c250587e0a150e113ebd87b6/) | SmartCreditTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 83 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
