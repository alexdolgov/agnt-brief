# Agentic Audit Brief: Narwhalswap

## Project Overview

- Project: Narwhalswap (`narwhalswap`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:34.091Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 27 unique implementations (27 raw deployments)
- DeFi Llama TVL: $319,140.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 27 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens, 2 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (erc20detailed, lptokenwrapper, governance). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 27 (27 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/27 (0.0%)
- Deployed-live implementations: 27 of 27 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CaptainGem | unknown | bsc | n/a | [`0x26c258...ea3177`](./contracts/bsc-56/0x26c2585b198e381663b2c8207ad04f3571ea3177/) | ⚠️ Unaudited |
| DistributeToken | unknown | bsc | n/a | [`0x35500a...beeb72`](./contracts/bsc-56/0x35500a5edacfdd9b48a173a79d2e3ce998beeb72/) | ⚠️ Unaudited |
| ExchangeNFT | unknown | bsc | n/a | [`0x0bd996...fd0d19`](./contracts/bsc-56/0x0bd996f94b9dd04c8e44e535b4f0a6ed22fd0d19/) | ⚠️ Unaudited |
| GoldFarm | unknown | bsc | n/a | [`0x77c10a...fd2e57`](./contracts/bsc-56/0x77c10a04b7d3adebe4f235d69b5c1f20cbfd2e57/) | ⚠️ Unaudited |
| Grand | unknown | bsc | n/a | [`0x52d4f6...0533e2`](./contracts/bsc-56/0x52d4f6e83b60e2c8ca39d0eef418d8cc380533e2/) | ⚠️ Unaudited |
| NarCardToken | unknown | bsc | n/a | [`0x828b5a...93d86e`](./contracts/bsc-56/0x828b5adbe8e0a06aaf5d5a5fd16e6b15a393d86e/) | ⚠️ Unaudited |
| NardToken | unknown | bsc | n/a | [`0x4bbb27...8d3859`](./contracts/bsc-56/0x4bbb275012ebe258556b8debe5c07be98e8d3859/) | ⚠️ Unaudited |
| NarNft | unknown | bsc | n/a | [`0xce7a09...baa3f2`](./contracts/bsc-56/0xce7a099a7c5c062a4f66a6bbdec191a222baa3f2/) | ⚠️ Unaudited |
| NarOpenSale | unknown | bsc | n/a | [`0x4b79a1...aaa6af`](./contracts/bsc-56/0x4b79a1e357bd7f924415d4e3ac277f3b24aaa6af/) | ⚠️ Unaudited |
| NarTicketFarm | unknown | bsc | n/a | [`0xdde9e8...cda7c8`](./contracts/bsc-56/0xdde9e8314afd828c73539692895dd96d55cda7c8/) | ⚠️ Unaudited |
| NarTicketToken | unknown | bsc | n/a | [`0x8f4087...5de24b`](./contracts/bsc-56/0x8f4087cb09e0f378f4278a314c94a636665de24b/) | ⚠️ Unaudited |
| NarToken | unknown | bsc | n/a | [`0xa1303e...f1fc83`](./contracts/bsc-56/0xa1303e6199b319a891b79685f0537d289af1fc83/) | ⚠️ Unaudited |
| NarwhalCollecter | unknown | bsc | n/a | [`0x7f8a46...53f7e9`](./contracts/bsc-56/0x7f8a46ec48442d9ebf28fbc1144a83f8bc53f7e9/) | ⚠️ Unaudited |
| NarwhalPower | unknown | bsc | n/a | [`0x1b19c6...dfd33c`](./contracts/bsc-56/0x1b19c644c623485e5a77e5d7657e991432dfd33c/) | ⚠️ Unaudited |
| NarwhalReward | unknown | bsc | n/a | [`0x186be2...0d8835`](./contracts/bsc-56/0x186be2a9f0e9c92b880bbd3ec1f35f422f0d8835/) | ⚠️ Unaudited |
| NarwhalRewardDividendV2 | unknown | bsc | n/a | [`0xb85a8c...8eea0d`](./contracts/bsc-56/0xb85a8c269cfc6ec4bd44e7dbd312b233a38eea0d/) | ⚠️ Unaudited |
| NarwhalRewardDividendV3 | unknown | bsc | n/a | [`0xc8e706...b7b25e`](./contracts/bsc-56/0xc8e70639ad7d91d4d4bcf5d5ab8e2264abb7b25e/) | ⚠️ Unaudited |
| NarwhalRewardHugeV2 | unknown | bsc | n/a | [`0x657ba4...d08b65`](./contracts/bsc-56/0x657ba421cc8b1be5891aa9ac7aa2b936e5d08b65/) | ⚠️ Unaudited |
| NarwhalRewardMediumV2 | unknown | bsc | n/a | [`0x7f0414...88a274`](./contracts/bsc-56/0x7f0414886ebf34cce32148ba0cf64dd8ec88a274/) | ⚠️ Unaudited |
| NarwhalRewardSmallV2 | unknown | bsc | n/a | [`0x3dfb18...6c1051`](./contracts/bsc-56/0x3dfb186e8ce513f321232098dd551e22886c1051/) | ⚠️ Unaudited |
| NarwhalRewardV2 | unknown | bsc | n/a | [`0x1d227f...b85c6f`](./contracts/bsc-56/0x1d227f7e283d653a60f94d2350cab7a49bb85c6f/) | ⚠️ Unaudited |
| NarwhalRewardV3 | unknown | bsc | n/a | [`0x268a2c...841e5d`](./contracts/bsc-56/0x268a2c1acbeee3b74616b9fe3f07c1bf80841e5d/) | ⚠️ Unaudited |
| NLPLock | unknown | bsc | n/a | [`0x07f1b5...01542a`](./contracts/bsc-56/0x07f1b50d5ae24ec41aa7269d65a5e23e8401542a/) | ⚠️ Unaudited |
| Rnlp | unknown | bsc | n/a | [`0x0c582c...9ef1fc`](./contracts/bsc-56/0x0c582cf84cc2bcd0a50610db172c11662c9ef1fc/) | ⚠️ Unaudited |
| RuneReward | unknown | bsc | n/a | [`0xcba859...35c121`](./contracts/bsc-56/0xcba8596b62cdb79450377085871a5467ed35c121/) | ⚠️ Unaudited |
| SatoshiFragments | unknown | bsc | n/a | [`0x912508...dea744`](./contracts/bsc-56/0x912508def77242179f1a7b17d8f6ef8b9fdea744/) | ⚠️ Unaudited |
| SetUser | unknown | bsc | n/a | [`0x42fbcc...2045ae`](./contracts/bsc-56/0x42fbcc198af7244d8fe9b372719eb26f892045ae/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/grandbanks](https://skynet.certik.com/projects/grandbanks) | CertiK | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21411] skynet.certik.com/projects/grandbanks

Fork inheritance lineage and inherited audits are included when available.
