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
| vaultBase | core_logic | polygon | n/a | 7 deployments: polygon [`0x2d0389...6f7271`](./contracts/polygon-137/0x2d03892d0fae4479ae2b0d945f67675f006f7271/); polygon `0x510d77...e69621`; polygon `0x55c08f...6905e3`; polygon `0x58201c...19875b`; polygon `0x58fe96...63770b`; polygon `0x7a9be7...b791ec`; polygon `0x992ae1...62a657` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Koge | unknown | polygon | n/a | [`0x13748d...cffa23`](./contracts/polygon-137/0x13748d548d95d78a3c83fe3f32604b4796cffa23/) | ⚠️ Unaudited |
| MasterChef | unknown | polygon | n/a | [`0x627551...32fabd`](./contracts/polygon-137/0x6275518a63e891b1bc54feebbb5333776e32fabd/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0x388550...1c8154`](./contracts/polygon-137/0x3885503aef5e929fcb7035fbdca87239651c8154/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | polygon | n/a | `0x02bc4f...8d78de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x036aa0...ecdc0e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x055f6e...a21983` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a5e26...208d1c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0d473c...44cbca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x150504...18192e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x175cce...d8c490` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1b15dc...c56b24` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1c5fce...bf662d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1f4124...cbb5fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1fa43c...f8580c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1fbe00...ed7df9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x248d6e...64c2fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x25ae45...7626cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x266b88...59d448` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x28c574...a08b45` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x38a4ec...e7b263` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3ccb87...58019d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3edf01...102c45` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x440f60...185f64` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x47026b...31e439` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a4efa...3d7cfb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4b21b8...29f718` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5bdc94...1e72a2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6c3c05...8d751a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6cb10b...e4092a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7846a5...b690f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78bc87...5fcb97` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78ed10...e20558` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x79578e...29bf1c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7a0333...bf53ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7a412e...b99db8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b1264...6fbb53` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b21b4...800a78` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b87e4...f2607d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7db3a8...cdd270` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f9fc5...7b2320` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82e553...cf6116` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x846c27...5e5c8e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8488e2...e0b1b3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x85a4f9...2bcac1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x86da46...85443a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x88a60d...fa06bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a1044...431994` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a8c78...5b9bc3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b9c79...0db94b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8bb39b...7312ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x90e229...8bdacc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x918b70...b04bb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x93b709...d1976d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x95ad05...0df6f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x962c3b...7e4dfe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x970ac1...22aa96` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97789a...a99e49` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97b026...5f5a87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97f27f...0d1345` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9961f4...a7ae49` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99d416...901647` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a4821...747c8d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9adeb1...5634a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c347d...0edabb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c576f...b34cca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c66b4...504655` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d7812...a3b4b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9dfdbf...453cb6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9f21f5...10fd7c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9fe799...59a021` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa097ac...66926b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa104c9...542c62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa241d8...e2dd70` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa32de2...415309` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa34405...9e9bac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa41b05...72417c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa89414...12066a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa981fc...a3c6ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaa5237...703173` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaadd72...d3aeba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xad547d...a2b21b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaddabe...46dc72` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xadeab5...fbb1fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae3bdc...95575d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae426d...88ae95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae48ac...a957e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb02d3a...381445` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb0c26c...f2f6df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb13108...7b138b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb159b9...426257` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1d385...bdbe12` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1dc04...827b57` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb2026e...b4f9bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb33576...70bb71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb49197...47ea47` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb496f3...99e697` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5f4c1...6426c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb6dfcc...6a3c50` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb9a4d3...b2d378` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbac4fc...7e5cea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbc036a...ce771a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbdb501...cdc61a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc0c776...60703e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc22f98...cc3516` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc23865...5dac94` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc47479...4ac589` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc4f9ef...a60d9e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc54835...f0a912` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc76572...8c33aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcc5eeb...82a07b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xceaba5...a8118a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf0a5c...7c1806` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd1807e...7efb80` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd1fdfb...3b8aa2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd2056d...4fc71e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd26626...6769a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd26b6b...8a2fe3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd40775...845a93` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd4d8ba...dfc8ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd69ff9...ca705b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd73a3c...22a753` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd76958...872347` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd78223...891e8b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd9aca8...53c861` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd9c804...11e2ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdb3828...7c0f84` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdd6f1c...05d6b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdf4722...d85aa9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1123d...ff6521` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1a9ab...18c258` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe20846...d90c70` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3f2aa...65f407` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe42fdd...4f581e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe4b488...1fa19c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe60ff9...2a55b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe6b896...1386fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe80d72...a0dbc4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe8f57c...0616c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe92f4c...30e571` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe967b0...4ffb91` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea2f64...0d58d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeadcb0...b6d9c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeb0181...d8f0c7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeb1303...f41fe6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xecaad0...d90edb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xedcedd...f8a05e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf02808...3c54ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf0db90...821f58` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf214ec...90a691` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4fb31...215bfc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6cf9a...42e417` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf76cd9...9192d9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf94a2f...3b263f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf9a866...083a75` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc29b3...3d53de` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Kogefarm.pdf](https://github.com/Tibereum/obelisk-audits/blob/main/Kogefarm.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 1 | n/a |
| [paladinsec.co/projects/kogefarm](https://paladinsec.co/projects/kogefarm) | Paladin | Audit | 2021-10 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x13748d...cffa23`](./contracts/polygon-137/0x13748d548d95d78a3c83fe3f32604b4796cffa23/) | Koge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x627551...32fabd`](./contracts/polygon-137/0x6275518a63e891b1bc54feebbb5333776e32fabd/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
