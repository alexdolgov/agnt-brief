# Agentic Audit Brief: Sudoswap

## Project Overview

- Project: Sudoswap (`sudoswap`)
- Website: [https://sudoswap.xyz](https://sudoswap.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.966Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, berachain, ethereum
- Contract surface: 66 unique implementations (66 raw deployments)
- DeFi Llama TVL: $881,107.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFT Marketplace. Structurally: 66 project-authored contract(s) across 4 chain(s); 5 ERC20 tokens, 9 ERC721 NFTs, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 18 common project-authored base contract(s) (erc721burnable, erc165, lssvmpairenumerable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 66; live-surface contracts included: 66 (66 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 20/65 (30.8%)
- Deployed-live implementations: 66 of 66 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 20/66
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 66
- Raw deployments: 66
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 20 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 24.6% (Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 16 | 24.2% | 2023-06 |
| ABDK | Tier 2 | 15 | 22.7% | 2022-04 |
| Spearbit | Tier 1 | 13 | 19.7% | 2023-04 |
| Narya | Tier 2 | 9 | 13.6% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ExponentialCurve | unknown | ethereum | n/a | [`0x432f96...7d9841`](./contracts/ethereum-1/0x432f962d8209781da23fb37b6b59ee15de7d9841/) | ✅ Audited |
| GDACurve | unknown | ethereum | n/a | [`0x1fd587...ff6b67`](./contracts/ethereum-1/0x1fd5876d4a3860eb0159055a3b7cb79fdfff6b67/) | ✅ Audited |
| LinearCurve | unknown | ethereum | n/a | [`0x5b6ac5...f883ee`](./contracts/ethereum-1/0x5b6ac51d9b1cede0068a1b26533cace807f883ee/) | ✅ Audited |
| LSSVMPairEnumerableERC20 | unknown | ethereum | n/a | [`0xd42638...5541eb`](./contracts/ethereum-1/0xd42638863462d2f21bb7d4275d7637ee5d5541eb/) | ✅ Audited |
| LSSVMPairEnumerableETH | unknown | ethereum | n/a | [`0x08ce97...b3ef05`](./contracts/ethereum-1/0x08ce97807a81896e85841d74fb7e7b065ab3ef05/) | ✅ Audited |
| LSSVMPairERC1155ERC20 | unknown | berachain | n/a | [`0x4806e6...8351cb`](./contracts/berachain-80094/0x4806e67061a4288d710e2c5af0db79833a8351cb/) | ✅ Audited |
| LSSVMPairERC1155ETH | unknown | base | n/a | [`0x2286e6...e21581`](./contracts/base-8453/0x2286e66cc3b3f15ae6d88164f618f98f1ce21581/) | ✅ Audited |
| LSSVMPairERC721ERC20 | unknown | base | n/a | [`0x37af63...3802de`](./contracts/base-8453/0x37af63b1c64bc93e48da17cc018ed2b5f63802de/) | ✅ Audited |
| LSSVMPairERC721ETH | unknown | base | n/a | [`0xa43d2f...6d5f17`](./contracts/base-8453/0xa43d2f748e73431983578a92ecd2d830126d5f17/) | ✅ Audited |
| LSSVMPairFactory | unknown | arbitrum | n/a | [`0x4f1627...a96b51`](./contracts/arbitrum-42161/0x4f1627be4c72aeb9565d4c751550c4d262a96b51/) | ✅ Audited |
| LSSVMPairMissingEnumerableERC20 | unknown | ethereum | n/a | [`0x92de3a...755b22`](./contracts/ethereum-1/0x92de3a1511ef22abcf3526c302159882a4755b22/) | ✅ Audited |
| LSSVMPairMissingEnumerableETH | unknown | ethereum | n/a | [`0xcd80c9...436d56`](./contracts/ethereum-1/0xcd80c916b1194beb48abf007d0b79a7238436d56/) | ✅ Audited |
| LSSVMRouter | unknown | ethereum | n/a | [`0x2b2e8c...d68329`](./contracts/ethereum-1/0x2b2e8cda09bba9660dca5cb6233787738ad68329/) | ✅ Audited |
| MaxTxSizeHook | unknown | arbitrum | n/a | [`0xc166aa...e22f10`](./contracts/arbitrum-42161/0xc166aa039e9e9898643154420e53880d22e22f10/) | ✅ Audited |
| PropertyCheckerFactory | unknown | ethereum | n/a | [`0x031b21...99afc1`](./contracts/ethereum-1/0x031b216fabec82310fea3426b33455609b99afc1/) | ✅ Audited |
| RoyaltyEngine | unknown | berachain | n/a | [`0x0b846b...f8d534`](./contracts/berachain-80094/0x0b846b2c739726012d1b9dd7ac5a1231b2f8d534/) | ✅ Audited |
| StandardSettingsFactory | unknown | ethereum | n/a | [`0xf4f439...b3c2c7`](./contracts/ethereum-1/0xf4f439a6a152cfecb1f34d726d490f82bcb3c2c7/) | ✅ Audited |
| VeryFastRouter | unknown | ethereum | n/a | [`0x090c23...028b65`](./contracts/ethereum-1/0x090c236b62317db226e6ae6cd4c0fd25b7028b65/) | ✅ Audited |
| WrappedSudoPool | unknown | base | n/a | [`0x4b1f0d...8246e8`](./contracts/base-8453/0x4b1f0d7a960ef84181aeddd78e919a933e8246e8/) | ✅ Audited |
| XykCurve | unknown | ethereum | n/a | [`0x7942e2...eb1da0`](./contracts/ethereum-1/0x7942e264e21c5e6cbba45fe50785a15d3beb1da0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbitrumReceiver | unknown | arbitrum | n/a | [`0x705fd2...6aeed2`](./contracts/arbitrum-42161/0x705fd2868348df3ea3f560e52b00c4c3df6aeed2/) | ⚠️ Unaudited |
| Blockmon | unknown | ethereum | n/a | [`0xaf4882...b33e15`](./contracts/ethereum-1/0xaf488234796ca27dba8ecf17f803ea1f4ab33e15/) | ⚠️ Unaudited |
| DoomRewarder | unknown | ethereum | n/a | [`0x7166e7...ff84e5`](./contracts/ethereum-1/0x7166e7db426228ba180694e0621613fc84ff84e5/) | ⚠️ Unaudited |
| ERC721Batcher | unknown | ethereum | n/a | [`0xf83eee...0f0207`](./contracts/ethereum-1/0xf83eee39e723526605d784917b6e38ebcf0f0207/) | ⚠️ Unaudited |
| ERC721Sender | unknown | ethereum | n/a | [`0x006dd6...f3b218`](./contracts/ethereum-1/0x006dd6c488e90180d7346db5a026fd747af3b218/) | ⚠️ Unaudited |
| HashmaskSwapper | unknown | ethereum | n/a | [`0x078d3b...517452`](./contracts/ethereum-1/0x078d3b62e82b5cee3ebdc0754cda976230517452/) | ⚠️ Unaudited |
| Lockdrop | unknown | ethereum | n/a | [`0xada31f...9865c2`](./contracts/ethereum-1/0xada31f59e70ad18665380f21ce49d4c43f9865c2/) | ⚠️ Unaudited |
| MonImageRegistry | unknown | ethereum | n/a | [`0x2d824d...a13e67`](./contracts/ethereum-1/0x2d824d66e1b7ba0f73b5caf75886abf812a13e67/) | ⚠️ Unaudited |
| MonMinter | unknown | ethereum | n/a | [`0x042774...e0f750`](./contracts/ethereum-1/0x0427743df720801825a5c82e0582b1e915e0f750/) | ⚠️ Unaudited |
| MonSpawner | unknown | ethereum | n/a | [`0x4fad5d...dfc868`](./contracts/ethereum-1/0x4fad5ddc4e0186b932e27baa7d37d97457dfc868/) | ⚠️ Unaudited |
| MonStaker2 | unknown | ethereum | n/a | [`0xd06337...c3c1c0`](./contracts/ethereum-1/0xd06337a401b468657de2f9d3e390ce5b21c3c1c0/) | ⚠️ Unaudited |
| MonStaker3 | unknown | ethereum | n/a | [`0xa3300b...1c3197`](./contracts/ethereum-1/0xa3300bfc13556fa5146ffde34e92a0230a1c3197/) | ⚠️ Unaudited |
| Multicall3 | unknown | ethereum | n/a | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| MultiRouter | unknown | ethereum | n/a | [`0x306262...dfb6c8`](./contracts/ethereum-1/0x3062627136de797f807bcb63f0d5399a21dfb6c8/) | ⚠️ Unaudited |
| Multisender | unknown | ethereum | n/a | [`0xc653e1...f3ad1f`](./contracts/ethereum-1/0xc653e1b3a971078812a72d11c45ad71e00f3ad1f/) | ⚠️ Unaudited |
| NFGas | unknown | ethereum | n/a | [`0x5c7704...9b4077`](./contracts/ethereum-1/0x5c770425aeb064135b5e625d46b12619189b4077/) | ⚠️ Unaudited |
| NFGasNames | unknown | ethereum | n/a | [`0x0f2f1b...cfe031`](./contracts/ethereum-1/0x0f2f1b0959fcfa6556f8b9479b996ecbb3cfe031/) | ⚠️ Unaudited |
| NFTClaim | unknown | ethereum | n/a | [`0xe354ac...9f027c`](./contracts/ethereum-1/0xe354ac0bb78a8013617fe0efa6099769749f027c/) | ⚠️ Unaudited |
| Nftdns | unknown | ethereum | n/a | [`0xe37bb1...6218da`](./contracts/ethereum-1/0xe37bb18b86d228831a61872f5df3b5f24b6218da/) | ⚠️ Unaudited |
| NFTLottery | unknown | ethereum | n/a | [`0x3baa5a...e344fb`](./contracts/ethereum-1/0x3baa5ab805c7888e7a92cf6d32c20938ede344fb/) | ⚠️ Unaudited |
| NFTLotteryPool | unknown | ethereum | n/a | [`0x19dd2b...f4cd87`](./contracts/ethereum-1/0x19dd2b11b886a88aecf30f1c804e86c4daf4cd87/) | ⚠️ Unaudited |
| NFTLotteryPoolFactory | unknown | ethereum | n/a | [`0xabd9c0...105026`](./contracts/ethereum-1/0xabd9c0bd5628c90db7a8cf787c2580d1ef105026/) | ⚠️ Unaudited |
| NFTLotteryURI | unknown | ethereum | n/a | [`0x2031bd...8f9251`](./contracts/ethereum-1/0x2031bd6c7861509ab48bf338e280a401ee8f9251/) | ⚠️ Unaudited |
| Nftnft | unknown | ethereum | n/a | [`0x537edf...c7ba40`](./contracts/ethereum-1/0x537edfb50100974af813f263ca7714ecc4c7ba40/) | ⚠️ Unaudited |
| NFTStaker | unknown | ethereum | n/a | [`0xc5802b...3339af`](./contracts/ethereum-1/0xc5802bcf619301bdc6b1b9eda4b6fd26e63339af/) | ⚠️ Unaudited |
| OptimismReceiver | unknown | base | n/a | [`0x53f0e3...c38bc1`](./contracts/base-8453/0x53f0e31e2b8084ce4dd5991ecf157b181fc38bc1/) | ⚠️ Unaudited |
| OrderBhook | unknown | base | n/a | [`0xd4e0c0...871856`](./contracts/base-8453/0xd4e0c048d92267693fe36dfcf80034c9b7871856/) | ⚠️ Unaudited |
| PenguSVG | unknown | ethereum | n/a | [`0x25b505...e05afb`](./contracts/ethereum-1/0x25b5058670211a6c39f821d01aa51f4671e05afb/) | ⚠️ Unaudited |
| ProtoCards0 | unknown | ethereum | n/a | [`0xa1c07d...9348a3`](./contracts/ethereum-1/0xa1c07dc4086af57db39821fd50417fda449348a3/) | ⚠️ Unaudited |
| RNGDistributor | unknown | ethereum | n/a | [`0x8d514c...2fa546`](./contracts/ethereum-1/0x8d514cf4912c7ed280afe4cdf2738ef9282fa546/) | ⚠️ Unaudited |
| S3KS | unknown | ethereum | n/a | [`0xaed0c0...01801d`](./contracts/ethereum-1/0xaed0c09de6f851c1ff7540ecdc239c0e4b01801d/) | ⚠️ Unaudited |
| Salt | unknown | ethereum | n/a | [`0xc17030...342d93`](./contracts/ethereum-1/0xc17030798a6d6e1a76382cf8f439182eb0342d93/) | ⚠️ Unaudited |
| SaltTokenURI | unknown | ethereum | n/a | [`0x4e4c16...ea4747`](./contracts/ethereum-1/0x4e4c16079d67c8058c89f1f8ce711c8b00ea4747/) | ⚠️ Unaudited |
| skunk | unknown | ethereum | n/a | [`0x7fff03...cb1d96`](./contracts/ethereum-1/0x7fff0326e0de62676f1bf60af435cbe1c7cb1d96/) | ⚠️ Unaudited |
| SudoGovernor | unknown | ethereum | n/a | [`0x6853f8...b7eeb0`](./contracts/ethereum-1/0x6853f8865ba8e9fbd9c8cce3155ce5023fb7eeb0/) | ⚠️ Unaudited |
| SudoToken | unknown | ethereum | n/a | [`0x3446dd...5ab7f9`](./contracts/ethereum-1/0x3446dd70b2d52a6bf4a5a192d9b0a161295ab7f9/) | ⚠️ Unaudited |
| SVGGenerator2 | unknown | ethereum | n/a | [`0x1036f5...87776a`](./contracts/ethereum-1/0x1036f5c5278358ea004e6530a86e4b968687776a/) | ⚠️ Unaudited |
| TestRoyaltyRegistry | unknown | berachain | n/a | [`0x3f66e7...c6d667`](./contracts/berachain-80094/0x3f66e7cc503d5902ec1a65a8ec6b3f01dcc6d667/) | ⚠️ Unaudited |
| Unexpected | unknown | ethereum | n/a | [`0xa3a835...462d22`](./contracts/ethereum-1/0xa3a83528d0aa752f3bbe2b6877e222ed02462d22/) | ⚠️ Unaudited |
| XMON | unknown | ethereum | n/a | [`0x3aada3...70bf74`](./contracts/ethereum-1/0x3aada3e213abf8529606924d8d1c55cbdc70bf74/) | ⚠️ Unaudited |
| XToken | unknown | ethereum | n/a | [`0xb7acb1...dfcc3c`](./contracts/ethereum-1/0xb7acb10b6e1d15d2e5760a9fb328e10008dfcc3c/) | ⚠️ Unaudited |
| XTokenClonable | unknown | ethereum | n/a | [`0x925297...b864b0`](./contracts/ethereum-1/0x925297edcb4893d0d914e6d28f49381d47b864b0/) | ⚠️ Unaudited |
| XTokenFactory | unknown | ethereum | n/a | [`0xa76cee...929881`](./contracts/ethereum-1/0xa76cee17463bd34df43418e9b1acdf508e929881/) | ⚠️ Unaudited |
| XXMON | unknown | ethereum | n/a | [`0x0b5c90...6ab2f3`](./contracts/ethereum-1/0x0b5c9081e818e3b2cf677e7f42391de34d6ab2f3/) | ⚠️ Unaudited |
| ZeroExRouter | unknown | ethereum | n/a | [`0xb7a994...c10cd3`](./contracts/ethereum-1/0xb7a9942ecd1349793b72c246c3be7d6210c10cd3/) | ⚠️ Unaudited |
| ZeroExRouter2 | unknown | ethereum | n/a | [`0x608276...cd4664`](./contracts/ethereum-1/0x608276a7becb0f26a9a986b339033a3b74cd4664/) | ⚠️ Unaudited |

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
| [abdk-audit-amm.pdf](https://github.com/sudoswap/audits/blob/main/abdk-audit-amm.pdf) | ABDK | Audit | 2022-04 | stale | Direct | contract_name | 15 | high |
| [spearbit-audit-amm.pdf](https://github.com/sudoswap/audits/blob/main/spearbit-audit-amm.pdf) | Spearbit | Audit | 2022-01 | stale | Direct | contract_name | 11 | high |
| [cyfrin.pdf](https://github.com/sudoswap/v2-audits/blob/main/cyfrin.pdf) | Cyfrin | Audit | 2023-06 | stale | Direct | contract_name | 16 | high |
| [narya.pdf](https://github.com/sudoswap/v2-audits/blob/main/narya.pdf) | Narya | Audit | 2023-02 | stale | Direct | contract_name | 9 | high |
| [spearbit.pdf](https://github.com/sudoswap/v2-audits/blob/main/spearbit.pdf) | Spearbit | Audit | 2023-04 | stale | Direct | contract_name | 13 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x705fd2...6aeed2`](./contracts/arbitrum-42161/0x705fd2868348df3ea3f560e52b00c4c3df6aeed2/) | ArbitrumReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf4882...b33e15`](./contracts/ethereum-1/0xaf488234796ca27dba8ecf17f803ea1f4ab33e15/) | Blockmon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7166e7...ff84e5`](./contracts/ethereum-1/0x7166e7db426228ba180694e0621613fc84ff84e5/) | DoomRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf83eee...0f0207`](./contracts/ethereum-1/0xf83eee39e723526605d784917b6e38ebcf0f0207/) | ERC721Batcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x006dd6...f3b218`](./contracts/ethereum-1/0x006dd6c488e90180d7346db5a026fd747af3b218/) | ERC721Sender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x078d3b...517452`](./contracts/ethereum-1/0x078d3b62e82b5cee3ebdc0754cda976230517452/) | HashmaskSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xada31f...9865c2`](./contracts/ethereum-1/0xada31f59e70ad18665380f21ce49d4c43f9865c2/) | Lockdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d824d...a13e67`](./contracts/ethereum-1/0x2d824d66e1b7ba0f73b5caf75886abf812a13e67/) | MonImageRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x042774...e0f750`](./contracts/ethereum-1/0x0427743df720801825a5c82e0582b1e915e0f750/) | MonMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fad5d...dfc868`](./contracts/ethereum-1/0x4fad5ddc4e0186b932e27baa7d37d97457dfc868/) | MonSpawner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd06337...c3c1c0`](./contracts/ethereum-1/0xd06337a401b468657de2f9d3e390ce5b21c3c1c0/) | MonStaker2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3300b...1c3197`](./contracts/ethereum-1/0xa3300bfc13556fa5146ffde34e92a0230a1c3197/) | MonStaker3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x306262...dfb6c8`](./contracts/ethereum-1/0x3062627136de797f807bcb63f0d5399a21dfb6c8/) | MultiRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc653e1...f3ad1f`](./contracts/ethereum-1/0xc653e1b3a971078812a72d11c45ad71e00f3ad1f/) | Multisender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c7704...9b4077`](./contracts/ethereum-1/0x5c770425aeb064135b5e625d46b12619189b4077/) | NFGas | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f2f1b...cfe031`](./contracts/ethereum-1/0x0f2f1b0959fcfa6556f8b9479b996ecbb3cfe031/) | NFGasNames | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe354ac...9f027c`](./contracts/ethereum-1/0xe354ac0bb78a8013617fe0efa6099769749f027c/) | NFTClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe37bb1...6218da`](./contracts/ethereum-1/0xe37bb18b86d228831a61872f5df3b5f24b6218da/) | Nftdns | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3baa5a...e344fb`](./contracts/ethereum-1/0x3baa5ab805c7888e7a92cf6d32c20938ede344fb/) | NFTLottery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19dd2b...f4cd87`](./contracts/ethereum-1/0x19dd2b11b886a88aecf30f1c804e86c4daf4cd87/) | NFTLotteryPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabd9c0...105026`](./contracts/ethereum-1/0xabd9c0bd5628c90db7a8cf787c2580d1ef105026/) | NFTLotteryPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2031bd...8f9251`](./contracts/ethereum-1/0x2031bd6c7861509ab48bf338e280a401ee8f9251/) | NFTLotteryURI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x537edf...c7ba40`](./contracts/ethereum-1/0x537edfb50100974af813f263ca7714ecc4c7ba40/) | Nftnft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5802b...3339af`](./contracts/ethereum-1/0xc5802bcf619301bdc6b1b9eda4b6fd26e63339af/) | NFTStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x53f0e3...c38bc1`](./contracts/base-8453/0x53f0e31e2b8084ce4dd5991ecf157b181fc38bc1/) | OptimismReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd4e0c0...871856`](./contracts/base-8453/0xd4e0c048d92267693fe36dfcf80034c9b7871856/) | OrderBhook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25b505...e05afb`](./contracts/ethereum-1/0x25b5058670211a6c39f821d01aa51f4671e05afb/) | PenguSVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1c07d...9348a3`](./contracts/ethereum-1/0xa1c07dc4086af57db39821fd50417fda449348a3/) | ProtoCards0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d514c...2fa546`](./contracts/ethereum-1/0x8d514cf4912c7ed280afe4cdf2738ef9282fa546/) | RNGDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaed0c0...01801d`](./contracts/ethereum-1/0xaed0c09de6f851c1ff7540ecdc239c0e4b01801d/) | S3KS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc17030...342d93`](./contracts/ethereum-1/0xc17030798a6d6e1a76382cf8f439182eb0342d93/) | Salt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e4c16...ea4747`](./contracts/ethereum-1/0x4e4c16079d67c8058c89f1f8ce711c8b00ea4747/) | SaltTokenURI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fff03...cb1d96`](./contracts/ethereum-1/0x7fff0326e0de62676f1bf60af435cbe1c7cb1d96/) | skunk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6853f8...b7eeb0`](./contracts/ethereum-1/0x6853f8865ba8e9fbd9c8cce3155ce5023fb7eeb0/) | SudoGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3446dd...5ab7f9`](./contracts/ethereum-1/0x3446dd70b2d52a6bf4a5a192d9b0a161295ab7f9/) | SudoToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1036f5...87776a`](./contracts/ethereum-1/0x1036f5c5278358ea004e6530a86e4b968687776a/) | SVGGenerator2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x3f66e7...c6d667`](./contracts/berachain-80094/0x3f66e7cc503d5902ec1a65a8ec6b3f01dcc6d667/) | TestRoyaltyRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3a835...462d22`](./contracts/ethereum-1/0xa3a83528d0aa752f3bbe2b6877e222ed02462d22/) | Unexpected | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aada3...70bf74`](./contracts/ethereum-1/0x3aada3e213abf8529606924d8d1c55cbdc70bf74/) | XMON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7acb1...dfcc3c`](./contracts/ethereum-1/0xb7acb10b6e1d15d2e5760a9fb328e10008dfcc3c/) | XToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x925297...b864b0`](./contracts/ethereum-1/0x925297edcb4893d0d914e6d28f49381d47b864b0/) | XTokenClonable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa76cee...929881`](./contracts/ethereum-1/0xa76cee17463bd34df43418e9b1acdf508e929881/) | XTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b5c90...6ab2f3`](./contracts/ethereum-1/0x0b5c9081e818e3b2cf677e7f42391de34d6ab2f3/) | XXMON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7a994...c10cd3`](./contracts/ethereum-1/0xb7a9942ecd1349793b72c246c3be7d6210c10cd3/) | ZeroExRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x608276...cd4664`](./contracts/ethereum-1/0x608276a7becb0f26a9a986b339033a3b74cd4664/) | ZeroExRouter2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=64

Fork inheritance lineage and inherited audits are included when available.
