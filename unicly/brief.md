# Agentic Audit Brief: Unicly

## Project Overview

- Project: Unicly (`unicly`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.806Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 27 unique implementations (35 raw deployments)
- DeFi Llama TVL: $352,634.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 38 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 3 ERC721 NFTs, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (erc1155burnable, erc165, erc1155receiver). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 35 (19 live, 16 unknown).
- Excluded by liveness: 42 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/11 (100.0%)
- Deployed-live implementations: 11 of 27 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/11
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 27
- Raw deployments: 35
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 11 | 100.0% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdvStakingProxyFarmer | unknown | ethereum | n/a | [`0x2e30b5fa7bfa8d51a4668284c763af112e664031`](./contracts/ethereum-1/0x2e30b5fa7bfa8d51a4668284c763af112e664031/) | ✅ Audited |
| GovernorAlpha | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8bf26a3bffd9072ce12c7bfd5e3b1fce33768d2d`](./contracts/ethereum-1/0x8bf26a3bffd9072ce12c7bfd5e3b1fce33768d2d/); ethereum `0xb86b0daa5cabd74778492cc880d232c969f19c12` | ✅ Audited |
| LockedLP | unknown | ethereum | n/a | [`0x3947215350049b787177bfa90bce52856caf341e`](./contracts/ethereum-1/0x3947215350049b787177bfa90bce52856caf341e/) | ✅ Audited |
| ProxyCreator | unknown | ethereum | n/a | [`0xa63973a8b5b2b3d496b32395f5c9f256399ef177`](./contracts/ethereum-1/0xa63973a8b5b2b3d496b32395f5c9f256399ef177/) | ✅ Audited |
| ProxyFarmer | unknown | ethereum | n/a | [`0x1f2f77dcf34c55c119a27e74249f4f234934d1c8`](./contracts/ethereum-1/0x1f2f77dcf34c55c119a27e74249f4f234934d1c8/) | ✅ Audited |
| Timelock | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1e3497f72440aa93b5149516225e342a29ff5ee4`](./contracts/ethereum-1/0x1e3497f72440aa93b5149516225e342a29ff5ee4/); ethereum `0xf33079d70dbb83b2886d726dbe761671f84bc889` | ✅ Audited |
| Unic | unknown | ethereum | n/a | 2 deployments: ethereum [`0x719c3abf7c2435be34ed479b98db85342d107755`](./contracts/ethereum-1/0x719c3abf7c2435be34ed479b98db85342d107755/); ethereum `0x94e0bab2f6ab1f19f4750e42d7349f2740513ad5` | ✅ Audited |
| UnicFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e30235a3c556ff509cd4f71ad6168ec60c89b28`](./contracts/ethereum-1/0x4e30235a3c556ff509cd4f71ad6168ec60c89b28/); ethereum `0x8696bde5cc30545b3b049f3529abbfb2b1e0c007` | ✅ Audited |
| UnicFarm | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2bf120458d1270d0f666cc75a70e8379270bc6e3`](./contracts/ethereum-1/0x2bf120458d1270d0f666cc75a70e8379270bc6e3/); ethereum `0x4a25e4df835b605a5848d2db450fa600d96ee818` | ✅ Audited |
| UnicGallery | unknown | ethereum | n/a | 2 deployments: ethereum [`0x79161df977aa152152ba8d07f701a14376f8207e`](./contracts/ethereum-1/0x79161df977aa152152ba8d07f701a14376f8207e/); ethereum `0xa62fb0c2fb3c7b27797dc04e1fea06c0a2db919a` | ✅ Audited |
| UnicPumper | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9e5b1f637a03976f2c472265806aa1bcc969ca85`](./contracts/ethereum-1/0x9e5b1f637a03976f2c472265806aa1bcc969ca85/); ethereum `0xc763dc7c46a7ae03ba99bb87070b126a2a2afa94`; ethereum `0xfce761d7e0d99300897de97025558670bb269dd2` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x21ce5251d47aa72d2d1dc849b1bcce14d2467d1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22e8b71881b7c800beabc62b8075850b2fcf7851` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2499d1d165833e6f69ac4b5b34973df2dec43721` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e816615834ba06a150070ec318313113e1c8f0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3547b2f1d40d5bc2ebef8420214a9355c7850d50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b967c6f61958cd71cdfd63e0905496cb679fe6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68187ae6fb2c63098452ac4723cd31551d697aec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bbccfd5a0a847256c059cc0d6439cd69ff774fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f33725fad025eb22a31e10ca34936ab106d9a08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb945dc2c07a14b1c02e0579cb1c645bc5c9ea499` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcae5bfec4680450e9ddb3e52eb6722b1e05b16fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce924a7ac1641989b63bdd2ce96bda55e42d3164` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcecf73a88c175a2cdcb186230de8f33c1942aeec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe111b76d6c1316313d4b491887b4cdb2163c07b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe82f701799cb794fb89c7cfb682730b8981f81c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf06d5aa7a3bb23a4ebca0ad91ec5bfd34b000c1e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Unicly Security Audit.pdf](https://github.com/uniclyNFT/Resources/blob/main/Unicly%20Security%20Audit.pdf) | yAudit | Audit | 2021-03 | stale | Direct | contract_name | 19 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=19

Fork inheritance lineage and inherited audits are included when available.
