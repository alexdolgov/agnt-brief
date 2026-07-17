# Agentic Audit Brief: Decentralized Euro

## Project Overview

- Project: Decentralized Euro (`decentralized-euro`)
- Website: [https://deuro.com/](https://deuro.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.824Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 111 unique implementations (134 raw deployments)
- DeFi Llama TVL: $1,776,571.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 54 project-authored contract(s) across 4 chain(s); 2 ERC4626 vaults, 13 ERC20 tokens, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 7 common project-authored base contract(s) (leadrate, upgradeabilityproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 134; live-surface contracts included: 134 (60 live, 74 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/37 (29.7%)
- Deployed-live implementations: 37 of 111 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/37
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 74
- Unique implementations: 111
- Raw deployments: 134
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 29.7% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 11 | 29.7% | 2025-04 |
| unknown | Tier 2 | 8 | 21.6% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DecentralizedEURO | unknown | ethereum | n/a | [`0xba3f535bbcccca2a154b573ca6c5a49baae0a3ea`](./contracts/ethereum-1/0xba3f535bbcccca2a154b573ca6c5a49baae0a3ea/) | ✅ Audited |
| DEPSWrapper | unknown | ethereum | n/a | [`0x103747924e74708139a9400e4ab4bea79fffa380`](./contracts/ethereum-1/0x103747924e74708139a9400e4ab4bea79fffa380/) | ✅ Audited |
| Equity | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ba26788dfde592fec8bcb0eaff472a42be341b2`](./contracts/ethereum-1/0x1ba26788dfde592fec8bcb0eaff472a42be341b2/); ethereum `0xc71104001a3ccda1bef1177d765831bd1bfe8ee6` | ✅ Audited |
| FrontendGateway | unknown | ethereum | n/a | [`0x5c49c00f897bd970d964bfb8c3065ae65a180994`](./contracts/ethereum-1/0x5c49c00f897bd970d964bfb8c3065ae65a180994/) | ✅ Audited |
| MintingHub | unknown | ethereum | n/a | 2 deployments: ethereum [`0x66acc54a0c64255137b8993cb4972b0901684f7b`](./contracts/ethereum-1/0x66acc54a0c64255137b8993cb4972b0901684f7b/); ethereum `0x7546762fdb1a6d9146b33960545c3f6394265219` | ✅ Audited |
| MintingHubGateway | unknown | ethereum | n/a | [`0x8b3c41c649b9c7085c171cbb82337889b3604618`](./contracts/ethereum-1/0x8b3c41c649b9c7085c171cbb82337889b3604618/) | ✅ Audited |
| PositionFactory | registry | ethereum | n/a | [`0x3a3985a96b1b51e6d914bc7c9e89fd6ba6defe81`](./contracts/ethereum-1/0x3a3985a96b1b51e6d914bc7c9e89fd6ba6defe81/) | ✅ Audited |
| PositionRoller | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ce0ab2fc21bd27a47a64f594fdf7654ea57dc79`](./contracts/ethereum-1/0x4ce0ab2fc21bd27a47a64f594fdf7654ea57dc79/); ethereum `0x5c22d5b752b2121fae7f6f0069252b03b2f7c5cd` | ✅ Audited |
| Savings | unknown | ethereum | n/a | 3 deployments: ethereum [`0x760233b90e45d186a9a98e911b115f7f4b90d3d9`](./contracts/ethereum-1/0x760233b90e45d186a9a98e911b115f7f4b90d3d9/); ethereum `0x79a5db79be2d7692a686af8b7dd51b3bafd75b12`; ethereum `0xb50a671396e2d6460d46d634474cd40f766b3eb5` | ✅ Audited |
| SavingsGateway | unknown | ethereum | n/a | [`0x073493d73258c4beb6542e8dd3e1b2891c972303`](./contracts/ethereum-1/0x073493d73258c4beb6542e8dd3e1b2891c972303/) | ✅ Audited |
| StablecoinBridge | operational_periphery | ethereum | n/a | 13 deployments: ethereum [`0x0423f419de1c44151b6b000e2daa51859c1d5d2a`](./contracts/ethereum-1/0x0423f419de1c44151b6b000e2daa51859c1d5d2a/); ethereum `0x05620f4bb92246b4e067ebc0b6f5c7ff6b771702`; ethereum `0x20b0a153ff16c7b1e962fd3d3352a00cf019f1a7`; ethereum `0x3ed40fa0e5c803e807ebd51355e388006f9e1fee`; ethereum `0x3ef3d03efcc1338d6210946f8cf5fb1a8b630341`; ethereum `0x4dfd460d54854087af195906a2f260aa483a13b1`; ethereum `0x73f38ca06b27eaefb1612d062d885f58924f5897`; ethereum `0x76d8f514554a4a8e5d6103875f2dd7a67543692b`; ethereum `0x7f5173b8743e466bb7e52162be7768cf984f2e11`; ethereum `0xb4ff7412f08c22d7381885e8bda9ee9825092fd1`; ethereum `0xb66a40934a996373fa7602de9820c6bf3e8c9afe`; ethereum `0xd03cd3ea55e67bc61b78a0d70ee93018e2182dbe`; ethereum `0xdc6450e91f49048fbff5f424046985fa03be0130` | ✅ Audited |

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgEURNameable | unknown | ethereum | n/a | [`0x1a7e4e63778b4f12a199c062f3efdd288afcbce8`](./contracts/ethereum-1/0x1a7e4e63778b4f12a199c062f3efdd288afcbce8/) | ⚠️ Unaudited |
| BridgedDecentralizedEURO | operational_periphery | base | n/a | [`0x1b5f7fa46ed0f487f049c42f374ca4827d65a264`](./contracts/base-8453/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264/) | ⚠️ Unaudited |
| BridgedDEPS | operational_periphery | base | n/a | [`0x5f674bf6d559229bdd29d642d2e0978f1e282722`](./contracts/base-8453/0x5f674bf6d559229bdd29d642d2e0978f1e282722/) | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | n/a | [`0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | token | polygon | n/a | 4 deployments: polygon [`0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/); polygon `0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d`; polygon `0x578360adf0bbb2f10ec9cec7ef89ef495511ed5f`; polygon `0x71b821aa52a49f32eed535fca6eb5aa130085978` | ⚠️ Unaudited |
| ClonableBeaconProxy | registry | arbitrum | n/a | [`0x5e85faf503621830ca857a5f38b982e0cc57d537`](./contracts/arbitrum-42161/0x5e85faf503621830ca857a5f38b982e0cc57d537/) | ⚠️ Unaudited |
| CoinLendingGateway | core_logic | ethereum | n/a | [`0x1da37d613fb590eed37520b72e9c6f0f6eee89d2`](./contracts/ethereum-1/0x1da37d613fb590eed37520b72e9c6f0f6eee89d2/) | ⚠️ Unaudited |
| EUR | unknown | ethereum | n/a | [`0x3231cb76718cdef2155fc47b5286d82e6eda273f`](./contracts/ethereum-1/0x3231cb76718cdef2155fc47b5286d82e6eda273f/) | ⚠️ Unaudited |
| EURSToken | token | ethereum | n/a | [`0xdb25f211ab05b1c97d595516f45794528a807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/) | ⚠️ Unaudited |
| FPSWrapper | unknown | ethereum | n/a | [`0x5052d3cc819f53116641e89b96ff4cd1ee80b182`](./contracts/ethereum-1/0x5052d3cc819f53116641e89b96ff4cd1ee80b182/) | ⚠️ Unaudited |
| Frankencoin | unknown | ethereum | n/a | [`0xb58e61c3098d85632df34eecfb899a1ed80921cb`](./contracts/ethereum-1/0xb58e61c3098d85632df34eecfb899a1ed80921cb/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| HadronToken | token | ethereum | n/a | [`0x50753cfaf86c094925bf976f218d043f8791e408`](./contracts/ethereum-1/0x50753cfaf86c094925bf976f218d043f8791e408/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x02398771fd1db790ef2b656ca3bcb3075f27a72c`](./contracts/ethereum-1/0x02398771fd1db790ef2b656ca3bcb3075f27a72c/) | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| SavingsVaultDEURO | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x1e9f008b1c538be32f190516735bf1c634b4fa40`](./contracts/ethereum-1/0x1e9f008b1c538be32f190516735bf1c634b4fa40/); ethereum `0x75beb37a3c86ee4c38931e2a9319e078da612979` | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xc581b735a1688071a1746c968e0798d642ede491`](./contracts/ethereum-1/0xc581b735a1688071a1746c968e0798d642ede491/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x42243231fb4a64a5bcfc7f4b7a9ad92576804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xc2ff25dd99e467d2589b2c26edd270f220f14e47`](./contracts/polygon-137/0xc2ff25dd99e467d2589b2c26edd270f220f14e47/) | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 3 deployments: polygon [`0x313d009888329c9d1cf4f75ca3f32566335bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/); polygon `0x5a2fdf906ada9353ebe496fa5d351b39f8908d19`; polygon `0x9d74de101e2a54ad42198f37bdcce0a0160acacb` | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | n/a | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| VNXManager | governance | ethereum | n/a | [`0xcdb3867935247049e87c38ea270edd305d84c9ae`](./contracts/ethereum-1/0xcdb3867935247049e87c38ea270edd305d84c9ae/) | ⚠️ Unaudited |
| VNXProxyAdmin | governance | ethereum | n/a | [`0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400`](./contracts/ethereum-1/0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (74)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x042b24bb81660cf6b3db649aa0596e69e5174a81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x071b13ab779fae6ac1d1beceeccaf7369a251036` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cde500e6940931ed190ded77bb48640c9486392` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d43c529aab2a3c1bca65827eb5136c3276f0820` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e5dfe570e5637f7b6b43f515b30dd08fbfcb9ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11e2a300c7075815b2d3a88e7581c9e493d2c923` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13e6574730e4ae1b425967db30e9d5dd5bcdde06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x167144d66ac1d02eaafca3649ef3305ea31ee5a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x183e337c473d18550257aefe371f74dc523eb09e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18a885ff670c831c88ba47c129c24ffb4b5d6b7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c17d67706423735b8bbf5b234d63b872bd584c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1faa6f84d5cf021a9c3d12d05fad2c31645f02cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2155877da05c52368b830bfd56e96405a2668d8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x233db75eae26359b406e327504b6be4ad77cbfe3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2353d16869f717bfcd22dabc0adbf4dca62c609f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e7e62e0bea9f9e0d5957550d147bf1dd4580880` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ff32972bdd637f90f73fbfd0b91d4904dd295e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34c9c643becd939c950bb9f141e35777559817cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35f72854df481662365494b5241e0376937e16a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ea4e0542ab3220b3c514d041ecea51ca93baa9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fd2c5067da1f41cf16d8a0230efacbb7369d53f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4125cd1f826099a4dead6b7746f7f28b30d8402b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x422d17ccc1442501d039595ffcaaa71b4686bf4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4539b08a1f2f9efc8c3f66876eb8d8c1920a4e7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x496d5aa262f9f044769caf1a5303c89fb36adeef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4be1f1026fb4280f1ab3c35e16a38fb13c2faf4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d4badcaa7493099eccc07ccd15faf11dc9828ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54e55618ce94738689914036b98fac8b10e0fa16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54eb7ed5f98b7f498e3b59de9f2d3774394f42a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57724f65b3f914de7820c6f76b2099fa3a90f509` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6015bf147bcc9ae8515df6c571e58a4fa8afbf89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6196d618d97d01645c1fd03a0748800da16efbf3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63cf7c82460c5d84d10be2219d80f746d8706b7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x651be1476cc3eb2f2fb3667d7f2e483544f15265` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65faa41bd59cfd13f82efe8dc42ead720aa8a03b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ba75d640bebfe5da1197bb5a2aff3327789b5d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c91954e794f17ae65a3b9a9102c1d39b3b9e6be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ca959306afd548f3e2aee8afac8c9c146d8115c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d57b2e05f26c26b549231c866bdd39779e4a488` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e9e62eacad75e4b130db84f3bcba390dac47944` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x774681a648125d46f35017cf6cec43a41857254e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78c1b506b0c2520d2ccec6c05dacb33626d52938` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79d4f0232a66c4c91b89c76362016a1707cfbf4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a787023f6e18f979b143c79885323a24709b0d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a83d84801fe56570e942f6fef6657f2ae3ebdd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ba92741bf2a568abc6f1d3413c58c6e0244f8fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bbe8f18040af0032f4c2435e7a76db6f1e346df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e03cd583a42344b4028d77046ee1c4555f51566` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f0a5bf88eb3921b170048ecea528bd7cc6df70e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82d59b83b00475e009e913a6e470aea1e2dcc451` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a026c94501ca12e431cddd5203c1a38575e6f59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d8b5d8bd3fb93327747148edd036265be0fa020` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b8fd8fcfaa2438d11e7ed77d5afb6c2e1044b37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c39f027c9d67d6ddea9337ce8665e2ae06581f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa881be95479a669544d44de648562eca10b8762` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac493a8460ec3488a0c8cdc4069f30d5b9ca5370` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac8d2df1a86ce9ce9d2fddfcf62e112b12dabb67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb661bc8d0b7def1620e916740b7882910edbb4a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba2262f4f1b6fe052644416763de6ce17d04fa1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc5142e0cc5eb16b47c63b0f033d4c2480853a52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc279257f8c899b31d523450f12d163f8b9e81584` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc642549743a93674cf38d6431f75d6443f88e3e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd142bc58c689791a34861b5b0e1c5dffab22453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfa9b55ed2b0d97ac4f04f168b6670dd1bbe2080` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1976973e99b6e0e345a930270ad09dce6bcaa23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1d7193ce1aa7808d577058f48ef8289fc2f81fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdffbaf3ac08f265dc17c2b31a5824374b4bea65e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4fadbbf24f118b1e63d65f1aac2a825a07f7619` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb8b5eb45955e9ce610245ab5c0dd140a0f11c53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf38a10ee8b591e09208ff3d9b033abfbf5a6bf9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf72ee0d3a252ea41845ec1185d8495e2246e6ba6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7958b010226ae8791debfee6df3f20f7a13b623` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf93cb1a85db47fbd2e4b09ef7bdb3928eccddc54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa792ef15455552422c73aad53ef476102f87e65` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.chainsecurity.com/security-audit/deuro-smart-contracts](https://www.chainsecurity.com/security-audit/deuro-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [deuro_audit_report.pdf](https://github.com/d-EURO/landingPage/blob/develop/audits/deuro_audit_report.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 8 | n/a |
| [ChainSecurity_dEURO_dEURO_audit.pdf](https://github.com/d-EURO/landingPage/blob/develop/audits/ChainSecurity_dEURO_dEURO_audit.pdf) | ChainSecurity | Audit | 2025-04 | aging | Direct | contract_name | 11 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1a7e4e63778b4f12a199c062f3efdd288afcbce8`](./contracts/ethereum-1/0x1a7e4e63778b4f12a199c062f3efdd288afcbce8/) | AgEURNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1b5f7fa46ed0f487f049c42f374ca4827d65a264`](./contracts/base-8453/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264/) | BridgedDecentralizedEURO | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5f674bf6d559229bdd29d642d2e0978f1e282722`](./contracts/base-8453/0x5f674bf6d559229bdd29d642d2e0978f1e282722/) | BridgedDEPS | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ChildChainManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ChildERC1155 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/) | ChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5e85faf503621830ca857a5f38b982e0cc57d537`](./contracts/arbitrum-42161/0x5e85faf503621830ca857a5f38b982e0cc57d537/) | ClonableBeaconProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1da37d613fb590eed37520b72e9c6f0f6eee89d2`](./contracts/ethereum-1/0x1da37d613fb590eed37520b72e9c6f0f6eee89d2/) | CoinLendingGateway | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3231cb76718cdef2155fc47b5286d82e6eda273f`](./contracts/ethereum-1/0x3231cb76718cdef2155fc47b5286d82e6eda273f/) | EUR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb25f211ab05b1c97d595516f45794528a807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | EURSToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5052d3cc819f53116641e89b96ff4cd1ee80b182`](./contracts/ethereum-1/0x5052d3cc819f53116641e89b96ff4cd1ee80b182/) | FPSWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb58e61c3098d85632df34eecfb899a1ed80921cb`](./contracts/ethereum-1/0xb58e61c3098d85632df34eecfb899a1ed80921cb/) | Frankencoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50753cfaf86c094925bf976f218d043f8791e408`](./contracts/ethereum-1/0x50753cfaf86c094925bf976f218d043f8791e408/) | HadronToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02398771fd1db790ef2b656ca3bcb3075f27a72c`](./contracts/ethereum-1/0x02398771fd1db790ef2b656ca3bcb3075f27a72c/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e9f008b1c538be32f190516735bf1c634b4fa40`](./contracts/ethereum-1/0x1e9f008b1c538be32f190516735bf1c634b4fa40/) | SavingsVaultDEURO | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc581b735a1688071a1746c968e0798d642ede491`](./contracts/ethereum-1/0xc581b735a1688071a1746c968e0798d642ede491/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x42243231fb4a64a5bcfc7f4b7a9ad92576804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2ff25dd99e467d2589b2c26edd270f220f14e47`](./contracts/polygon-137/0xc2ff25dd99e467d2589b2c26edd270f220f14e47/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x313d009888329c9d1cf4f75ca3f32566335bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/) | UChildERC20Proxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | UChildUSDT0 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdb3867935247049e87c38ea270edd305d84c9ae`](./contracts/ethereum-1/0xcdb3867935247049e87c38ea270edd305d84c9ae/) | VNXManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400`](./contracts/ethereum-1/0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400/) | VNXProxyAdmin | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 74 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=19

Zero-match audit list:

- [2927] www.chainsecurity.com/security-audit/deuro-smart-contracts

Fork inheritance lineage and inherited audits are included when available.
