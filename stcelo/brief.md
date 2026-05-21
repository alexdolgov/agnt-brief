# Agentic Audit Brief: stCELO

## Project Overview

- Project: stCELO (`stcelo`)
- Generated: 2026-05-21T11:02:35.723Z
- Pipeline run: v2-pipeline-2026-05-21-b7e540-ab17
- Chains: celo
- Contract surface: 98 logical contracts (144 raw addresses)
- On-chain TVL (included contracts): n/a

## Audit Coverage Summary

- Audited logical contracts: 49/98 (50.0%)
- Raw deployed addresses: 144
- Unaudited contracts: 49
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (unaudited native TVL): n/a

## Contract Surface

### native (89)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| celo | `0x003a4c...0f54aa` | SpecificGroupStrategy | core_logic | n/a | yes | celo `0xe11359...a71c2f`; celo `0xee0ba5...2055a5`; celo `0xf1c4a8...21a947` |
| celo | `0x01a767...c8b926` | SpecificGroupStrategy | core_logic | n/a | yes | none |
| celo | `0x073bb3...0985d9` | GroupHealth | unknown | n/a | no | celo `0x004377...f476eb`; celo `0x140b36...cecdcf`; celo `0x9c6c01...c4cc57`; celo `0xbc7c8e...43051c`; celo `0xf6bccb...a94220` |
| celo | `0x075507...fb4a53` | Account | core_logic | n/a | yes | celo `0x1edec9...5d654a`; celo `0x250c1b...f380d2`; celo `0x2e1193...af278c`; celo `0x6bbd91...ae298d` |
| celo | `0x08a212...5e770d` | Manager | governance | n/a | yes | celo `0x25b7f3...bb807f`; celo `0x43e55a...46fb58`; celo `0x443579...de5af7`; celo `0x70b1bd...c72e62`; celo `0x954bc8...c5e5af`; celo `0xa60fcf...7c70f5`; celo `0xb3ac6d...d10774` |
| celo | `0x094ee2...520d67` | UnnamedContract | unknown | n/a | no | none |
| celo | `0x0a0b72...9f3ade` | Account | core_logic | n/a | yes | none |
| celo | `0x13d01f...a419c9` | Account | core_logic | n/a | yes | none |
| celo | `0x18f51d...4f3fcf` | Manager | governance | n/a | yes | none |
| celo | `0x193df9...d556ad` | GroupHealth | unknown | n/a | no | none |
| celo | `0x1b4b48...32c73d` | StakedCelo | unknown | n/a | yes | celo `0x085a0d...7f21ca`; celo `0x0b2f88...65f75b`; celo `0x2c2e2b...4edc3a`; celo `0xb59b1c...2c4b61`; celo `0xc66858...fdfc24` |
| celo | `0x1bb789...27af07` | MultiSig | governance | n/a | no | celo `0x13f1f8...75c27e`; celo `0x2d952d...124cd0`; celo `0x2e37af...e9e4df`; celo `0x78daa2...d40179`; celo `0x85a9aa...64f3f3`; celo `0x88d1ae...d48c24`; celo `0xaab51f...d47145`; celo `0xfb197e...b374ee` |
| celo | `0x1cf4f9...43ec90` | UnnamedContract | unknown | n/a | no | none |
| celo | `0x1f0e8b...d32cea` | UnnamedContract | unknown | n/a | no | none |
| celo | `0x205f4c...bc64e1` | GroupHealth | unknown | n/a | no | none |
| celo | `0x2cb8b2...00e9af` | Manager | governance | n/a | yes | none |
| celo | `0x2f05b8...31ba0b` | Manager | governance | n/a | yes | none |
| celo | `0x2f5979...1a2f18` | GroupHealth | unknown | n/a | no | none |
| celo | `0x2f9ba7...539e2d` | DefaultStrategy | core_logic | n/a | no | celo `0xd1825d...78c317` |
| celo | `0x365e62...a58d23` | SpecificGroupStrategy | core_logic | n/a | yes | celo `0xb88af6...937871` |
| celo | `0x3c6e90...fcce0f` | Vote | unknown | n/a | yes | celo `0x9760e0...e7a3d3`; celo `0xcc3120...0237b8`; celo `0xda30d1...b9ab8e`; celo `0xfdffa5...66a28f` |
| celo | `0x4387a0...4c6429` | StakedCelo | unknown | n/a | yes | none |
| celo | `0x4443a4...6ac578` | GroupHealth | unknown | n/a | no | none |
| celo | `0x44c2fe...f0271f` | StakedCelo | unknown | n/a | yes | none |
| celo | `0x48b505...65f187` | UnnamedContract | unknown | n/a | no | none |
| celo | `0x4c8eed...44a1bc` | Account | core_logic | n/a | yes | none |
| celo | `0x523122...466f09` | DefaultStrategy | core_logic | n/a | no | celo `0xaf37a8...1d33f5` |
| celo | `0x52a1d5...34a1f0` | SpecificGroupStrategy | core_logic | n/a | yes | none |
| celo | `0x52bb50...a195c0` | RebasedStakedCelo | unknown | n/a | no | celo `0x0251c3...6cc806`; celo `0x97b5ee...5b795c`; celo `0xdc5762...1f44cf` |
| celo | `0x534a0b...91648b` | Manager | governance | n/a | yes | none |
| celo | `0x54496e...3f83bd` | Vote | unknown | n/a | yes | none |
| celo | `0x548fab...837329` | Manager | governance | n/a | yes | none |
| celo | `0x54c819...32999a` | SpecificGroupStrategy | core_logic | n/a | yes | none |
| celo | `0x55e953...b36128` | MultiSig | governance | n/a | no | none |
| celo | `0x58fc55...14713c` | RebasedStakedCelo | unknown | n/a | no | none |
| celo | `0x5aa1c6...e8f2e3` | MultiSig | governance | n/a | no | none |
| celo | `0x5b4a33...f341a5` | Account | core_logic | n/a | yes | none |
| celo | `0x5bd084...8eed3d` | DefaultStrategy | core_logic | n/a | no | none |
| celo | `0x655f0a...3c70fc` | Vote | unknown | n/a | yes | none |
| celo | `0x681db4...f6cc3e` | Vote | unknown | n/a | yes | none |
| celo | `0x694ab8...003cfb` | Account | core_logic | n/a | yes | none |
| celo | `0x6a519c...3c577c` | Account | core_logic | n/a | yes | none |
| celo | `0x6b8bb0...2352aa` | RebasedStakedCelo | unknown | n/a | no | none |
| celo | `0x6e17cf...783b67` | StakedCelo | unknown | n/a | yes | none |
| celo | `0x6f4606...09ff3e` | GroupHealth | unknown | n/a | no | none |
| celo | `0x737bce...3b2fdf` | RebasedStakedCelo | unknown | n/a | no | none |
| celo | `0x777446...fed190` | SpecificGroupStrategy | core_logic | n/a | yes | none |
| celo | `0x78b405...46f38e` | Manager | governance | n/a | yes | celo `0x0239b9...cf9398` |
| celo | `0x78b50b...220cca` | MultiSig | governance | n/a | no | none |
| celo | `0x809b7e...632426` | StakedCelo | unknown | n/a | yes | none |
| celo | `0x80ef43...8f5ac4` | RebasedStakedCelo | unknown | n/a | no | none |
| celo | `0x820f7a...71184d` | DefaultStrategy | core_logic | n/a | no | none |
| celo | `0x846b04...d6013f` | MultiSig | governance | n/a | no | none |
| celo | `0x8652ce...ae782a` | MultiSig | governance | n/a | no | none |
| celo | `0x8bd50c...33f818` | MultiSig | governance | n/a | no | none |
| celo | `0x8c89e7...67c594` | RebasedStakedCelo | unknown | n/a | no | none |
| celo | `0x912285...3ddcfc` | StakedCelo | unknown | n/a | yes | none |
| celo | `0x922333...794692` | StakedCelo | unknown | n/a | yes | none |
| celo | `0x95b8f3...6ba914` | Account | core_logic | n/a | yes | none |
| celo | `0x95cc0c...1c4e49` | StakedCelo | unknown | n/a | yes | none |
| celo | `0x98c93e...14dc67` | MultiSig | governance | n/a | no | none |
| celo | `0x9dd19a...2cc4e8` | SpecificGroupStrategy | core_logic | n/a | yes | none |
| celo | `0xa7ec4a...a6eb74` | Manager | governance | n/a | yes | none |
| celo | `0xa97be8...8babcb` | StakedCelo | unknown | n/a | yes | none |
| celo | `0xacd0ad...40cb43` | Manager | governance | n/a | yes | none |
| celo | `0xad3317...4eba11` | RebasedStakedCelo | unknown | n/a | no | none |
| celo | `0xad3df8...18d52e` | Account | core_logic | n/a | yes | none |
| celo | `0xafddbc...734a1d` | StakedCelo | unknown | n/a | yes | none |
| celo | `0xb05860...906732` | MultiSig | governance | n/a | no | none |
| celo | `0xb6316a...3bd394` | Manager | governance | n/a | yes | none |
| celo | `0xb78ab3...7aecf1` | MultiSig | governance | n/a | no | none |
| celo | `0xb82dd2...f0bc81` | Account | core_logic | n/a | yes | none |
| celo | `0xbb4e49...2e65bf` | Vote | unknown | n/a | yes | none |
| celo | `0xc2fd56...33e3d0` | Account | core_logic | n/a | yes | celo `0x4aad04...54c432` |
| celo | `0xc66760...79face` | Account | core_logic | n/a | yes | none |
| celo | `0xc9cd08...c6c674` | Manager | governance | n/a | yes | none |
| celo | `0xd54bc0...684a09` | DefaultStrategy | core_logic | n/a | no | celo `0x3a3ed7...0ea088` |
| celo | `0xd718b6...5f5745` | DefaultStrategy | core_logic | n/a | no | none |
| celo | `0xda3eb1...eb2aa8` | MultiSig | governance | n/a | no | none |
| celo | `0xdfc2da...45a67c` | RebasedStakedCelo | unknown | n/a | no | none |
| celo | `0xe12f7e...dd0312` | Manager | governance | n/a | yes | none |
| celo | `0xe57f6f...07c0c4` | MultiSig | governance | n/a | no | none |
| celo | `0xe923a9...fda387` | Manager | governance | n/a | yes | none |
| celo | `0xf0b67a...22f7ff` | DefaultStrategy | core_logic | n/a | no | none |
| celo | `0xf38592...128d39` | MultiSig | governance | n/a | no | none |
| celo | `0xf676df...3c3839` | DefaultStrategy | core_logic | n/a | no | celo `0x8bd8a8...d01c89` |
| celo | `0xf6aeb1...e13657` | Manager | governance | n/a | yes | none |
| celo | `0xf8bf1b...beb878` | GroupHealth | unknown | n/a | no | none |
| celo | `0xfea79f...c69625` | Manager | governance | n/a | yes | none |

