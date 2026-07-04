# Agentic Audit Brief: Dinosaur Eggs

## Project Overview

- Project: Dinosaur Eggs (`dinosaur-eggs`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:43.485Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: bsc
- Contract surface: 21 unique implementations (21 raw deployments)
- DeFi Llama TVL: $580,446.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 21 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (initializableowner). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/21 (0.0%)
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DODOAdapter | unknown | bsc | n/a | [`0xf49eab...d42f9e`](./contracts/bsc-56/0xf49eab292f38f840dc52f5bafbf3067352d42f9e/) | ⚠️ Unaudited |
| DsgNftFactory | unknown | bsc | n/a | [`0x2b0e39...823d74`](./contracts/bsc-56/0x2b0e390ff8f8ee5424de0b6556f475f512823d74/) | ⚠️ Unaudited |
| DsgProxy | unknown | bsc | n/a | [`0x18f314...25d657`](./contracts/bsc-56/0x18f3146b75538f7982cf59486d74a6875a25d657/) | ⚠️ Unaudited |
| DSGToken | unknown | bsc | n/a | [`0x9a7864...4abd35`](./contracts/bsc-56/0x9a78649501bbaac285ea4187299471b7ad4abd35/) | ⚠️ Unaudited |
| Erc20EarnNftPool | unknown | bsc | n/a | [`0x984e2c...0dd080`](./contracts/bsc-56/0x984e2cbcdc4a818c3f523010b43fe0259a0dd080/) | ⚠️ Unaudited |
| FragmentToken | unknown | bsc | n/a | [`0x129776...428741`](./contracts/bsc-56/0x129776b15dd8b102d2a131df32038782e0428741/) | ⚠️ Unaudited |
| LiquidityPool | unknown | bsc | n/a | [`0x4747ee...109bf7`](./contracts/bsc-56/0x4747eeeeb4fc60630403d775264fdd4848109bf7/) | ⚠️ Unaudited |
| Meta | unknown | bsc | n/a | [`0x6da591...2f6a40`](./contracts/bsc-56/0x6da59176fbc92f227853e17202b62d79b82f6a40/) | ⚠️ Unaudited |
| MysteryBox | unknown | bsc | n/a | [`0x47953a...9019b3`](./contracts/bsc-56/0x47953a414c7f61a5dfa29ef7df713adb699019b3/) | ⚠️ Unaudited |
| NftEarnErc20Pool | unknown | bsc | n/a | [`0xb3fbfe...90b838`](./contracts/bsc-56/0xb3fbfef698799ce355887ae74c3f83c6e390b838/) | ⚠️ Unaudited |
| NFTMarket | unknown | bsc | n/a | [`0x30a519...55e6f7`](./contracts/bsc-56/0x30a5190d1a212a42383970a1faa207000555e6f7/) | ⚠️ Unaudited |
| Oracle | unknown | bsc | n/a | [`0xd22ac2...270279`](./contracts/bsc-56/0xd22ac2a29a483e2a1385c248974a9535f3270279/) | ⚠️ Unaudited |
| SwapFactory | unknown | bsc | n/a | [`0x73d9f9...859d10`](./contracts/bsc-56/0x73d9f93d53505cb8c4c7f952ae42450d9e859d10/) | ⚠️ Unaudited |
| SwapRouter | unknown | bsc | n/a | [`0xe9c765...99c071`](./contracts/bsc-56/0xe9c7650b97712c0ec958ff270fbf4189fb99c071/) | ⚠️ Unaudited |
| Time | unknown | bsc | n/a | [`0xc7184a...36487f`](./contracts/bsc-56/0xc7184a87d9443a52f6e578e3c0a611468536487f/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0x32b03c...9798b7`](./contracts/bsc-56/0x32b03c76d8b3301981777ea5ecf7f8478b9798b7/) | ⚠️ Unaudited |
| TradingPool | unknown | bsc | n/a | [`0x14a495...7f2681`](./contracts/bsc-56/0x14a495b23a6fe7938ae5da73cfa153b5e67f2681/) | ⚠️ Unaudited |
| Treasury | unknown | bsc | n/a | [`0xcb6263...aa31f5`](./contracts/bsc-56/0xcb62632cecaa0ba91370dd0be6acc5d067aa31f5/) | ⚠️ Unaudited |
| UniAdapter | unknown | bsc | n/a | [`0x7d873f...037f02`](./contracts/bsc-56/0x7d873fdb5d2eb852d376d14be18c3ac034037f02/) | ⚠️ Unaudited |
| vDSGToken | unknown | bsc | n/a | [`0x718da2...521154`](./contracts/bsc-56/0x718da2e74fff28b0a0d62aeb4f2afa8f7b521154/) | ⚠️ Unaudited |
| vDsgTreasury | unknown | bsc | n/a | [`0xccf1c8...40d472`](./contracts/bsc-56/0xccf1c8fa4598689236541faa82522691cf40d472/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/dinosaureggs) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19714] DL audit link

Fork inheritance lineage and inherited audits are included when available.
