# Agentic Audit Brief: EmpMoney

## Project Overview

- Project: EmpMoney (`empmoney`)
- Website: [https://emp.money](https://emp.money)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.779Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: bsc
- Contract surface: 96 unique implementations (100 raw deployments)
- DeFi Llama TVL: $182,080.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Algo-Stables. Structurally: 24 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 4 common project-authored base contract(s) (contractguard, operator, erc20burnable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 178; live-surface contracts included: 100 (13 live, 87 unknown).
- Excluded by liveness: 78 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/9 (88.9%)
- Deployed-live implementations: 9 of 96 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/9
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 87
- Unique implementations: 96
- Raw deployments: 100
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 8 | 88.9% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Boardroom | unknown | bsc | n/a | 2 deployments: bsc [`0x662a8aeec032d872dbdbf105654e9001a6657d48`](./contracts/bsc-56/0x662a8aeec032d872dbdbf105654e9001a6657d48/); bsc `0xe9baceea645e8be68a0b63b9764670f97a50942f` | ✅ Audited |
| EBond | unknown | bsc | n/a | [`0x7099a19da2f17bc85193b1f0e9091df014a5d520`](./contracts/bsc-56/0x7099a19da2f17bc85193b1f0e9091df014a5d520/) | ✅ Audited |
| Emp | unknown | bsc | n/a | 2 deployments: bsc [`0x269765b520f22a57a8421e6c3a4fead11c399a10`](./contracts/bsc-56/0x269765b520f22a57a8421e6c3a4fead11c399a10/); bsc `0x3b248cefa87f836a4e6f6d6c9b42991b88dc1d58` | ✅ Audited |
| EmpRewardPool | core_logic | bsc | n/a | [`0x13ea3cacf0ed02aeab86f80c2e9de77c70a9421c`](./contracts/bsc-56/0x13ea3cacf0ed02aeab86f80c2e9de77c70a9421c/) | ✅ Audited |
| EShare | unknown | bsc | n/a | 3 deployments: bsc [`0x43afd3d4ee88c5d1e1a856f5ae1aaccc1d4733ff`](./contracts/bsc-56/0x43afd3d4ee88c5d1e1a856f5ae1aaccc1d4733ff/); bsc `0x7a3a5eaf759f2ee505d832f7b169e354075aa3aa`; bsc `0xdb20f6a8665432ce895d724b417f77ecac956550` | ✅ Audited |
| EShareRewardPool | core_logic | bsc | n/a | [`0x97a68a7949ee30849d273b0c4450314ae26235b1`](./contracts/bsc-56/0x97a68a7949ee30849d273b0c4450314ae26235b1/) | ✅ Audited |
| Treasury | operational_periphery | bsc | n/a | [`0xd3dd99430a7c6818f8c848ecffed527d38505bb0`](./contracts/bsc-56/0xd3dd99430a7c6818f8c848ecffed527d38505bb0/) | ✅ Audited |
| Zapper | adapter | bsc | n/a | [`0x5bad3568c99f15833b92dea08a34d7ce868a5aa2`](./contracts/bsc-56/0x5bad3568c99f15833b92dea08a34d7ce868a5aa2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Timelock | governance | bsc | n/a | [`0xefebe2c43517eadba5a81b7b00b40207c87fa94a`](./contracts/bsc-56/0xefebe2c43517eadba5a81b7b00b40207c87fa94a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (87)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0062dca513bdf2f01a6d8631241b3980838b753a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0357b4fe87e0b9b96ff9aedc4a82e675ca530cad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03b3fe22de54e5ece9f5ad14414bc6cb1b97942f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x067f858a97bd9857c18185a406233944a789d864` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x073e65b1af38a324bef9983f3e55e312bb011918` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0892a8fc50235b2b741f8778ead50ede1c7f5c0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0988f15988a543fc613bfaf24c6660b81834b31d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0dc296824b0291f0f3601eb15f8b8a9e3cf83e21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13f1e6a52ba36d4380b58098ed8a410f9d4550a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1483f91378eb8998e405c2b8c0f1fc92566b3c26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18d1be9dd700272d51a13c55792d7901423cc8ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f6f39ebcf877c2a2636bc45fca90226609c6d80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20a88046c7d1fc969a11f18dd748c32ff3097eff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x227bb7a997cd0b0d3c9f3ef89495c51a0fdf0256` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25d8d45955fbffa0692dcda831a5184d76c23c73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26c20ce6e82e484b423f9e823229bd599b6b002f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28227698fb1c92acf949dd5cd52c9c11d588617f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a55caac38d338537669acb36234b1b2dedbe266` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a7e01d24a9a2760940b176af0f5af18b75dcc41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b2be9b18fb8dd5bbab9e312646803f2caf8c1e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x301f1725c3a3cc5d9e826ea2fbdbc07bb7c0ed9a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33cc517c8d944dba1ea022a1505e6f466f19e397` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33ff4ea0865dd80e0e6f57bec3f87336183bcca4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x344d3654693a1aeddf346ba7e67b05f636fefcbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b211b0b040969121cbc0e567600078411fc642a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fc9b625bfeb67437825c440d66463a1bfc32f3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47e3799ef1ff9c6b290ebe00f7f96f9e0947895c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48e1578c3f9a152126dcedfdebbc3b88c70f21ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48f38551ca59107853674dcc897b3b2235016d29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48f81664035bc2471b8b39a3d661a606ff26fa1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49e4715dc2b35f44a3252e8fb18f82826dbcfc6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a956fe83d4fb652cb0e94df414a9b6e3a3d332a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x544712752ccaba2a7ef253a454b65c155c6bfb23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54ae04758365235969b88c9b063dbe9abbaeff42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5519dfc34418b8c74c86a2eaaf5039c4f7663e97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f2779217b371e3aeaf317de104529a00a3705d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x637db1e3eb2860d941458d734b26d0e7ceb5a7e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6509c9bf61cd2c37bd82fc111d6e29f37b694a4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68fde40e9896dda5c04fc4bd7e147a54c0947e5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a70d4aca873b0f6ba8c16af43d49a2fb041fb2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c8f49485abe379ab6eb54eb8b59d014997b5fe0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6de2314b3fe12ac71dd92de3da32511f1077398e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ffa02f3f519fca118c8f12a7bba061e6547b31e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bf48d187d1d3a212eea75cad6eb6ab938b5dfce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82de62fb20eb0876bce0d2d01a5c135ddcce9f36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8893760c640953e1a2639215536e499e6d9a54ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e0a1d5dc075af3bacd6b7ee3a08728b27294831` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90d0599cdcc5d805074312fec769b44ec413448e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91b625c93086253be76b20932c836ab4d63b7d6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94c379b0c4aeca98459ee86658828e4a26b95c5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x973bbdffd30429d820465b2c2dc9ca79f1f48eb8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98f1c06c12027546eb0ff60257b303b26b595f60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99a217edcbbbd0ce60dc6aff9929351ebc45fa11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f048967b027707be26deba8b598ef20b774aabf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa605b764bc0c34dc45dcf89e6225ff0492978f13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa61b6a15393be3d57c3fb948bfc8c18bf5d6b077` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9242c601c8be6105cd16449772299913011ecf7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac3d39dec91d737ec4e46ff27faaa9b2649dc401` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf2af66c0e598c4545ffe676ca383feef5e0dc16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb00a534dc015f5235b7770b554c827068a3843f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb11fae6cdcc39ff0656e0f1f01136534c9277369` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb23b86502950a69b026220571bf8e2e699219256` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb87f2a53359a9058c84b143c54dc9226587684fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8e860fb85aa09ada3fef943dcfae8064e76fa24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb992076f9d35b87dc6b30f95c6c69212db27b853` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe559bc913a08a587020c9cffd4829bf4a095275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfd40ea95059548a8021ae559f138f4c0fba5f68` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0b58f8bceb1b300216803924e4a41ddf25aa297` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc11a259b7bd91afb0cd60b7a4d3705632b3e0dd1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc16438798c7d85058814f079e926c18303ed4102` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc44a48172717549052868d0b118ed9b909956279` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5ca857b6f28aad3b9200dbd35b0721f91d59cdb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5f0049d3b1ed2c6a9ba4eb2d76dd5a84593bc3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc6c5baa9bdcf0c46c8b667bbe7facac2f5e5004` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xccbfdc7fdd8ce105321eded11b5cfdc6dd1d1c1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd42d2478610584e786a98d2d6d94bc80a066218` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcffd446efb7ac72c15da9283eb1638b5585e9acd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc860cdf0e7930408900a2e3eab43cfb1bbc301e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1bafbe6a7e6b8c6bd6c9fc44ffa66d820d69038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8c5dfdf1aedab09499691698e44d480f41a20bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb2860a6eae1961254b785e49d1e0c3ff6fab283` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecbac4345538c00b8cf4b068b1865b85aa1f96cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xedc361e2566cbe35bb0c4a334b1c8e1ba2b83cbb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6f0b5441064ef2fd1622397654148e8365bf23f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf84b624168f5ce776e1f00ab34d47222c3ceeaf0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc67df99cb156b666650bc0c0be86368d0ff89dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe7a471e5e2f71fa2222686a83e332c1edb0abdb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [EMP-Money_final-audit-report.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/emp-money/EMP-Money_final-audit-report.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 8 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xefebe2c43517eadba5a81b7b00b40207c87fa94a`](./contracts/bsc-56/0xefebe2c43517eadba5a81b7b00b40207c87fa94a/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 87 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=8

Fork inheritance lineage and inherited audits are included when available.
