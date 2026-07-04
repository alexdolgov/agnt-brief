# Agentic Audit Brief: Euler

## Project Overview

- Project: Euler (`euler`)
- Website: [https://www.euler.finance](https://www.euler.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:13.640Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: bsc, ethereum, plasma, sonic, unichain
- Contract surface: 109 unique implementations (109 raw deployments)
- DeFi Llama TVL: $1,573,690,679.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 108 project-authored contract(s) across 5 chain(s); 6 ERC4626 vaults, 9 ERC20 tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 50 common project-authored base contract(s) (feemodule, shared, evcutil). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 109; live-surface contracts included: 109 (109 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 53/105 (50.5%)
- Deployed-live implementations: 109 of 109 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 55/109
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 109
- Raw deployments: 109
- Audits discovered: 81 (81 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 66
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 11 fresh, 34 aging, 34 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 55 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 35.2% (Certora, ChainSecurity, Cyfrin, MixBytes, OpenZeppelin, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 32 | 29.4% | 2026-02 |
| OpenZeppelin | Tier 1 | 29 | 26.6% | 2024-06 |
| Spearbit | Tier 1 | 26 | 23.9% | 2025-11 |
| ChainSecurity | Tier 1 | 23 | 21.1% | 2025-03 |
| Omniscia | Tier 2 | 21 | 19.3% | 2024-05 |
| Certora | Tier 1 | 4 | 3.7% | 2025-07 |
| Pashov Audit Group | Tier 2 | 4 | 3.7% | 2025-11 |
| Cyfrin | Tier 1 | 3 | 2.8% | 2025-05 |
| MixBytes | Tier 1 | 3 | 2.8% | 2025-04 |
| Paladin | Tier 2 | 3 | 2.8% | 2025-01 |
| Sigma Prime | Tier 2 | 3 | 2.8% | 2025-07 |
| Trail of Bits | Tier 1 | 3 | 2.8% | 2024-01 |
| BailSec | Tier 2 | 2 | 1.8% | 2026-03 |
| Electisec | Tier 2 | 1 | 0.9% | 2025-02 |
| Enigma Ventures | Tier 2 | 1 | 0.9% | 2024-10 |
| Hunter Security | Tier 2 | 1 | 0.9% | 2024-01 |
| Team Omega | Tier 2 | 1 | 0.9% | 2024-02 |
| Zellic | Tier 2 | 1 | 0.9% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (55)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BalanceForwarder | unknown | unichain | n/a | [`0x52b18f...42312f`](./contracts/unichain-130/0x52b18f2ea23b1bacf8867eef1af34916f942312f/) | ✅ Audited |
| Borrowing | unknown | ethereum | n/a | [`0x639156...605acf`](./contracts/ethereum-1/0x639156f8feb0cd88205e4861a0224ec169605acf/) | ✅ Audited |
| CapRiskSteward | unknown | unichain | n/a | [`0x288943...97fba6`](./contracts/unichain-130/0x288943b893bfc700a3fc18da65dc11871d97fba6/) | ✅ Audited |
| ChronicleOracle | unknown | ethereum | n/a | [`0x420a98...e0d9c6`](./contracts/ethereum-1/0x420a9855fa5fe985b9a6458780214a2700e0d9c6/) | ✅ Audited |
| CrossAdapter | unknown | ethereum | n/a | [`0x02dd5b...9528d7`](./contracts/ethereum-1/0x02dd5b7ab536629d2235276abcdf8eb3af9528d7/) | ✅ Audited |
| DToken | unknown | ethereum | n/a | [`0x03601e...6975d7`](./contracts/ethereum-1/0x03601edc8af4b0439d63eb3a45ed11b01c6975d7/) | ✅ Audited |
| EdgeFactoryPerspective | unknown | bsc | n/a | [`0x546d1e...12c7e5`](./contracts/bsc-56/0x546d1e3c430c712a610df311727529aa6512c7e5/) | ✅ Audited |
| ERC20BurnableMintable | unknown | bsc | n/a | [`0x2117e8...6bffad`](./contracts/bsc-56/0x2117e8b79e8e176a670c9fcf945d4348556bffad/) | ✅ Audited |
| EthereumVaultConnector | unknown | ethereum | n/a | [`0x0c9a3d...9ee383`](./contracts/ethereum-1/0x0c9a3dd6b8f28529d72d7f9ce918d493519ee383/) | ✅ Audited |
| EToken | unknown | ethereum | n/a | [`0x090c75...0d56cf`](./contracts/ethereum-1/0x090c752b7b26d3cc382bf532ec9c4403c80d56cf/) | ✅ Audited |
| Eul | unknown | ethereum | n/a | [`0xd9fcd9...aae07b`](./contracts/ethereum-1/0xd9fcd98c322942075a5c3860693e9f4f03aae07b/) | ✅ Audited |
| EulerEarn | unknown | ethereum | n/a | [`0x253453...a4daab`](./contracts/ethereum-1/0x253453bc43f0b961528c9cbc18a3ae3de0a4daab/) | ✅ Audited |
| EulerEarnFactory | unknown | ethereum | n/a | [`0x9a20d3...1e3427`](./contracts/ethereum-1/0x9a20d3c0c283646e9701a049a2f8c152bc1e3427/) | ✅ Audited |
| EulerFactoryPerspective | unknown | ethereum | n/a | [`0x866708...d4a74f`](./contracts/ethereum-1/0x8667082f128fa13139b859c1b40b4c8014d4a74f/) | ✅ Audited |
| EulerFixedCyclicalBinaryIRMFactory | unknown | bsc | n/a | [`0x5151a8...caaffb`](./contracts/bsc-56/0x5151a8125b91a220ffe8fea2ab2815b46ecaaffb/) | ✅ Audited |
| EulerKinkIRMFactory | unknown | unichain | n/a | [`0x34f3ec...6a2538`](./contracts/unichain-130/0x34f3ecd35e05b0554b6f4ee5ba3a373add6a2538/) | ✅ Audited |
| EulerRouterFactory | unknown | ethereum | n/a | [`0x70b3f6...72326a`](./contracts/ethereum-1/0x70b3f6f61b7bf237df04589ddaa842121072326a/) | ✅ Audited |
| EulerSwap | unknown | ethereum | n/a | [`0x05d6c4...ea92ee`](./contracts/ethereum-1/0x05d6c4d46a794468f282469c0e9346f121ea92ee/) | ✅ Audited |
| EulerSwapFactory | unknown | bsc | n/a | [`0x3e378e...d28cc7`](./contracts/bsc-56/0x3e378e5e339df5e0da32964f9eec2cdb90d28cc7/) | ✅ Audited |
| EulerSwapManagement | unknown | bsc | n/a | [`0x88b077...d2f7d7`](./contracts/bsc-56/0x88b077130b43a19942c641b66a50418b02d2f7d7/) | ✅ Audited |
| EulerSwapPeriphery | unknown | ethereum | n/a | [`0x208ff5...d16b06`](./contracts/ethereum-1/0x208ff5eb543814789321daa1b5eb551881d16b06/) | ✅ Audited |
| EulerSwapProtocolFeeConfig | unknown | bsc | n/a | [`0x71dfb7...e3b9a1`](./contracts/bsc-56/0x71dfb7138192b19cdc73487212bf6bb1ffe3b9a1/) | ✅ Audited |
| EulerSwapRegistry | unknown | sonic | n/a | [`0x0601a3...b8cf93`](./contracts/sonic-146/0x0601a38324d3cde22ebd531c799ad318a6b8cf93/) | ✅ Audited |
| EVault | unknown | sonic | n/a | [`0x11f95a...dcf46f`](./contracts/sonic-146/0x11f95aaa59f1ad89576c61e3c9cd24df1fdcf46f/) | ✅ Audited |
| FactoryGovernor | unknown | ethereum | n/a | [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/) | ✅ Audited |
| FeeFlowController | unknown | unichain | n/a | [`0x87beec...69240c`](./contracts/unichain-130/0x87beecc6b609723b2ef071c20aa756846969240c/) | ✅ Audited |
| FeeFlowControllerUtil | unknown | bsc | n/a | [`0x20d7b4...299555`](./contracts/bsc-56/0x20d7b41c7b00dedbf8eff88a3c3832b5cf299555/) | ✅ Audited |
| FixedRateOracle | unknown | ethereum | n/a | [`0x14c855...759a05`](./contracts/ethereum-1/0x14c855046e91e91033aaff3191ea6717fb759a05/) | ✅ Audited |
| GenericFactory | unknown | plasma | n/a | [`0x423882...deeea3`](./contracts/plasma-9745/0x42388213c6f56d7e1477632b58ae6bba9adeeea3/) | ✅ Audited |
| Governance | unknown | ethereum | n/a | [`0x04cb46...5adfde`](./contracts/ethereum-1/0x04cb462a121e1799722fe84c60e790b64d5adfde/) | ✅ Audited |
| GovernorAccessControlEmergencyFactory | unknown | unichain | n/a | [`0x4f74de...75d987`](./contracts/unichain-130/0x4f74ded1980096c44b5fee2a697b4b05ac75d987/) | ✅ Audited |
| Initialize | unknown | bsc | n/a | [`0x653a5b...18637a`](./contracts/bsc-56/0x653a5b70da20bdee19ee58ce671704bfb418637a/) | ✅ Audited |
| Installer | unknown | ethereum | n/a | [`0x271828...e025d3`](./contracts/ethereum-1/0x27182842e098f60e3d576794a5bffb0777e025d3/) | ✅ Audited |
| IRMClassMajor | unknown | ethereum | n/a | [`0xd75870...38572b`](./contracts/ethereum-1/0xd75870dcbd1521e6cad7566fbca35d72e238572b/) | ✅ Audited |
| IRMClassMega | unknown | ethereum | n/a | [`0x894c74...08de2d`](./contracts/ethereum-1/0x894c7499f240c0e0205c56d26a5d609c8408de2d/) | ✅ Audited |
| IRMClassMidCap | unknown | ethereum | n/a | [`0xf058fe...107318`](./contracts/ethereum-1/0xf058fe816b01265d1ba0a3bd226049676b107318/) | ✅ Audited |
| IRMClassOHM | unknown | ethereum | n/a | [`0x89e8f6...959bef`](./contracts/ethereum-1/0x89e8f69c302d352d37de10019a69df4f7f959bef/) | ✅ Audited |
| IRMClassStable | unknown | ethereum | n/a | [`0x42ec0e...e9ee89`](./contracts/ethereum-1/0x42ec0eb1d2746a9f2739d7501c5d5608bde9ee89/) | ✅ Audited |
| IRMClassUSDT | unknown | ethereum | n/a | [`0xfd310b...0cf8ea`](./contracts/ethereum-1/0xfd310b00523707e6b3a9ba83c3d6eac3350cf8ea/) | ✅ Audited |
| IRMDefault | unknown | ethereum | n/a | [`0x680049...dd38f7`](./contracts/ethereum-1/0x68004911694ec42f0c56b7144a6a5281ffdd38f7/) | ✅ Audited |
| Liquidation | unknown | ethereum | n/a | [`0x16fa62...2ad23c`](./contracts/ethereum-1/0x16fa62d8c322a6156fb5ef267342a3c7952ad23c/) | ✅ Audited |
| MintBurnOFTAdapter | unknown | bsc | n/a | [`0x163326...af95b4`](./contracts/bsc-56/0x1633269308f154fbecbb15f91d72d2afa6af95b4/) | ✅ Audited |
| OFTAdapterUpgradeable | unknown | ethereum | n/a | [`0x3bf1bd...0fc5b5`](./contracts/ethereum-1/0x3bf1bd5db4457d22a85d45791b6291b98d0fc5b5/) | ✅ Audited |
| ProtocolConfig | unknown | sonic | n/a | [`0x03dce6...60c91e`](./contracts/sonic-146/0x03dce683f0d77018b133e238cf9d4bea5360c91e/) | ✅ Audited |
| PublicAllocator | unknown | unichain | n/a | [`0x68a823...e557a9`](./contracts/unichain-130/0x68a823a484a9d5a8dabb55c4d4d8006a45e557a9/) | ✅ Audited |
| PythOracle | unknown | ethereum | n/a | [`0x0081d8...873193`](./contracts/ethereum-1/0x0081d84174d84ee37973fc553b2a3a0101873193/) | ✅ Audited |
| RateProviderOracle | unknown | ethereum | n/a | [`0x013f30...5451b5`](./contracts/ethereum-1/0x013f30a593718d962c0ceede0a66f5f9ef5451b5/) | ✅ Audited |
| RedstoneCoreOracle | unknown | ethereum | n/a | [`0x03ed90...472dac`](./contracts/ethereum-1/0x03ed909ab6102c3f1bb9c665839ae580ac472dac/) | ✅ Audited |
| RewardToken | unknown | sonic | n/a | [`0x09e6ca...518a80`](./contracts/sonic-146/0x09e6cab47b7199b9d3839a2c40654f246d518a80/) | ✅ Audited |
| RiskManager | unknown | ethereum | n/a | [`0x00d54f...0ca69d`](./contracts/ethereum-1/0x00d54f129293b1580c779c8f04b2d8ce370ca69d/) | ✅ Audited |
| Swapper | unknown | ethereum | n/a | [`0x2bba09...b728bf`](./contracts/ethereum-1/0x2bba09866b6f1025258542478c39720a09b728bf/) | ✅ Audited |
| SwapVerifier | unknown | sonic | n/a | [`0x003ef4...c9209f`](./contracts/sonic-146/0x003ef4048b45a5a79d4499aabd52108b3bc9209f/) | ✅ Audited |
| Token | unknown | bsc | n/a | [`0x21ed85...69863b`](./contracts/bsc-56/0x21ed851e3b5410646c943a93e44182c1e269863b/) | ✅ Audited |
| TrackingRewardStreams | unknown | ethereum | n/a | [`0x0d52d0...d7f8a3`](./contracts/ethereum-1/0x0d52d06ceb8dcdeeb40cfd9f17489b350dd7f8a3/) | ✅ Audited |
| Vault | unknown | ethereum | n/a | [`0xb4ad4d...7f0188`](./contracts/ethereum-1/0xb4ad4d9c02c01b01cf586c16f01c58c73c7f0188/) | ✅ Audited |

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountLens | unknown | bsc | n/a | [`0x2eed4e...3d8b51`](./contracts/bsc-56/0x2eed4e030dafb08f0264653d8a40f136733d8b51/) | ⚠️ Unaudited |
| AztecDistributor | unknown | ethereum | n/a | [`0xafcbe8...be8362`](./contracts/ethereum-1/0xafcbe81b8122e7b6e59e6df954af3aa37cbe8362/) | ⚠️ Unaudited |
| CapRiskStewardFactory | unknown | bsc | n/a | [`0x34718b...921079`](./contracts/bsc-56/0x34718b85452021df5403a38ce798d80921921079/) | ⚠️ Unaudited |
| EdgeFactory | unknown | sonic | n/a | [`0x0ddcb0...274a63`](./contracts/sonic-146/0x0ddcb0a765d09d86e526de7a9839398159274a63/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x73cb24...0c00cd`](./contracts/ethereum-1/0x73cb24f20ef23fd24d52969398c62ed6030c00cd/) | ⚠️ Unaudited |
| EscrowedCollateralPerspective | unknown | unichain | n/a | [`0x04e365...1c2185`](./contracts/unichain-130/0x04e3657867ee511778d25981764c90fbee1c2185/) | ⚠️ Unaudited |
| EscrowPerspective | unknown | ethereum | n/a | [`0x91f046...ead0c5`](./contracts/ethereum-1/0x91f046e629226b2c78b84fa1537603961aead0c5/) | ⚠️ Unaudited |
| EulDistributor | unknown | ethereum | n/a | [`0xd524e2...87a7e2`](./contracts/ethereum-1/0xd524e29e3baf5bb085403ca5665301e94387a7e2/) | ⚠️ Unaudited |
| EulDistributorOwner | unknown | ethereum | n/a | [`0x8e3204...c05b5d`](./contracts/ethereum-1/0x8e3204ae99605e6ffd2bc72d765f480bf0c05b5d/) | ⚠️ Unaudited |
| EulerBasePerspective | unknown | ethereum | n/a | [`0x4df63d...318c39`](./contracts/ethereum-1/0x4df63d20cb2a5faa5b9cb978089bdfccfd318c39/) | ⚠️ Unaudited |
| EulerClaims | unknown | ethereum | n/a | [`0x4ddce4...865f84`](./contracts/ethereum-1/0x4ddce44ab524f49b4050d9d59d7cf61cda865f84/) | ⚠️ Unaudited |
| EulerEarnFactoryPerspective | unknown | unichain | n/a | [`0x3e6aeb...1a4b82`](./contracts/unichain-130/0x3e6aeb84434f43c550f72d8f20982fc76a1a4b82/) | ⚠️ Unaudited |
| EulerEarnVault | unknown | ethereum | n/a | [`0x02122a...2dbd05`](./contracts/ethereum-1/0x02122afd2687ddb1dd3b9f2f2d7cc6fd422dbd05/) | ⚠️ Unaudited |
| EulerEarnVaultLens | unknown | sonic | n/a | [`0x0832b2...1e0fbf`](./contracts/sonic-146/0x0832b2a2060f878d3bf09eb3e600c982dd1e0fbf/) | ⚠️ Unaudited |
| EulerGeneralView | unknown | ethereum | n/a | [`0xacc25c...e68e42`](./contracts/ethereum-1/0xacc25c4d40651676feed43a3467f3169e3e68e42/) | ⚠️ Unaudited |
| EulerKinkyIRMFactory | unknown | unichain | n/a | [`0x80594d...c3b9f5`](./contracts/unichain-130/0x80594d095b69c7e8ac4b9fc00da59e0504c3b9f5/) | ⚠️ Unaudited |
| EulerSimpleLens | unknown | ethereum | n/a | [`0xc2d41d...20b38e`](./contracts/ethereum-1/0xc2d41d42939109cdcfa26c6965269d9c0220b38e/) | ⚠️ Unaudited |
| EulerUngovernedPerspective | unknown | ethereum | n/a | [`0x000d8a...b05875`](./contracts/ethereum-1/0x000d8aa9e414b9e7e7591a456ca910fb3bb05875/) | ⚠️ Unaudited |
| EulStakes | unknown | ethereum | n/a | [`0xc697bb...716cd3`](./contracts/ethereum-1/0xc697bb6625d9f7adcf0fbf0cbd4dcf50d8716cd3/) | ⚠️ Unaudited |
| EVKFactoryPerspective | unknown | unichain | n/a | [`0x5a2164...446c6b`](./contracts/unichain-130/0x5a2164c500f4fd26ab037d97a3ed5d0774446c6b/) | ⚠️ Unaudited |
| Exec | unknown | ethereum | n/a | [`0x0bf049...3bb44d`](./contracts/ethereum-1/0x0bf04952a5b3ef6bad343c2218f584a7413bb44d/) | ⚠️ Unaudited |
| Extractor | unknown | ethereum | n/a | [`0x05df5b...973377`](./contracts/ethereum-1/0x05df5bb999bac668713122b83fb5de75b6973377/) | ⚠️ Unaudited |
| Fee | unknown | ethereum | n/a | [`0x0009a4...46a0c9`](./contracts/ethereum-1/0x0009a4657c52ea648490aa06138b88ce0f46a0c9/) | ⚠️ Unaudited |
| FlashLoan | unknown | ethereum | n/a | [`0x07df2a...8259b3`](./contracts/ethereum-1/0x07df2ad9878f8797b4055230bbae5c808b8259b3/) | ⚠️ Unaudited |
| GovernableWhitelistPerspective | unknown | ethereum | n/a | [`0x232f49...eb9399`](./contracts/ethereum-1/0x232f49b73b3e1c65bccb1ff4874cadcd16eb9399/) | ⚠️ Unaudited |
| GovernedPerspective | unknown | sonic | n/a | [`0x044dc2...01e021`](./contracts/sonic-146/0x044dc2d44bc443c00f615cc453501f881e01e021/) | ⚠️ Unaudited |
| GovernorAccessControlEmergency | unknown | ethereum | n/a | [`0x088756...a63153`](./contracts/ethereum-1/0x088756eb730a08cbeb98dfe67ca74697a8a63153/) | ⚠️ Unaudited |
| Hooks | unknown | unichain | n/a | [`0x1ccc20...f22fde`](./contracts/unichain-130/0x1ccc20337effde5c53f2bf09eea881f568f22fde/) | ⚠️ Unaudited |
| IdleTranchesOracle | unknown | ethereum | n/a | [`0xfc15ec...427c62`](./contracts/ethereum-1/0xfc15ec9c88ca6fe3edd96465e7c4092e57427c62/) | ⚠️ Unaudited |
| IRMLens | unknown | ethereum | n/a | [`0x0a6bf6...8e7743`](./contracts/ethereum-1/0x0a6bf6c5bb7301fa6731261c6cfb65df778e7743/) | ⚠️ Unaudited |
| Markets | unknown | ethereum | n/a | [`0x12401f...b41477`](./contracts/ethereum-1/0x12401f97e2264adbf8ff98da72e3465d97b41477/) | ⚠️ Unaudited |
| MeanFinanceDistributor | unknown | ethereum | n/a | [`0x23e4a1...8eec59`](./contracts/ethereum-1/0x23e4a1a73fd3fe3c7f8596bb74886e6c478eec59/) | ⚠️ Unaudited |
| NttManager | unknown | ethereum | n/a | [`0x810055...37f0df`](./contracts/ethereum-1/0x810055eb83b59b736e27b7191d0a0abe6737f0df/) | ⚠️ Unaudited |
| OracleLens | unknown | unichain | n/a | [`0x0d5e95...3dc1a4`](./contracts/unichain-130/0x0d5e954c12b13d4f2fea583cda3c5a50253dc1a4/) | ⚠️ Unaudited |
| RadicleToken | unknown | ethereum | n/a | [`0x31c8ea...1e64a3`](./contracts/ethereum-1/0x31c8eacbffdd875c74b94b077895bd78cf1e64a3/) | ⚠️ Unaudited |
| Reverter | unknown | ethereum | n/a | [`0x0a71c1...76a9e0`](./contracts/ethereum-1/0x0a71c167d6fbdb6721f37e1d543b4baccb76a9e0/) | ⚠️ Unaudited |
| Rewards | unknown | unichain | n/a | [`0x094a3b...573305`](./contracts/unichain-130/0x094a3bc2125f882539b0bd9c87d37ca780573305/) | ⚠️ Unaudited |
| RewardsDistribution | unknown | ethereum | n/a | [`0xa9839d...610c43`](./contracts/ethereum-1/0xa9839d52e964d0ed0d6d546c27d2248fac610c43/) | ⚠️ Unaudited |
| SequenceRegistry | unknown | unichain | n/a | [`0x08799a...cd96db`](./contracts/unichain-130/0x08799a00bc4a74890d65f77828cd2bfbbfcd96db/) | ⚠️ Unaudited |
| SnapshotRegistry | unknown | unichain | n/a | [`0x01315b...e0341f`](./contracts/unichain-130/0x01315b1fa7e8a58d641c2c7f538654fa32e0341f/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x229443...5bde9e`](./contracts/ethereum-1/0x229443bf7f1297192394b7127427db172a5bde9e/) | ⚠️ Unaudited |
| Strategy | unknown | unichain | n/a | [`0x29d5fd...5fc06f`](./contracts/unichain-130/0x29d5fd6fc33365e24f59d6116feead98285fc06f/) | ⚠️ Unaudited |
| Swap | unknown | ethereum | n/a | [`0x4440a1...1f37af`](./contracts/ethereum-1/0x4440a1de1fbd7f9ebead7c3dd42a44e0031f37af/) | ⚠️ Unaudited |
| SwapHandler1Inch | unknown | ethereum | n/a | [`0x32673d...343065`](./contracts/ethereum-1/0x32673daa164f4a290ae1f75ddc6aea5a2d343065/) | ⚠️ Unaudited |
| SwapHandlerUniAutoRouter | unknown | ethereum | n/a | [`0xd16790...f9d04e`](./contracts/ethereum-1/0xd1679029ae81da676d9b5850feb6c8ee68f9d04e/) | ⚠️ Unaudited |
| SwapHub | unknown | ethereum | n/a | [`0xc57d9e...b478c8`](./contracts/ethereum-1/0xc57d9e4a688551d99645b49126e93589d4b478c8/) | ⚠️ Unaudited |
| TermsOfUseSigner | unknown | ethereum | n/a | [`0x9ba11a...aadcba`](./contracts/ethereum-1/0x9ba11acd88b79b657bdbd00b6de759718aaadcba/) | ⚠️ Unaudited |
| TimelockController | unknown | bsc | n/a | [`0x51d628...7e2def`](./contracts/bsc-56/0x51d6288ea3bc62d09c653e1eac0b70d7247e2def/) | ⚠️ Unaudited |
| TransceiverStructs | unknown | ethereum | n/a | [`0x5c43ee...5d5676`](./contracts/ethereum-1/0x5c43ee87e5ea1652e566e40949199942fe5d5676/) | ⚠️ Unaudited |
| UtilsLens | unknown | ethereum | n/a | [`0x009bd9...16a0d8`](./contracts/ethereum-1/0x009bd94ad5fa60e676bfd3a45b5305463216a0d8/) | ⚠️ Unaudited |
| VaultLens | unknown | sonic | n/a | [`0x0058f4...3795ee`](./contracts/sonic-146/0x0058f402aaa67868a682da1bdd2e08c7aa3795ee/) | ⚠️ Unaudited |
| WBTCOracle | unknown | ethereum | n/a | [`0xc87bfc...3e134e`](./contracts/ethereum-1/0xc87bfc9de10b45adb6d10945f612a3de5b3e134e/) | ⚠️ Unaudited |
| WithdrawalQueue | unknown | bsc | n/a | [`0x5e5fc5...042d72`](./contracts/bsc-56/0x5e5fc568eb424ede09584c6f1d0307f4a1042d72/) | ⚠️ Unaudited |
| WSTETHOracle | unknown | ethereum | n/a | [`0x4a9208...eebf5f`](./contracts/ethereum-1/0x4a9208bb40337ee983e2898ecb1009c763eebf5f/) | ⚠️ Unaudited |

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
| [Learn more](https://cantina.xyz/bounties/4d285eee-602e-440a-845e-25e155cec26a) | Spearbit | Audit | n/a | unknown | Direct | contract_name | 1 | high |
| [Pashov_Audit_Group_report.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/euler-earn/blob/master/audits/Pashov_Audit_Group_report.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | contract_name | 3 | high |
| [Certora_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora_EulerEarn_report.pdf) | Certora | Audit | 2025-07 | aging | Direct | contract_name | 3 | high |
| [Sigma_Prime_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma_Prime_EulerEarn_report.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | contract_name | 3 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Certora_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | 3 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Sigma_Prime_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | 3 | high |
| [Omniscia Euler Earn Report](https://omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e) | Enigma Ventures | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Certora EulerEarn](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora%5FEulerEarn%5Freport.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | contract_name | 3 | high |
| [Sigma Prime EulerEarn](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma%5FPrime%5FEulerEarn%5Freport.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | contract_name | 3 | high |
| [Cyfrin EulerSwap](https://github.com/euler-xyz/euler-swap/blob/master/audits/2025-05-26-cyfrin-eulerswap-v2.0.pdf) | Cyfrin | Audit | 2025-05 | aging | Direct | contract_name | 3 | high |
| [Cantina Managed EulerSwap May 3](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-uniswap-euler-0422.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 3 | high |
| [| March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | (also discovered via alternate URL)](https://github.com/euler-xyz/euler-swap/blob/master/audits/ChainSecurity_EulerSwap_audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | 2 | high |
| [Cantina Managed EulerSwap Mar 29](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-euler-swap-050325.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 3 | high |
| [Fuzzland EulerSwap](https://github.com/euler-xyz/euler-swap/blob/master/audits/eulerswap-audit-report.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [report-cantinacode-euler-0901.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-euler-0901.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 2 | medium |
| [yAudit ERC4626 and Vault Securitize Report](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20ERC4626%20and%20Vault%20Securitize.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | 1 | high |
| [Pashov Group ERC4626 and Vault Securitize Report](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Pashov%20Group%20ERC4626%20and%20Vault%20Securitize.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | 1 | high |
| [| 2 December 2024 | EVK Periphery - ERC20 Burnable Mintable | BailSec | [BailSec ERC20BurnableMintable Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/BailSec%20ERC20BurnableMintable.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | 1 | high |
| [| 1 June 2025 | EUL ERC20 | BailSec | [BailSec EUL ERC20 Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/BailSec%20EUL%20ERC20.pdf) | BailSec | Audit | 2025-06 | aging | Direct | contract_name | 1 | high |
| [| 11 March 2026 | EVK Periphery (Oracle, Hook, SwapVerifier) | BailSec | [BailSec EVK Periphery Oracle Hook SwapVerifier Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/BailSec%20EVK%20Periphery%20Oracle%20Hook%20SwapVerifier.pdf) | BailSec | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [| 1 August 2025 | HookTargetMarketStatus | CD Security | [CD Security HookTargetMarketStatus Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/CD%20Security%20HookTargetMarketStatus.pdf) | CD Security | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [CDSecurity ERC20 Wrapper Locked.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/evk-periphery/blob/master/audits/CDSecurity%20ERC20%20Wrapper%20Locked.pdf) | CDSecurity | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [| 5 February 2025 | Adaptive IRM | Electisec | [Electisec Adaptive IRM Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Electisec%20Adaptive%20IRM.pdf) | Electisec | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [| 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Electisec%20ERC20Synth%20and%20auxiliary%20contracts.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [| 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Electisec%20GovernorAccessControlEmergencyFactory.pdf) | MixBytes | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |
| [| 22 April 2025 | CapRiskSteward | MixBytes | [MixBytes CapRiskSteward Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/MixBytes%20CapRiskSteward.pdf) | MixBytes | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [| 22 April 2025 | HookTargetStakeDelegator | MixBytes | [MixBytes HookTargetStakeDelegator Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/MixBytes%20HookTargetStakeDelegator.pdf) | MixBytes | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Paladin LayerZero Adapters.pdf](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Paladin%20LayerZero%20Adapters.pdf) | Paladin | Audit | 2025-01 | aging | Direct | contract_name | 3 | high |
| [| 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Spearbit%20ERC20Synth%20and%20auxiliary%20contracts.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [| 13 June 2025 | IRMLinearKinky | Supremacy | [Supremacy IRMLinearKinky Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Supremacy%20IRMLinearKinky.pdf) | Supremacy | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [| 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20EVK%20Custom%20Liquidator%20%26%20Selector%20Access%20Control.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [| 8 August 2024 | EVK Periphery - Vault Pause Guardian | yAudit | [yAudit - EVK Periphery - Vault Pause Guardian Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20EVK%20Periphery%20Guardians.pdf) | yAudit | Audit | 2024-08 | aging | Direct | contract_name | 1 | high |
| [| 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20EVK%20Periphery.pdf) | yAudit | Audit | 2024-06 | stale | Direct | contract_name | 7 | high |
| [| 20 September 2024 | EVK Periphery Forta Firewall hooks | yAudit - Forta Firewall Attestation hooks | [yAudit - EVK Periphery - Forta Firewall hooks Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20Euler%20Hook%20Target%20Firewall.pdf) | yAudit | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [yAudit SwapVerifier update.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20SwapVerifier%20update.pdf) | yAudit | Audit | 2026-02 | fresh | Direct | contract_name | 1 | high |
| [yAudit rEUL ERC20 Wrapper Locked.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20rEUL%20ERC20%20Wrapper%20Locked.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [yAudit_Euler_Deployment_Polygon_Avalanche_Report.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit_Euler_Deployment_Polygon_Avalanche_Report.pdf) | yAudit | Audit | n/a | unknown | Direct | contract_name | 4 | low |
| [Euler Rescue StrategyEuler07 November 2025 - 12 November 2025](https://cantina.xyz/portfolio/e77dbffc-abd5-46d6-9367-48fec99e0ab2) | Spearbit | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [Euler - PR111Euler26 October 2025 - 28 October 2025](https://cantina.xyz/portfolio/f145854a-327f-4f2c-a8bf-f61f95ae23dd) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | 3 | medium |
| [euler-swapEuler25 April 2025 - 29 April 2025](https://cantina.xyz/portfolio/05b16317-997e-4b78-8316-acb656e2a0e2) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | 3 | high |
| [| 18 February 2025 | EPO (PR#78, PR#79) | Electisec | [Electisec EPO Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_Electisec_Report.pdf) | Electisec | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [| 4 February 2025 | setLTV | Electisec | [Electisec setLTV Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Electisec_setLTV_report.pdf) | Electisec | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [| 20 January 2025 | EVK | Cantina | [M4rio.eth SetLTV Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/M4rio.eth_setLTV_report.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | 1 | low |
| [| 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_yAudit_OracleUpdate_Report.pdf) | yAudit | Audit | 2024-09 | aging | Direct | contract_name | 2 | high |
| [| 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | (also discovered via alternate URL)](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20yAudit%20Code%20Competition%20Fixes%20report.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | 1 | medium |
| [| 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() |](https://github.com/euler-legacy-xyz/origami-oracle-adapters/blob/main/audits/yAudit_origami_oracles.pdf) | yAudit | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [| 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/OpenZeppelin_Synths_report.pdf) | OpenZeppelin | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [| 9 May 2024 | Reward Streams | Mixbytes | [Mixbytes Reward Streams Report]() |](https://github.com/euler-xyz/reward-streams/blob/master/audits/Euler%20MixBytes%20report.pdf) | MixBytes | Audit | 2024-05 | stale | Direct | contract_name | 1 | high |
| [| 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() |](https://github.com/euler-xyz/reward-streams/blob/master/audits/Euler%20Hunter%20Security%20report.pdf) | MixBytes | Audit | 2024-05 | stale | Direct | contract_name | 1 | high |
| [| 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_ChainSecurity_Report.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name | 4 | high |
| [| 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() |](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20ChainSecurity%20report.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name | 4 | high |
| [| 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Spearbit_EVK_report.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | 12 | high |
| [| 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_Spearbit_Report_DRAFT.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | 4 | high |
| [| 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/OpenZeppelin_EVK_report.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | 13 | high |
| [| 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_OpenZeppelin_Report.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | 4 | high |
| [| 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/yAudit_EVK_report.pdf) | yAudit | Audit | 2024-03 | stale | Direct | contract_name | 21 | high |
| [| 18 March 2024 | EVC | Omniscia | [Omniscia EVC Report]() |](https://omniscia.io/reports/euler-finance-ethereum-vault-connector-6602c8d3423c1b0018ff01b6) | yAudit | Audit | 2024-03 | stale | Direct | contract_name | 1 | medium |
| [| 18 March 2024 | EVK | Omniscia | [Omniscia EVK Report]() |](https://omniscia.io/reports/euler-finance-vault-kit-66000e2fe7dba400187a4aed) | Omniscia | Audit | 2024-03 | stale | Direct | contract_name | 2 | medium |
| [| 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() |](https://omniscia.io/reports/euler-finance-evk-price-oracles-660812035fc1c30018641b22) | Omniscia | Audit | 2024-03 | stale | Direct | contract_name | 2 | high |
| [| 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() |](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20OpenZeppelin%20report.pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | contract_name | 4 | high |
| [| 7 March 2024 | EVK | Certora | [Certora EVK Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Certora_EVK_report.pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | contract_name | 20 | high |
| [| 19 February 2024 | FeeFlow | Ottersec - FeeFlow | [Ottersec FeeFlow Report]() |](https://github.com/euler-xyz/fee-flow/blob/main/audits/FeeFlow%20Ottersec%20Report.pdf) | Ottersec | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [| 12 February 2024 | FeeFlow | Team Omega | [Team Omega FeeFlow Report]() |](https://github.com/euler-xyz/fee-flow/blob/main/audits/FeeFlow%20Team%20Omega%20Report.pdf) | Team Omega | Audit | 2024-02 | stale | Direct | contract_name | 1 | high |
| [| 6 February 2024 | FeeFlow | Zellic | [Zellic FeeFlow Report]() |](https://github.com/euler-xyz/fee-flow/blob/main/audits/FeeFlow%20Zellic%20Report.pdf) | Zellic | Audit | 2024-02 | stale | Direct | contract_name | 1 | high |
| [EnigmaDark_EVK_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/EnigmaDark_EVK_report.pdf) | Enigma Ventures | Audit | 2024-03 | stale | Direct | contract_name | 1 | medium |
| [Euler Trail of Bits report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Trail%20of%20Bits%20report.pdf) | Trail of Bits | Audit | 2024-01 | stale | Direct | contract_name | 3 | high |
| [Euler Hunter Security report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Hunter%20Security%20report.pdf) | Hunter Security | Audit | 2024-01 | stale | Direct | contract_name | 1 | high |
| [Euler yAudit report (EVC).pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20yAudit%20report%20(EVC).pdf) | yAudit | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [Euler Certora report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Certora%20report.pdf) | Certora | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [Cantina_competition_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Cantina_competition_report.pdf) | Spearbit | Audit | 2024-11 | aging | Direct | contract_name | 5 | medium |
| [ChainSecurity_EVK_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/ChainSecurity_EVK_report.pdf) | ChainSecurity | Audit | 2024-06 | stale | Direct | contract_name | 13 | high |
| [Omniscia_EVK_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Omniscia_EVK_report.pdf) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | 13 | high |
| [yAudit_competition_fixes_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/yAudit_competition_fixes_report.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | 1 | medium |
| [Euler Cantina Code Competition report.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler%20Cantina%20Code%20Competition%20report.pdf) | Spearbit | Audit | 2024-11 | aging | Direct | contract_name | 5 | medium |
| [Euler_Price_Oracle_BailSec_Report.pdf](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_BailSec_Report.pdf) | BailSec | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [Euler_Price_Oracle_Omniscia_Report.pdf](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_Omniscia_Report.pdf) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | 3 | high |
| [Euler_Price_Oracle_yAudit_PendleOracle_Report.pdf](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_yAudit_PendleOracle_Report.pdf) | yAudit | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Euler_Price_Oracle_yAudit_Report.pdf](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_yAudit_Report.pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 21 | high |
| [Euler Omniscia report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Omniscia%20report.pdf) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | 4 | high |
| [Euler Spearbit report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Spearbit%20report.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | 4 | high |
| [Euler yAudit report (EVC + EVK + Price Oracle).pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20yAudit%20report%20(EVC%20%2B%20EVK%20%2B%20Price%20Oracle).pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 21 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x2eed4e...3d8b51`](./contracts/bsc-56/0x2eed4e030dafb08f0264653d8a40f136733d8b51/) | AccountLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xafcbe8...be8362`](./contracts/ethereum-1/0xafcbe81b8122e7b6e59e6df954af3aa37cbe8362/) | AztecDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x34718b...921079`](./contracts/bsc-56/0x34718b85452021df5403a38ce798d80921921079/) | CapRiskStewardFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0ddcb0...274a63`](./contracts/sonic-146/0x0ddcb0a765d09d86e526de7a9839398159274a63/) | EdgeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x04e365...1c2185`](./contracts/unichain-130/0x04e3657867ee511778d25981764c90fbee1c2185/) | EscrowedCollateralPerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91f046...ead0c5`](./contracts/ethereum-1/0x91f046e629226b2c78b84fa1537603961aead0c5/) | EscrowPerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd524e2...87a7e2`](./contracts/ethereum-1/0xd524e29e3baf5bb085403ca5665301e94387a7e2/) | EulDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e3204...c05b5d`](./contracts/ethereum-1/0x8e3204ae99605e6ffd2bc72d765f480bf0c05b5d/) | EulDistributorOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4df63d...318c39`](./contracts/ethereum-1/0x4df63d20cb2a5faa5b9cb978089bdfccfd318c39/) | EulerBasePerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ddce4...865f84`](./contracts/ethereum-1/0x4ddce44ab524f49b4050d9d59d7cf61cda865f84/) | EulerClaims | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x3e6aeb...1a4b82`](./contracts/unichain-130/0x3e6aeb84434f43c550f72d8f20982fc76a1a4b82/) | EulerEarnFactoryPerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02122a...2dbd05`](./contracts/ethereum-1/0x02122afd2687ddb1dd3b9f2f2d7cc6fd422dbd05/) | EulerEarnVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0832b2...1e0fbf`](./contracts/sonic-146/0x0832b2a2060f878d3bf09eb3e600c982dd1e0fbf/) | EulerEarnVaultLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xacc25c...e68e42`](./contracts/ethereum-1/0xacc25c4d40651676feed43a3467f3169e3e68e42/) | EulerGeneralView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x80594d...c3b9f5`](./contracts/unichain-130/0x80594d095b69c7e8ac4b9fc00da59e0504c3b9f5/) | EulerKinkyIRMFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2d41d...20b38e`](./contracts/ethereum-1/0xc2d41d42939109cdcfa26c6965269d9c0220b38e/) | EulerSimpleLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000d8a...b05875`](./contracts/ethereum-1/0x000d8aa9e414b9e7e7591a456ca910fb3bb05875/) | EulerUngovernedPerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc697bb...716cd3`](./contracts/ethereum-1/0xc697bb6625d9f7adcf0fbf0cbd4dcf50d8716cd3/) | EulStakes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x5a2164...446c6b`](./contracts/unichain-130/0x5a2164c500f4fd26ab037d97a3ed5d0774446c6b/) | EVKFactoryPerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bf049...3bb44d`](./contracts/ethereum-1/0x0bf04952a5b3ef6bad343c2218f584a7413bb44d/) | Exec | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05df5b...973377`](./contracts/ethereum-1/0x05df5bb999bac668713122b83fb5de75b6973377/) | Extractor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0009a4...46a0c9`](./contracts/ethereum-1/0x0009a4657c52ea648490aa06138b88ce0f46a0c9/) | Fee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07df2a...8259b3`](./contracts/ethereum-1/0x07df2ad9878f8797b4055230bbae5c808b8259b3/) | FlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x232f49...eb9399`](./contracts/ethereum-1/0x232f49b73b3e1c65bccb1ff4874cadcd16eb9399/) | GovernableWhitelistPerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x044dc2...01e021`](./contracts/sonic-146/0x044dc2d44bc443c00f615cc453501f881e01e021/) | GovernedPerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x088756...a63153`](./contracts/ethereum-1/0x088756eb730a08cbeb98dfe67ca74697a8a63153/) | GovernorAccessControlEmergency | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x1ccc20...f22fde`](./contracts/unichain-130/0x1ccc20337effde5c53f2bf09eea881f568f22fde/) | Hooks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc15ec...427c62`](./contracts/ethereum-1/0xfc15ec9c88ca6fe3edd96465e7c4092e57427c62/) | IdleTranchesOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a6bf6...8e7743`](./contracts/ethereum-1/0x0a6bf6c5bb7301fa6731261c6cfb65df778e7743/) | IRMLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12401f...b41477`](./contracts/ethereum-1/0x12401f97e2264adbf8ff98da72e3465d97b41477/) | Markets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23e4a1...8eec59`](./contracts/ethereum-1/0x23e4a1a73fd3fe3c7f8596bb74886e6c478eec59/) | MeanFinanceDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x810055...37f0df`](./contracts/ethereum-1/0x810055eb83b59b736e27b7191d0a0abe6737f0df/) | NttManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x0d5e95...3dc1a4`](./contracts/unichain-130/0x0d5e954c12b13d4f2fea583cda3c5a50253dc1a4/) | OracleLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31c8ea...1e64a3`](./contracts/ethereum-1/0x31c8eacbffdd875c74b94b077895bd78cf1e64a3/) | RadicleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a71c1...76a9e0`](./contracts/ethereum-1/0x0a71c167d6fbdb6721f37e1d543b4baccb76a9e0/) | Reverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x094a3b...573305`](./contracts/unichain-130/0x094a3bc2125f882539b0bd9c87d37ca780573305/) | Rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9839d...610c43`](./contracts/ethereum-1/0xa9839d52e964d0ed0d6d546c27d2248fac610c43/) | RewardsDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x08799a...cd96db`](./contracts/unichain-130/0x08799a00bc4a74890d65f77828cd2bfbbfcd96db/) | SequenceRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x01315b...e0341f`](./contracts/unichain-130/0x01315b1fa7e8a58d641c2c7f538654fa32e0341f/) | SnapshotRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x229443...5bde9e`](./contracts/ethereum-1/0x229443bf7f1297192394b7127427db172a5bde9e/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x29d5fd...5fc06f`](./contracts/unichain-130/0x29d5fd6fc33365e24f59d6116feead98285fc06f/) | Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4440a1...1f37af`](./contracts/ethereum-1/0x4440a1de1fbd7f9ebead7c3dd42a44e0031f37af/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32673d...343065`](./contracts/ethereum-1/0x32673daa164f4a290ae1f75ddc6aea5a2d343065/) | SwapHandler1Inch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd16790...f9d04e`](./contracts/ethereum-1/0xd1679029ae81da676d9b5850feb6c8ee68f9d04e/) | SwapHandlerUniAutoRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc57d9e...b478c8`](./contracts/ethereum-1/0xc57d9e4a688551d99645b49126e93589d4b478c8/) | SwapHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ba11a...aadcba`](./contracts/ethereum-1/0x9ba11acd88b79b657bdbd00b6de759718aaadcba/) | TermsOfUseSigner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c43ee...5d5676`](./contracts/ethereum-1/0x5c43ee87e5ea1652e566e40949199942fe5d5676/) | TransceiverStructs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x009bd9...16a0d8`](./contracts/ethereum-1/0x009bd94ad5fa60e676bfd3a45b5305463216a0d8/) | UtilsLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0058f4...3795ee`](./contracts/sonic-146/0x0058f402aaa67868a682da1bdd2e08c7aa3795ee/) | VaultLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc87bfc...3e134e`](./contracts/ethereum-1/0xc87bfc9de10b45adb6d10945f612a3de5b3e134e/) | WBTCOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e5fc5...042d72`](./contracts/bsc-56/0x5e5fc568eb424ede09584c6f1d0307f4a1042d72/) | WithdrawalQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a9208...eebf5f`](./contracts/ethereum-1/0x4a9208bb40337ee983e2898ecb1009c763eebf5f/) | WSTETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 105 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=55, low=2, medium=9
- Match method counts: extraction_exact=289

Zero-match audit list:

- [17257] Omniscia Euler Earn Report
- [17273] | 1 August 2025 | HookTargetMarketStatus | CD Security | [CD Security HookTargetMarketStatus Report]() |
- [17274] CDSecurity ERC20 Wrapper Locked.pdf
- [17275] | 5 February 2025 | Adaptive IRM | Electisec | [Electisec Adaptive IRM Report]() |
- [17276] | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() |
- [17279] | 22 April 2025 | HookTargetStakeDelegator | MixBytes | [MixBytes HookTargetStakeDelegator Report]() |
- [17281] | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() |
- [17282] | 13 June 2025 | IRMLinearKinky | Supremacy | [Supremacy IRMLinearKinky Report]() |
- [17286] | 20 September 2024 | EVK Periphery Forta Firewall hooks | yAudit - Forta Firewall Attestation hooks | [yAudit - EVK Periphery - Forta Firewall hooks Report]() |
- [17290] Euler Rescue StrategyEuler07 November 2025 - 12 November 2025
- [17295] | 18 February 2025 | EPO (PR#78, PR#79) | Electisec | [Electisec EPO Report]() |
- [17303] | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() |
- [17304] | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() |
- [17320] | 19 February 2024 | FeeFlow | Ottersec - FeeFlow | [Ottersec FeeFlow Report]() |
- [17336] Euler_Price_Oracle_yAudit_PendleOracle_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
