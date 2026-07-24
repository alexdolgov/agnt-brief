# Agentic Audit Brief: Gambit Financial

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Gambit Financial (`gambit-financial`)
- Website: [https://gambit.financial](https://gambit.financial)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 106 unique implementations (106 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $187,316.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Gambit Financial in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Reader (`0x1f6bae121a9f97ca3e02cba33f799c5df0e9948f`, chain 56)
- Router (`0xd46b23d042e976f8666f554e928e0dc7478a8e1f`, chain 56)
- Vault (`0xc73a8dcac88498fd4b4b1b2aaa37b0a2614ff67b`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 103 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 106 unique; 103 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 103
- Unique implementations: 106
- Raw deployments: 106
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Reader | unknown | project_anchor | own_supporting | 0 | bsc | unit-386689 | `0x1f6bae121a9f97ca3e02cba33f799c5df0e9948f` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 0 | bsc | unit-386691 | `0xd46b23d042e976f8666f554e928e0dc7478a8e1f` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | bsc | unit-386690 | `0xc73a8dcac88498fd4b4b1b2aaa37b0a2614ff67b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (103)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0007f20cc5967b43bdd384d43e29f3183c398756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x026a02f7f26c1afccb9cba7c4df3dc810f4e92e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0472f402ea8e301d7595545884ad4c420e9865d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04c5b7575de2e00079e11578bf00f09c07007bda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06588aad1ecc1275cbf68ab192257714ac1ed89c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x087a618fd25c92b61254dbe37b09e5e8065feae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08fab024befcb6068847726b2eccead18b6c23cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x093b8be41c1a30704de84a9521632f9a139c08bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ef0cf825b8e9f89a43ffd392664131cfb4cfa89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b0a814c78027382acda731537620d4b08176202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cb1d6532a4f9c08e268079787e05f7d5a458e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20246c403797e1b8acbb941fa739c751a3d3a1e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22458cebd14a9679b2880147d08ca1ce5aa40e84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23ed48e5dce3acc7704d0ce275b7b9a0e346b63a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x270a3de4c9f091e2de4303d007d686b3dcc8ff54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32faaff4a2cf9c81ff2c8b19f11a3723139ac534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x330eef6b9b1ea6edd620c825c9919dc8b611d5d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x331e085e38db7406b00af5e2b00919f5e77a9ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x371e32e68257e3699a0bc16c3bb35ffa0d053485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ddae746330d237b8fc5fa7459b642b1cdfad276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e8b08876c791dc880adc8f965a02e53bb9c0422` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f9b10c7a33e77bba7f40069074280fa6ae68c3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40aadc15af652a790f18eaf8eca6228093d2f72e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4144d36c81fe871ecf85ac199805af2a270ed39c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4251b09a594e0d50e98aeea79e8a4fb701fe8d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44e90dba171452623d868b71d1954041caadf297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47052469970c2484729875cc9e2dd2683fce71fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x481312655f81b5e249780a6a49735335bf6ca7f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b162848b374d79fffd30b012b540504a7d567ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52f6d18b259b8e4864957f52fd16ec97402d83b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5315f0f0bf980b42182a1251c86f312bb584af98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54636f73df67b184150326f3992d30f7b5b7560e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5757c007ecedb2340e52f2d4c53ad96f2ca69384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58d6e1675232496226d074502d0c2df383fa0cbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x598bdce674ad78537f095e9be79b2a09d1f446b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c46949208174fe51b39d759d3985f74570cf46a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x634c5d979d2bf6f42aac417f8f9b8759eb55d3db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66f1e3a12c8b583a24ebc1b22a1d5905c83b4b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68d7ee2a16ab7c0ee1d670becd144166d2ae0759` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d8944d9a440066b8c6b7a3a7f7e5630d6ac6f65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71d0f891a7e5a1d3526cb35589e37469380952c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x727cd40efff49309841f86742f1feb314c3357e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7780c24f502fd43a1d1bb8ad9438a03e6f1dcddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7918b81e119954488c00d2243a8bf2fa407ae87d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79a6d1420914d82e21b21af70ffb3d3cab2e0d3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79f9b3f705bf09e06cf5933819b6d70885b41a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ae0f01a95dd8ac3f6851228abb01b2d94bd831c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c713974874542f39678ee0cae4ddc3746bfa951` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ca2e6f52f3452ab5eb0731358bd42ef4d058dce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fd2a0f18ac7d40e211d525f8bdd9cfb45f2fc79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8095f1a92526c304623483018aa28cc6e62eb1e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82a012a9b3003b18b6bcd6052cbbef7fa4892e80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82b1fa2741a6591d30e61830b1cfda0e7ba3abd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x840b5788fbb564fb363fc5ed699fc1bf69c7be6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85e76cbf4893c1fbcb34dcf1239a91ce2a4cf5a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ac415af3251fa44d2954777c1e1addcdbb50c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8edb7704bd94c6e7059453e2547abba41e9a857d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f8a4d67b04f6c3065231eb00a9f30f9c8e4f348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x912f4db2076079718d3b3a3ab21f5af22bd1edd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95f939e84dd91bab3fbd4460f33b1d50e6950ace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99e92123eb77bc8f999316f622e5222498438784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f766b1d75ab5e6f5fa1e4a1266226da398f9cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa00b112ce49d9d04631629df5f87017255c2381d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa44e7252a0c137748f523f112644042e5987ffc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa633158288520807f91ccc98aa58e0ea43acb400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa870b459ba1f206bbcb0df90ef887b19fcde66ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8a682c35c0b64308fe9737066329a71e6d5b603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae555fe0354be0a8c2fb348e941ab9f83520a139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0ab62cd8c3b3483ebc94ff3c9715a5890eb9d1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3f39c3821c83f1ed8a56891d38bb300d2a0b2e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5ea6a50e7b9c5aa640c7d5e6458a38e1718e8cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2a6f2afb618fc5e255a83943dd79fadc00bdcd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3894c297620065c7bf11c29781b163ef9770d0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8331b250f11e6e8d1736af95417918b99030c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9f78fd47ba6b567c6a3bb15a8a0355c07c8cd53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca495291649042c80b7ec69440956daa35b93cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc252126d8efd91d419e9d00ab8faf2ba573bad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xccbc77f318ddbcccebe0c3c7c74f7d1368929d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xccd9623e3a54024f74bc989f14d461fb309287fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd07685786deef055dc6b348493b9b16e6ccc1d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0b2e0af4cad3e71ad153d1a584ff6ec95e1e300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1f3beb48ac98499063b889f3db5c8164ff7ef5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd34935c6cfe8921e969d4fa583f6c5c227db5ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd729d21eb85f8dbf3e0754f058024f20439a6ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8e26637b34b2487cad1f91808878a391134c5c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9b1c23411adbb984b1c4be515fafc47a12898b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdaf60a1ed9047562e0bcfd3faaf33e790e6f2c89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddfff678837b0c364ae584c3c8f5f4d01f944063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde52b6fc4956b186fe62e93b07403541729a7add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdef2af818514c1ca1a9bbe2a4d45e28f260063f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfb49cbdf31f2bc6a4bce82506fbbdfef9c4bc52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe304ff0983922787fd84bc9170cd21bf78b16b10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6958298328d02051769282628a3b4178d0f3a47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe700db0f0e609cc92ed521c0e956f8e915d9ac1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb3733dfe3b68c9d26898de2493a3bb59fdb4a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedbaa9a5522102b4a963cb7a771e5c072f471deb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeeecfe932052cf466f8207e6e4b4c2a1dded7bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0313a44be7e39da035ec581998314520ae42749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe41bc9b1f9b31b26f2d374e0558eba40f7b4a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff446e19409154f33f50b588bc977c04624155e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffcea6d82a900e70512b4df8c9f7ef7130954f18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffd0a93b4362052a336a7b22494f1b77018dd34b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffe9f89dd5779659d5d0cc0b8dedc6f3cf70190c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 103
- Live contracts: 0
- Unknown liveness contracts: 103
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=103

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x0007f20cc5967b43bdd384d43e29f3183c398756` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x026a02f7f26c1afccb9cba7c4df3dc810f4e92e8` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0472f402ea8e301d7595545884ad4c420e9865d6` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x04c5b7575de2e00079e11578bf00f09c07007bda` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x06588aad1ecc1275cbf68ab192257714ac1ed89c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x087a618fd25c92b61254dbe37b09e5e8065feae7` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x08fab024befcb6068847726b2eccead18b6c23cd` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x093b8be41c1a30704de84a9521632f9a139c08bd` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0ef0cf825b8e9f89a43ffd392664131cfb4cfa89` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1b0a814c78027382acda731537620d4b08176202` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1cb1d6532a4f9c08e268079787e05f7d5a458e82` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x20246c403797e1b8acbb941fa739c751a3d3a1e1` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x22458cebd14a9679b2880147d08ca1ce5aa40e84` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x23ed48e5dce3acc7704d0ce275b7b9a0e346b63a` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x270a3de4c9f091e2de4303d007d686b3dcc8ff54` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x32faaff4a2cf9c81ff2c8b19f11a3723139ac534` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x330eef6b9b1ea6edd620c825c9919dc8b611d5d5` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x331e085e38db7406b00af5e2b00919f5e77a9ed5` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x371e32e68257e3699a0bc16c3bb35ffa0d053485` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3ddae746330d237b8fc5fa7459b642b1cdfad276` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3e8b08876c791dc880adc8f965a02e53bb9c0422` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3f9b10c7a33e77bba7f40069074280fa6ae68c3b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x40aadc15af652a790f18eaf8eca6228093d2f72e` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4144d36c81fe871ecf85ac199805af2a270ed39c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4251b09a594e0d50e98aeea79e8a4fb701fe8d42` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x44e90dba171452623d868b71d1954041caadf297` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47052469970c2484729875cc9e2dd2683fce71fb` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x481312655f81b5e249780a6a49735335bf6ca7f4` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4b162848b374d79fffd30b012b540504a7d567ba` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x52f6d18b259b8e4864957f52fd16ec97402d83b9` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5315f0f0bf980b42182a1251c86f312bb584af98` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x54636f73df67b184150326f3992d30f7b5b7560e` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5757c007ecedb2340e52f2d4c53ad96f2ca69384` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x58d6e1675232496226d074502d0c2df383fa0cbe` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x598bdce674ad78537f095e9be79b2a09d1f446b0` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5c46949208174fe51b39d759d3985f74570cf46a` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x634c5d979d2bf6f42aac417f8f9b8759eb55d3db` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x66f1e3a12c8b583a24ebc1b22a1d5905c83b4b9c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x68d7ee2a16ab7c0ee1d670becd144166d2ae0759` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6d8944d9a440066b8c6b7a3a7f7e5630d6ac6f65` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x71d0f891a7e5a1d3526cb35589e37469380952c0` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x727cd40efff49309841f86742f1feb314c3357e8` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7780c24f502fd43a1d1bb8ad9438a03e6f1dcddc` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7918b81e119954488c00d2243a8bf2fa407ae87d` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x79a6d1420914d82e21b21af70ffb3d3cab2e0d3c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x79f9b3f705bf09e06cf5933819b6d70885b41a86` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7ae0f01a95dd8ac3f6851228abb01b2d94bd831c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7c713974874542f39678ee0cae4ddc3746bfa951` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7ca2e6f52f3452ab5eb0731358bd42ef4d058dce` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7fd2a0f18ac7d40e211d525f8bdd9cfb45f2fc79` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8095f1a92526c304623483018aa28cc6e62eb1e1` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x82a012a9b3003b18b6bcd6052cbbef7fa4892e80` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x82b1fa2741a6591d30e61830b1cfda0e7ba3abd3` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x840b5788fbb564fb363fc5ed699fc1bf69c7be6a` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x85e76cbf4893c1fbcb34dcf1239a91ce2a4cf5a7` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8ac415af3251fa44d2954777c1e1addcdbb50c30` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8edb7704bd94c6e7059453e2547abba41e9a857d` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8f8a4d67b04f6c3065231eb00a9f30f9c8e4f348` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x912f4db2076079718d3b3a3ab21f5af22bd1edd3` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x95f939e84dd91bab3fbd4460f33b1d50e6950ace` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x99e92123eb77bc8f999316f622e5222498438784` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9f766b1d75ab5e6f5fa1e4a1266226da398f9cf3` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa00b112ce49d9d04631629df5f87017255c2381d` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa44e7252a0c137748f523f112644042e5987ffc7` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa633158288520807f91ccc98aa58e0ea43acb400` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa870b459ba1f206bbcb0df90ef887b19fcde66ae` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa8a682c35c0b64308fe9737066329a71e6d5b603` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xae555fe0354be0a8c2fb348e941ab9f83520a139` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb0ab62cd8c3b3483ebc94ff3c9715a5890eb9d1b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb3f39c3821c83f1ed8a56891d38bb300d2a0b2e0` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb5ea6a50e7b9c5aa640c7d5e6458a38e1718e8cd` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc2a6f2afb618fc5e255a83943dd79fadc00bdcd4` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc3894c297620065c7bf11c29781b163ef9770d0b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc8331b250f11e6e8d1736af95417918b99030c23` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc9f78fd47ba6b567c6a3bb15a8a0355c07c8cd53` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xca495291649042c80b7ec69440956daa35b93cc9` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcc252126d8efd91d419e9d00ab8faf2ba573bad5` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xccbc77f318ddbcccebe0c3c7c74f7d1368929d5d` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xccd9623e3a54024f74bc989f14d461fb309287fe` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd07685786deef055dc6b348493b9b16e6ccc1d6e` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd0b2e0af4cad3e71ad153d1a584ff6ec95e1e300` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd1f3beb48ac98499063b889f3db5c8164ff7ef5d` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd34935c6cfe8921e969d4fa583f6c5c227db5ff5` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd729d21eb85f8dbf3e0754f058024f20439a6ae9` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd8e26637b34b2487cad1f91808878a391134c5c2` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd9b1c23411adbb984b1c4be515fafc47a12898b2` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdaf60a1ed9047562e0bcfd3faaf33e790e6f2c89` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xddfff678837b0c364ae584c3c8f5f4d01f944063` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xde52b6fc4956b186fe62e93b07403541729a7add` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdef2af818514c1ca1a9bbe2a4d45e28f260063f9` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdfb49cbdf31f2bc6a4bce82506fbbdfef9c4bc52` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe304ff0983922787fd84bc9170cd21bf78b16b10` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe6958298328d02051769282628a3b4178d0f3a47` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe700db0f0e609cc92ed521c0e956f8e915d9ac1b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xeb3733dfe3b68c9d26898de2493a3bb59fdb4a7b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xedbaa9a5522102b4a963cb7a771e5c072f471deb` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xeeecfe932052cf466f8207e6e4b4c2a1dded7bc1` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf0313a44be7e39da035ec581998314520ae42749` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfe41bc9b1f9b31b26f2d374e0558eba40f7b4a7b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xff446e19409154f33f50b588bc977c04624155e4` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xffcea6d82a900e70512b4df8c9f7ef7130954f18` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xffd0a93b4362052a336a7b22494f1b77018dd34b` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |
| bsc | unverified unclassified | UnnamedContract<br>`0xffe9f89dd5779659d5d0cc0b8dedc6f3cf70190c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f169c2189a2d975c18965de985936361b4a9de9` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 106 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