### needs_review (9)

| Chain | Address | Name | Role | TVL USD | Audited | Proxy Metadata |
|---|---|---|---|---:|---|---|
| celo | `0x63af25...b3e40a` | UnnamedContract | unknown | n/a | no | none |
| celo | `0x8897ec...a27f57` | UnnamedContract | unknown | n/a | no | none |
| celo | `0xacf9d7...045d15` | UnnamedContract | unknown | n/a | no | none |
| celo | `0xc053ca...407207` | UnnamedContract | unknown | n/a | no | none |
| celo | `0xd11cc1...1828a1` | UnnamedContract | unknown | n/a | no | none |
| celo | `0xd22e18...629ef2` | UnnamedContract | unknown | n/a | no | none |
| celo | `0xd3188f...6f4c69` | UnnamedContract | unknown | n/a | no | none |
| celo | `0xe26ed0...12602f` | UnnamedContract | unknown | n/a | no | none |
| celo | `0xffe124...b5c406` | UnnamedContract | unknown | n/a | no | none |

## Audit Inventory

| Audit | Auditor | Date | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---:|---|
| Celo-staking-audit-mar24(Public).pdf | Unknown | 2024-04 | Direct | UNKNOWN | 35 | high |
| FTI_audit_stCELO.pdf | FTI | 2022-05 | Direct | UNKNOWN | 53 | high |

