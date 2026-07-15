# Agentic Audit Brief: stCELO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: stCELO (`stcelo`)
- Website: [https://stcelo.xyz/](https://stcelo.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: celo
- Contract surface: 130 unique implementations (208 raw deployments)
- Coverage basis: 3/4 confirmed own live verified implementations (75.0%); conservative 75.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,169,876.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for stCELO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across celo. Structural roles: 5 unclassified, 3 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: unclassified (5), core (3)
- Contract kinds: contract (8)
- Detected standards: erc1967proxy (3), ownable (3), erc20 (2)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Manager (`0x78b405...46f38e`, chain 42220)
- RebasedStakedCelo (`0x58fc55...14713c`, chain 42220)
- StakedCelo (`0x6e17cf...783b67`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/4 (75.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 126 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 67
- Confirmed-live implementations: 4 of 130 unique; 126 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/85
- Verified + Unaudited implementations: 82
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 130
- Raw deployments: 208
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| FTI | Tier 2 | 3 | 3.5% | 2022-05 |
| Celo | Tier 2 | 1 | 1.2% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | celo | unit-393196 | 2 deployments: celo `0x0239b9...cf9398`; celo `0x78b405...46f38e` | ✅ Audited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | celo | unit-393197 | 2 deployments: celo `0x4aad04...54c432`; celo `0xc2fd56...33e3d0` | ✅ Audited |
| StakedCelo | unknown | project_anchor | own_supporting | 1 | celo | unit-393195 | 2 deployments: celo `0x6e17cf...783b67`; celo `0xc66858...fdfc24` | ✅ Audited |

### ⚠️ Verified + Unaudited (82)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 7 deployments: celo `0x075507...fb4a53`; celo `0x0a0b72...9f3ade`; celo `0x13d01f...a419c9`; celo `0x4c8eed...44a1bc`; celo `0x5b4a33...f341a5`; celo `0x6a519c...3c577c`; celo `0x95b8f3...6ba914` | ⚠️ Unaudited |
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x1edec9...5d654a`; celo `0xb82dd2...f0bc81` | ⚠️ Unaudited |
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x250c1b...f380d2`; celo `0x694ab8...003cfb` | ⚠️ Unaudited |
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x2e1193...af278c`; celo `0xc66760...79face` | ⚠️ Unaudited |
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x6bbd91...ae298d`; celo `0xad3df8...18d52e` | ⚠️ Unaudited |
| Accounts | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x7d2168...d0aab7` | ⚠️ Unaudited |
| Attestations | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xdc5538...d88d20` | ⚠️ Unaudited |
| BlockchainParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x6e10a8...9d5bfa` | ⚠️ Unaudited |
| DefaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x2f9ba7...539e2d`; celo `0xd1825d...78c317` | ⚠️ Unaudited |
| DefaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x523122...466f09`; celo `0xaf37a8...1d33f5` | ⚠️ Unaudited |
| DefaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x5bd084...8eed3d`; celo `0x820f7a...71184d`; celo `0xd718b6...5f5745`; celo `0xf0b67a...22f7ff` | ⚠️ Unaudited |
| DoubleSigningSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x50c100...6772ec` | ⚠️ Unaudited |
| Election | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x8d6677...5a7ff6` | ⚠️ Unaudited |
| EpochRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x07f007...28d8b7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x3a3ed7...0ea088`; celo `0xd54bc0...684a09` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x8bd8a8...d01c89`; celo `0xf676df...3c3839` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xf4fa51...e7ada5` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x673163...c66275` | ⚠️ Unaudited |
| FeeCurrencyWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xbb024e...381b3c` | ⚠️ Unaudited |
| FeeCurrencyWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc301ef...aabc83` | ⚠️ Unaudited |
| FixidityLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd9ce42...72284d` | ⚠️ Unaudited |
| Freezer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x47a472...f4ff5a`; celo `0xa79cdb...6649e6` | ⚠️ Unaudited |
| GasPriceMinimum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xdfca3a...270ecc` | ⚠️ Unaudited |
| GoldToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x471ece...78a438` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xd533ca...3b7972` | ⚠️ Unaudited |
| GovernanceSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x68f04a...5294d5` | ⚠️ Unaudited |
| GovernanceSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xf2a347...f43f3c` | ⚠️ Unaudited |
| GroupHealth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x004377...f476eb`; celo `0xf8bf1b...beb878` | ⚠️ Unaudited |
| GroupHealth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x073bb3...0985d9`; celo `0x140b36...cecdcf` | ⚠️ Unaudited |
| GroupHealth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x193df9...d556ad`; celo `0x9c6c01...c4cc57` | ⚠️ Unaudited |
| GroupHealth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x205f4c...bc64e1`; celo `0xbc7c8e...43051c` | ⚠️ Unaudited |
| GroupHealth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x2f5979...1a2f18`; celo `0xf6bccb...a94220` | ⚠️ Unaudited |
| GroupHealth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0x4443a4...6ac578`; celo `0x6f4606...09ff3e` | ⚠️ Unaudited |
| LockedGold | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x6cc083...03349e` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 7 deployments: celo `0x08a212...5e770d`; celo `0x2cb8b2...00e9af`; celo `0x2f05b8...31ba0b`; celo `0xb6316a...3bd394`; celo `0xe923a9...fda387`; celo `0xf6aeb1...e13657`; celo `0xfea79f...c69625` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x18f51d...4f3fcf`; celo `0xb3ac6d...d10774` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x25b7f3...bb807f`; celo `0xacd0ad...40cb43` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x43e55a...46fb58`; celo `0xa7ec4a...a6eb74` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x443579...de5af7`; celo `0x548fab...837329` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x534a0b...91648b`; celo `0x70b1bd...c72e62` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x954bc8...c5e5af`; celo `0xc9cd08...c6c674` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0xa60fcf...7c70f5`; celo `0xe12f7e...dd0312` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe8882d...faf4b7` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x13f1f8...75c27e`; celo `0x8652ce...ae782a` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 5 deployments: celo `0x1bb789...27af07`; celo `0xb05860...906732`; celo `0xb78ab3...7aecf1`; celo `0xda3eb1...eb2aa8`; celo `0xf38592...128d39` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x2d952d...124cd0`; celo `0x55e953...b36128` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x2e37af...e9e4df`; celo `0x846b04...d6013f` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x41822d...e933d3`; celo `0xb5795c...158fad` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x5aa1c6...e8f2e3`; celo `0xfb197e...b374ee` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x78b50b...220cca`; celo `0x85a9aa...64f3f3` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x78daa2...d40179`; celo `0x8bd50c...33f818` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x88d1ae...d48c24`; celo `0xe57f6f...07c0c4` | ⚠️ Unaudited |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x98c93e...14dc67`; celo `0xaab51f...d47145` | ⚠️ Unaudited |
| Proposals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd4b9fd...79cbc4` | ⚠️ Unaudited |
| Random | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x22a4aa...c93dfe` | ⚠️ Unaudited |
| RebasedStakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x0251c3...6cc806`; celo `0x6b8bb0...2352aa` | ⚠️ Unaudited |
| RebasedStakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x52bb50...a195c0`; celo `0x97b5ee...5b795c` | ⚠️ Unaudited |
| RebasedStakedCelo | unknown | project_anchor | own_supporting | 1 | celo | unit-393194 | 2 deployments: celo `0x58fc55...14713c`; celo `0xdc5762...1f44cf` | ⚠️ Unaudited |
| RebasedStakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 5 deployments: celo `0x737bce...3b2fdf`; celo `0x80ef43...8f5ac4`; celo `0x8c89e7...67c594`; celo `0xad3317...4eba11`; celo `0xdfc2da...45a67c` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x203fdf...74cb66` | ⚠️ Unaudited |
| Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x9380fa...ed4eb9` | ⚠️ Unaudited |
| ReserveSpenderMultiSigProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x554fca...4d2a19` | ⚠️ Unaudited |
| Signatures | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x926a9e...792b7d` | ⚠️ Unaudited |
| SortedOracles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xefb849...7b7b33` | ⚠️ Unaudited |
| SpecificGroupStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x003a4c...0f54aa`; celo `0xf1c4a8...21a947` | ⚠️ Unaudited |
| SpecificGroupStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x01a767...c8b926`; celo `0x52a1d5...34a1f0`; celo `0x54c819...32999a` | ⚠️ Unaudited |
| SpecificGroupStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x365e62...a58d23`; celo `0xb88af6...937871` | ⚠️ Unaudited |
| SpecificGroupStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x777446...fed190`; celo `0xee0ba5...2055a5` | ⚠️ Unaudited |
| SpecificGroupStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x9dd19a...2cc4e8`; celo `0xe11359...a71c2f` | ⚠️ Unaudited |
| StableTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x765de8...b1282a` | ⚠️ Unaudited |
| StakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x085a0d...7f21ca`; celo `0x95cc0c...1c4e49` | ⚠️ Unaudited |
| StakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x0b2f88...65f75b`; celo `0x922333...794692` | ⚠️ Unaudited |
| StakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 5 deployments: celo `0x1b4b48...32c73d`; celo `0x4387a0...4c6429`; celo `0x44c2fe...f0271f`; celo `0xa97be8...8babcb`; celo `0xafddbc...734a1d` | ⚠️ Unaudited |
| StakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x2c2e2b...4edc3a`; celo `0x809b7e...632426` | ⚠️ Unaudited |
| StakedCelo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x912285...3ddcfc`; celo `0xb59b1c...2c4b61` | ⚠️ Unaudited |
| TransferWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb49e4d...178bcf` | ⚠️ Unaudited |
| Validators | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xaeb865...4d0c58` | ⚠️ Unaudited |
| Vote | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x3c6e90...fcce0f`; celo `0x9760e0...e7a3d3` | ⚠️ Unaudited |
| Vote | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x54496e...3f83bd`; celo `0xda30d1...b9ab8e` | ⚠️ Unaudited |
| Vote | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x655f0a...3c70fc`; celo `0xfdffa5...66a28f` | ⚠️ Unaudited |
| Vote | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x681db4...f6cc3e`; celo `0xcc3120...0237b8` | ⚠️ Unaudited |
| Vote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbb4e49...2e65bf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0198db...b2632c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x03f696...2887b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x094ee2...520d67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x09b17f...a31cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0cc6e1...ac6a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x12364a...2fba57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1690e2...de7df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1cf4f9...43ec90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1f0e8b...d32cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x204ba4...34c9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x48b505...65f187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4cf604...ad825f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4e843a...4678b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x585e1e...3a26c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x59f4ec...7a4b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x61257e...5c3fd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x63af25...b3e40a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x672b7d...daf224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6c5d14...c5a11d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6c611a...8b1287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x715868...3333cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x799c0c...db47b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7c68b5...264969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8897ec...a27f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8b3842...ed37e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8dd4f8...b13582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x969d7b...ead654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9a642a...7bee9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa6dacd...debbfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xaa933b...189352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xacf9d7...045d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb325a8...c26245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb42d0c...210a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xba53ef...0b38e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbd42ad...721bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc053ca...407207` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc21090...011e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc35269...07cd30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc54e26...48986b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd2a7fb...265865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd3188f...6f4c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd3a6f3...726702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xefe50f...d2c80f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf9de2d...51c3ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfe6803...7d64ed` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Celo Audit Competition Summary Report_Nov24.pdf](https://github.com/celo-org/staked-celo/blob/master/audit/Celo%20Audit%20Competition%20Summary%20Report_Nov24.pdf) | Celo | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Celo-staking-audit-mar24(Public).pdf](https://github.com/celo-org/staked-celo/blob/master/audit/Celo-staking-audit-mar24(Public).pdf) | Celo | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |
| [FTI_audit_stCELO.pdf](https://github.com/celo-org/staked-celo/blob/master/audit/FTI_audit_stCELO.pdf) | FTI | Audit | 2022-05 | stale | Direct | n/a | matched | 3 | 3 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14218] Celo Audit Competition Summary Report_Nov24.pdf — no match: No reason recorded
- [14219] Celo-staking-audit-mar24(Public).pdf — matched: Extracted contracts from scope and findings sections. Audit delivered on 01.04.2024.
- [14220] FTI_audit_stCELO.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Celo Audit Competition Summary Report_Nov24.pdf | EpochManager | unmatched — not counted | — | — | no |
| Celo Audit Competition Summary Report_Nov24.pdf | LockedGold | unmatched — not counted | — | — | no |
| Celo-staking-audit-mar24(Public).pdf | Vote | unmatched — not counted | — | listed in scope and findings | no |
| Celo-staking-audit-mar24(Public).pdf | Account | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4aad04...54c432` — deployed 2022-07-01 20:26:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Celo-staking-audit-mar24(Public).pdf | SpecificGroupStrategy | unmatched — not counted | — | listed in findings | no |
| FTI_audit_stCELO.pdf | Account | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4aad04...54c432` — deployed 2022-07-01 20:26:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| FTI_audit_stCELO.pdf | Managed | unmatched — not counted | — | — | no |
| FTI_audit_stCELO.pdf | Manager | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0239b9...cf9398` — deployed 2022-07-01 20:24:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| FTI_audit_stCELO.pdf | RebasedCelo | unmatched — not counted | — | — | no |
| FTI_audit_stCELO.pdf | StakedCelo | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xc66858...fdfc24` — deployed 2022-07-01 20:26:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | `0x58fc55...14713c` | RebasedStakedCelo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=4

Zero-match audit list:

- [14218] Celo Audit Competition Summary Report_Nov24.pdf

Fork inheritance lineage and inherited audits are included when available.
