# Agentic Audit Brief: BurgerSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: BurgerSwap (`burgerswap`)
- Website: [https://burgerswap.org/](https://burgerswap.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 185 unique implementations (187 raw deployments)
- Coverage basis: 3/11 confirmed own live verified implementations (27.3%); conservative 27.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $142,208.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for BurgerSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across bsc. Structural roles: 9 core, 4 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (9), supporting (4)
- Contract kinds: contract (13)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (9)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- DemaxBallotFactory (`0x29d5ac18a4c315af2e8c8325a2748e590ab00a68`, chain 56)
- DemaxDelegate (`0x3de79b6ff181aa60bd1cd7d2c6ea8a6099a35e60`, chain 56)
- DemaxPlatform (`0x42591f57f707739b95c5c486c014b525f19d70ca`, chain 56)
- DemaxPool (`0x86a327715d707bca24983b1145d1f6c40c5d4a74`, chain 56)
- DemaxProjectDeploy (`0x5bb57735352165ceabcb50dc9b11db5341e5c7b5`, chain 56)
- DemaxQuery2 (`0x2c7fc9ccf3d03d99007db5977dd5926e8e32e022`, chain 56)
- DemaxTransferListener (`0x3becd05231bbba6f7adda92f3c79fb3aa96d943b`, chain 56)
- DemaxTrigger (`0xef72ebba2602de655ad05ae67f7e15ccdd119031`, chain 56)
- Dgas (`0xae9269f27437f0fcbc232d39ec814844a51d6b8f`, chain 56)
- IFOQuery (`0x136efc39b6ba21143e408fe318efe0f872ffbae4`, chain 56)
- TokenQuery (`0xe85ed3322373f1dc720b7dccdbecfceb871364e0`, chain 56)
- XBurger (`0xafe24e29da7e9b3e8a25c9478376b6ad6ad788dd`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (12 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/11 (27.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 172 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 12 of 185 unique; 173 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/52
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 133
- Unique implementations: 185
- Raw deployments: 187
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Peckshield | Tier 2 | 3 | 5.8% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DemaxPlatform | unknown | project_anchor | own_supporting | 0 | bsc | unit-266817 | `0x42591f57f707739b95c5c486c014b525f19d70ca` | ✅ Audited |
| DemaxPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-266820 | `0x86a327715d707bca24983b1145d1f6c40c5d4a74` | ✅ Audited |
| DemaxTransferListener | unknown | project_anchor | own_supporting | 0 | bsc | unit-266815 | `0x3becd05231bbba6f7adda92f3c79fb3aa96d943b` | ✅ Audited |

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AAAAConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf66aaed32d6a8b9d0bb1a050019bfb36e47194e4` | ⚠️ Unaudited |
| AAAADeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cda5cae869277c6368b8d1301ec134450668f61` | ⚠️ Unaudited |
| AAAAFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59b52c6f7769d5baeda35455506c2b93cf8c1399` | ⚠️ Unaudited |
| AAAAGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16463cd818fc4ae1e354e8af2cc4a570ac80eaed` | ⚠️ Unaudited |
| AAAAMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2aef4a024099fe9ef1efd1d075a904fdc20fe95b` | ⚠️ Unaudited |
| AAAAOtherConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab6508d93bf6e42b9c0a9676b59295f85781d2c2` | ⚠️ Unaudited |
| AAAAPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed49c8f41d8b5eb2a29720955a39212cfb9a2748` | ⚠️ Unaudited |
| AAAAQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc396c3ece6aca68316eb95e0cbad3c4c04e93db0` | ⚠️ Unaudited |
| AAAAQuery2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x464adcc1bde46b176c90c4f950f8d9c800bd324d` | ⚠️ Unaudited |
| AAAAReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2618997cdb340f98e731916950f8ed09b1a5143d` | ⚠️ Unaudited |
| AAAAShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0855a1b515aa6d50af1e9c41d8db846fbbc47ed` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83f72a72c6e513eb50be148d482a429570446428` | ⚠️ Unaudited |
| BSCBurgerTransit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f621973a1363c2ecc8b256e9c0a1c3e62d2cefe` | ⚠️ Unaudited |
| BurgerERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0502f8e3cd79e2356ecbc6ba03ba4aae1cd08443` | ⚠️ Unaudited |
| BurgerSave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee0cfacca812f5bf696f638501cac35334977241` | ⚠️ Unaudited |
| CBurger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b5d132e902f792e2f8327a3d4062e3edd79f640` | ⚠️ Unaudited |
| Claim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54d5a9e5680f729c6a020a3b891e64a711181368` | ⚠️ Unaudited |
| ClaimCondition | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc53f74a55b0408a2de829a51772eae6de5e5f4e0` | ⚠️ Unaudited |
| ClaimRule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfae8e56209dd5a7ac9be27c91516164f27096e40` | ⚠️ Unaudited |
| DemaxBallotFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-266813 | `0x29d5ac18a4c315af2e8c8325a2748e590ab00a68` | ⚠️ Unaudited |
| DemaxConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3669d6ac4ea8a6ba0b85396995557475c23f4eba` | ⚠️ Unaudited |
| DemaxDelegate | unknown | project_anchor | own_supporting | 0 | bsc | unit-266816 | `0x3de79b6ff181aa60bd1cd7d2c6ea8a6099a35e60` | ⚠️ Unaudited |
| DemaxFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2254ee4434ef583edb2eb8359d3e82230ee20891` | ⚠️ Unaudited |
| DemaxGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d9b9c51f286164f96c2b756762a228d8267258d` | ⚠️ Unaudited |
| DemaxPricePrediction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2540ed3ed762d28f7798e71c677486a2cc6ef68e` | ⚠️ Unaudited |
| DemaxProjectDeploy | unknown | project_anchor | own_supporting | 0 | bsc | unit-266818 | `0x5bb57735352165ceabcb50dc9b11db5341e5c7b5` | ⚠️ Unaudited |
| DemaxProjectQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76da67bb008baee6e53dcbdcd63c11f10924bf4f` | ⚠️ Unaudited |
| DemaxQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x236b758057a1d277a267bee8871c563f2a012323` | ⚠️ Unaudited |
| DemaxQuery2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-266814 | `0x2c7fc9ccf3d03d99007db5977dd5926e8e32e022` | ⚠️ Unaudited |
| DemaxShackChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07de034a0fc0da7a0bf703f6dca7025bcd61ba3e` | ⚠️ Unaudited |
| DemaxShackChefQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdd5d0202413a902414f3d7a5ccac13c40f876ad` | ⚠️ Unaudited |
| DemaxShackConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fb37f02196190237b47f0fe73a343b51fa06b24` | ⚠️ Unaudited |
| DemaxShackFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x744db744da07e3ade5ba99d1c80fa11dc5ee247d` | ⚠️ Unaudited |
| DemaxTrigger | unknown | project_anchor | own_supporting | 0 | bsc | unit-266824 | `0xef72ebba2602de655ad05ae67f7e15ccdd119031` | ⚠️ Unaudited |
| Dgas | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-266821 | `0xae9269f27437f0fcbc232d39ec814844a51d6b8f` | ⚠️ Unaudited |
| ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x062a0a2efb3dfb6b975b7ea8d2d3ca9dacbdff22` | ⚠️ Unaudited |
| ERC20Factory | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc | unit-266819 | `0x6292c755af42512c5901524e42c8666ef60a4a08` | ⚠️ Unaudited |
| ERC20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0eaa6376af9361d28ac3e8ecd0465ac496429a4` | ⚠️ Unaudited |
| ETHBurgerTransit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb92d86a9cf4656d9d2f4bd3dd6aa1b0b16174e0b` | ⚠️ Unaudited |
| IFOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d3507bd96227b95135c936b3427f54a02ead0d2` | ⚠️ Unaudited |
| IFOQuery | unknown | project_anchor | own_supporting | 0 | bsc | unit-266812 | `0x136efc39b6ba21143e408fe318efe0f872ffbae4` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x2a5029f77aad1e7ee0b98b1181ab5c35d8edd4dc` | ⚠️ Unaudited |
| SignatureUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb86e8621aa93dbcdccb5332f99a72c4a83b2d779` | ⚠️ Unaudited |
| TERToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70084234e6228a5dbce0331423208babf14837d1` | ⚠️ Unaudited |
| TokenQuery | unknown | project_anchor | own_supporting | 0 | bsc | unit-266823 | `0xe85ed3322373f1dc720b7dccdbecfceb871364e0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb0e53def61ad145bc8615c592bef212c46254171`; bsc `0xc925f1eaf338cbaf80e6b64c744a0f7a30195de7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc3ff4aa9441dcd838b8e4652bb84148216a3c6b8`; bsc `0xe1a71a1b7ba48c8749d9bbb174165f3efcfcaa5f` | ⚠️ Unaudited |
| USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9a6c929a2b6e538fe1d2151ad76f751dcb312ae` | ⚠️ Unaudited |
| XBurger | unknown | project_anchor | own_supporting | 0 | bsc | unit-266822 | `0xafe24e29da7e9b3e8a25c9478376b6ad6ad788dd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (133)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x013b33ddb356d7bf44e40678f4f4c231bafc4cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03253a7b8b5e868542ddbddc86bb068c62a8fab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x045c00e4db552549aa3cf9693f5b349f1eb41566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06ae1759e95e0783b366ad35819259738285570e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c177bccab0454af11c6c02e08a6bebe9cd07710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ea1ab79a4492b8c50e4dfe7031915e17702e292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x104b8c7479a5e55afec675a2d3651982e0890216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x118b14fc7b51325eaf6dfa3cbf74484a264e19df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19a8cb7498c40dc36fd65e600ad4a67c1f9bf920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a64489d69fb4c6638eae6cb5d898296f8db19ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a89c34549d689ed9a5550b01c690c8604707f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21d7fc3176efb866064428dbac6ec06f319bec2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2419a559c3aa408d6516ffe5995453915a2a6859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25f490399b64db0bdf9c5b1db61182fbc6118a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26b21fcce2b9b7f481c3ee6865cbe1e1ae4e4f45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27dc5e72c3bfa833ae4132ef4b0843e1e6343944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28187baf22b1219789d31fa6276a404c8124fcca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29863f5af663bbdf6732a5df3d58da002ea43272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cccf84a8ce8347de95ab8d3317c9eba1486e08e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d8e93385bc97a07b9df0cf255ff2dce414d7db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x375a6fda1c07ede5cb62f096036015c7fae8753e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39594865fc601daa52caea7af4ff4d47cc45d15f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c03046bb3dc38885e985868cb8798c9144d92ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3eeba323959c66485761fa723c7a02fae8a084af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43bfe4438dc0ebfde7af5daf51a62c6ade30256a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x441cf6e086330bc89975e19303a051673ce0dfea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44f64bc7630342f9ae11e9b75d8e7c4f5e08f338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4931a2c4553b9a3a2148bf8cd0cf46d69091491a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b8349a21a17d3f1a423e696347b09b5a47d88b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d584e02e135a9145a1e1b3a50f487b59cccf045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5074e7613c206985c01c151b2f8aca0f4f5dff4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x557cbbb1c27245218d307bdaef7d9e5f7df49ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x579de5409bc0b3ca0e6bb23c3de164d5fd328b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59138b0b399edf74b8d296b8a52fe0cc18623fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59a5264fbdc3ac6ba9c8b385e787905c16c0ea00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bcdac9399a133781975264f6af62c7a8f2421ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bd05ffbcdca245ad7a26327dae7d12455f63093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5cb787b8fcda101598751d58fb6f21f3229d4a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5da5da6933637c1cafa5de9fdf2acb1b3758c9e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f42f4b3e2ad6b6a7461dada2dd5f55445b510a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5feff5f23b12df521b15743c58d853a9d1eb1053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6125f7abe151a86036c821fa7cb30da19d8a5d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61d3aee68a29bcc2afca216a9906f9de243285d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6383d630b9b52291502d6260cd4fd41e70c3d8e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x675e283077b6686fc1d0d1fc28ff5fde16688152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68900e25768848efcd319ce2d69eec53f6287dd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ba35381b338b03cd5f7b31ae52fe2681deac621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e4ee7a92de3d909dc5543bab26c4a4a44e45726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f7b673cb51197fb963e33f943ff3abee0a2eabc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x734e1c063391b32078eb950da091fa5f962a580d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75ca8f6c82df5fdfd09049f46ad5d072b0a53bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x789c11212eaca5312d4aa6d63148613e658ccfad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78e2f7a865a7cc46cabd8e35c42191819c4141cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a2158b09e98e93bd64309270f77180d865b93b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x863e5885b9caf971cc8c003ff46d2d3106266c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a1e9d3aebbbd5ba2a64d3355a48dd5e9b511256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ad7831d0a24fdbbc239a2ba260072d7665f8a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e3f0e0b955c3ec50ddc2015440e74fdaa885a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9154c2684aef8d106babcb19aa81d4fabf7581ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92b891c8da657defd09fa9aa7fbc4aa7b3390235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93435503fdebc171f05e60c882ffba5f332cf05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95ab8fdc6afa48dc3ce27df6d975a2b587d6a1e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95f69f9336a52ad73ab6fa20dc29482220e2adc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96ac5c4de10b195b3cf95bfc6078d79ad575073e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ef4f7afa7cea1d1b29808a534db43f96051be6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fdc672a33f34675253041671abd214f2387b7ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2d0128b4a7bd98448848560f43f8c6728d0c13e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4790135ba4439cdb2efb35fe191dc83d3d627f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6aa055b9851c9e4bcf156316d139869bad27198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6f21aaada32ca46c876d915fdeb98d9c35a122a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7545c64d65a6e329e0ed3c9c9cfb99b5dea07ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7eee8fa3358f9a0b88fceed0b935234d7298391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9ae8b6d1f0e2b5c7d9ded19a49b7790acb17a05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa445527a45070ba3b4e272f3a3945e48347608f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaab9d6f5ec8e1c21df9915943a8d819adb7ef987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf437fd07c51fb77c2566750d9b21afdd3339ebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf5dcebba2f8bec8729117336b2fe8b4e0d99b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafd33a9186e59499a1a1873a2a1c3ca7a04db32b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafff9d0b727e6c6e55f9f0bb5a34eeb364aba542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb099d7dbc415bf5491b0ca6fdccfddf8b7edce12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0c36a5c7f9c0fba170c0b91e05de1ed8d821ef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1031a38b0e5fbe034b9e4ee71f343f6829f833b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb147f38eb9bd7a4b041678118431b55b0f863cb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6bac847a095847028354fce3f444fb2e9962a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8628ca87a4affc09ab5c22e3bf4e9dc10d31af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbeca1d3de03da93c4e028a770772495d289945f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc48463936bee0613e0b2773533bbed6e59d80d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc7df1cf221dd84bce28a16621a7e1ee19db9642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbdb3018b6d9f4db2b1f8f1aaa95bd320258b20ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe0884669a956d3c29ddffd3250d51a96cdd6786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1c0223e06675d9ebe1665d691dfcc9e14b1ce19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc25d2f4e808a8fa5d69729a60bc65e9a8ded8de2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2969239da155c96047d276a2d0e28cc55892bbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2cbc7117306c6965bb2e5169825da00f25b0a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc32f6b548ad1bb1c54a37e471640ecf77778f13d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5d7389ab0218e04e1d35cf0551357871f6e9521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc68593f1b1dfd1d3db24ebfeb26e6d87debea36a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc805a432342b1e09456d64170aaafcd93fce97e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca1ffb12619439542b1c42951d7cf80ab8a1e269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca94c15a98b84bb40ee016fa7e8858f652e8c7e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb519729d866eb3d4142169985fde407ea757057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0dd735851c1ca61d0324291ccd3959d2153a88d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1c39d8ed2e2e0fd52a7fabfcd6b560153d49651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2c16dabf9b666fa39a21c69be21609988d4e852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd495e2218ee5cb522d79ddc71098d0eb3c998902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc38635acbdc88a0fcf604cac483a6390c5b5ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcbb90631d373304a9507f7505f3fbd485116bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd66ca328178e71b4a8ff11b1b4cc438f7a12ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf166587682b093b58dcc1314eb33acdc2e0caf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf9646d3d3114af04df6073026ee0350cd6b57a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0968e7a78af002439097a15284ca83a021dd722` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe117208f04341aa2ac5c6e4cd9d7757da74ea6fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe174a972595ecd283aa696a88f14335290c0808f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2cc0e9d1c54533ed498f8e479d9d54bd538085d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3301a8939c63656ed5e71da4f4a3b9567c3eb0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe38957cfb17152189a9925b4445f5448c26c34a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3f77e2568dfc0188d0898fa08c761b110f49ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5c13951f51e8c616ff3e7c815042533d527d255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7b25dc1f657f763f031c9ba594e1ffce5b5f487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7f6824706aeee33542088eb2fdd2d69e37455b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7f90ad790a24654813cb05377fda71c46081456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8d93853f064361e732044e72b5cf8cde7262896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebfc67ffc904048fbec3617dda0e8c4a3134f4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0d7e63c1d1f64def78f72713f6276f784f12662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3251983604ceb4126f864d6196ecfa8ec61b45f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf45ddd55fde8db85b5000cff94cd912f61138d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf49f7037593b9850ac24ed83671b64d3494ce24c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf95d80bd0d68c46e8b8f74661ecc61cefcae85c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc2cbefab911a7ccd002b85eae4356e364aad5f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe4751396ec523523683d87d8e998453ad82e9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfebfc0b4bba7524f6f0b1890b1c06980ace68676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff7d49a43e603a040cad8ce48683f1b5fa35ea00` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 135
- Live contracts: 0
- Unknown liveness contracts: 135
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=135

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x013b33ddb356d7bf44e40678f4f4c231bafc4cae` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x03253a7b8b5e868542ddbddc86bb068c62a8fab7` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x045c00e4db552549aa3cf9693f5b349f1eb41566` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x06ae1759e95e0783b366ad35819259738285570e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0c177bccab0454af11c6c02e08a6bebe9cd07710` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0ea1ab79a4492b8c50e4dfe7031915e17702e292` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x104b8c7479a5e55afec675a2d3651982e0890216` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x118b14fc7b51325eaf6dfa3cbf74484a264e19df` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x19a8cb7498c40dc36fd65e600ad4a67c1f9bf920` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1a64489d69fb4c6638eae6cb5d898296f8db19ce` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1a89c34549d689ed9a5550b01c690c8604707f29` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x21d7fc3176efb866064428dbac6ec06f319bec2d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2419a559c3aa408d6516ffe5995453915a2a6859` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x25f490399b64db0bdf9c5b1db61182fbc6118a21` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x26b21fcce2b9b7f481c3ee6865cbe1e1ae4e4f45` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x27dc5e72c3bfa833ae4132ef4b0843e1e6343944` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x28187baf22b1219789d31fa6276a404c8124fcca` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x29863f5af663bbdf6732a5df3d58da002ea43272` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2cccf84a8ce8347de95ab8d3317c9eba1486e08e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2d8e93385bc97a07b9df0cf255ff2dce414d7db3` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x375a6fda1c07ede5cb62f096036015c7fae8753e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x39594865fc601daa52caea7af4ff4d47cc45d15f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3c03046bb3dc38885e985868cb8798c9144d92ea` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3eeba323959c66485761fa723c7a02fae8a084af` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x43bfe4438dc0ebfde7af5daf51a62c6ade30256a` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x441cf6e086330bc89975e19303a051673ce0dfea` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x44f64bc7630342f9ae11e9b75d8e7c4f5e08f338` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4931a2c4553b9a3a2148bf8cd0cf46d69091491a` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4b8349a21a17d3f1a423e696347b09b5a47d88b5` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4d584e02e135a9145a1e1b3a50f487b59cccf045` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5074e7613c206985c01c151b2f8aca0f4f5dff4c` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x557cbbb1c27245218d307bdaef7d9e5f7df49ddd` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x579de5409bc0b3ca0e6bb23c3de164d5fd328b81` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x59138b0b399edf74b8d296b8a52fe0cc18623fdd` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x59a5264fbdc3ac6ba9c8b385e787905c16c0ea00` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5bcdac9399a133781975264f6af62c7a8f2421ba` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5bd05ffbcdca245ad7a26327dae7d12455f63093` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5cb787b8fcda101598751d58fb6f21f3229d4a73` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5da5da6933637c1cafa5de9fdf2acb1b3758c9e3` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5f42f4b3e2ad6b6a7461dada2dd5f55445b510a4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5feff5f23b12df521b15743c58d853a9d1eb1053` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6125f7abe151a86036c821fa7cb30da19d8a5d4a` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x61d3aee68a29bcc2afca216a9906f9de243285d3` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6383d630b9b52291502d6260cd4fd41e70c3d8e5` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x675e283077b6686fc1d0d1fc28ff5fde16688152` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x68900e25768848efcd319ce2d69eec53f6287dd2` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6ba35381b338b03cd5f7b31ae52fe2681deac621` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6e4ee7a92de3d909dc5543bab26c4a4a44e45726` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6f7b673cb51197fb963e33f943ff3abee0a2eabc` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x734e1c063391b32078eb950da091fa5f962a580d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x75ca8f6c82df5fdfd09049f46ad5d072b0a53bf6` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x789c11212eaca5312d4aa6d63148613e658ccfad` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x78e2f7a865a7cc46cabd8e35c42191819c4141cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7a2158b09e98e93bd64309270f77180d865b93b9` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x863e5885b9caf971cc8c003ff46d2d3106266c8f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8a1e9d3aebbbd5ba2a64d3355a48dd5e9b511256` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8ad7831d0a24fdbbc239a2ba260072d7665f8a3d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8e3f0e0b955c3ec50ddc2015440e74fdaa885a52` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9154c2684aef8d106babcb19aa81d4fabf7581ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x92b891c8da657defd09fa9aa7fbc4aa7b3390235` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x93435503fdebc171f05e60c882ffba5f332cf05e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x95ab8fdc6afa48dc3ce27df6d975a2b587d6a1e2` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x95f69f9336a52ad73ab6fa20dc29482220e2adc5` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x96ac5c4de10b195b3cf95bfc6078d79ad575073e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9ef4f7afa7cea1d1b29808a534db43f96051be6e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9fdc672a33f34675253041671abd214f2387b7ab` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa2d0128b4a7bd98448848560f43f8c6728d0c13e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa4790135ba4439cdb2efb35fe191dc83d3d627f6` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa6aa055b9851c9e4bcf156316d139869bad27198` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa6f21aaada32ca46c876d915fdeb98d9c35a122a` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa7545c64d65a6e329e0ed3c9c9cfb99b5dea07ff` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa7eee8fa3358f9a0b88fceed0b935234d7298391` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa9ae8b6d1f0e2b5c7d9ded19a49b7790acb17a05` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaa445527a45070ba3b4e272f3a3945e48347608f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaab9d6f5ec8e1c21df9915943a8d819adb7ef987` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaf437fd07c51fb77c2566750d9b21afdd3339ebb` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaf5dcebba2f8bec8729117336b2fe8b4e0d99b0b` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xafd33a9186e59499a1a1873a2a1c3ca7a04db32b` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xafff9d0b727e6c6e55f9f0bb5a34eeb364aba542` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb099d7dbc415bf5491b0ca6fdccfddf8b7edce12` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb0c36a5c7f9c0fba170c0b91e05de1ed8d821ef4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb1031a38b0e5fbe034b9e4ee71f343f6829f833b` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb147f38eb9bd7a4b041678118431b55b0f863cb7` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb6bac847a095847028354fce3f444fb2e9962a97` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb8628ca87a4affc09ab5c22e3bf4e9dc10d31af3` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbbeca1d3de03da93c4e028a770772495d289945f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbc48463936bee0613e0b2773533bbed6e59d80d5` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbc7df1cf221dd84bce28a16621a7e1ee19db9642` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbdb3018b6d9f4db2b1f8f1aaa95bd320258b20ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbe0884669a956d3c29ddffd3250d51a96cdd6786` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbf6527834dbb89cdc97a79fcd62e6c08b19f8ec0` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc1c0223e06675d9ebe1665d691dfcc9e14b1ce19` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc25d2f4e808a8fa5d69729a60bc65e9a8ded8de2` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc2969239da155c96047d276a2d0e28cc55892bbe` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc2cbc7117306c6965bb2e5169825da00f25b0a92` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc32f6b548ad1bb1c54a37e471640ecf77778f13d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc5d7389ab0218e04e1d35cf0551357871f6e9521` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc68593f1b1dfd1d3db24ebfeb26e6d87debea36a` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc805a432342b1e09456d64170aaafcd93fce97e4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc925f1eaf338cbaf80e6b64c744a0f7a30195de7` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xca1ffb12619439542b1c42951d7cf80ab8a1e269` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xca94c15a98b84bb40ee016fa7e8858f652e8c7e4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcb519729d866eb3d4142169985fde407ea757057` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd0dd735851c1ca61d0324291ccd3959d2153a88d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd1c39d8ed2e2e0fd52a7fabfcd6b560153d49651` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd2c16dabf9b666fa39a21c69be21609988d4e852` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd495e2218ee5cb522d79ddc71098d0eb3c998902` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdc38635acbdc88a0fcf604cac483a6390c5b5ccb` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdcbb90631d373304a9507f7505f3fbd485116bb4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdd66ca328178e71b4a8ff11b1b4cc438f7a12ca0` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdf166587682b093b58dcc1314eb33acdc2e0caf6` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdf9646d3d3114af04df6073026ee0350cd6b57a1` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe0968e7a78af002439097a15284ca83a021dd722` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe117208f04341aa2ac5c6e4cd9d7757da74ea6fe` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe174a972595ecd283aa696a88f14335290c0808f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe1a71a1b7ba48c8749d9bbb174165f3efcfcaa5f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe2cc0e9d1c54533ed498f8e479d9d54bd538085d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe3301a8939c63656ed5e71da4f4a3b9567c3eb0c` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe38957cfb17152189a9925b4445f5448c26c34a2` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe3f77e2568dfc0188d0898fa08c761b110f49ec5` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe5c13951f51e8c616ff3e7c815042533d527d255` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe7b25dc1f657f763f031c9ba594e1ffce5b5f487` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe7f6824706aeee33542088eb2fdd2d69e37455b6` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe7f90ad790a24654813cb05377fda71c46081456` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe8d93853f064361e732044e72b5cf8cde7262896` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xebfc67ffc904048fbec3617dda0e8c4a3134f4af` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf0d7e63c1d1f64def78f72713f6276f784f12662` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf3251983604ceb4126f864d6196ecfa8ec61b45f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf45ddd55fde8db85b5000cff94cd912f61138d70` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf49f7037593b9850ac24ed83671b64d3494ce24c` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf95d80bd0d68c46e8b8f74661ecc61cefcae85c6` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfc2cbefab911a7ccd002b85eae4356e364aad5f7` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfe4751396ec523523683d87d8e998453ad82e9a8` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfebfc0b4bba7524f6f0b1890b1c06980ace68676` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xff7d49a43e603a040cad8ce48683f1b5fa35ea00` | non_address_book | unknown | unknown | unverified | n/a | `0xbc554d0fa1745aeb52acba8343106cf8aca038ca` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [{% embed url="<>" %}](https://drive.google.com/file/d/1WlKunRKaWzGyN1iWyT1bE8C7IHOrfikK/view?usp=sharing) | Peckshield | Audit | 2023-02 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 13 | high |
| [- [Audit]()](https://burgerswap.gitbook.io/burgercities/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19627] {% embed url="<>" %} — matched: Extracted contract names from findings and explicit mentions. The audit report covers the BurgerCities protocol contracts including Reward, NFTSwap, NFTLease_v2, HeroBox_v2, ActivityPunchIn, ChrismasPunchIn, DemaxBallot, DemaxPlatform, DemaxTransferListener, DemaxPool, DemaxPair, DemaxFactory, DemaxSwapLibrary, DemaxConfig, DemaxLP, and DgasHub. The audit date is clearly stated on the cover page and in the report metadata.
- [19628] - [Audit]() — no match: The provided text is a documentation index page with a link to an external PDF audit report. No contract names or scope details are present in the text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| {% embed url="<>" %} | Reward | unmatched — not counted | — | Listed in finding PVE-001 as target contract with code snippet showing Reward::verify() | no |
| {% embed url="<>" %} | NFTSwap | unmatched — not counted | — | Listed in finding PVE-002 as target contract with code snippet showing NFTSwap::swap() | no |
| {% embed url="<>" %} | NFTLease_v2 | unmatched — not counted | — | Listed in finding PVE-002 as target contract with violations | no |
| {% embed url="<>" %} | HeroBox_v2 | unmatched — not counted | — | Listed in finding PVE-003 as target contract with code snippet showing HeroBox_v2::withdrawUSDT() | no |
| {% embed url="<>" %} | ActivityPunchIn | unmatched — not counted | — | Listed in finding PVE-003 as target contract | no |
| {% embed url="<>" %} | ChrismasPunchIn | unmatched — not counted | — | Listed in finding PVE-003 as target contract | no |
| {% embed url="<>" %} | DemaxBallot | unmatched — not counted | — | Listed in finding PVE-004 as target contract with code snippet showing DemaxBallot::winningProposal() | no |
| {% embed url="<>" %} | DemaxPlatform | own contract | DemaxPlatform (selected) `0x42591f57f707739b95c5c486c014b525f19d70ca` — deployed 2021-05-31 09:24:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | DemaxTransferListener | own contract | DemaxTransferListener (selected) `0x3becd05231bbba6f7adda92f3c79fb3aa96d943b` — deployed 2020-09-27 15:43:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | DemaxPool | own contract | DemaxPool (selected) `0x86a327715d707bca24983b1145d1f6c40c5d4a74` — deployed 2020-09-22 04:18:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | DemaxPair | unmatched — not counted | — | Listed in finding PVE-008 as target contract with code snippets showing mint() and burn() | no |
| {% embed url="<>" %} | DemaxFactory | unmatched — not counted | — | Referenced in DemaxPlatform::migrateLiquidity() and DemaxPool::claimReward() | no |
| {% embed url="<>" %} | DemaxSwapLibrary | unmatched — not counted | — | Referenced in DemaxPlatform::_swapFee() | no |
| {% embed url="<>" %} | DemaxConfig | unmatched — not counted | — | Referenced in DemaxPair::burn() | no |
| {% embed url="<>" %} | DemaxLP | unmatched — not counted | — | Referenced in finding PVE-008 as the pool contract | no |
| {% embed url="<>" %} | DgasHub | unmatched — not counted | — | Explicitly mentioned in Section 1.1 as an additional contract covered in the audit | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x29d5ac18a4c315af2e8c8325a2748e590ab00a68` | DemaxBallotFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3de79b6ff181aa60bd1cd7d2c6ea8a6099a35e60` | DemaxDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5bb57735352165ceabcb50dc9b11db5341e5c7b5` | DemaxProjectDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2c7fc9ccf3d03d99007db5977dd5926e8e32e022` | DemaxQuery2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xef72ebba2602de655ad05ae67f7e15ccdd119031` | DemaxTrigger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x136efc39b6ba21143e408fe318efe0f872ffbae4` | IFOQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe85ed3322373f1dc720b7dccdbecfceb871364e0` | TokenQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xafe24e29da7e9b3e8a25c9478376b6ad6ad788dd` | XBurger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 133 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [19628] - [Audit]()

Fork inheritance lineage and inherited audits are included when available.