## Coverage Gaps

Unaudited native contracts ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | `0x073bb3...0985d9` | GroupHealth | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x094ee2...520d67` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x193df9...d556ad` | GroupHealth | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x1bb789...27af07` | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x1cf4f9...43ec90` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x1f0e8b...d32cea` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x205f4c...bc64e1` | GroupHealth | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x2f5979...1a2f18` | GroupHealth | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x2f9ba7...539e2d` | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x4443a4...6ac578` | GroupHealth | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x48b505...65f187` | UnnamedContract | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x523122...466f09` | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x52bb50...a195c0` | RebasedStakedCelo | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x55e953...b36128` | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x58fc55...14713c` | RebasedStakedCelo | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x5aa1c6...e8f2e3` | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x5bd084...8eed3d` | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x6b8bb0...2352aa` | RebasedStakedCelo | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x6f4606...09ff3e` | GroupHealth | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x737bce...3b2fdf` | RebasedStakedCelo | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x78b50b...220cca` | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x80ef43...8f5ac4` | RebasedStakedCelo | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x820f7a...71184d` | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x846b04...d6013f` | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x8652ce...ae782a` | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x8bd50c...33f818` | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x8c89e7...67c594` | RebasedStakedCelo | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x98c93e...14dc67` | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xad3317...4eba11` | RebasedStakedCelo | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xb05860...906732` | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xb78ab3...7aecf1` | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xd54bc0...684a09` | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xd718b6...5f5745` | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xda3eb1...eb2aa8` | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xdfc2da...45a67c` | RebasedStakedCelo | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xe57f6f...07c0c4` | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xf0b67a...22f7ff` | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xf38592...128d39` | MultiSig | governance | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xf676df...3c3839` | DefaultStrategy | core_logic | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xf8bf1b...beb878` | GroupHealth | unknown | n/a | Native contract with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 89 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=88

Fork inheritance lineage and inherited audits are included when available.
