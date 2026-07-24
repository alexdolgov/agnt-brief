# Agentic Audit Brief: Keeta Bridge

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

- Project: Keeta Bridge (`keeta-bridge`)
- Website: [https://keeta.com/](https://keeta.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, arbitrum-sepolia, avalanche, avalanche-fuji, base, base-sepolia, ethereum, polygon, polygon-amoy, sepolia
- Contract surface: 109 unique implementations (109 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,061,302.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Keeta Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, arbitrum-sepolia, avalanche, avalanche-fuji, base, base-sepolia, ethereum, polygon, polygon-amoy, sepolia. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- UnnamedContract (`0x3c499c542cef5e3811e1192ce70d8cc03d5c3359`, chain 137)
- UnnamedContract (`0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42`, chain 8453)
- UnnamedContract (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- UnnamedContract (`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`, chain 8453)
- UnnamedContract (`0xaf88d065e77c8cc2239327c5edb3a432268e5831`, chain 42161)
- UnnamedContract (`0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e`, chain 43114)
- Contract (`0xc0634090f2fe6c6d75e61be2b949464abb498973`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 94 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 10 of 109 unique; 99 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 105
- Unique implementations: 109
- Raw deployments: 109
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BatchPermit | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d4e74fa61715fa077dcced4acc8096958e1a1ab` | ⚠️ Unaudited |
| BatchSender | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x036c169dcb2f1b24500be6cb0e1b6d6f6fd5bf36` | ⚠️ Unaudited |
| Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c24a0fb7bcf2154a9d37b7b3aa443bc63fcc698` | ⚠️ Unaudited |
| Contract | unknown | project_anchor | own_supporting | 0 | base | unit-388113 | `0xc0634090f2fe6c6d75e61be2b949464abb498973` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (105)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388098 | `0x1abaea1f7c830bd89acc67ec4af516284b1bc33c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388100 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388101 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x067b07ed153f2d4640638f7d2945fbe4ed1bf1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x366a30eeeb47d0dab030c9252fe11a5d0cd92008` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-388103 | `0x3c499c542cef5e3811e1192ce70d8cc03d5c3359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53eedc0c750c9ffd63782a1b215effcb704fd402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e14ea29ea374d6f4ff669326c30d1fad9826026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae66c0564a6bb320514cd133ddc8281de59d94d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf08ac519f7fca9e5434d12d050b3a382b37dccdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-388111 | `0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-388112 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-388114 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388105 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x06064ef8b77dafc93d1e175b25048047919f74b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x289d52e8fb4eeeb273915828ca81191b1ab4ae0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x48a2cca231b4d195fd3b7f50b747bfc1dc898d79` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-388107 | `0x5425890298aed601595a70ab815c96711a31bc65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5b2173b7d3d4592816d9ad520f309b3f443ccbe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x79beb0a978443dbc125599170332b3f40d448f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x99887d7c649097bafec679746857b5c0d4eba2ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xaabccb71f8631f1b4610fd2fde486a61f6f7017b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb79bbc2a74b14ac14cf5e6c60ed6bfb13271f98d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf7161d9786d44a81ec38d4a7f62b90848a8f2d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fe74ca6c66a33b8b619d799af110741fb6d20e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d3f8fe9cce16e1c2743d5ace99f027df866c6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c90c8a368f7d1f4a57906139bac23c72f38f4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f2239511051b875ccf84dab02d5a307adcd51c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3fa3d254bf6af295b5b22cc6730b04144314890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5dc6671e7cdaaa2386536295bf63a221b67311a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7887fed5e2f9dc1a66fbb65f76ba3731d82341a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-388108 | `0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xecc6ad0608e1e3fc6b314df221cf10ea07ae08d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x1cac7bf5e56f3103f830f371b42efe49618160a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x280f7fc6658dfd18210a92a19a23d2c668a67e9e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-388109 | `0x41e94eb019c0762f9bfcf9fb1e58725bfb0e7582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x7221cc25b90a9e7c10b8c8bb1f27769466abc39c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x89e29668e4928bf3b085df39cc2ff2104f45c37a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xc8a087ac4bab015261dfc3469201f1169b8a5e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xdfbd907c0cc5e7fdac5c27c66826785f133030c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-388115 | `0x036cbd53842c5426634e7929541ec2318f3dcf7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x18b2bf98579267d4b108c5d82f816710a17efbb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xba3b60c21e28c41df4babd90f228e1d368627da6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xcee578131d0938c08389a22b92c218888b33e5d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd52081e444544c744b3ecbb0de7ff06e63ef4e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd74cc5d436923b8ba2c179b4bca2841d8a52c5b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x0d1730547b70e79e106b85a06fb6e6b8fdccc1c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x101e1c9757c99867a39ceb41117b44f2292cb253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x18b2bf98579267d4b108c5d82f816710a17efbb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x1aba9ac93b057de829a116efd056e6c30288bb57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x36c705bf4a737b4b699f517ad6636e631a9fde3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x3be6d4be89a7ab76c0e8fa7576b1cf211b274dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x3e71aafa5c61a275954292d3494dbdf5f8c2abac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x4487b8a031a26f64366661f6450c27a33777f689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x4bb795dd2d2f15412405c7eef5ece6182d1c0dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x683bbad68fdb42775c34e8a845aa75f3b3260b3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-388106 | `0x75faf114eafb1bdbe2f0316df893fd58ce46aa4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x76250920ba6ed1488041c6e4c406db4317fa0fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x873ca700482409072df082192b0952464cc43dda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x89d2b3e8538fce12013aac17e530e0d6f728d71a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x8e5b1d42125fdafe594ce611c121ea9f1c2fcaac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x909e571e7abcce7aefeda3406f4b822823be2ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x91b62ca6b54f4ff2ad9cce81a814c853b5b11dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x9e76101c1e9f8b9fdc3b144025a2b34924c7f48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xbebf13f3f6744aadd084796901c87e6e65617843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xc6efe9ac36c66cc3f28e5ad0e7aa077eb0f97dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xcee578131d0938c08389a22b92c218888b33e5d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xd52081e444544c744b3ecbb0de7ff06e63ef4e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xd7ec64f45f270fdd493b7fcc6a90693f80220f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xdb2574167500c698cf8e8d68ff9714728512682c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xec1ff82011679d935683f1618ab47094b71415dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xfbb8ee011af0f15ee171e79c0688d05a58f7f566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xfc70510258c99d9cb6282cfa580070ce3c6a47dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x08210f9170f89ab7658f0b5e3ff39b0e03c594d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x11b8b179ecf830a36f0e243756d1109f0cab442b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x12f558ee6d288e2864b59cf21eebee1da95e8caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1b0fa6d4ba8c624556dfe068ec0ff21811aa7a5a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-388102 | `0x1c7d4b196cb0c7b01d743fbc6116a902379c7238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x251d59bce054d285539764fd13154f6369b2126c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2e3467bbd995a32b85dca51c58bd23f5a96c2ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x32ff2b0ac7fc89c6e7aa9fe540888da61f712f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x34259cd1a4de947b8f0ec6011763771a56df10a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x36939d5a1ca73901058f3fa2ba0b7546e7144d7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a29155fcc1e2f158661a72658a53d056499f924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3eae658aa96cfee314dee9c3ff8830468da2aa3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x41e94eb019c0762f9bfcf9fb1e58725bfb0e7582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x488d2b9b8d73b88380c11aaea3b63a7916c9b8ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b22a317731c7b744b00038ab782f4c54d152ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6c76cac50ba525223a7fbdb8701ea6da49f95342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7221cc25b90a9e7c10b8c8bb1f27769466abc39c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x76a1b9e4712e45c4c3d0ac6e2c3028ee0ce4d3b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7d89c906ee97305dfecd3b144039ea98367934fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x89e29668e4928bf3b085df39cc2ff2104f45c37a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x985363b7832b7b9d0b391b1470276c63477bb629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa94e0fa58fb70264492d9b74eb446a2224773547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb56323f300c04c33f6502f3ea62bebe2e99ce5e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc22dae40f828e38a9527b604e7a68a89a3de9c37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc6153fdbe6941effd8cbdd150ba459175f1ea558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc8a087ac4bab015261dfc3469201f1169b8a5e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc9db4844fad344e069524d67abae12fb94a7b02e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd79576521869bd7c50b19a870bae9538bd75f4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda317c1d3e835dd5f1be459006471acaa1289068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdfbd907c0cc5e7fdac5c27c66826785f133030c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xed21c73f27fef2c08213a1b949da1e924fe482e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf31d233a94e168c85fce4b9ead99fc0d0900cb5b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 91
- Live contracts: 0
- Unknown liveness contracts: 91
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=91

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x0d1730547b70e79e106b85a06fb6e6b8fdccc1c8` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x101e1c9757c99867a39ceb41117b44f2292cb253` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x18b2bf98579267d4b108c5d82f816710a17efbb6` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x1aba9ac93b057de829a116efd056e6c30288bb57` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x36c705bf4a737b4b699f517ad6636e631a9fde3f` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x3be6d4be89a7ab76c0e8fa7576b1cf211b274dd4` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x3e71aafa5c61a275954292d3494dbdf5f8c2abac` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x4487b8a031a26f64366661f6450c27a33777f689` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x4bb795dd2d2f15412405c7eef5ece6182d1c0dae` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x683bbad68fdb42775c34e8a845aa75f3b3260b3d` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x76250920ba6ed1488041c6e4c406db4317fa0fc4` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x873ca700482409072df082192b0952464cc43dda` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x89d2b3e8538fce12013aac17e530e0d6f728d71a` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x8e5b1d42125fdafe594ce611c121ea9f1c2fcaac` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x909e571e7abcce7aefeda3406f4b822823be2ce9` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x91b62ca6b54f4ff2ad9cce81a814c853b5b11dd1` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0x9e76101c1e9f8b9fdc3b144025a2b34924c7f48b` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0xbebf13f3f6744aadd084796901c87e6e65617843` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0xc6efe9ac36c66cc3f28e5ad0e7aa077eb0f97dec` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0xcee578131d0938c08389a22b92c218888b33e5d0` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0xd52081e444544c744b3ecbb0de7ff06e63ef4e1c` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0xd7ec64f45f270fdd493b7fcc6a90693f80220f5e` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0xdb2574167500c698cf8e8d68ff9714728512682c` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0xec1ff82011679d935683f1618ab47094b71415dd` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0xfbb8ee011af0f15ee171e79c0688d05a58f7f566` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| arbitrum-sepolia | unverified unclassified | UnnamedContract<br>`0xfc70510258c99d9cb6282cfa580070ce3c6a47dd` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1fe74ca6c66a33b8b619d799af110741fb6d20e3` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3d3f8fe9cce16e1c2743d5ace99f027df866c6bc` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4c90c8a368f7d1f4a57906139bac23c72f38f4cf` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7f2239511051b875ccf84dab02d5a307adcd51c2` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa3fa3d254bf6af295b5b22cc6730b04144314890` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb5dc6671e7cdaaa2386536295bf63a221b67311a` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb7887fed5e2f9dc1a66fbb65f76ba3731d82341a` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xecc6ad0608e1e3fc6b314df221cf10ea07ae08d3` | non_address_book | unknown | unknown | unverified | n/a | `0xcb9968cb0d6612e1167e445774997c63a0792dbf` |
| avalanche-fuji | unverified unclassified | UnnamedContract<br>`0x06064ef8b77dafc93d1e175b25048047919f74b1` | non_address_book | unknown | unknown | unverified | n/a | `0x4f52a68d34287c9b17c6496bbe885f26b1f203c2` |
| avalanche-fuji | unverified unclassified | UnnamedContract<br>`0x289d52e8fb4eeeb273915828ca81191b1ab4ae0b` | non_address_book | unknown | unknown | unverified | n/a | `0x4f52a68d34287c9b17c6496bbe885f26b1f203c2` |
| avalanche-fuji | unverified unclassified | UnnamedContract<br>`0x48a2cca231b4d195fd3b7f50b747bfc1dc898d79` | non_address_book | unknown | unknown | unverified | n/a | `0x4f52a68d34287c9b17c6496bbe885f26b1f203c2` |
| avalanche-fuji | unverified unclassified | UnnamedContract<br>`0x5b2173b7d3d4592816d9ad520f309b3f443ccbe1` | non_address_book | unknown | unknown | unverified | n/a | `0x4f52a68d34287c9b17c6496bbe885f26b1f203c2` |
| avalanche-fuji | unverified unclassified | UnnamedContract<br>`0x79beb0a978443dbc125599170332b3f40d448f63` | non_address_book | unknown | unknown | unverified | n/a | `0x4f52a68d34287c9b17c6496bbe885f26b1f203c2` |
| avalanche-fuji | unverified unclassified | UnnamedContract<br>`0x99887d7c649097bafec679746857b5c0d4eba2ee` | non_address_book | unknown | unknown | unverified | n/a | `0x4f52a68d34287c9b17c6496bbe885f26b1f203c2` |
| avalanche-fuji | unverified unclassified | UnnamedContract<br>`0xaabccb71f8631f1b4610fd2fde486a61f6f7017b` | non_address_book | unknown | unknown | unverified | n/a | `0x4f52a68d34287c9b17c6496bbe885f26b1f203c2` |
| avalanche-fuji | unverified unclassified | UnnamedContract<br>`0xb79bbc2a74b14ac14cf5e6c60ed6bfb13271f98d` | non_address_book | unknown | unknown | unverified | n/a | `0x4f52a68d34287c9b17c6496bbe885f26b1f203c2` |
| avalanche-fuji | unverified unclassified | UnnamedContract<br>`0xf7161d9786d44a81ec38d4a7f62b90848a8f2d4e` | non_address_book | unknown | unknown | unverified | n/a | `0x4f52a68d34287c9b17c6496bbe885f26b1f203c2` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0x18b2bf98579267d4b108c5d82f816710a17efbb6` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xba3b60c21e28c41df4babd90f228e1d368627da6` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xcee578131d0938c08389a22b92c218888b33e5d0` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xd52081e444544c744b3ecbb0de7ff06e63ef4e1c` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| base-sepolia | unverified unclassified | UnnamedContract<br>`0xd74cc5d436923b8ba2c179b4bca2841d8a52c5b5` | non_address_book | unknown | unknown | unverified | n/a | `0x97effe60f93386969edc31dbd09677da23fe901a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x067b07ed153f2d4640638f7d2945fbe4ed1bf1ac` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0x366a30eeeb47d0dab030c9252fe11a5d0cd92008` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0x53eedc0c750c9ffd63782a1b215effcb704fd402` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7e14ea29ea374d6f4ff669326c30d1fad9826026` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0xae66c0564a6bb320514cd133ddc8281de59d94d4` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf08ac519f7fca9e5434d12d050b3a382b37dccdd` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x1cac7bf5e56f3103f830f371b42efe49618160a3` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x280f7fc6658dfd18210a92a19a23d2c668a67e9e` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x7221cc25b90a9e7c10b8c8bb1f27769466abc39c` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0x89e29668e4928bf3b085df39cc2ff2104f45c37a` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xc8a087ac4bab015261dfc3469201f1169b8a5e00` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| polygon-amoy | unverified unclassified | UnnamedContract<br>`0xdfbd907c0cc5e7fdac5c27c66826785f133030c4` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x08210f9170f89ab7658f0b5e3ff39b0e03c594d4` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x11b8b179ecf830a36f0e243756d1109f0cab442b` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x12f558ee6d288e2864b59cf21eebee1da95e8caf` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1b0fa6d4ba8c624556dfe068ec0ff21811aa7a5a` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x251d59bce054d285539764fd13154f6369b2126c` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2e3467bbd995a32b85dca51c58bd23f5a96c2ff2` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x32ff2b0ac7fc89c6e7aa9fe540888da61f712f29` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x34259cd1a4de947b8f0ec6011763771a56df10a6` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x36939d5a1ca73901058f3fa2ba0b7546e7144d7a` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3a29155fcc1e2f158661a72658a53d056499f924` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3eae658aa96cfee314dee9c3ff8830468da2aa3f` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x41e94eb019c0762f9bfcf9fb1e58725bfb0e7582` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x488d2b9b8d73b88380c11aaea3b63a7916c9b8ef` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4b22a317731c7b744b00038ab782f4c54d152ddb` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6c76cac50ba525223a7fbdb8701ea6da49f95342` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7221cc25b90a9e7c10b8c8bb1f27769466abc39c` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x76a1b9e4712e45c4c3d0ac6e2c3028ee0ce4d3b0` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7d89c906ee97305dfecd3b144039ea98367934fb` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x89e29668e4928bf3b085df39cc2ff2104f45c37a` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x985363b7832b7b9d0b391b1470276c63477bb629` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa94e0fa58fb70264492d9b74eb446a2224773547` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb56323f300c04c33f6502f3ea62bebe2e99ce5e9` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc22dae40f828e38a9527b604e7a68a89a3de9c37` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc6153fdbe6941effd8cbdd150ba459175f1ea558` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc8a087ac4bab015261dfc3469201f1169b8a5e00` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc9db4844fad344e069524d67abae12fb94a7b02e` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd79576521869bd7c50b19a870bae9538bd75f4d4` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xda317c1d3e835dd5f1be459006471acaa1289068` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdfbd907c0cc5e7fdac5c27c66826785f133030c4` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xed21c73f27fef2c08213a1b949da1e924fe482e0` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xf31d233a94e168c85fce4b9ead99fc0d0900cb5b` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xc0634090f2fe6c6d75e61be2b949464abb498973` | Contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 105 |

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
