# Agentic Audit Brief: stCELO

## Project Overview

- Project: stCELO (`stcelo`)
- Website: [https://stcelo.xyz/](https://stcelo.xyz/)
- Lifecycle: active (Tier 0, 55.6% below peak)
- Generated: 2026-06-10T20:59:16.654Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: celo
- Contract surface: 19 unique implementations (140 raw deployments)
- DeFi Llama TVL: $1,598,039.52
- On-chain TVL (included contracts): $1,635,081.82
- TVL by chain: Celo $1,635,081.82

## Project Description

stCELO is a liquid staking protocol on Celo that allows users to stake CELO and receive a liquid staking token (stCELO) representing their staked position, while earning staking rewards. It also provides a rebasing variant (rstCELO) that automatically compounds rewards.

### Architecture

The stCELO family relies on the Account family for user account management and staking logic, with both families using ERC1967Proxy for upgradeability. The Manager contract governs the stCELO system, while StakedCelo and RebasedStakedCelo tokens represent user stakes.

## Audit Coverage Summary

- Verified implementations audited: 5/10 (50.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 19
- Raw deployments: 140
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| FTI | Tier 2 | 3 | 30.0% | 2022-05 |
| Unknown | Tier 2 | 3 | 30.0% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakedCelo | token | celo | 15 deployments: celo [`0x085a0d...7f21ca`](./contracts/celo-42220/0x085a0d7612f35a94bd72e9ce2ff8bc86727f21ca/); celo `0x0b2f88...65f75b`; celo `0x1b4b48...32c73d`; celo `0x2c2e2b...4edc3a`; celo `0x4387a0...4c6429`; celo `0x44c2fe...f0271f`; celo `0x6e17cf...783b67`; celo `0x809b7e...632426`; celo `0x912285...3ddcfc`; celo `0x922333...794692`; celo `0x95cc0c...1c4e49`; celo `0xa97be8...8babcb`; celo `0xafddbc...734a1d`; celo `0xb59b1c...2c4b61`; celo `0xc66858...fdfc24` | ✅ Audited |
| Account | core_logic | celo | 16 deployments: celo [`0x075507...fb4a53`](./contracts/celo-42220/0x07550767a1604af3e504749e284792ff30fb4a53/); celo `0x0a0b72...9f3ade`; celo `0x13d01f...a419c9`; celo `0x1edec9...5d654a`; celo `0x250c1b...f380d2`; celo `0x2e1193...af278c`; celo `0x4c8eed...44a1bc`; celo `0x5b4a33...f341a5`; celo `0x694ab8...003cfb`; celo `0x6a519c...3c577c`; celo `0x6bbd91...ae298d`; celo `0x95b8f3...6ba914`; celo `0xad3df8...18d52e`; celo `0xb82dd2...f0bc81`; celo `0xc2fd56...33e3d0`; celo `0xc66760...79face` | ✅ Audited |
| Manager | governance | celo | 22 deployments: celo [`0x08a212...5e770d`](./contracts/celo-42220/0x08a2121c9c143b9b06ffa27269d25af96c5e770d/); celo `0x18f51d...4f3fcf`; celo `0x25b7f3...bb807f`; celo `0x2cb8b2...00e9af`; celo `0x2f05b8...31ba0b`; celo `0x43e55a...46fb58`; celo `0x443579...de5af7`; celo `0x534a0b...91648b`; celo `0x548fab...837329`; celo `0x70b1bd...c72e62`; celo `0x78b405...46f38e`; celo `0x954bc8...c5e5af`; celo `0xa60fcf...7c70f5`; celo `0xa7ec4a...a6eb74`; celo `0xacd0ad...40cb43`; celo `0xb3ac6d...d10774`; celo `0xb6316a...3bd394`; celo `0xc9cd08...c6c674`; celo `0xe12f7e...dd0312`; celo `0xe923a9...fda387`; celo `0xf6aeb1...e13657`; celo `0xfea79f...c69625` | ✅ Audited |
| SpecificGroupStrategy | core_logic | celo | 10 deployments: celo [`0x003a4c...0f54aa`](./contracts/celo-42220/0x003a4c7fda849eeda551f5c995729335d70f54aa/); celo `0x01a767...c8b926`; celo `0x365e62...a58d23`; celo `0x52a1d5...34a1f0`; celo `0x54c819...32999a`; celo `0x777446...fed190`; celo `0x9dd19a...2cc4e8`; celo `0xe11359...a71c2f`; celo `0xee0ba5...2055a5`; celo `0xf1c4a8...21a947` | ✅ Audited |
| Vote | unknown | celo | 9 deployments: celo [`0x3c6e90...fcce0f`](./contracts/celo-42220/0x3c6e9000c449d15e584bc1ab98e9aa14a5fcce0f/); celo `0x54496e...3f83bd`; celo `0x655f0a...3c70fc`; celo `0x681db4...f6cc3e`; celo `0x9760e0...e7a3d3`; celo `0xbb4e49...2e65bf`; celo `0xcc3120...0237b8`; celo `0xda30d1...b9ab8e`; celo `0xfdffa5...66a28f` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DefaultStrategy | core_logic | celo | 9 deployments: celo [`0x2f9ba7...539e2d`](./contracts/celo-42220/0x2f9ba7121ea67436aa7910080b4b68efee539e2d/); celo `0x523122...466f09`; celo `0x5bd084...8eed3d`; celo `0x820f7a...71184d`; celo `0xd1825d...78c317`; celo `0xd54bc0...684a09`; celo `0xd718b6...5f5745`; celo `0xf0b67a...22f7ff`; celo `0xf676df...3c3839` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | celo | 6 deployments: celo [`0x0239b9...cf9398`](./contracts/celo-42220/0x0239b96d10a434a56cc9e09383077a0490cf9398/); celo `0x3a3ed7...0ea088`; celo `0x4aad04...54c432`; celo `0x8bd8a8...d01c89`; celo `0xaf37a8...1d33f5`; celo `0xb88af6...937871` | ⚠️ Unaudited |
| GroupHealth | unknown | celo | 12 deployments: celo [`0x004377...f476eb`](./contracts/celo-42220/0x004377e7c1c68b97c2e00943b426ba172ff476eb/); celo `0x073bb3...0985d9`; celo `0x140b36...cecdcf`; celo `0x193df9...d556ad`; celo `0x205f4c...bc64e1`; celo `0x2f5979...1a2f18`; celo `0x4443a4...6ac578`; celo `0x6f4606...09ff3e`; celo `0x9c6c01...c4cc57`; celo `0xbc7c8e...43051c`; celo `0xf6bccb...a94220`; celo `0xf8bf1b...beb878` | ⚠️ Unaudited |
| MultiSig | governance | celo | 21 deployments: celo [`0x13f1f8...75c27e`](./contracts/celo-42220/0x13f1f8706710069bc55b71e320a3fb2d3775c27e/); celo `0x1bb789...27af07`; celo `0x2d952d...124cd0`; celo `0x2e37af...e9e4df`; celo `0x55e953...b36128`; celo `0x5aa1c6...e8f2e3`; celo `0x78b50b...220cca`; celo `0x78daa2...d40179`; celo `0x846b04...d6013f`; celo `0x85a9aa...64f3f3`; celo `0x8652ce...ae782a`; celo `0x88d1ae...d48c24`; celo `0x8bd50c...33f818`; celo `0x98c93e...14dc67`; celo `0xaab51f...d47145`; celo `0xb05860...906732`; celo `0xb78ab3...7aecf1`; celo `0xda3eb1...eb2aa8`; celo `0xe57f6f...07c0c4`; celo `0xf38592...128d39`; celo `0xfb197e...b374ee` | ⚠️ Unaudited |
| RebasedStakedCelo | token | celo | 11 deployments: celo [`0x0251c3...6cc806`](./contracts/celo-42220/0x0251c3224f15e875fe6fbca04c0f9117366cc806/); celo `0x52bb50...a195c0`; celo `0x58fc55...14713c`; celo `0x6b8bb0...2352aa`; celo `0x737bce...3b2fdf`; celo `0x80ef43...8f5ac4`; celo `0x8c89e7...67c594`; celo `0x97b5ee...5b795c`; celo `0xad3317...4eba11`; celo `0xdc5762...1f44cf`; celo `0xdfc2da...45a67c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | celo | `0x094ee2...520d67` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1cf4f9...43ec90` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1f0e8b...d32cea` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x48b505...65f187` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x63af25...b3e40a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8897ec...a27f57` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xacf9d7...045d15` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc053ca...407207` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd3188f...6f4c69` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Celo-staking-audit-mar24(Public).pdf](https://github.com/celo-org/staked-celo/blob/master/audit/Celo-staking-audit-mar24(Public).pdf) | Unknown | Audit | 2024-04 | stale | Direct | contract_name | 35 | high |
| [FTI_audit_stCELO.pdf](https://github.com/celo-org/staked-celo/blob/master/audit/FTI_audit_stCELO.pdf) | FTI | Audit | 2022-05 | stale | Direct | contract_name | 53 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | [`0x2f9ba7...539e2d`](./contracts/celo-42220/0x2f9ba7121ea67436aa7910080b4b68efee539e2d/) | DefaultStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=88

Fork inheritance lineage and inherited audits are included when available.
