# Agentic Audit Brief: Kasu

## Project Overview

- Project: Kasu (`kasu`)
- Website: [https://kasu.finance/](https://kasu.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.029Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: base
- Contract surface: 26 unique implementations (42 raw deployments)
- DeFi Llama TVL: $10,864,465.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA Lending. Structurally: 17 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 3 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 4 common project-authored base contract(s) (kasuaccesscontrollable, assetfunctionsbase, lendingpoolhelpers). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 51; live-surface contracts included: 37 (35 live, 2 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/24 (20.8%)
- Deployed-live implementations: 24 of 26 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/24
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 26
- Raw deployments: 42
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 16.7% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 4 | 16.7% | 2024-10 |
| 0xCommit | Tier 2 | 1 | 4.2% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeManager | governance | base | n/a | [`0xef956c2193e032609da84bec5e5251b28939b6b9`](./contracts/base-8453/0xef956c2193e032609da84bec5e5251b28939b6b9/) | ✅ Audited |
| LendingPoolTranche | core_logic | base | n/a | 2 deployments: base [`0x94a699a93519bef708b5be69914436363100f3f9`](./contracts/base-8453/0x94a699a93519bef708b5be69914436363100f3f9/); base `0xa2e9992b73be340ec7134e751a4e5358374fb1d0` | ✅ Audited |
| PendingPool | core_logic | base | n/a | 2 deployments: base [`0x08023888ffb36f007679d1ec64a4f22f54e05e1d`](./contracts/base-8453/0x08023888ffb36f007679d1ec64a4f22f54e05e1d/); base `0x6ecd74982433ea8f00fbd879485641c507c8e2e0` | ✅ Audited |
| Swapper | unknown | base | n/a | [`0xe593edf0579cfa8b622c327c05a0070c71baa6d2`](./contracts/base-8453/0xe593edf0579cfa8b622c327c05a0070c71baa6d2/) | ✅ Audited |
| UserManager | governance | base | n/a | [`0x5dc8d315a80fd99abef0f327b9a52a3fbc3c93f3`](./contracts/base-8453/0x5dc8d315a80fd99abef0f327b9a52a3fbc3c93f3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcceptedRequestsCalculation | unknown | base | n/a | 2 deployments: base [`0x0133c2ec8a72dec51a9373e4003a2ccf09b3307a`](./contracts/base-8453/0x0133c2ec8a72dec51a9373e4003a2ccf09b3307a/); base `0x1e69dd53b1224ea012086dda11f9b4a23b58bd0e` | ⚠️ Unaudited |
| ClearingCoordinator | unknown | base | n/a | 2 deployments: base [`0x2889eafa5732abd724cda4ebc1b9659f90175ed1`](./contracts/base-8453/0x2889eafa5732abd724cda4ebc1b9659f90175ed1/); base `0x2cf12a6d91fa4beb5a4c17589a03e78f88f57de2` | ⚠️ Unaudited |
| FixedTermDeposit | unknown | base | n/a | [`0x757ab3139e09beb9ccdf59762ad00825efae5ed3`](./contracts/base-8453/0x757ab3139e09beb9ccdf59762ad00825efae5ed3/) | ⚠️ Unaudited |
| KasuAllowList | unknown | base | n/a | [`0x807a7e119ebf0282420b5ca0e0056c0525cbf8bb`](./contracts/base-8453/0x807a7e119ebf0282420b5ca0e0056c0525cbf8bb/) | ⚠️ Unaudited |
| KasuController | unknown | base | n/a | 2 deployments: base [`0xb0d7eb2d5036fb85a231d0e243a5b723ba5d2868`](./contracts/base-8453/0xb0d7eb2d5036fb85a231d0e243a5b723ba5d2868/); base `0xe768e5d17f338df23983876afdcd42ae7d60b052` | ⚠️ Unaudited |
| KasuPoolExternalTVL | unknown | base | n/a | 2 deployments: base [`0x662379febb3e4f91400b5f7d4f7f7ce4699f3c9f`](./contracts/base-8453/0x662379febb3e4f91400b5f7d4f7f7ce4699f3c9f/); base `0xe477a800c428c7ace5ba2b4cef0be55bca2cb191` | ⚠️ Unaudited |
| KSU | unknown | base | n/a | 2 deployments: base [`0x5d9b878744dbe721a3f33a60a6b102e289ceadba`](./contracts/base-8453/0x5d9b878744dbe721a3f33a60a6b102e289ceadba/); base `0x7923837dc93d897e12696e0f4fd50b51fbacf693` | ⚠️ Unaudited |
| KSULockBonus | unknown | base | n/a | [`0xeede30acf16caff49c1a48f75185c67be2e20b40`](./contracts/base-8453/0xeede30acf16caff49c1a48f75185c67be2e20b40/) | ⚠️ Unaudited |
| KSULocking | unknown | base | n/a | [`0xb145c061684c701c2c018a3f322aa14f5a553ce1`](./contracts/base-8453/0xb145c061684c701c2c018a3f322aa14f5a553ce1/) | ⚠️ Unaudited |
| LendingPool | unknown | base | n/a | 2 deployments: base [`0x2af3eb5945a524e1c23dc2fb2b3b37a5cad7ab31`](./contracts/base-8453/0x2af3eb5945a524e1c23dc2fb2b3b37a5cad7ab31/); base `0x9b9ec355b7f11a996b8d483d8608a82785efa621` | ⚠️ Unaudited |
| LendingPool | unknown | base | n/a | 2 deployments: base [`0x8855ec34d148fddcd3d536a2eb9c04943e926e8f`](./contracts/base-8453/0x8855ec34d148fddcd3d536a2eb9c04943e926e8f/); base `0xcdc9b9b475095cb0dcd9e11c5d1c9463c5a1de99` | ⚠️ Unaudited |
| LendingPoolFactory | unknown | base | n/a | [`0x263b5d074584118ff2b65b0125ac8a4529ab05a8`](./contracts/base-8453/0x263b5d074584118ff2b65b0125ac8a4529ab05a8/) | ⚠️ Unaudited |
| LendingPoolFactory | unknown | base | n/a | 2 deployments: base [`0x617b6e6a4f444bbc5dee08193e9597e20603f9f3`](./contracts/base-8453/0x617b6e6a4f444bbc5dee08193e9597e20603f9f3/); base `0xd8c77e8882f9bada35804625e8264e51cb905190` | ⚠️ Unaudited |
| LendingPoolManager | unknown | base | n/a | [`0xe1be322323a412579b4a09fb08ff4bfca12096b5`](./contracts/base-8453/0xe1be322323a412579b4a09fb08ff4bfca12096b5/) | ⚠️ Unaudited |
| LendingPoolTranche | unknown | base | n/a | 4 deployments: base [`0x31b186049085e7bf5b68c27657bd73b5a5bac13f`](./contracts/base-8453/0x31b186049085e7bf5b68c27657bd73b5a5bac13f/); base `0x8f2b35004fd5fe1b1d649bf52df8fd6ee4467f12`; base `0xec998071e553742596d9971190f13c3dafd9c899`; base `0xef5d123d26280fc96099abf9c86d7b7e5a3033be` | ⚠️ Unaudited |
| ManualKsuPrice | unknown | base | n/a | 2 deployments: base [`0x221a54cbbd5f490bd8e77cf36acba4b1304e5c1b`](./contracts/base-8453/0x221a54cbbd5f490bd8e77cf36acba4b1304e5c1b/); base `0xb82992c13adee67f43758bce6ff16e32c0ca4dc6` | ⚠️ Unaudited |
| PendingPool | unknown | base | n/a | 3 deployments: base [`0x0c5554058118dba2da4a3ca2a448c5a61bc7f4cc`](./contracts/base-8453/0x0c5554058118dba2da4a3ca2a448c5a61bc7f4cc/); base `0x3cf8562b0a1ff6d6749071e478177ec2ddc7dbf4`; base `0xc17f46d36de495a866d11e1fc284fa013903e3a9` | ⚠️ Unaudited |
| SystemVariables | unknown | base | n/a | [`0x193bb02a24f5562b58feb86550e6f09bb6c41f69`](./contracts/base-8453/0x193bb02a24f5562b58feb86550e6f09bb6c41f69/) | ⚠️ Unaudited |
| UserLoyaltyRewards | unknown | base | n/a | [`0xb4784f69bb1f1076f50907cb0a815908a719d635`](./contracts/base-8453/0xb4784f69bb1f1076f50907cb0a815908a719d635/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x59c8ea31bd71fa48e0201a88354b1be26dd0eedc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xafb2966dcc3f20ec4412162a8d203247a93a7765` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Kasu_0xCommit.pdf](https://github.com/Kasu-Finance/security/blob/main/audits/Kasu_0xCommit.pdf) | 0xCommit | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [Kasu_ChainSecurity.pdf](https://github.com/Kasu-Finance/security/blob/main/audits/Kasu_ChainSecurity.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x0133c2ec8a72dec51a9373e4003a2ccf09b3307a`](./contracts/base-8453/0x0133c2ec8a72dec51a9373e4003a2ccf09b3307a/) | AcceptedRequestsCalculation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2889eafa5732abd724cda4ebc1b9659f90175ed1`](./contracts/base-8453/0x2889eafa5732abd724cda4ebc1b9659f90175ed1/) | ClearingCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x757ab3139e09beb9ccdf59762ad00825efae5ed3`](./contracts/base-8453/0x757ab3139e09beb9ccdf59762ad00825efae5ed3/) | FixedTermDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x807a7e119ebf0282420b5ca0e0056c0525cbf8bb`](./contracts/base-8453/0x807a7e119ebf0282420b5ca0e0056c0525cbf8bb/) | KasuAllowList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb0d7eb2d5036fb85a231d0e243a5b723ba5d2868`](./contracts/base-8453/0xb0d7eb2d5036fb85a231d0e243a5b723ba5d2868/) | KasuController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x662379febb3e4f91400b5f7d4f7f7ce4699f3c9f`](./contracts/base-8453/0x662379febb3e4f91400b5f7d4f7f7ce4699f3c9f/) | KasuPoolExternalTVL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5d9b878744dbe721a3f33a60a6b102e289ceadba`](./contracts/base-8453/0x5d9b878744dbe721a3f33a60a6b102e289ceadba/) | KSU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeede30acf16caff49c1a48f75185c67be2e20b40`](./contracts/base-8453/0xeede30acf16caff49c1a48f75185c67be2e20b40/) | KSULockBonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb145c061684c701c2c018a3f322aa14f5a553ce1`](./contracts/base-8453/0xb145c061684c701c2c018a3f322aa14f5a553ce1/) | KSULocking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2af3eb5945a524e1c23dc2fb2b3b37a5cad7ab31`](./contracts/base-8453/0x2af3eb5945a524e1c23dc2fb2b3b37a5cad7ab31/) | LendingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8855ec34d148fddcd3d536a2eb9c04943e926e8f`](./contracts/base-8453/0x8855ec34d148fddcd3d536a2eb9c04943e926e8f/) | LendingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x263b5d074584118ff2b65b0125ac8a4529ab05a8`](./contracts/base-8453/0x263b5d074584118ff2b65b0125ac8a4529ab05a8/) | LendingPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x617b6e6a4f444bbc5dee08193e9597e20603f9f3`](./contracts/base-8453/0x617b6e6a4f444bbc5dee08193e9597e20603f9f3/) | LendingPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe1be322323a412579b4a09fb08ff4bfca12096b5`](./contracts/base-8453/0xe1be322323a412579b4a09fb08ff4bfca12096b5/) | LendingPoolManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x31b186049085e7bf5b68c27657bd73b5a5bac13f`](./contracts/base-8453/0x31b186049085e7bf5b68c27657bd73b5a5bac13f/) | LendingPoolTranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x221a54cbbd5f490bd8e77cf36acba4b1304e5c1b`](./contracts/base-8453/0x221a54cbbd5f490bd8e77cf36acba4b1304e5c1b/) | ManualKsuPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c5554058118dba2da4a3ca2a448c5a61bc7f4cc`](./contracts/base-8453/0x0c5554058118dba2da4a3ca2a448c5a61bc7f4cc/) | PendingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x193bb02a24f5562b58feb86550e6f09bb6c41f69`](./contracts/base-8453/0x193bb02a24f5562b58feb86550e6f09bb6c41f69/) | SystemVariables | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb4784f69bb1f1076f50907cb0a815908a719d635`](./contracts/base-8453/0xb4784f69bb1f1076f50907cb0a815908a719d635/) | UserLoyaltyRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=4, extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
