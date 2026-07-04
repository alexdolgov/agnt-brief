# Agentic Audit Brief: The Idols

## Project Overview

- Project: The Idols (`the-idols`)
- Website: [https://www.theidols.io](https://www.theidols.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:00.776Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 23 unique implementations (26 raw deployments)
- DeFi Llama TVL: $4,243,702.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Reserve Currency. Structurally: 18 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 2 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 229; live-surface contracts included: 26 (15 live, 11 unknown).
- Excluded by liveness: 203 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/12 (0.0%)
- Deployed-live implementations: 12 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 23
- Raw deployments: 26
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IdolGoldlist | unknown | ethereum | n/a | [`0x6dc988...986aa5`](./contracts/ethereum-1/0x6dc9886f694ba078f617c53d6330e001f6986aa5/) | ⚠️ Unaudited |
| IdolMain | unknown | ethereum | n/a | [`0x439cac...d17094`](./contracts/ethereum-1/0x439cac149b935ae1d726569800972e1669d17094/) | ⚠️ Unaudited |
| IdolMarketplace | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0dd5a3...ea29e7`](./contracts/ethereum-1/0x0dd5a35fe4cd65fe7928c7b923902b43d6ea29e7/); ethereum `0x4a0ced...b76652`; ethereum `0x4ce4f4...db3bbf`; ethereum `0x523fbd...2df5e6` | ⚠️ Unaudited |
| IdolMintContract | unknown | ethereum | n/a | [`0x7b4b02...3cdc5e`](./contracts/ethereum-1/0x7b4b02372d8e54c1c0454d97f01d85ef203cdc5e/) | ⚠️ Unaudited |
| Lido | unknown | ethereum | n/a | [`0xae7ab9...d7fe84`](./contracts/ethereum-1/0xae7ab96520de3a18e5e111b5eaab095312d7fe84/) | ⚠️ Unaudited |
| MarketplaceRefundContract | unknown | ethereum | n/a | [`0x87d2ed...8b8c8b`](./contracts/ethereum-1/0x87d2edba911c7e2e13580af897ba77e47e8b8c8b/) | ⚠️ Unaudited |
| OfferingRefundContract | unknown | ethereum | n/a | [`0x2e94c0...78e8ad`](./contracts/ethereum-1/0x2e94c074d7360dccf0d7b2891d867b734978e8ad/) | ⚠️ Unaudited |
| VirtueEthRewards | unknown | ethereum | n/a | [`0xc73b93...9b7baf`](./contracts/ethereum-1/0xc73b93885f10c5eaf8cb126495bbd14d3b9b7baf/) | ⚠️ Unaudited |
| VirtueToken | token | ethereum | n/a | [`0x9416ba...86b863`](./contracts/ethereum-1/0x9416ba76e88d873050a06e5956a3ebf10386b863/) | ⚠️ Unaudited |
| VirtueZapperContract | adapter | ethereum | n/a | [`0x42455b...daa635`](./contracts/ethereum-1/0x42455baefaaaa545c1cf501329d21acec1daa635/) | ⚠️ Unaudited |
| VirtuousHourAirdrop | operational_periphery | ethereum | n/a | [`0x5fc37a...263f76`](./contracts/ethereum-1/0x5fc37a6ae6dd977bebbeb2831ead35bfb7263f76/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xdc2431...f67022`](./contracts/ethereum-1/0xdc24316b9ae028f1497c275eb9192a3ea0f67022/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x16243c...962468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17d7e5...9b4eaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a6593...32bed1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c5354...bf8d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54e8a2...a17a62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x734324...a7c677` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x815c5d...a7741e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa706a7...ab5ecc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd272d2...47be2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2470c...512f7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9b1f1...7c9161` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf](https://4130580353-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fba7s5jnnrOzcoSBMQAGq%2Fuploads%2FJc6W2sm0sGnJihyrsnQ6%2FCertik%20-%20The%20Idols%20NFT.pdf) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf](https://4130580353-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fba7s5jnnrOzcoSBMQAGq%2Fuploads%2FaHFdiiTIbOAfE09s9boc%2FThe%20Idols%20Audit%20(WhiteHatDAO).pdf) | WhiteHatDAO | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21041] spaces/ba7s5jnnrOzcoSBMQAGq/uploads/Jc6W2sm0sGnJihyrsnQ6/Certik - The Idols NFT.pdf
- [21042] spaces/ba7s5jnnrOzcoSBMQAGq/uploads/aHFdiiTIbOAfE09s9boc/The Idols Audit (WhiteHatDAO).pdf

Fork inheritance lineage and inherited audits are included when available.
