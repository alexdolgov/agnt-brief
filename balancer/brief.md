# Agentic Audit Brief: Balancer

## Export Authority

- Production state: **published scope**
- Raw selected rows: 45 across 22 audit(s)
- Eligible audit results: 43 (22 matched; 21 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Balancer (`balancer`)
- Website: [https://balancer.fi](https://balancer.fi)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, ethereum, fraxtal, gnosis, mode, optimism, plasma, polygon, polygon-zkevm
- Contract surface: 461 unique implementations (466 raw deployments)
- Coverage basis: 17/61 confirmed own live verified implementations (27.9%); conservative 27.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $176,902,882.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Balancer. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across arbitrum, avalanche, base, ethereum, fraxtal, gnosis, optimism, polygon, polygon-zkevm. Structural roles: 58 core, 2 unclassified, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: core (58), unclassified (2), supporting (1)
- Contract kinds: contract (59), unclassified (2)
- Detected standards: erc20 (8), erc20permit (8), erc165 (7), chainlinkaggregator (4), ownable (4), ownable2step (3), multicall (1)
- Frameworks: openzeppelin (55), chainlink (5), permit2 (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

6 of 146 contracts are derived from known codebases. 140 contracts have no detected origin.

### Forked Contracts

**BalancerMinter** (`0x239e55f427d44c3cc793f49bfb507ebe76638a2b`, chain 1)
Origin: stake-dao (`0x0c5538...325d4f`)
Containment: 82.4% - 14 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- getBalancerTokenAdmin()
- getGaugeController()

Removals (removed from original):
- addGaugeFactory(ILiquidityGaugeFactory)
- isValidGaugeFactory(ILiquidityGaugeFactory)
- removeGaugeFactory(ILiquidityGaugeFactory)

**FixedPriceLBPoolFactory** (`0xeb1aa94421aecfb1dc17ddb1068e4609c4be8758`, chain 1)
Origin: aura (`0xd9e91f...e6479e`)
Containment: 100.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Gyro2CLPPool** (`0x4ffecd2dab8703a74bd13ba10bce3419b9f5fa80`, chain 1)
Origin: balancer (`0x0a8afe...85dd5d`)
Containment: 71.4% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- getGyro2CLPPoolDynamicData()
- getGyro2CLPPoolImmutableData()

Removals (removed from original):
- getAmplificationParameter()
- getAmplificationState()
- getStablePoolDynamicData()
- getStablePoolImmutableData()
- startAmplificationParameterUpdate(uint256,uint256)
- stopAmplificationParameterUpdate()

**GyroECLPPoolFactory** (`0x04d584195a96dffc7f8b695aa3c9d3c1606b69d1`, chain 1)
Origin: balancer (`0x187a05...baa6ac`)
Containment: 88.2% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- create(string,string,TokenConfig[],IGyroECLPPool.EclpParams,IGyroECLPPool.DerivedEclpParams,PoolRoleAccounts,uint256,address,bool,bool,bytes32)

Removals (removed from original):
- create(string,string,TokenConfig[],uint256,PoolRoleAccounts,uint256,bool,bytes32)
- getStableSurgeHook()

**LBPoolFactory** (`0x02916d8f0891309806fcb347bf4191692cbddcaf`, chain 1)
Origin: aura (`0xd9e91f...e6479e`)
Containment: 85.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- create(string,string,LBPParams,uint256,bytes32,address)
- createWithMigration(string,string,LBPParams,uint256,bytes32,address,uint256,uint256,uint256,uint256)

Removals (removed from original):
- create(LBPCommonParams,uint256,uint256,bytes32,address)
- getMaxBptLockDuration()
- getMinReserveTokenMigrationWeight()

**StableSurgePoolFactory** (`0x187a05fb9e4234dd310ae74215743560d1baa6ac`, chain 1)
Origin: balancer (`0x02916d...bddcaf`)
Containment: 78.9% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- create(string,string,TokenConfig[],uint256,PoolRoleAccounts,uint256,bool,bytes32)
- getStableSurgeHook()

Removals (removed from original):
- create(string,string,LBPParams,uint256,bytes32,address)
- createWithMigration(string,string,LBPParams,uint256,bytes32,address,uint256,uint256,uint256,uint256)
- getMigrationRouter()
- getTrustedRouter()

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0f08eef2c785aa5e7539684af04755dec1347b7c`, chain 1)
- UnnamedContract (`0x1cd776897ef4f647bf8241ec69549e4a9cb1d608`, chain 1)
- UnnamedContract (`0x22625eedd92c81a219a83e1dc48f88d54786b017`, chain 1)
- UnnamedContract (`0x2a18b396829bc29f66a1e59fadd7a0269a6605e8`, chain 1)
- UnnamedContract (`0x2bbcbbfa1ce762b3794592d01f29bccc20dfda6e`, chain 1)
- UnnamedContract (`0x301ede5fd4f9d7266b09c3a2e38f97776447154b`, chain 1)
- UnnamedContract (`0x332694ef46d880df6ea9593e04cb8abee5f81d99`, chain 1)
- UnnamedContract (`0x355bd33f0033066bb3de396a6d069be57353ad95`, chain 1)
- UnnamedContract (`0x35ffb749b273beb20f40f35edeb805012c539864`, chain 1)
- UnnamedContract (`0x3b8ca519122cdd8efb272b0d3085453404b25bd0`, chain 1)
- UnnamedContract (`0x3ccd78683effffddc1a16f5553c896ac6d3ab7ff`, chain 1)
- UnnamedContract (`0x3f170631ed9821ca51a59d996ab095162438dc10`, chain 1)
- UnnamedContract (`0x4b4b45edf6ca26ae894377cf4fed1fa9f82d85c6`, chain 1)
- UnnamedContract (`0x4efcd8bce8ac9b94bd76648e2c85bef6c40f3228`, chain 1)
- UnnamedContract (`0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5`, chain 1)
- UnnamedContract (`0x5939ab16fdf1991b0ef603c639b6b501a7841fab`, chain 1)
- UnnamedContract (`0x5c6fb490bdfd3246eb0bb062c168decaf4bd9fdd`, chain 1)
- UnnamedContract (`0x5d06d6e11ae3790ce1c7c3054c3f7eb0789859bc`, chain 1)
- UnnamedContract (`0x5dbad78818d4c8958eff2d5b95b28385a22113cd`, chain 1)
- UnnamedContract (`0x5efbb12f01f27f0e020565866effc1da491e91a4`, chain 1)
- UnnamedContract (`0x6642863979e66d995717a2b836a121700595069a`, chain 1)
- UnnamedContract (`0x67f8df125b796b05895a6dc8ecf944b9556ecb0b`, chain 1)
- UnnamedContract (`0x6a5127ae6df32f722e34b5b4abc67b0d4e582b39`, chain 1)
- UnnamedContract (`0x715c777c6149c31a75d0d29633bbbe0a14370bdc`, chain 1)
- UnnamedContract (`0x74a1b9fe5b1151a80e4de22f79cf73ef358d2086`, chain 1)
- UnnamedContract (`0x765ce16dbb3d7e89a9bebc834c5d6894e7faa93c`, chain 1)
- UnnamedContract (`0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94`, chain 1)
- UnnamedContract (`0x816e90dc85bf016455017a76bc09cc0451eeb308`, chain 1)
- UnnamedContract (`0x83bf399fa3dc49af8fb5c34031a50c7c93f56129`, chain 1)
- UnnamedContract (`0x83e443ef4f9963c77bd860f94500075556668cb8`, chain 1)
- UnnamedContract (`0x866d4b65694c66fbfd15dd6fa933d0a6b3940a36`, chain 1)
- UnnamedContract (`0x8902f9c211f91c84da2076f633873f8266dcecc6`, chain 1)
- UnnamedContract (`0x89ef89fd9a6ec73bce588f309c1f65c406d2891c`, chain 1)
- UnnamedContract (`0x8d75fa0348fd940c70ea0ee5b4d9f7d3d45dc5cc`, chain 1)
- UnnamedContract (`0x8df9796dd15ac3a451ee994dd1979bea99fb5387`, chain 1)
- UnnamedContract (`0x8f42adbba1b16eaae3bb5754915e0d06059add75`, chain 1)
- UnnamedContract (`0x90bd26fbb9db17d75b56e4ca3a4c438fa7c93694`, chain 1)
- UnnamedContract (`0x90e065b28c9b7464b44f185f5a6b8e4b4c827f2a`, chain 1)
- UnnamedContract (`0x9179c06629ef7f17cb5759f501d89997fe0e7b45`, chain 1)
- UnnamedContract (`0x94f68b54191f62f781fe8298a8a5fa3ed772d227`, chain 1)
- UnnamedContract (`0x95bc5ca62ed018b5206342479ded82e18e46dcbf`, chain 1)
- UnnamedContract (`0x96484f2abf5e58b15176dbf1a799627b53f13b6d`, chain 1)
- UnnamedContract (`0x9958317b80ee5f10457017d54c2484d722059157`, chain 1)
- UnnamedContract (`0xa1d0791a41318c775707c56eae247af81a05322c`, chain 1)
- UnnamedContract (`0xa1e9e74bbdbde4b8f9f624e71641f54e3b7f11bf`, chain 1)
- UnnamedContract (`0xa331d84ec860bf466b4cdccfb4ac09a1b43f3ae6`, chain 1)
- UnnamedContract (`0xa3d11a39dea14d245659816d35456b89ffbfb744`, chain 1)
- UnnamedContract (`0xa731c23d7c95436baaae9d52782f966e1ed07cc8`, chain 1)
- UnnamedContract (`0xa98bce70c92ad2ef3288dbcd659bc0d6b62f8f13`, chain 1)
- UnnamedContract (`0xac27df81663d139072e615855ef9ab0af3fbd281`, chain 1)
- UnnamedContract (`0xad901309d9e9dbc5df19c84f729f429f0189a633`, chain 1)
- UnnamedContract (`0xae563e3f8219521950555f5962419c8919758ea2`, chain 1)
- UnnamedContract (`0xb2007b8b7e0260042517f635cfd8e6dd2dd7f007`, chain 1)
- UnnamedContract (`0xb21a277466e7db6934556a1ce12eb3f032815c8a`, chain 1)
- UnnamedContract (`0xb496ff44746a8693a060fafd984da41b253f6790`, chain 1)
- UnnamedContract (`0xb96524227c4b5ab908fc3d42005fe3b07aba40e9`, chain 1)
- UnnamedContract (`0xb9d01ca61b9c181da1051bfdd28e1097e920ab14`, chain 1)
- UnnamedContract (`0xba3af3fc98498174868507560838ee03d961e033`, chain 1)
- UnnamedContract (`0xbdbadc891bb95dee80ebc491699228ef0f7d6ff1`, chain 1)
- UnnamedContract (`0xc00ff743b73346c9a4c40509e0550ffc18e5426d`, chain 1)
- UnnamedContract (`0xc05ff9851c2a000f3c319d2986d8712317583b79`, chain 1)
- UnnamedContract (`0xc128468b7ce63ea702c1f104d55a2566b13d3abd`, chain 1)
- UnnamedContract (`0xc128a9954e6c874ea3d62ce62b468ba073093f25`, chain 1)
- UnnamedContract (`0xc57b4be50bf6bbe5f6a4fe379da342b32b37bf2f`, chain 1)
- UnnamedContract (`0xca734ad0b286ea7dd6367a504a48fb75cd12a97f`, chain 1)
- UnnamedContract (`0xcb3fe6cc529101af5880a05429729f967501c9e7`, chain 1)
- UnnamedContract (`0xcc8d5475e7a3c65e29af30e5f89f14f5722e7cda`, chain 1)
- UnnamedContract (`0xd22eecbb495380ef52b1ccef1ca594979885d484`, chain 1)
- UnnamedContract (`0xd53f5d8d926fb2a0f7be614b16e649b8ac102d83`, chain 1)
- UnnamedContract (`0xd5584b37d1845ffed958c2d94bc675603ddcce68`, chain 1)
- UnnamedContract (`0xdaa273aeec06e9ccb7428a77e2abb1e4659b16d2`, chain 1)
- UnnamedContract (`0xdada7be438bdd89416f4802b679e320b15c92d49`, chain 1)
- UnnamedContract (`0xdbb8ad38c990bd4ca2c88a6e6cfdf5045b0d4fb0`, chain 1)
- UnnamedContract (`0xdeba7d498ccf617c06f53ee110c2cfc65cec0ece`, chain 1)
- UnnamedContract (`0xe0f34c6ad719e6877062b7d97e12c61c096509af`, chain 1)
- UnnamedContract (`0xe42c2e153bb0a8899b59c73f5ff941f9742f1197`, chain 1)
- UnnamedContract (`0xe5f96070ca00cd54795416b1a4b4c2403231c548`, chain 1)
- UnnamedContract (`0xe912c791f7c4b6323efba294f66c0de93c50eb5f`, chain 1)
- UnnamedContract (`0xe9b0a3bc48178d7fe2f5453c8bc1415d73f966d0`, chain 1)
- UnnamedContract (`0xed5ba579bb5d516263ff6e1c10fcac1040075fe2`, chain 1)
- UnnamedContract (`0xf1665e19bc105be4edd3739f88315cc699cc5b65`, chain 1)
- UnnamedContract (`0xf5decdb1f3d1ee384908fbe16d2f0348ae43a9ea`, chain 1)
- UnnamedContract (`0xfa80c17ee7e382c9c541bfa4bea0514e46dccba5`, chain 1)
- UnnamedContract (`0xfc2986feab34713e659da84f3b1fa32c1da95832`, chain 1)
- UnnamedContract (`0xfeb1a24c2752e53576133cdb718f25bc64ebdd52`, chain 1)
- AggregatorRouter (`0x309abcaefa19ca6d34f0d8ff4a4103317c138657`, chain 1)
- ArbitrumRootGauge (`0x6337949cbc4825bbd09242c811770f6f6fee9ffc`, chain 1)
- ArbitrumRootGaugeFactory (`0x1c99324edc771c82a0dccb780cc7dda0045e50e7`, chain 1)
- AuthorizerWithAdaptorValidation (`0x6048a8c631fb7e77eca533cf9c29784e482391e7`, chain 1)
- AvalancheRootGauge (`0x3eae4a1c2e36870a006e816930d9f55df0a72a13`, chain 1)
- AvalancheRootGaugeFactory (`0x10f3e79911a490aa5b5d5cda6f111029c4eab5ac`, chain 1)
- BalancerTokenAdmin (`0xf302f9f50958c5593770fdf4d4812309ff77414f`, chain 1)
- BALTokenHolderFactory (`0xb848f50141f3d4255b37ac288c25c109104f2158`, chain 1)
- BaseRootGauge (`0x9a4d642b9876231bb9062559521a48097abfe6cb`, chain 1)
- BaseRootGaugeFactory (`0x8e3b64b3737097f283e965869e3503aa20f31e4d`, chain 1)
- BatchRouter (`0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1`, chain 1)
- Boost Delegation V2.1 (`0x2cf8e145bdfe7c52b49ad9bb3c294a31b2736c59`, chain 1)
- ConstantPriceFeed (`0x99364f84d1c68d87aead0ce92eb47409a0c52c58`, chain 1)
- EclpLPOracle (`0xed9031a1300d721cf859ee2ba1f0fb33dc9928a2`, chain 1)
- FixedPriceLBPool (`0x179c68302a24e4e59667b3df7fb70c1c5dcec5d3`, chain 1)
- GaugeAdder (`0x2ffb7b215ae7f088ec2530c7aa8e1b24e398f26a`, chain 1)
- GaugeAdderMigrationCoordinator (`0x1b57f637ce3408f1f834b0b70f9a595b062daea7`, chain 1)
- GaugeWorkingBalanceHelper (`0xdab2583911e872a00a851fb80dcc78a4b46ba57c`, chain 1)
- GnosisRootGauge (`0x05277ce7d1e365d660624612d8b8b9b55bfd4518`, chain 1)
- GyroECLPPool (`0xc27d496a903c4328456f8a2de7457dcf4803cc4c`, chain 1)
- L2GaugeCheckpointer (`0x343688c5cb92115a52ca485af7f62b4b7a2e9ccc`, chain 1)
- LBPool (`0x0954601f4b1ffece41a411a66f4546620f121b8c`, chain 1)
- LiquidityGaugeFactory (`0x4e7bbd911cf1efa442bc1b2e9ea01ffe785412ec`, chain 1)
- MevCaptureHook (`0x1bca39b01f451b0a05d7030e6e6981a73b716b1c`, chain 1)
- OmniVotingEscrow (`0xe241c6e48ca045c7f631600a0f1403b2bfea05ad`, chain 1)
- OptimismRootGauge (`0xbc230b1a66a138cd9cfc7b352390025978dfadde`, chain 1)
- OptimismRootGaugeFactory (`0x3083a1c455ff38d39e58dbac5040f465cf73c5c8`, chain 1)
- OptimisticRootGauge (`0x37302b98918382c43a176e5f3bc7b11448cc6498`, chain 1)
- OptimisticRootGaugeFactory (`0x18cc3c68a5e64b40c846aa6e45312cbcbb94f71b`, chain 1)
- PolygonRootGauge (`0xe53d8f8aaafd95fcc7196e393ec5a907df44495e`, chain 1)
- PolygonRootGaugeFactory (`0x4c4287b07d293e361281bceee8715c8cdeb64e34`, chain 1)
- PolygonZkEVMRootGauge (`0x45bf48d996d22afc9bc150df7fb4d13a49088602`, chain 1)
- PolygonZkEVMRootGaugeFactory (`0x9bf951848288ccd87d06fac426150262cd3447de`, chain 1)
- ProtocolFeeController (`0x212f884252792ebaaa811fb0678444b21c7c2879`, chain 1)
- ProtocolFeeHelper (`0x5a962cdc2786875ca5c40adc09d874e4d6711a74`, chain 1)
- ReClammPool (`0x000ab3853737842bed7dabe3540e3e5336fe62a6`, chain 1)
- SingleRecipientGauge (`0x5d3d2d18148baace45d09254513bcf2c548c4480`, chain 1)
- SingleRecipientGaugeFactory (`0x4fb47126fa83a8734991e41b942ac29a3266c968`, chain 1)
- StableLPOracle (`0x4dcc26930a571d7a3f2f8e5e221f5f00810aa8dc`, chain 1)
- StablePool (`0x0a8afe82eb901cd5b19834ec9ed764ce4d85dd5d`, chain 1)
- StakelessGaugeCheckpointer (`0x0c8f71d19f87c0bd1b9bad2484ecc3388d5dbb98`, chain 1)
- TimelockAuthorizer (`0x9e3cd0606db55ac68845bb60121847823712ae05`, chain 1)
- TribeBALMinterCoordinator (`0x34ac9f7eba9213c827fe5abf5b09a16f4d0cc69b`, chain 1)
- VaultAdmin (`0x0e8b07657d719b86e06bf0806d6729e3d528c9a9`, chain 1)
- VaultExtension (`0xba1333333333a1ba1108e8412f11850a5c319ba9`, chain 1)
- veBALGaugeFixCoordinator (`0xee47ef369cda5a65639d7794b70a4d247826ddf3`, chain 1)
- veBALL2GaugeSetupCoordinator (`0xd13afc362f619b840c8f4aac1d957ce219ef37ca`, chain 1)
- VotingEscrowDelegationProxy (`0x6f5a2ee11e7a772aeb5114a20d0d7c0ff61eb8a0`, chain 1)
- Vyper_contract (`0x2e96068b3d5b5bae3d7515da4a1d2e52d08a2647`, chain 1)
- WeightedLPOracle (`0x09917922379404a25aba9183bcae7bab72e7e8ec`, chain 1)
- WeightedLPOracleFactory (`0x05503b3ade04aca81c8d6f88ecb73ba156982d2b`, chain 1)
- WeightedPool (`0x527d0e14acc53fb040debeae1cab973d23fb3568`, chain 1)
- WeightedPool2TokensFactory (`0xa5bf2ddf098bb0ef6d120c98217dd6b141c74ee0`, chain 1)
- WeightedPoolFactory (`0x201efd508c8dfe9de1a13c2452863a78cb2a86cc`, chain 1)
- WrappedBalancerPoolToken (`0x27ad56b2bfcb923091d80ca2d657aeba5ac3121c`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 61; live-surface rows included: 61 (61 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 145/145 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 17/61 (27.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 145 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 316 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 145 of 461 unique; 316 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 17/151
- Verified + Unaudited implementations: 134
- Verified by bytecode match: 0
- Unverified implementations: 310
- Unique implementations: 461
- Raw deployments: 466
- Audits discovered: 32 (32 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 17
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/balancer/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 4 fresh, 9 aging, 13 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 17 match-unverified
- Tier 1 coverage: 27.9% (Certora, OpenZeppelin, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Certora | Tier 1 | 15 | 9.9% | 2026-01 |
| Trail of Bits | Tier 1 | 7 | 4.6% | 2024-12 |
| Spearbit | Tier 1 | 5 | 3.3% | 2024-12 |
| OpenZeppelin | Tier 1 | 2 | 1.3% | 2021-10 |
| ABDK | Tier 2 | 1 | 0.7% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BatchRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-380276 | `0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1` | ✅ Audited |
| EclpLPOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380267 | `0xed9031a1300d721cf859ee2ba1f0fb33dc9928a2` | ✅ Audited |
| Gyro2CLPPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380181 | `0x4ffecd2dab8703a74bd13ba10bce3419b9f5fa80` | ✅ Audited |
| GyroECLPPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380244 | `0xc27d496a903c4328456f8a2de7457dcf4803cc4c` | ✅ Audited |
| GyroECLPPoolFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380135 | `0x04d584195a96dffc7f8b695aa3c9d3c1606b69d1` | ✅ Audited |
| LBPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380138 | `0x0954601f4b1ffece41a411a66f4546620f121b8c` | ✅ Audited |
| LBPoolFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380134 | `0x02916d8f0891309806fcb347bf4191692cbddcaf` | ✅ Audited |
| ProtocolFeeController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380152 | `0x212f884252792ebaaa811fb0678444b21c7c2879` | ✅ Audited |
| StableLPOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380176 | `0x4dcc26930a571d7a3f2f8e5e221f5f00810aa8dc` | ✅ Audited |
| StablePool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380140 | `0x0a8afe82eb901cd5b19834ec9ed764ce4d85dd5d` | ✅ Audited |
| StableSurgePoolFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380145 | `0x187a05fb9e4234dd310ae74215743560d1baa6ac` | ✅ Audited |
| TimelockAuthorizer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380220 | `0x9e3cd0606db55ac68845bb60121847823712ae05` | ✅ Audited |
| VaultAdmin | unknown | project_anchor | own_supporting | 1 | ethereum | unit-380277 | 2 deployments: ethereum `0x0e8b07657d719b86e06bf0806d6729e3d528c9a9`; ethereum `0x35ffb749b273beb20f40f35edeb805012c539864` | ✅ Audited |
| VaultExtension | unknown | project_anchor | own_supporting | 1 | ethereum | unit-380275 | `0xba1333333333a1ba1108e8412f11850a5c319ba9` | ✅ Audited |
| WeightedLPOracleFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380137 | `0x05503b3ade04aca81c8d6f88ecb73ba156982d2b` | ✅ Audited |
| WeightedPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380182 | `0x527d0e14acc53fb040debeae1cab973d23fb3568` | ✅ Audited |
| WeightedPoolFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380151 | `0x201efd508c8dfe9de1a13c2452863a78cb2a86cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (134)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggregatorBatchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1` | ⚠️ Unaudited |
| AggregatorRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380163 | `0x309abcaefa19ca6d34f0d8ff4a4103317c138657` | ⚠️ Unaudited |
| ArbitrumRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380191 | `0x6337949cbc4825bbd09242c811770f6f6fee9ffc` | ⚠️ Unaudited |
| ArbitrumRootGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380149 | `0x1c99324edc771c82a0dccb780cc7dda0045e50e7` | ⚠️ Unaudited |
| Authorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c` | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f3e0c4218b7b0108a3643cfe9d3ec0d4f57c54e` | ⚠️ Unaudited |
| AuthorizerAdaptorEntrypoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36cac20dd805d128c1a6dd16eea845c574b5a17c` | ⚠️ Unaudited |
| AuthorizerWithAdaptorValidation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380190 | `0x6048a8c631fb7e77eca533cf9c29784e482391e7` | ⚠️ Unaudited |
| AvalancheRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380171 | `0x3eae4a1c2e36870a006e816930d9f55df0a72a13` | ⚠️ Unaudited |
| AvalancheRootGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380143 | `0x10f3e79911a490aa5b5d5cda6f111029c4eab5ac` | ⚠️ Unaudited |
| BalancerContractRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86e67e115f96df37239e0479441303de0de7bc2b` | ⚠️ Unaudited |
| BalancerContractRegistryInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91f17800ca7dd29f2124d9d9ea8d4794693192c7` | ⚠️ Unaudited |
| BalancerFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1780e8185199dac45284039bb3e3b64060d943ab` | ⚠️ Unaudited |
| BalancerGaugeRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a1d08b715a79bbb0a2d2e1927e96c18a345586a` | ⚠️ Unaudited |
| BalancerGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba100000625a3754423978a60c9317c58a424e3d` | ⚠️ Unaudited |
| BalancerHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5addcca35b7a0d07c74063c48700c8590e87864e` | ⚠️ Unaudited |
| BalancerMinter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380154 | `0x239e55f427d44c3cc793f49bfb507ebe76638a2b` | ⚠️ Unaudited |
| BalancerPoolDataQueries | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf24917fb88261a37cc57f686ebc831a5c0b9fd39` | ⚠️ Unaudited |
| BalancerQueries | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe39b5e3b6d74016b2f6a9673d7d7493b6df549d5` | ⚠️ Unaudited |
| BalancerTokenAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380270 | `0xf302f9f50958c5593770fdf4d4812309ff77414f` | ⚠️ Unaudited |
| BALTokenHolderFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380234 | `0xb848f50141f3d4255b37ac288c25c109104f2158` | ⚠️ Unaudited |
| BaseRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380218 | `0x9a4d642b9876231bb9062559521a48097abfe6cb` | ⚠️ Unaudited |
| BaseRootGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380208 | `0x8e3b64b3737097f283e965869e3503aa20f31e4d` | ⚠️ Unaudited |
| BatchCheckpointer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf24917fb88261a37cc57f686ebc831a5c0b9fd39` | ⚠️ Unaudited |
| BatchRelayerLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1554ee754707d5c93b7934af404747aba521aaf2` | ⚠️ Unaudited |
| BCoWFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03362f847b4fabc12e1ce98b6b59f94401e4588e` | ⚠️ Unaudited |
| BCoWHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05545c04141abda02507eaf6bd47fe15690d120b` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad0447be7bdc80cf2e6da20b13599e5dc859b667` | ⚠️ Unaudited |
| Boost Delegation V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe39b5e3b6d74016b2f6a9673d7d7493b6df549d5` | ⚠️ Unaudited |
| Boost Delegation V2.1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380158 | `0x2cf8e145bdfe7c52b49ad9bb3c294a31b2736c59` | ⚠️ Unaudited |
| BridgeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c2fe8177a05d01ccde47e1c5637b1ab914d0d4` | ⚠️ Unaudited |
| BufferRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22625eedd92c81a219a83e1dc48f88d54786b017` | ⚠️ Unaudited |
| Child Liquidity Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4132f7acc9db7a6cf7be2dd3a9dc8b30c7e6e6c8` | ⚠️ Unaudited |
| ChildChainGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf23b4db826dba14c0e857029dff076b1c0264843` | ⚠️ Unaudited |
| ChildChainGaugeRewardHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0dabebaad1b243bbb243f933013d560819eb66f` | ⚠️ Unaudited |
| ChildChainGaugeTokenAdder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfd9769b061e57e478690299011a028194d66e3c` | ⚠️ Unaudited |
| ChildChainLiquidityGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb08e16cfc07c684daa2f93c70323badb2a6cbfd2` | ⚠️ Unaudited |
| CircuitBreakerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4967b3353cdf9e5c67421a3890d35f2f3bb50527` | ⚠️ Unaudited |
| ClaimSignatureRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07b1a0bab2bab6fd4dee2ddcc512b2725ababc55` | ⚠️ Unaudited |
| ComposableStablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c99324edc771c82a0dccb780cc7dda0045e50e7` | ⚠️ Unaudited |
| CompositeLiquidityRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c8f71d19f87c0bd1b9bad2484ecc3388d5dbb98` | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380216 | `0x99364f84d1c68d87aead0ce92eb47409a0c52c58` | ⚠️ Unaudited |
| CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e800d8d2e8b4694610aedc385aa6d763492b106` | ⚠️ Unaudited |
| DirectRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x00abf7f2a89ab6a7659ed511f3c39a560f25db37`; base `0x0e3a64a0294d3a6e3d75977569f2053de96dae5d` | ⚠️ Unaudited |
| DistributionScheduler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b67611b208e2e9b4cc975f6d74c87b865ae066` | ⚠️ Unaudited |
| DoubleEntrypointFixRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e5698dc4897dc12243c8642e77b4f21349db97c` | ⚠️ Unaudited |
| EclpLPOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1780e8185199dac45284039bb3e3b64060d943ab` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x558bc857b64b1145246bf8309bc702b283bed10e`; base `0xe995168d9924d72a4fe45af18edc06b498cb8dbb` | ⚠️ Unaudited |
| ERC4626CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b11209b8c5e821b18ded147583b8978c3e63911` | ⚠️ Unaudited |
| ERC4626RateProviderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x138d9e0d0cc4906c4cd865b38c9340a5cedd9850` | ⚠️ Unaudited |
| ExternalWeightedMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db89f0ca3b388f2bcdbccd2ff8e13c22459cf75` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26743984e3357efc59f2fd6c1afdc310335a61c9` | ⚠️ Unaudited |
| FixedPriceLBPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380144 | `0x179c68302a24e4e59667b3df7fb70c1c5dcec5d3` | ⚠️ Unaudited |
| FixedPriceLBPoolFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380265 | `0xeb1aa94421aecfb1dc17ddb1068e4609c4be8758` | ⚠️ Unaudited |
| GaugeAdder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380160 | `0x2ffb7b215ae7f088ec2530c7aa8e1b24e398f26a` | ⚠️ Unaudited |
| GaugeAdderMigrationCoordinator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380147 | `0x1b57f637ce3408f1f834b0b70f9a595b062daea7` | ⚠️ Unaudited |
| GaugeControllerQuerier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5698dc4897dc12243c8642e77b4f21349db97c` | ⚠️ Unaudited |
| GaugeWorkingBalanceHelper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380254 | `0xdab2583911e872a00a851fb80dcc78a4b46ba57c` | ⚠️ Unaudited |
| GnosisRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380136 | `0x05277ce7d1e365d660624612d8b8b9b55bfd4518` | ⚠️ Unaudited |
| GnosisRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de9d6995c40caaaeda02af45f47713b33a11452` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x312600bc7645e47a4926dc658827398af070d431` | ⚠️ Unaudited |
| L2BalancerPseudoMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85a80afee867adf27b50bdb7b76da70f1e853062` | ⚠️ Unaudited |
| L2GaugeCheckpointer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380165 | `0x343688c5cb92115a52ca485af7f62b4b7a2e9ccc` | ⚠️ Unaudited |
| LBPMigrationRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8168e330776fee6f857914faca5fb831dd2ab0` | ⚠️ Unaudited |
| LiquidityBootstrappingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x751a0bc0e3f75b38e01cf25bfce7ff36de1c87de` | ⚠️ Unaudited |
| LiquidityGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380177 | `0x4e7bbd911cf1efa442bc1b2e9ea01ffe785412ec` | ⚠️ Unaudited |
| ManagedPoolAddRemoveTokenLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3be0e57b3a7469f158348ce5003725feaaa194f2` | ⚠️ Unaudited |
| ManagedPoolAmmLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3061b0b03af3b965e398d2e9021be12ffae4d4c1` | ⚠️ Unaudited |
| ManagedPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e06f594b79727da8f52c0f0430092cf3aeb91f6` | ⚠️ Unaudited |
| ManualRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x470c9034f50afe6633f7e84a80b9961baa893d77` | ⚠️ Unaudited |
| MerkleOrchard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x751a0bc0e3f75b38e01cf25bfce7ff36de1c87de` | ⚠️ Unaudited |
| MevCaptureHook | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380148 | `0x1bca39b01f451b0a05d7030e6e6981a73b716b1c` | ⚠️ Unaudited |
| MockStaticAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16ba924752ef283c7946db8a122a6742aa35c1dc` | ⚠️ Unaudited |
| MockVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81cfae226343b24ba12ec6521db2c79e7aeeb310` | ⚠️ Unaudited |
| NoProtocolFeeLiquidityBootstrappingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f3e0c4218b7b0108a3643cfe9d3ec0d4f57c54e` | ⚠️ Unaudited |
| OmniVotingEscrow | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380259 | `0xe241c6e48ca045c7f631600a0f1403b2bfea05ad` | ⚠️ Unaudited |
| OmniVotingEscrowAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6817149cb753bf529565b4d023d7507ed2ff4bc0` | ⚠️ Unaudited |
| OptimismRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380238 | `0xbc230b1a66a138cd9cfc7b352390025978dfadde` | ⚠️ Unaudited |
| OptimismRootGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380162 | `0x3083a1c455ff38d39e58dbac5040f465cf73c5c8` | ⚠️ Unaudited |
| OptimisticRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380168 | `0x37302b98918382c43a176e5f3bc7b11448cc6498` | ⚠️ Unaudited |
| OptimisticRootGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380146 | `0x18cc3c68a5e64b40c846aa6e45312cbcbb94f71b` | ⚠️ Unaudited |
| PolygonRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380261 | `0xe53d8f8aaafd95fcc7196e393ec5a907df44495e` | ⚠️ Unaudited |
| PolygonRootGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380175 | `0x4c4287b07d293e361281bceee8715c8cdeb64e34` | ⚠️ Unaudited |
| PolygonZkEVMRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380173 | `0x45bf48d996d22afc9bc150df7fb4d13a49088602` | ⚠️ Unaudited |
| PolygonZkEVMRootGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380219 | `0x9bf951848288ccd87d06fac426150262cd3447de` | ⚠️ Unaudited |
| PoolPauseHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30ff095e22dda9751b5e1a67928611dcb6308d7e` | ⚠️ Unaudited |
| PoolRecoveryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b300c86980a5195bcf49bd419a068d98dc133db` | ⚠️ Unaudited |
| PoolSwapFeeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x254f3a2974b97dc2e675f6115c845567c55f83b0` | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75635f85600fc357906417f6b78aaf8755d2888d` | ⚠️ Unaudited |
| ProtocolFeeHelper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380184 | `0x5a962cdc2786875ca5c40adc09d874e4d6711a74` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ef4c5352882b10893b70dbcaa0c000965bd23c5` | ⚠️ Unaudited |
| ProtocolFeeSweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b42ec6d40f7b7965be5308c70e2603c0281c1e9` | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ef4c5352882b10893b70dbcaa0c000965bd23c5` | ⚠️ Unaudited |
| ProtocolIdRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ccace87f6d3a81724075adcb5ddd85a8a1bb68` | ⚠️ Unaudited |
| PullTokenWrapperAllow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x16814b50a7962592b8fc4080cdaf0008a8fd5620`; base `0x828b0566a7068164a625bc616c7b0149f29cb918` | ⚠️ Unaudited |
| RateProviderCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x216039c669da730e80732ab61db417b233de2727` | ⚠️ Unaudited |
| ReClammPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380133 | `0x000ab3853737842bed7dabe3540e3e5336fe62a6` | ⚠️ Unaudited |
| ReClammPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1cd776897ef4f647bf8241ec69549e4a9cb1d608` | ⚠️ Unaudited |
| ReClammPoolHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04e66e492cc14947138608811eeed0b17224f2b6` | ⚠️ Unaudited |
| RecoveryModeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7827108af2fd9910ea7cf361d9b827941fa7d809` | ⚠️ Unaudited |
| RefundLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2433477a10fc5d31b9513c638f19ee85caed53fd` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4bdcc2fb18aeb9e2d281b0278d946445070eada7` | ⚠️ Unaudited |
| SavingsUSDSRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x84394fa6a39bdff63b255622da362b113c690267` | ⚠️ Unaudited |
| SingleRecipientGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380187 | `0x5d3d2d18148baace45d09254513bcf2c548c4480` | ⚠️ Unaudited |
| SingleRecipientGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380180 | `0x4fb47126fa83a8734991e41b942ac29a3266c968` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7869296efd0a76872fee62a058c8fbca5c1c826c` | ⚠️ Unaudited |
| SmartWalletCheckerCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26575a44755e0aaa969fdda1e4291df22c5624ea` | ⚠️ Unaudited |
| SNXRecoveryCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a1baf2f7a163ce66067f0062da60930dd0cb31` | ⚠️ Unaudited |
| StableLPOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x254f3a2974b97dc2e675f6115c845567c55f83b0` | ⚠️ Unaudited |
| StablePhantomPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08e16cfc07c684daa2f93c70323badb2a6cbfd2` | ⚠️ Unaudited |
| StablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16b50f6bf8c8ca73c07e17762188c5deee7ae5db` | ⚠️ Unaudited |
| StableSurgeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86705ee19c0509ff68f1118c55ee2ebde383d122` | ⚠️ Unaudited |
| StakelessGaugeCheckpointer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380141 | `0x0c8f71d19f87c0bd1b9bad2484ecc3388d5dbb98` | ⚠️ Unaudited |
| TestBalancerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x397bc40ba584e651f4f5cf4ae089f0130569a1c7` | ⚠️ Unaudited |
| TimelockAuthorizerMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657dee983987e1a79a996d972fe68411aef05e8d` | ⚠️ Unaudited |
| TimelockAuthorizerTransitionMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76578ecf9a141296ec657847fb45b0585bcda3a6` | ⚠️ Unaudited |
| TkMrsR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0a32bbef8f064969f21f7e02328fb577382018` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x71e9fc5d2238b28442e3d394bc4961167695e3b9`; base `0x9851607cb6f2b98a36806d16dc5479b876f6e081` | ⚠️ Unaudited |
| TribeBALMinterCoordinator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380166 | `0x34ac9f7eba9213c827fe5abf5b09a16f4d0cc69b` | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6623d1ceeab236ae93acafb285ddfb77336b6981` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba12222222228d8ba445958a75a0704d566bf2c8` | ⚠️ Unaudited |
| VaultExplorer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f08eef2c785aa5e7539684af04755dec1347b7c` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9805dcfd25e6de36bad8fe9d3fe2c9b44b764102` | ⚠️ Unaudited |
| veBALDeploymentCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb151668006cd04dadd098afd0a82e78f77076c3` | ⚠️ Unaudited |
| veBALGaugeFixCoordinator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380268 | `0xee47ef369cda5a65639d7794b70a4d247826ddf3` | ⚠️ Unaudited |
| veBALL2GaugeSetupCoordinator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380249 | `0xd13afc362f619b840c8f4aac1d957ce219ef37ca` | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380195 | `0x6f5a2ee11e7a772aeb5114a20d0d7c0ff61eb8a0` | ⚠️ Unaudited |
| VotingEscrowRemapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b5da774890db7b7b96c6f44e6a4b0f657399e2e` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380159 | `0x2e96068b3d5b5bae3d7515da4a1d2e52d08a2647` | ⚠️ Unaudited |
| WeightedLPOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380139 | `0x09917922379404a25aba9183bcae7bab72e7e8ec` | ⚠️ Unaudited |
| WeightedPool2TokensFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380225 | `0xa5bf2ddf098bb0ef6d120c98217dd6b141c74ee0` | ⚠️ Unaudited |
| WrappedBalancerPoolToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380155 | `0x27ad56b2bfcb923091d80ca2d657aeba5ac3121c` | ⚠️ Unaudited |
| WrappedBalancerPoolTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x201efd508c8dfe9de1a13c2452863a78cb2a86cc` | ⚠️ Unaudited |
| WstETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d07d7dca67b8a406ad1ec34ce969c90bfee768` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (310)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380142 | `0x0f08eef2c785aa5e7539684af04755dec1347b7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380150 | `0x1cd776897ef4f647bf8241ec69549e4a9cb1d608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e3b23c0b4877261310c0001b5722f3f7f875d6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21cd97d70f8475df3d62917880af9f41d9a9dcef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380153 | `0x22625eedd92c81a219a83e1dc48f88d54786b017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2371cb9ab7b498d7cd173cf30828ebc1430f1482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23fcc2166f991b8946d195de53745e1b804c91b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25ea7b202cd8447e8e6f4a7c59b19c66dfef1925` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380156 | `0x2a18b396829bc29f66a1e59fadd7a0269a6605e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380157 | `0x2bbcbbfa1ce762b3794592d01f29bccc20dfda6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380161 | `0x301ede5fd4f9d7266b09c3a2e38f97776447154b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x312600bc7645e47a4926dc658827398af070d431` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380164 | `0x332694ef46d880df6ea9593e04cb8abee5f81d99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380167 | `0x355bd33f0033066bb3de396a6d069be57353ad95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3602a03c33add8dbec36603e583d1b7da13dd754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39ab047f64d198288a1348ce746ca8457435a742` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380169 | `0x3b8ca519122cdd8efb272b0d3085453404b25bd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380170 | `0x3ccd78683effffddc1a16f5553c896ac6d3ab7ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380172 | `0x3f170631ed9821ca51a59d996ab095162438dc10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ff0041a614a9e6bf392cbb961c97da214e9cb31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4148bf5b0688ed0a87f317c6534cb841f503349e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41b953164995c11c81da73d212ed8af25741b7ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44a41fe82c9539c1aadabee5b9c3f327eba5c8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45fb5af0a1ad80ea16c803146eb81844d9972373` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380174 | `0x4b4b45edf6ca26ae894377cf4fed1fa9f82d85c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380178 | `0x4efcd8bce8ac9b94bd76648e2c85bef6c40f3228` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380179 | `0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53eff5068a1a3b39a9157da6ef5a18d555c479ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5915dea04ce390f0f44ca0806f7c6dd99ce2f941` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380183 | `0x5939ab16fdf1991b0ef603c639b6b501a7841fab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac134dac7070efee8b1c5e3fd0b353922ced843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b42ec6d40f7b7965be5308c70e2603c0281c1e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380185 | `0x5c6fb490bdfd3246eb0bb062c168decaf4bd9fdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380186 | `0x5d06d6e11ae3790ce1c7c3054c3f7eb0789859bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380188 | `0x5dbad78818d4c8958eff2d5b95b28385a22113cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dd94da3644ddd055fcf6b3e1aa310bb7801eb8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380189 | `0x5efbb12f01f27f0e020565866effc1da491e91a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f6e7d3ef6e9aedd21c107bf8faa610f1215c730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63cbeca1aba8447c5d7524f067a68d010f704b84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380192 | `0x6642863979e66d995717a2b836a121700595069a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67ae4cd9cb293f89b3e0109250962830d351ab53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380193 | `0x67f8df125b796b05895a6dc8ecf944b9556ecb0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380194 | `0x6a5127ae6df32f722e34b5b4abc67b0d4e582b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x703bd8115e6f21a37bb5df97f78614ca72ad7624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7088c18cac90a584bdbabe6b52558caf9fdb0105` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380196 | `0x715c777c6149c31a75d0d29633bbbe0a14370bdc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380197 | `0x74a1b9fe5b1151a80e4de22f79cf73ef358d2086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7573b99bc09c11dc0427fb9c6662bc603e008304` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380198 | `0x765ce16dbb3d7e89a9bebc834c5d6894e7faa93c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380199 | `0x774cb66e2b2db59a9daf175e9b2b7a142e17eb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f1d444be59798fed1db893c75e6ec977449a9cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f246e7bab4cdc8c7ab41eada8290009a5b26e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fa49df302a98223d98d115fc4fcd275576f6faa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380200 | `0x816e90dc85bf016455017a76bc09cc0451eeb308` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380201 | `0x83bf399fa3dc49af8fb5c34031a50c7c93f56129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380202 | `0x83e443ef4f9963c77bd860f94500075556668cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85315994492e88d6facd3b0e3585c68a4720627e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85a80afee867adf27b50bdb7b76da70f1e853062` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380203 | `0x866d4b65694c66fbfd15dd6fa933d0a6b3940a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86a0e97ec0d5db8dae106d3067358d41968fd12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870f988484a4b3034b6cca09829f6a1b4123fbc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380204 | `0x8902f9c211f91c84da2076f633873f8266dcecc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x897888115ada5773e02aa29f775430bfb5f34c51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380205 | `0x89ef89fd9a6ec73bce588f309c1f65c406d2891c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a8b9f35765899b3a0291700141470d79ea2ea88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c8951476529b0710cd878d3318cf64b475654a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d217cb74f675b46cc2767c8cf0aab53be1c4818` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380206 | `0x8d75fa0348fd940c70ea0ee5b4d9f7d3d45dc5cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8df6efec5547e31b0eb7d1291b511ff8a2bf987c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380207 | `0x8df9796dd15ac3a451ee994dd1979bea99fb5387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e9aa87e45e92bad84d5f8dd1bff34fb92637de9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380209 | `0x8f42adbba1b16eaae3bb5754915e0d06059add75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380210 | `0x90bd26fbb9db17d75b56e4ca3a4c438fa7c93694` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380211 | `0x90e065b28c9b7464b44f185f5a6b8e4b4c827f2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380212 | `0x9179c06629ef7f17cb5759f501d89997fe0e7b45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94905e703fead7f0fd0eee355d267ee909784e6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380213 | `0x94f68b54191f62f781fe8298a8a5fa3ed772d227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956ccab09898c0af2aca5e6c229c3ad4e93d9288` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380214 | `0x95bc5ca62ed018b5206342479ded82e18e46dcbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380215 | `0x96484f2abf5e58b15176dbf1a799627b53f13b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97207b095e4d5c9a6e4cfbfcd2c3358e03b90c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9805dcfd25e6de36bad8fe9d3fe2c9b44b764102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98c57b03654575682fae7fb19da19130318bd65d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380217 | `0x9958317b80ee5f10457017d54c2484d722059157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f2d91eba577e4bf7175e72b3ef2b6ddb1fabe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ac3e70db606659bf32d4bdfbb687ad193fd1f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0dabebaad1b243bbb243f933013d560819eb66f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380221 | `0xa1d0791a41318c775707c56eae247af81a05322c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380222 | `0xa1e9e74bbdbde4b8f9f624e71641f54e3b7f11bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1f998a5775cd85f33039a9b5c29b09097d211f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1fa945425ed2e08acb932e000bcc2f21b21588a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380223 | `0xa331d84ec860bf466b4cdccfb4ac09a1b43f3ae6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380224 | `0xa3d11a39dea14d245659816d35456b89ffbfb744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa523f47a933d5020b23629ddf689695aa94612dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380226 | `0xa731c23d7c95436baaae9d52782f966e1ed07cc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380227 | `0xa98bce70c92ad2ef3288dbcd659bc0d6b62f8f13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380228 | `0xac27df81663d139072e615855ef9ab0af3fbd281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad41a3ef49f2bdf7c02ab67e6a82b99121d0bd98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380229 | `0xad901309d9e9dbc5df19c84f729f429f0189a633` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380230 | `0xae563e3f8219521950555f5962419c8919758ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb14e420b2f9fd6ed9e75fedfc7398aeaf2ddd28b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380231 | `0xb2007b8b7e0260042517f635cfd8e6dd2dd7f007` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380232 | `0xb21a277466e7db6934556a1ce12eb3f032815c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb37646acbb1a91287721b2cdbe01ba0dba5e57a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380233 | `0xb496ff44746a8693a060fafd984da41b253f6790` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380235 | `0xb96524227c4b5ab908fc3d42005fe3b07aba40e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380236 | `0xb9d01ca61b9c181da1051bfdd28e1097e920ab14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380237 | `0xba3af3fc98498174868507560838ee03d961e033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba54bb8a7e0eefe160164d00c06a4f2ee8459a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd35248f8325dd1cb2bbf9d01e80a6bb99a792dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380239 | `0xbdbadc891bb95dee80ebc491699228ef0f7d6ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf904f9f340745b4f0c4702c7b6ab1e808ea6b93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfd9769b061e57e478690299011a028194d66e3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380240 | `0xc00ff743b73346c9a4c40509e0550ffc18e5426d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380241 | `0xc05ff9851c2a000f3c319d2986d8712317583b79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380242 | `0xc128468b7ce63ea702c1f104d55a2566b13d3abd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380243 | `0xc128a9954e6c874ea3d62ce62b468ba073093f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc33e0fe411322009947931c32d2273ee645cdb5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4c4940dc7c57df46d3a217647db1649721cf468` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380245 | `0xc57b4be50bf6bbe5f6a4fe379da342b32b37bf2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6f101b622e34b27c6bbe85e539f009fe934ffea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380246 | `0xca734ad0b286ea7dd6367a504a48fb75cd12a97f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca96c4f198d343e251b1a01f3eba061ef3da73c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380247 | `0xcb3fe6cc529101af5880a05429729f967501c9e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc267d25576b48f08a90c3605624ab62a73a7a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc4a97bb41dc77013d625fc2a5e7867603d4c78b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc508a455f5b0073973107db6a878ddbdab957bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380248 | `0xcc8d5475e7a3c65e29af30e5f89f14f5722e7cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd59e55f3879b915184e96db3806be2abc7fb266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf7608f0136db42fdec021f755bd66406f29158c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd02992266bb6a6324a3ab8b62fecbc9a3c58d1f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380250 | `0xd22eecbb495380ef52b1ccef1ca594979885d484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3cf852898b21fc233251427c2dc93d3d604f3bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380251 | `0xd53f5d8d926fb2a0f7be614b16e649b8ac102d83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380252 | `0xd5584b37d1845ffed958c2d94bc675603ddcce68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8e9ea1a0b965351bcaa5d1dd6b9ff69ed07faed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd966d712f470067b60d37246404d6dfe5bf0b419` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380253 | `0xdaa273aeec06e9ccb7428a77e2abb1e4659b16d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380255 | `0xdada7be438bdd89416f4802b679e320b15c92d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdae7e32adc5d490a43ccba1f0c736033f2b4efca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb8d758bcb971e482b2c45f7f8a7740283a1bd3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba127fbc23fb20f5929c546af220a991b5c6e01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380256 | `0xdbb8ad38c990bd4ca2c88a6e6cfdf5045b0d4fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc6d62ae091ea77331542042a72e5e38b188837c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd10adf05379d7c0ee4bc9c72ecc5c01c40e25b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380257 | `0xdeba7d498ccf617c06f53ee110c2cfc65cec0ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfcea9088c8a88a76ff74892c1457c17dfeef9c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380258 | `0xe0f34c6ad719e6877062b7d97e12c61c096509af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3881627b8deebccf9c23b291430a549fc0be5f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380260 | `0xe42c2e153bb0a8899b59c73f5ff941f9742f1197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe42ffa682a26ef8f25891db4882932711d42e467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe43f4606f55edfed0764a54401cd554c86af73c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe50481d88f147b8b4aacdf9a1b7b7ba44f87823f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380262 | `0xe5f96070ca00cd54795416b1a4b4c2403231c548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8e4ee488363a032aa57abe2c0e8bfd6c66685b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380263 | `0xe912c791f7c4b6323efba294f66c0de93c50eb5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380264 | `0xe9b0a3bc48178d7fe2f5453c8bc1415d73f966d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea66501df1a00261e3bb79d1e90444fc6a186b62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380266 | `0xed5ba579bb5d516263ff6e1c10fcac1040075fe2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380269 | `0xf1665e19bc105be4edd3739f88315cc699cc5b65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23b4db826dba14c0e857029dff076b1c0264843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4d14f111eb5eaedc0963530d4f55127bbc4400e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5cddf6fed9c589f1be04899f48f9738531dad59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380271 | `0xf5decdb1f3d1ee384908fbe16d2f0348ae43a9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf76c421bab7df8548604e60deccce50477c10462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf77018c0d817da22cadbdf504c00c0d32ce1e5c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8ee6f1f9b54f9b2c192d703ea2d22112cbc062b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9309a99836b5f07a2440c177c049b0f0a9a2c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9ac7b9df2b3454e841110cce5550bd5ac6f875f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9f5e0f3f74f57755a8c8be7b2fedcaa40673080` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380272 | `0xfa80c17ee7e382c9c541bfa4bea0514e46dccba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfada0f4547ab2de89d1304a668c39b3e09aa7c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbe0697c31f0e7b125e6d7f558dc878c150ca2ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbf475f236b58a1f2c0a98bcf29033ef4c30bd7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc00536a0fd292c284deef6af8f644d8373d9cad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380273 | `0xfc2986feab34713e659da84f3b1fa32c1da95832` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380274 | `0xfeb1a24c2752e53576133cdb718f25bc64ebdd52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3083a1c455ff38d39e58dbac5040f465cf73c5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x866d4b65694c66fbfd15dd6fa933d0a6b3940a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbc230b1a66a138cd9cfc7b352390025978dfadde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xca734ad0b286ea7dd6367a504a48fb75cd12a97f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x05277ce7d1e365d660624612d8b8b9b55bfd4518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2a18b396829bc29f66a1e59fadd7a0269a6605e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45bf48d996d22afc9bc150df7fb4d13a49088602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c4287b07d293e361281bceee8715c8cdeb64e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9bf951848288ccd87d06fac426150262cd3447de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa98bce70c92ad2ef3288dbcd659bc0d6b62f8f13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe53d8f8aaafd95fcc7196e393ec5a907df44495e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfeb1a24c2752e53576133cdb718f25bc64ebdd52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x18cc3c68a5e64b40c846aa6e45312cbcbb94f71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x37302b98918382c43a176e5f3bc7b11448cc6498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-zkevm | n/a | `0x45bf48d996d22afc9bc150df7fb4d13a49088602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-zkevm | n/a | `0x9bf951848288ccd87d06fac426150262cd3447de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32fe1c03c80d52f4bd09e19aa7581b163f744bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33811fc13a37ccb0bbf250d9a2cffad53044476a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34d79a8b9949fb12cb7415b31f6169d9a2719c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x467665d4ae90e7a99c9c9af785791058426d6ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51322567d2a37c9697b3890b90675d4458ed1c1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f6fad6ff38f1c987d46878711823bc8b62eec91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64e8e5fe82625e3b8ab7d9d00918736d6b8634b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x67763bc722abe1f041ddc3ed6e445f4ab476ff9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x844bc9c8523425e49e5243c396f68370098e285a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e3b64b3737097f283e965869e3503aa20f31e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95f70f0577ebd1c1c03c02d28f0f6bd4be1b5a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98feb82591069e793a5f76a6fe78d97b03418282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a4d642b9876231bb9062559521a48097abfe6cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xad9e52ed75f71bdf67ddce3e417b805f042e54e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb0334c5287bfb15a8c9464898cdb0248ed176332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb502cb71d3d571ffa23267f43c6e5db00941119d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb9454f1d046879789e2d390edebe335891156ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe04604a34cf7d1673745051451e1b58ff0b77b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe5b582967b0ce876a96c525713a02c0a910d2f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe859ee83a3c8c5af058dc2f3533ac577b19706f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb156674dff6755a1a37d428c19a71518fdf68a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22be81ecae87f1ae1db9e17d6b072f846e07fc45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41b953164995c11c81da73d212ed8af25741b7ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44a41fe82c9539c1aadabee5b9c3f327eba5c8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c4287b07d293e361281bceee8715c8cdeb64e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f4269f7008430860693aedb86b0c55962d6e9b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d5629fc838f5ea67d14264b7316ffd4294b0998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6337949cbc4825bbd09242c811770f6f6fee9ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x693065ffbbe8598185f89576c4273a9142b6dca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70bbd023481788e443472e123ab963e5ebf58d06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x715c777c6149c31a75d0d29633bbbe0a14370bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72d07d7dca67b8a406ad1ec34ce969c90bfee768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7630140a37ddf507daf64e8746f57c6f660fe041` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c71313d3b84728ca0fd4cdad8c86067e3548dce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8933f880789a1abd9ee4d841c3bb3e3ff9c02682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8df6efec5547e31b0eb7d1291b511ff8a2bf987c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x967f7add4fd5af0553b7a45f225ec26edd699e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97207b095e4d5c9a6e4cfbfcd2c3358e03b90c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x994086630773dc6cb54d3a5e0ef0963532789e75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9bf6468facac0f71c7eca8d71a5fb5f65bdab319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c103c80ea8ef6188d5d38408942a9cff495e109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad901309d9e9dbc5df19c84f729f429f0189a633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaeb406b0e430bf5ea2dc0b9fe62e4e53f74b3a33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5e56cc3d2e38e53b1166175c59e921a37cdc1e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb7cd84ed6edcfa1891ab4624a92c4ae39d2589a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd7f93c86f30b90a181f81934fa4f281c7bff246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7fad3bd59d6477cbe1be7f646f7f1ba25b230f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdae7e32adc5d490a43ccba1f0c736033f2b4efca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb2aeab529c035469e190310def9957ef0398ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0e2ba143ee5268da87d529949a2521115987302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2e901ab09f37884ba31622df3ca7fc19aa443be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef44d6786b2b4d544b7850fe67ce6381626bf2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1665e19bc105be4edd3739f88315cc699cc5b65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4b3ce9f9d922fad08857215b771c2d6731e9c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e800d8d2e8b4694610aedc385aa6d763492b106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10f3e79911a490aa5b5d5cda6f111029c4eab5ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1702067424096f07a60e62ccee3de9420068492d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18cc3c68a5e64b40c846aa6e45312cbcbb94f71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x25ea7b202cd8447e8e6f4a7c59b19c66dfef1925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x268e2ee1413d768b6e2dc3f5a4ddc9ae03d9af42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x309abcaefa19ca6d34f0d8ff4a4103317c138657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x311334883921fb1b813826e585df1c2be4358615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3630d26e51c03026f4f063d69d65f8e234eeaf5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x36cac20dd805d128c1a6dd16eea845c574b5a17c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x36e8e371e6863e5f96d00667016dde87fe1cc5d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x397bc40ba584e651f4f5cf4ae089f0130569a1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3beb058de1a25dd24223fd9e1796df8589429ace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3eae4a1c2e36870a006e816930d9f55df0a72a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f170631ed9821ca51a59d996ab095162438dc10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45fb5af0a1ad80ea16c803146eb81844d9972373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b979ed48f982ba0baa946cb69c1083eb799729c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4cb42fc3b5fb9392ce0772c3a540e4ae4da4ac4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5939ab16fdf1991b0ef603c639b6b501a7841fab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c6fb490bdfd3246eb0bb062c168decaf4bd9fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x662112b8cb18889e81459b92ca0f894a2ef2c1b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6817149cb753bf529565b4d023d7507ed2ff4bc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b5da774890db7b7b96c6f44e6a4b0f657399e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ead84af26e997d27998fc9f8614e8a19bb93938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a2535f5fb47b8e44c02ef5d9990588313fe8f05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ba29fe8e83dd6097a7298075c4affdbda3121cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c1b7a97bfacd39975de53e989a16c7bc4c78275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83e443ef4f9963c77bd860f94500075556668cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86a0e97ec0d5db8dae106d3067358d41968fd12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d217cb74f675b46cc2767c8cf0aab53be1c4818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e3feaab11b7b351e3ea1e01247ab6ccc847dd52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90bd26fbb9db17d75b56e4ca3a4c438fa7c93694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9179c06629ef7f17cb5759f501d89997fe0e7b45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96484f2abf5e58b15176dbf1a799627b53f13b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9958317b80ee5f10457017d54c2484d722059157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9d2917e41b705bf58bd28e5422230883bbe3f521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1d0791a41318c775707c56eae247af81a05322c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa523f47a933d5020b23629ddf689695aa94612dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa8920455934da4d853faac1f94fe7bef72943ef1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad89051bed8d96f045e8912ae1672c6c0bf8a85e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb21a277466e7db6934556a1ce12eb3f032815c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb96524227c4b5ab908fc3d42005fe3b07aba40e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9d01ca61b9c181da1051bfdd28e1097e920ab14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9f8ab3ed3f3acba64bc6cd2dca74b7f38fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbdbadc891bb95dee80ebc491699228ef0f7d6ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3ccace87f6d3a81724075adcb5ddd85a8a1bb68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc57b4be50bf6bbe5f6a4fe379da342b32b37bf2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9b36096f5201ea332db35d6d195774ea0d5988f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf7608f0136db42fdec021f755bd66406f29158c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd22eecbb495380ef52b1ccef1ca594979885d484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd53f5d8d926fb2a0f7be614b16e649b8ac102d83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd961e30156c2e0d0d925a0de45f931cb7815e970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdaa273aeec06e9ccb7428a77e2abb1e4659b16d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe2fa4e1d17725e72dcdafe943ecf45df4b9e285b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe42ffa682a26ef8f25891db4882932711d42e467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeaedc32a51c510d35ebc11088fd5ff2b47aacf2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf39ca6ede9bf7820a952b52f3c94af526bab9015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf94bb6911daf3734759105c26e0e79790281bffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc00536a0fd292c284deef6af8f644d8373d9cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd214210587fb84798cbe7f37235e12898f3128f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 206
- Live contracts: 0
- Unknown liveness contracts: 206
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=206

Showing first 200 of 206 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x22be81ecae87f1ae1db9e17d6b072f846e07fc45` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x41b953164995c11c81da73d212ed8af25741b7ac` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x44a41fe82c9539c1aadabee5b9c3f327eba5c8a3` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4c4287b07d293e361281bceee8715c8cdeb64e34` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4f4269f7008430860693aedb86b0c55962d6e9b7` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5d5629fc838f5ea67d14264b7316ffd4294b0998` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x70bbd023481788e443472e123ab963e5ebf58d06` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x72d07d7dca67b8a406ad1ec34ce969c90bfee768` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7630140a37ddf507daf64e8746f57c6f660fe041` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7c71313d3b84728ca0fd4cdad8c86067e3548dce` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8df6efec5547e31b0eb7d1291b511ff8a2bf987c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x967f7add4fd5af0553b7a45f225ec26edd699e61` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x97207b095e4d5c9a6e4cfbfcd2c3358e03b90c4a` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x994086630773dc6cb54d3a5e0ef0963532789e75` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9bf6468facac0f71c7eca8d71a5fb5f65bdab319` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c103c80ea8ef6188d5d38408942a9cff495e109` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaeb406b0e430bf5ea2dc0b9fe62e4e53f74b3a33` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb5e56cc3d2e38e53b1166175c59e921a37cdc1e2` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcd7f93c86f30b90a181f81934fa4f281c7bff246` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd7fad3bd59d6477cbe1be7f646f7f1ba25b230f8` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdae7e32adc5d490a43ccba1f0c736033f2b4efca` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe2e901ab09f37884ba31622df3ca7fc19aa443be` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xef44d6786b2b4d544b7850fe67ce6381626bf2d6` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf1665e19bc105be4edd3739f88315cc699cc5b65` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x693065ffbbe8598185f89576c4273a9142b6dca5` | non_address_book | unknown | unknown | unverified | n/a | `0x43e6055bf65cf0ec86497dd88d7d4c41acb36d55` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8933f880789a1abd9ee4d841c3bb3e3ff9c02682` | non_address_book | unknown | unknown | unverified | n/a | `0x43e6055bf65cf0ec86497dd88d7d4c41acb36d55` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb7cd84ed6edcfa1891ab4624a92c4ae39d2589a1` | non_address_book | unknown | unknown | unverified | n/a | `0x43e6055bf65cf0ec86497dd88d7d4c41acb36d55` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdb2aeab529c035469e190310def9957ef0398ba8` | non_address_book | unknown | unknown | unverified | n/a | `0x43e6055bf65cf0ec86497dd88d7d4c41acb36d55` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe0e2ba143ee5268da87d529949a2521115987302` | non_address_book | unknown | unknown | unverified | n/a | `0x43e6055bf65cf0ec86497dd88d7d4c41acb36d55` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf4b3ce9f9d922fad08857215b771c2d6731e9c59` | non_address_book | unknown | unknown | unverified | n/a | `0x43e6055bf65cf0ec86497dd88d7d4c41acb36d55` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0e800d8d2e8b4694610aedc385aa6d763492b106` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1702067424096f07a60e62ccee3de9420068492d` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x18cc3c68a5e64b40c846aa6e45312cbcbb94f71b` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x25ea7b202cd8447e8e6f4a7c59b19c66dfef1925` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x268e2ee1413d768b6e2dc3f5a4ddc9ae03d9af42` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x309abcaefa19ca6d34f0d8ff4a4103317c138657` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x311334883921fb1b813826e585df1c2be4358615` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3630d26e51c03026f4f063d69d65f8e234eeaf5b` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x36cac20dd805d128c1a6dd16eea845c574b5a17c` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x36e8e371e6863e5f96d00667016dde87fe1cc5d1` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x397bc40ba584e651f4f5cf4ae089f0130569a1c7` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3beb058de1a25dd24223fd9e1796df8589429ace` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3f170631ed9821ca51a59d996ab095162438dc10` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x45fb5af0a1ad80ea16c803146eb81844d9972373` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4b979ed48f982ba0baa946cb69c1083eb799729c` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4cb42fc3b5fb9392ce0772c3a540e4ae4da4ac4d` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4eff2d77d9ffbaefb4b141a3e494c085b3ff4cb5` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5939ab16fdf1991b0ef603c639b6b501a7841fab` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5c6fb490bdfd3246eb0bb062c168decaf4bd9fdd` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x662112b8cb18889e81459b92ca0f894a2ef2c1b8` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6817149cb753bf529565b4d023d7507ed2ff4bc0` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6b5da774890db7b7b96c6f44e6a4b0f657399e2e` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6ead84af26e997d27998fc9f8614e8a19bb93938` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7a2535f5fb47b8e44c02ef5d9990588313fe8f05` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7ba29fe8e83dd6097a7298075c4affdbda3121cc` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7c1b7a97bfacd39975de53e989a16c7bc4c78275` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x83e443ef4f9963c77bd860f94500075556668cb8` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x86a0e97ec0d5db8dae106d3067358d41968fd12c` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x891ec9b34829276a9a8ef2f8a9ceaf2486017e0d` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8d217cb74f675b46cc2767c8cf0aab53be1c4818` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8e3feaab11b7b351e3ea1e01247ab6ccc847dd52` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x90bd26fbb9db17d75b56e4ca3a4c438fa7c93694` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9179c06629ef7f17cb5759f501d89997fe0e7b45` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x96484f2abf5e58b15176dbf1a799627b53f13b6d` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9958317b80ee5f10457017d54c2484d722059157` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9d2917e41b705bf58bd28e5422230883bbe3f521` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9da18982a33fd0c7051b19f0d7c76f2d5e7e017c` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa1d0791a41318c775707c56eae247af81a05322c` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa523f47a933d5020b23629ddf689695aa94612dc` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa8920455934da4d853faac1f94fe7bef72943ef1` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xad89051bed8d96f045e8912ae1672c6c0bf8a85e` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb21a277466e7db6934556a1ce12eb3f032815c8a` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb96524227c4b5ab908fc3d42005fe3b07aba40e9` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb9d01ca61b9c181da1051bfdd28e1097e920ab14` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb9f8ab3ed3f3acba64bc6cd2dca74b7f38fd7b88` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbdbadc891bb95dee80ebc491699228ef0f7d6ff1` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc3ccace87f6d3a81724075adcb5ddd85a8a1bb68` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc9b36096f5201ea332db35d6d195774ea0d5988f` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcf7608f0136db42fdec021f755bd66406f29158c` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd22eecbb495380ef52b1ccef1ca594979885d484` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd53f5d8d926fb2a0f7be614b16e649b8ac102d83` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd961e30156c2e0d0d925a0de45f931cb7815e970` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdaa273aeec06e9ccb7428a77e2abb1e4659b16d2` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe2fa4e1d17725e72dcdafe943ecf45df4b9e285b` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe42ffa682a26ef8f25891db4882932711d42e467` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xeaedc32a51c510d35ebc11088fd5ff2b47aacf2e` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf39ca6ede9bf7820a952b52f3c94af526bab9015` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf94bb6911daf3734759105c26e0e79790281bffc` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfc00536a0fd292c284deef6af8f644d8373d9cad` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfd214210587fb84798cbe7f37235e12898f3128f` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| base | unverified unclassified | UnnamedContract<br>`0x0e3a64a0294d3a6e3d75977569f2053de96dae5d` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0x32fe1c03c80d52f4bd09e19aa7581b163f744bc4` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0x33811fc13a37ccb0bbf250d9a2cffad53044476a` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0x34d79a8b9949fb12cb7415b31f6169d9a2719c23` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0x467665d4ae90e7a99c9c9af785791058426d6ea0` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0x51322567d2a37c9697b3890b90675d4458ed1c1a` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0x558bc857b64b1145246bf8309bc702b283bed10e` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0x5f6fad6ff38f1c987d46878711823bc8b62eec91` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0x64e8e5fe82625e3b8ab7d9d00918736d6b8634b8` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0x67763bc722abe1f041ddc3ed6e445f4ab476ff9e` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0x828b0566a7068164a625bc616c7b0149f29cb918` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0x844bc9c8523425e49e5243c396f68370098e285a` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0x95f70f0577ebd1c1c03c02d28f0f6bd4be1b5a57` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0x9851607cb6f2b98a36806d16dc5479b876f6e081` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0x98feb82591069e793a5f76a6fe78d97b03418282` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0xad9e52ed75f71bdf67ddce3e417b805f042e54e3` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0xb0334c5287bfb15a8c9464898cdb0248ed176332` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0xb502cb71d3d571ffa23267f43c6e5db00941119d` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0xb9454f1d046879789e2d390edebe335891156ed5` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0xe04604a34cf7d1673745051451e1b58ff0b77b3a` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0xe5b582967b0ce876a96c525713a02c0a910d2f1d` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0xe859ee83a3c8c5af058dc2f3533ac577b19706f2` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| base | unverified unclassified | UnnamedContract<br>`0xfb156674dff6755a1a37d428c19a71518fdf68a4` | non_address_book | unknown | unknown | unverified | n/a | `0xb61cf583d60b1a3966a59b8bbb246d5b1524612a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4148bf5b0688ed0a87f317c6534cb841f503349e` | non_address_book | unknown | unknown | unverified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7088c18cac90a584bdbabe6b52558caf9fdb0105` | non_address_book | unknown | unknown | unverified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x897888115ada5773e02aa29f775430bfb5f34c51` | non_address_book | unknown | unknown | unverified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb37646acbb1a91287721b2cdbe01ba0dba5e57a2` | non_address_book | unknown | unknown | unverified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbf904f9f340745b4f0c4702c7b6ab1e808ea6b93` | non_address_book | unknown | unknown | unverified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xea66501df1a00261e3bb79d1e90444fc6a186b62` | non_address_book | unknown | unknown | unverified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf77018c0d817da22cadbdf504c00c0d32ce1e5c2` | non_address_book | unknown | unknown | unverified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfada0f4547ab2de89d1304a668c39b3e09aa7c76` | non_address_book | unknown | unknown | unverified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfbe0697c31f0e7b125e6d7f558dc878c150ca2ac` | non_address_book | unknown | unknown | unverified | n/a | `0x089775364ea24957da94348cf740375826ed3330` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41b953164995c11c81da73d212ed8af25741b7ac` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x44a41fe82c9539c1aadabee5b9c3f327eba5c8a3` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5dd94da3644ddd055fcf6b3e1aa310bb7801eb8b` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67ae4cd9cb293f89b3e0109250962830d351ab53` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8c8951476529b0710cd878d3318cf64b475654a7` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8df6efec5547e31b0eb7d1291b511ff8a2bf987c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x97207b095e4d5c9a6e4cfbfcd2c3358e03b90c4a` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98c57b03654575682fae7fb19da19130318bd65d` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa0dabebaad1b243bbb243f933013d560819eb66f` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba54bb8a7e0eefe160164d00c06a4f2ee8459a5f` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbfd9769b061e57e478690299011a028194d66e3c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc33e0fe411322009947931c32d2273ee645cdb5b` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca96c4f198d343e251b1a01f3eba061ef3da73c1` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc508a455f5b0073973107db6a878ddbdab957bc` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd59e55f3879b915184e96db3806be2abc7fb266` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd02992266bb6a6324a3ab8b62fecbc9a3c58d1f9` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd966d712f470067b60d37246404d6dfe5bf0b419` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdae7e32adc5d490a43ccba1f0c736033f2b4efca` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdba127fbc23fb20f5929c546af220a991b5c6e01` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc6d62ae091ea77331542042a72e5e38b188837c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8ee6f1f9b54f9b2c192d703ea2d22112cbc062b` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf9ac7b9df2b3454e841110cce5550bd5ac6f875f` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf9f5e0f3f74f57755a8c8be7b2fedcaa40673080` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfbf475f236b58a1f2c0a98bcf29033ef4c30bd7c` | non_address_book | unknown | unknown | unverified | n/a | `0x3d64fb8a2ffd08c186e8060aa57c8011d8b999cc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e3b23c0b4877261310c0001b5722f3f7f875d6f` | non_address_book | unknown | unknown | unverified | n/a | `0x697a71353a4bc1eb1356763018a229c27a3fba0c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e9aa87e45e92bad84d5f8dd1bff34fb92637de9` | non_address_book | unknown | unknown | unverified | n/a | `0x697a71353a4bc1eb1356763018a229c27a3fba0c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x94905e703fead7f0fd0eee355d267ee909784e6d` | non_address_book | unknown | unknown | unverified | n/a | `0x697a71353a4bc1eb1356763018a229c27a3fba0c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1f998a5775cd85f33039a9b5c29b09097d211f3` | non_address_book | unknown | unknown | unverified | n/a | `0x697a71353a4bc1eb1356763018a229c27a3fba0c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1fa945425ed2e08acb932e000bcc2f21b21588a` | non_address_book | unknown | unknown | unverified | n/a | `0x697a71353a4bc1eb1356763018a229c27a3fba0c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb14e420b2f9fd6ed9e75fedfc7398aeaf2ddd28b` | non_address_book | unknown | unknown | unverified | n/a | `0x697a71353a4bc1eb1356763018a229c27a3fba0c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdfcea9088c8a88a76ff74892c1457c17dfeef9c1` | non_address_book | unknown | unknown | unverified | n/a | `0x697a71353a4bc1eb1356763018a229c27a3fba0c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe43f4606f55edfed0764a54401cd554c86af73c1` | non_address_book | unknown | unknown | unverified | n/a | `0x697a71353a4bc1eb1356763018a229c27a3fba0c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe8e4ee488363a032aa57abe2c0e8bfd6c66685b5` | non_address_book | unknown | unknown | unverified | n/a | `0x697a71353a4bc1eb1356763018a229c27a3fba0c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2371cb9ab7b498d7cd173cf30828ebc1430f1482` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25ea7b202cd8447e8e6f4a7c59b19c66dfef1925` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x312600bc7645e47a4926dc658827398af070d431` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3602a03c33add8dbec36603e583d1b7da13dd754` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x39ab047f64d198288a1348ce746ca8457435a742` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x45fb5af0a1ad80ea16c803146eb81844d9972373` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53eff5068a1a3b39a9157da6ef5a18d555c479ef` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5915dea04ce390f0f44ca0806f7c6dd99ce2f941` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b42ec6d40f7b7965be5308c70e2603c0281c1e9` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f1d444be59798fed1db893c75e6ec977449a9cd` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f246e7bab4cdc8c7ab41eada8290009a5b26e0d` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7fa49df302a98223d98d115fc4fcd275576f6faa` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85a80afee867adf27b50bdb7b76da70f1e853062` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86a0e97ec0d5db8dae106d3067358d41968fd12c` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x870f988484a4b3034b6cca09829f6a1b4123fbc1` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a8b9f35765899b3a0291700141470d79ea2ea88` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d217cb74f675b46cc2767c8cf0aab53be1c4818` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x956ccab09898c0af2aca5e6c229c3ad4e93d9288` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9805dcfd25e6de36bad8fe9d3fe2c9b44b764102` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99f2d91eba577e4bf7175e72b3ef2b6ddb1fabe3` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ac3e70db606659bf32d4bdfbb687ad193fd1f5b` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa523f47a933d5020b23629ddf689695aa94612dc` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xad41a3ef49f2bdf7c02ab67e6a82b99121d0bd98` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc4c4940dc7c57df46d3a217647db1649721cf468` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6f101b622e34b27c6bbe85e539f009fe934ffea` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc267d25576b48f08a90c3605624ab62a73a7a4e` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc4a97bb41dc77013d625fc2a5e7867603d4c78b` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf7608f0136db42fdec021f755bd66406f29158c` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb8d758bcb971e482b2c45f7f8a7740283a1bd3a` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdd10adf05379d7c0ee4bc9c72ecc5c01c40e25b8` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe3881627b8deebccf9c23b291430a549fc0be5f7` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe42ffa682a26ef8f25891db4882932711d42e467` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf23b4db826dba14c0e857029dff076b1c0264843` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf4d14f111eb5eaedc0963530d4f55127bbc4400e` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf5cddf6fed9c589f1be04899f48f9738531dad59` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf9309a99836b5f07a2440c177c049b0f0a9a2c33` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc00536a0fd292c284deef6af8f644d8373d9cad` | non_address_book | unknown | unknown | unverified | n/a | `0x9098b50ee2d9e4c3c69928a691da3b192b4c9673` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x21cd97d70f8475df3d62917880af9f41d9a9dcef` | non_address_book | unknown | unknown | unverified | n/a | `0xd3de655d618165afcf01be67b3e0764bf31d3572` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23fcc2166f991b8946d195de53745e1b804c91b7` | non_address_book | unknown | unknown | unverified | n/a | `0xd3de655d618165afcf01be67b3e0764bf31d3572` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ff0041a614a9e6bf392cbb961c97da214e9cb31` | non_address_book | unknown | unknown | unverified | n/a | `0xd3de655d618165afcf01be67b3e0764bf31d3572` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ac134dac7070efee8b1c5e3fd0b353922ced843` | non_address_book | unknown | unknown | unverified | n/a | `0xd3de655d618165afcf01be67b3e0764bf31d3572` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f6e7d3ef6e9aedd21c107bf8faa610f1215c730` | non_address_book | unknown | unknown | unverified | n/a | `0xd3de655d618165afcf01be67b3e0764bf31d3572` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63cbeca1aba8447c5d7524f067a68d010f704b84` | non_address_book | unknown | unknown | unverified | n/a | `0xd3de655d618165afcf01be67b3e0764bf31d3572` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x703bd8115e6f21a37bb5df97f78614ca72ad7624` | non_address_book | unknown | unknown | unverified | n/a | `0xd3de655d618165afcf01be67b3e0764bf31d3572` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7573b99bc09c11dc0427fb9c6662bc603e008304` | non_address_book | unknown | unknown | unverified | n/a | `0xd3de655d618165afcf01be67b3e0764bf31d3572` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [test-report.md (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/test-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2022-05-27.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/abdk/2022-05-27.pdf) | ABDK | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [2021-04-22.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2021-04-22.pdf) | Certora | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2022-09-23.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2022-09-23.pdf) | Certora | Audit | 2022-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [2023-05-08.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2023-05-08.pdf) | Certora | Audit | 2023-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [2021-03-15.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/openzeppelin/2021-03-15.pdf) | OpenZeppelin | Audit | 2021-03 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 20 | high |
| [2021-10-09.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/openzeppelin/2021-10-09.pdf) | OpenZeppelin | Audit | 2021-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [2021-10-08.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2021-10-08.pdf) | Trail of Bits | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2022-05-27.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-05-27.pdf) | Trail of Bits | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2022-09-02.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-09-02.pdf) | Trail of Bits | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [2022-10-25.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-10-25.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [WONTFIX.md](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/WONTFIX.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-12-17.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/cantina/2024-12-17.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | matched | 3 | 2 | 0 | 5 | medium |
| [2024-12-31.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/cantina/2024-12-31.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [2024-09-04.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2024-09-04.pdf) | Certora | Audit | 2024-09 | aging | Direct | contract_name | matched | 3 | 2 | 0 | 15 | high |
| [2024-12-24.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2024-12-24.pdf) | Certora | Audit | 2024-12 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 5 | high |
| [2025-01-30.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-01-30.pdf) | Certora | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [2025-02-07.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-02-07.pdf) | Certora | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-02-17.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-02-17.pdf) | Certora | Audit | 2025-02 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [2025-08-19.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-08-19.pdf) | Certora | Audit | 2025-08 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [2025-09-08.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-09-08.pdf) | Certora | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-09-10.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-09-10.pdf) | Certora | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [2026-01-26.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2026-01-26.pdf) | Certora | Audit | 2026-01 | fresh | Direct | contract_name | matched | 5 | 1 | 0 | 12 | high |
| [2024-10-04.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/spearbit/2024-10-04.pdf) | Spearbit | Audit | 2024-10 | aging | Direct | contract_name | matched | 4 | 2 | 0 | 10 | high |
| [2024-12-11.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/trail-of-bits/2024-12-11.pdf) | Trail of Bits | Audit | 2024-12 | aging | Direct | contract_name | matched | 4 | 3 | 0 | 9 | high |
| [2022-05-27.pdf](https://github.com/balancer-labs/balancer-core-v2/blob/master/audits/abdk/2022-05-27.pdf) | ABDK | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [2021-04-02.pdf (also discovered via alternate URL)](https://github.com/balancer-labs/balancer-core-v2/blob/master/audits/trail-of-bits/2021-04-02.pdf) | Trail of Bits | Audit | 2021-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 24 | high |
| [2022-05-27.pdf](https://github.com/balancer-labs/balancer-core-v2/blob/master/audits/trail-of-bits/2022-05-27.pdf) | Trail of Bits | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/balancer/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [Security](https://docs-v2.balancer.fi/reference/contracts/security.html) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [README.md](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/README.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Risks](https://docs-v2.balancer.fi/reference/vote-escrow-launchpad/8_Risks.html) | Certora | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16793] test-report.md — no match: The provided text is a test output log, not an audit report. It contains no scope section, no audit date, and no explicit listing of contracts in scope. The contract names mentioned are only in test descriptions, not as audited targets.
- [16794] 2022-05-27.pdf — matched: 15 files explicitly listed in scope section of the audit report.
- [16795] 2021-04-22.pdf — no match: Only the Vault contract is explicitly stated as in scope. Other contracts (e.g., ProtocolFeesCollector, PoolRegistry, BalancerPoolToken, InternalBalance, Fees, VaultAuthorization, Authorizer) are mentioned but not listed as in scope.
- [16796] 2022-09-23.pdf — matched: Scope explicitly lists ComposableStablePool.sol, StablePool.sol, WordCodec.sol. Audit date inferred from 'June - September 2022' using end of September.
- [16797] 2023-05-08.pdf — matched: Scope explicitly lists two contracts: TimelockAuthorizer.sol and TimelockAuthorizerManagement.sol. No date found in the report text.
- [16798] 2021-03-15.pdf — matched: Audit report for Balancer protocol. Scope section states 'smart contracts in the contracts directory' at commit 1cb36eb56a6b7dbd70bfa3dc16b53357b43b9d5a. Date from header 'March 2021'.
- [16799] 2021-10-09.pdf — matched: Three contracts explicitly listed in scope section.
- [16801] 2021-10-08.pdf — no match: Extracted from the report title page and executive summary. The report covers LinearPool and StablePhantomPool contracts, with additional contracts mentioned in findings.
- [16802] 2022-05-27.pdf — no match: The report explicitly lists the two contracts in the Project Targets and Project Coverage sections. The audit date is from the cover page: 'June 23, 2022'.
- [16803] 2022-09-02.pdf — no match: Extracted contracts from scope section, project targets, and project coverage. Audit date from cover page.
- [16804] 2022-10-25.pdf — no match: Extracted contract names from Project Coverage section (pages 8-9) and Project Targets section (page 7). Audit date from cover page and final delivery date.
- [16805] WONTFIX.md — no match: The provided text is a 'Known issues' section from an audit report, not the full report. It does not contain a scope section or list of audited contracts.
- [16807] 2024-12-17.pdf — matched: No explicit scope section found; contract names extracted from findings and file references. Date from cover page.
- [16808] 2024-12-31.pdf — no match: No explicit scope section; contracts inferred from finding contexts. Audit date from cover page.
- [16809] 2024-09-04.pdf — matched: All contracts in the balancer-v3-monorepo are in scope. Extracted contract names from file paths and findings. Audit date from project summary: work from August 6 to September 19, 2024.
- [16810] 2024-12-24.pdf — matched: All contracts listed in scope section of the report.
- [16811] 2025-01-30.pdf — matched: Three contracts in scope from Balancer V3 Stablepool Surge hook audit.
- [16812] 2025-02-07.pdf — no match: Only one contract in scope: MevTaxHook. Audit date is the end date of the engagement (7 Feb 2025).
- [16813] 2025-02-17.pdf — matched: Scope section explicitly lists four contracts in scope. Audit date is end date of engagement (17 February 2025).
- [16814] 2025-08-19.pdf — matched: Scope section explicitly lists 6 contracts. Audit date range 11 Aug to 19 Aug 2025, end date used.
- [16815] 2025-09-08.pdf — no match: Only one contract in scope: CompositeLiquidityRouter. Audit date is the end date of the engagement (September 4 to September 8, 2025).
- [16816] 2025-09-10.pdf — matched: Only one contract in scope: EclpLPOracle. Audit date inferred from work period September 9-10, 2025.
- [16817] 2026-01-26.pdf — matched: Audit report covers Balancer V3 contracts from balancer-v3-monorepo. Scope includes Vault, VaultAdmin, VaultCommon, VaultStorage, WeightedPool, WeightedMath, StablePool, StableMath, Gyro2CLPPool, Gyro2CLPMath, GyroECLPPool, GyroECLPMath, Router, CowPool, SurgePool, LBP, SeedlessLBP. Audit date is end of January 2026 (month and year only).
- [16818] 2024-10-04.pdf — matched: Extracted contract names from findings context and file paths. Audit date from report cover page.
- [16819] 2024-12-11.pdf — matched: Extracted contract names from Project Targets section and detailed findings. Audit date from cover page.
- [16821] 2022-05-27.pdf — matched: All 15 files listed in the scope section of the audit report.
- [16827] 2021-04-02.pdf — matched: Extracted from the executive summary and coverage sections. The audit date is April 5, 2021, as stated on the cover page.
- [16829] 2022-05-27.pdf — no match: The report explicitly lists the two contracts in scope in the Project Coverage section. The audit date is the final report delivery date (June 23, 2022).
- [16832] Active Bug Bounty Program — no match: The document is a bug bounty program description, not an audit report. It mentions Balancer V3 and V2 smart contracts but does not list specific contract names or file paths. No audit date is provided.
- [16833] Security — no match: Extracted contract names from the audit scope table. No single audit date found; multiple dates per audit.
- [16834] README.md — no match: Extracted contract names from the scope table in the audit report index. No single audit date as this is an index of multiple audits.
- [16835] Risks — no match: The provided text is a documentation page about risks and deployment addresses for Balancer contracts, not an audit report. No audit scope, contract names, or audit date were found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2022-05-27.pdf | IBasicAuthorizer | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | TimelockAuthorizer | own contract | TimelockAuthorizer (selected) `0x9e3cd0606db55ac68845bb60121847823712ae05` — deployed 2022-11-30 22:59:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-05-27.pdf | TimelockAuthorizerMigrator | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | TimelockExecutor | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | BalancerErrors | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IAuthentication | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | InputHelpers | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | ISignaturesValidator | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | ITemporarilyPausable | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IAuthorizer | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IFlashLoanRecipient | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IProtocolFeesCollector | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | Address | unmatched — not counted | — | listed in scope | no |
| 2021-04-22.pdf | Vault | unmatched — not counted | — | The scope of our verification was the Vault contract. | no |
| 2022-09-23.pdf | ComposableStablePool | unmatched — not counted | — | listed in scope | no |
| 2022-09-23.pdf | StablePool | own contract | StablePool (selected) `0x0a8afe82eb901cd5b19834ec9ed764ce4d85dd5d` — deployed 2025-04-04 22:17:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-09-23.pdf | WordCodec | unmatched — not counted | — | listed in scope | no |
| 2023-05-08.pdf | TimelockAuthorizer | own contract | TimelockAuthorizer (selected) `0x9e3cd0606db55ac68845bb60121847823712ae05` — deployed 2022-11-30 22:59:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-08.pdf | TimelockAuthorizerManagement | unmatched — not counted | — | listed in scope | no |
| 2021-03-15.pdf | Vault | unmatched — not counted | — | mentioned in scope and throughout report | no |
| 2021-03-15.pdf | Authorizer | unmatched — not counted | — | mentioned in scope and findings | no |
| 2021-03-15.pdf | Authorization | unmatched — not counted | — | finding L04 | no |
| 2021-03-15.pdf | StableMath | unmatched — not counted | — | finding H01 | no |
| 2021-03-15.pdf | PoolRegistry | unmatched — not counted | — | finding M01 | no |
| 2021-03-15.pdf | BalancerPoolToken | unmatched — not counted | — | finding L02 | no |
| 2021-03-15.pdf | FlashLoanProvider | unmatched — not counted | — | note N01 | no |
| 2021-03-15.pdf | StablePool | own contract | StablePool (selected) `0x0a8afe82eb901cd5b19834ec9ed764ce4d85dd5d` — deployed 2025-04-04 22:17:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2021-03-15.pdf | BaseGeneralPool | unmatched — not counted | — | note N05 | no |
| 2021-03-15.pdf | BasePool | unmatched — not counted | — | note N05 | no |
| 2021-03-15.pdf | WeightedMath | unmatched — not counted | — | note N06 | no |
| 2021-03-15.pdf | WeightedPool | own contract | WeightedPool (selected) `0x527d0e14acc53fb040debeae1cab973d23fb3568` — deployed 2024-12-05 17:37:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2021-03-15.pdf | Math | unmatched — not counted | — | note N06 | no |
| 2021-03-15.pdf | IVault | unmatched — not counted | — | note N07 | no |
| 2021-03-15.pdf | Swaps | unmatched — not counted | — | note N07 | no |
| 2021-03-15.pdf | BalanceAllocation | unmatched — not counted | — | note N07 | no |
| 2021-03-15.pdf | EnumerableMap | unmatched — not counted | — | note N07 | no |
| 2021-03-15.pdf | FixedPoint | unmatched — not counted | — | note N07 | no |
| 2021-03-15.pdf | BasePoolFactory | unmatched — not counted | — | note N08 | no |
| 2021-03-15.pdf | Address | unmatched — not counted | — | note N08 (import) | no |
| 2021-03-15.pdf | EnumerableSet | unmatched — not counted | — | note N08 (import) | no |
| 2021-03-15.pdf | IBasePool | unmatched — not counted | — | note N08 (import) | no |
| 2021-10-09.pdf | MultiRewards | unmatched — not counted | — | listed in scope | no |
| 2021-10-09.pdf | StablePool | own contract | StablePool (selected) `0x0a8afe82eb901cd5b19834ec9ed764ce4d85dd5d` — deployed 2025-04-04 22:17:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2021-10-09.pdf | StableMath | unmatched — not counted | — | listed in scope | no |
| 2021-10-08.pdf | LinearPool | unmatched — not counted | — | Listed in scope and findings targets | no |
| 2021-10-08.pdf | StablePhantomPool | unmatched — not counted | — | Listed in scope and findings targets | no |
| 2021-10-08.pdf | LinearMath | unmatched — not counted | — | Listed in findings targets | no |
| 2021-10-08.pdf | BasePool | unmatched — not counted | — | Mentioned as inherited contract in findings | no |
| 2021-10-08.pdf | BasePoolAuthorization | unmatched — not counted | — | Listed in finding target | no |
| 2021-10-08.pdf | PriceRateCache | unmatched — not counted | — | Mentioned in code quality recommendations | no |
| 2022-05-27.pdf | BalancerRelayer | unmatched — not counted | — | Project Coverage section: 'pkg/standalone-utils/contracts/relayer/ contains the multicall proxy, composed of the BalancerRelayer and BaseRelayerLibrary contracts.' | no |
| 2022-05-27.pdf | BaseRelayerLibrary | unmatched — not counted | — | Project Coverage section: 'pkg/standalone-utils/contracts/relayer/ contains the multicall proxy, composed of the BalancerRelayer and BaseRelayerLibrary contracts.' | no |
| 2022-09-02.pdf | ComposableStablePool | unmatched — not counted | — | listed in scope and detailed findings | no |
| 2022-09-02.pdf | StablePoolAmplification | unmatched — not counted | — | listed in project coverage and detailed findings | no |
| 2022-09-02.pdf | ComposableStablePoolRates | unmatched — not counted | — | listed in project coverage and detailed findings | no |
| 2022-09-02.pdf | ComposableStablePoolProtocolFees | unmatched — not counted | — | listed in project coverage and detailed findings | no |
| 2022-09-02.pdf | ComposableStablePoolStorage | unmatched — not counted | — | listed in project coverage and detailed findings | no |
| 2022-09-02.pdf | ComposableStablePoolFactory | unmatched — not counted | — | listed in project coverage | no |
| 2022-09-02.pdf | BasePool | unmatched — not counted | — | listed in detailed findings and project coverage | no |
| 2022-09-02.pdf | BaseGeneralPool | unmatched — not counted | — | listed in project coverage | no |
| 2022-09-02.pdf | ProtocolFeeCache | unmatched — not counted | — | listed in detailed findings | no |
| 2022-09-02.pdf | BasePoolAuthorization | unmatched — not counted | — | listed in appendix C | no |
| 2022-09-02.pdf | RecoveryMode | unmatched — not counted | — | listed in appendix C | no |
| 2022-10-25.pdf | ManagedPool | unmatched — not counted | — | Project Coverage section: 'ManagedPool. This contract implements a weighted token pool with preminted BPT.' | no |
| 2022-10-25.pdf | ManagedPoolSettings | unmatched — not counted | — | Project Coverage section: 'ManagedPoolSettings. This contract, inherited by the ManagedPool, stores the constants...' | no |
| 2022-10-25.pdf | ManagedPoolAumStorageLib | unmatched — not counted | — | Project Coverage section: 'ManagedPoolAumStorageLib. This contract saves the assets under management (AUM) fee percentage...' | no |
| 2022-10-25.pdf | ManagedPoolStorageLib | unmatched — not counted | — | Project Coverage section: 'ManagedPoolStorageLib. This contract controls variables related to weight change parameters...' | no |
| 2022-10-25.pdf | ManagedPoolTokenStorageLib | unmatched — not counted | — | Project Coverage section: 'ManagedPoolTokenStorageLib. This contract implements getters and setters for variables related to token weights...' | no |
| 2022-10-25.pdf | CircuitBreakerLib | unmatched — not counted | — | Project Coverage section: 'CircuitBreakerLib and CircuitBreakerStorageLib. These contracts implement minimum and maximum bounds on BPT prices...' | no |
| 2022-10-25.pdf | CircuitBreakerStorageLib | unmatched — not counted | — | Project Coverage section: 'CircuitBreakerLib and CircuitBreakerStorageLib. These contracts implement minimum and maximum bounds on BPT prices...' | no |
| 2022-10-25.pdf | WeightedJoinsLib | unmatched — not counted | — | Project Coverage section: 'WeightedJoinsLib and WeightedExitsLib. These two contracts wrap WeightedMath helper functions...' | no |
| 2022-10-25.pdf | WeightedExitsLib | unmatched — not counted | — | Project Coverage section: 'WeightedJoinsLib and WeightedExitsLib. These two contracts wrap WeightedMath helper functions...' | no |
| 2024-12-17.pdf | CompositeLiquidityRouter | unmatched — not counted | — | Listed in scope and findings | no |
| 2024-12-17.pdf | Vault | unmatched — not counted | — | Listed in scope and findings | no |
| 2024-12-17.pdf | VaultAdmin | own proxy deployment | VaultAdmin (proxy) (selected) `0x0e8b07657d719b86e06bf0806d6729e3d528c9a9` — deployed 2024-12-05 01:27:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-17.pdf | RouterCommon | unmatched — not counted | — | Listed in scope and findings | no |
| 2024-12-17.pdf | BatchRouter | own proxy deployment | BatchRouter (proxy) (selected) `0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1` — deployed 2024-12-06 02:15:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-17.pdf | ProtocolFeeController | own contract | ProtocolFeeController (selected) `0x212f884252792ebaaa811fb0678444b21c7c2879` — deployed 2025-03-08 20:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-17.pdf | StableMath | unmatched — not counted | — | Listed in scope and findings | no |
| 2024-12-17.pdf | Router | unmatched — not counted | — | Listed in scope and findings | no |
| 2024-12-31.pdf | BasePoolFactory | unmatched — not counted | — | mentioned in finding context | no |
| 2024-12-31.pdf | VaultAuxiliary | unmatched — not counted | — | mentioned in finding context | no |
| 2024-12-31.pdf | BalancerPoolToken | unmatched — not counted | — | mentioned in finding context | no |
| 2024-09-04.pdf | Vault | unmatched — not counted | — | listed in scope and findings | no |
| 2024-09-04.pdf | VaultAdmin | own proxy deployment | VaultAdmin (proxy) (selected) `0x0e8b07657d719b86e06bf0806d6729e3d528c9a9` — deployed 2024-12-05 01:27:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-04.pdf | VaultExtension | own proxy deployment | VaultExtension (proxy) (selected) `0xba1333333333a1ba1108e8412f11850a5c319ba9` — deployed 2024-12-05 01:27:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-04.pdf | VaultExplorer | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | RouterCommon | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | Router | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | BasePoolMath | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | WeightedMath | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | FixedPoint | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | VaultCommon | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | VaultStorage | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | PoolConfigLib | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | HooksConfigLib | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | PoolDataLib | unmatched — not counted | — | mentioned in formal verification assumptions | no |
| 2024-09-04.pdf | BalancerPoolToken | unmatched — not counted | — | mentioned in formal verification | no |
| 2024-09-04.pdf | ERC20MultiToken | unmatched — not counted | — | mentioned in formal verification | no |
| 2024-09-04.pdf | ProtocolFeeController | own contract | ProtocolFeeController (selected) `0x212f884252792ebaaa811fb0678444b21c7c2879` — deployed 2025-03-08 20:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-04.pdf | PoolMock | unmatched — not counted | — | mentioned in formal verification assumptions | no |
| 2024-12-24.pdf | Gyro2CLPPool | own contract | Gyro2CLPPool (selected) `0x4ffecd2dab8703a74bd13ba10bce3419b9f5fa80` — deployed 2025-04-03 17:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-24.pdf | Gyro2CLPPoolFactory | unmatched — not counted | — | listed in scope | no |
| 2024-12-24.pdf | GyroECLPPool | own contract | GyroECLPPool (selected) `0xc27d496a903c4328456f8a2de7457dcf4803cc4c` — deployed 2026-01-30 22:31:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-24.pdf | GyroECLPPoolFactory | own contract | GyroECLPPoolFactory (selected) `0x04d584195a96dffc7f8b695aa3c9d3c1606b69d1` — deployed 2026-01-30 22:29:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-24.pdf | Gyro2CLPMath | unmatched — not counted | — | listed in scope | no |
| 2024-12-24.pdf | GyroECLPMath | unmatched — not counted | — | listed in scope | no |
| 2024-12-24.pdf | GyroPoolMath | unmatched — not counted | — | listed in scope | no |
| 2024-12-24.pdf | SignedFixedPoint | unmatched — not counted | — | listed in scope | no |
| 2025-01-30.pdf | StableSurgeHook | unmatched — not counted | — | listed in scope | no |
| 2025-01-30.pdf | StableSurgePoolFactory | own contract | StableSurgePoolFactory (selected) `0x187a05fb9e4234dd310ae74215743560d1baa6ac` — deployed 2026-01-17 00:28:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-30.pdf | StableSurgeMedianMath | unmatched — not counted | — | listed in scope | no |
| 2025-02-07.pdf | MevTaxHook | unmatched — not counted | — | listed in scope | no |
| 2025-02-17.pdf | LBPool | own contract | LBPool (selected) `0x0954601f4b1ffece41a411a66f4546620f121b8c` — deployed 2025-12-19 23:49:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-02-17.pdf | LBPoolFactory | own contract | LBPoolFactory (selected) `0x02916d8f0891309806fcb347bf4191692cbddcaf` — deployed 2025-07-08 04:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-02-17.pdf | LBPoolLib | unmatched — not counted | — | listed in scope | no |
| 2025-02-17.pdf | GradualValueChange | unmatched — not counted | — | listed in scope | no |
| 2025-08-19.pdf | LPOracleBase | unmatched — not counted | — | listed in scope | no |
| 2025-08-19.pdf | LPOracleFactoryBase | unmatched — not counted | — | listed in scope | no |
| 2025-08-19.pdf | StableLPOracle | own contract | StableLPOracle (selected) `0x4dcc26930a571d7a3f2f8e5e221f5f00810aa8dc` — deployed 2026-02-26 17:42:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-08-19.pdf | StableLPOracleFactory | unmatched — not counted | — | listed in scope | no |
| 2025-08-19.pdf | WeightedLPOracleBase | unmatched — not counted | — | listed in scope | no |
| 2025-08-19.pdf | WeightedLPOracleFactory | own contract | WeightedLPOracleFactory (selected) `0x05503b3ade04aca81c8d6f88ecb73ba156982d2b` — deployed 2025-08-20 20:43:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-08.pdf | CompositeLiquidityRouter | unmatched — not counted | — | listed in scope | no |
| 2025-09-10.pdf | EclpLPOracle | own contract | EclpLPOracle (selected) `0xed9031a1300d721cf859ee2ba1f0fb33dc9928a2` — deployed 2026-02-26 17:50:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-26.pdf | Vault | unmatched — not counted | — | listed in scope and test suite review | no |
| 2026-01-26.pdf | VaultAdmin | own proxy deployment | VaultAdmin (proxy) (selected) `0x0e8b07657d719b86e06bf0806d6729e3d528c9a9` — deployed 2024-12-05 01:27:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-26.pdf | VaultCommon | unmatched — not counted | — | listed in scope and test suite review | no |
| 2026-01-26.pdf | VaultStorage | unmatched — not counted | — | listed in scope and test suite review | no |
| 2026-01-26.pdf | WeightedPool | own contract | WeightedPool (selected) `0x527d0e14acc53fb040debeae1cab973d23fb3568` — deployed 2024-12-05 17:37:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-26.pdf | WeightedMath | unmatched — not counted | — | listed in scope and test suite review | no |
| 2026-01-26.pdf | StablePool | own contract | StablePool (selected) `0x0a8afe82eb901cd5b19834ec9ed764ce4d85dd5d` — deployed 2025-04-04 22:17:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-26.pdf | StableMath | unmatched — not counted | — | listed in scope and test suite review | no |
| 2026-01-26.pdf | Gyro2CLPPool | own contract | Gyro2CLPPool (selected) `0x4ffecd2dab8703a74bd13ba10bce3419b9f5fa80` — deployed 2025-04-03 17:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-26.pdf | Gyro2CLPMath | unmatched — not counted | — | listed in scope and test suite review | no |
| 2026-01-26.pdf | GyroECLPPool | own contract | GyroECLPPool (selected) `0xc27d496a903c4328456f8a2de7457dcf4803cc4c` — deployed 2026-01-30 22:31:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-26.pdf | GyroECLPMath | unmatched — not counted | — | listed in scope and test suite review | no |
| 2026-01-26.pdf | Router | unmatched — not counted | — | mentioned as in scope in threat model | no |
| 2026-01-26.pdf | CowPool | unmatched — not counted | — | described as other pool type in scope | no |
| 2026-01-26.pdf | SurgePool | unmatched — not counted | — | described as other pool type in scope | no |
| 2026-01-26.pdf | LBP | unmatched — not counted | — | described as other pool type in scope | no |
| 2026-01-26.pdf | SeedlessLBP | unmatched — not counted | — | described as other pool type in scope | no |
| 2024-10-04.pdf | Vault | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | VaultCommon | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | Router | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | RouterCommon | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | BatchRouter | own proxy deployment | BatchRouter (proxy) (selected) `0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1` — deployed 2024-12-06 02:15:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-04.pdf | IBatchRouter | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | ProtocolFeeController | own contract | ProtocolFeeController (selected) `0x212f884252792ebaaa811fb0678444b21c7c2879` — deployed 2025-03-08 20:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-04.pdf | IProtocolFeeController | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | BasePoolFactory | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | VaultExtension | own proxy deployment | VaultExtension (proxy) (selected) `0xba1333333333a1ba1108e8412f11850a5c319ba9` — deployed 2024-12-05 01:27:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-04.pdf | IRouterCommon | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | StableMath | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | PoolDataLib | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | StablePool | own contract | StablePool (selected) `0x0a8afe82eb901cd5b19834ec9ed764ce4d85dd5d` — deployed 2025-04-04 22:17:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-11.pdf | Vault | unmatched — not counted | — | listed in scope and detailed findings | no |
| 2024-12-11.pdf | VaultExtension | own proxy deployment | VaultExtension (proxy) (selected) `0xba1333333333a1ba1108e8412f11850a5c319ba9` — deployed 2024-12-05 01:27:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-11.pdf | VaultAdmin | own proxy deployment | VaultAdmin (proxy) (selected) `0x0e8b07657d719b86e06bf0806d6729e3d528c9a9` — deployed 2024-12-05 01:27:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-11.pdf | ProtocolFeeCollector | unmatched — not counted | — | mentioned in project coverage | no |
| 2024-12-11.pdf | BalancerPoolToken | unmatched — not counted | — | mentioned in project coverage and finding TOB-BALV3-19 | no |
| 2024-12-11.pdf | BasePoolMath | unmatched — not counted | — | mentioned in project coverage | no |
| 2024-12-11.pdf | StableMath | unmatched — not counted | — | mentioned in project coverage | no |
| 2024-12-11.pdf | WeightedMath | unmatched — not counted | — | mentioned in project coverage | no |
| 2024-12-11.pdf | Router | unmatched — not counted | — | mentioned in project coverage and finding TOB-BALV3-20 | no |
| 2024-12-11.pdf | BatchRouter | own proxy deployment | BatchRouter (proxy) (selected) `0x136f1efcc3f8f88516b9e94110d56fdbfb1778d1` — deployed 2024-12-06 02:15:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-11.pdf | RouterCommon | unmatched — not counted | — | mentioned in findings TOB-BALV3-17 and TOB-BALV3-18 | no |
| 2024-12-11.pdf | PoolDataLib | unmatched — not counted | — | mentioned in finding TOB-BALV3-7 | no |
| 2024-12-11.pdf | ProtocolFeeController | own contract | ProtocolFeeController (selected) `0x212f884252792ebaaa811fb0678444b21c7c2879` — deployed 2025-03-08 20:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-05-27.pdf | IBasicAuthorizer | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | TimelockAuthorizer | own contract | TimelockAuthorizer (selected) `0x9e3cd0606db55ac68845bb60121847823712ae05` — deployed 2022-11-30 22:59:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-05-27.pdf | TimelockAuthorizerMigrator | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | TimelockExecutor | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | BalancerErrors | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IAuthentication | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | InputHelpers | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | ISignaturesValidator | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | ITemporarilyPausable | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IAuthorizer | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IFlashLoanRecipient | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IProtocolFeesCollector | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | Address | unmatched — not counted | — | listed in scope | no |
| 2021-04-02.pdf | Authorizer | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | EmergencyPeriod | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | AssetTransferHandler | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | FlashLoanProvider | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | InternalBalance | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | PoolRegistry | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | ProtocolFeesCollector | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | Fees | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | Swaps | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | VaultAuthorization | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | Vault | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | BasePool | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | BasePoolFactory | unmatched — not counted | — | mentioned in findings | no |
| 2021-04-02.pdf | StablePool | own contract | StablePool (selected) `0x0a8afe82eb901cd5b19834ec9ed764ce4d85dd5d` — deployed 2025-04-04 22:17:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2021-04-02.pdf | WeightedPool | own contract | WeightedPool (selected) `0x527d0e14acc53fb040debeae1cab973d23fb3568` — deployed 2024-12-05 17:37:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2021-04-02.pdf | StableMath | unmatched — not counted | — | mentioned in findings | no |
| 2021-04-02.pdf | WeightedMath | unmatched — not counted | — | mentioned in findings | no |
| 2021-04-02.pdf | BalancerPoolToken | unmatched — not counted | — | mentioned in findings | no |
| 2021-04-02.pdf | StablePoolUserDataHelpers | unmatched — not counted | — | mentioned in code quality recommendations | no |
| 2021-04-02.pdf | WeightedPoolUserDataHelpers | unmatched — not counted | — | mentioned in code quality recommendations | no |
| 2021-04-02.pdf | BalancerHelpers | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | EnumerableMap | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | LogExpMath | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | FixedPoint | unmatched — not counted | — | mentioned in findings | no |
| 2021-04-02.pdf | Authentication | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | StablePoolFactory | unmatched — not counted | — | mentioned in findings | no |
| 2021-04-02.pdf | WeightedPoolFactory | own contract | WeightedPoolFactory (selected) `0x201efd508c8dfe9de1a13c2452863a78cb2a86cc` — deployed 2024-12-05 17:37:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-05-27.pdf | BalancerRelayer | unmatched — not counted | — | Project Coverage section: 'pkg/standalone-utils/contracts/relayer/ contains the multicall proxy, composed of the BalancerRelayer and BaseRelayerLibrary contracts.' | no |
| 2022-05-27.pdf | BaseRelayerLibrary | unmatched — not counted | — | Project Coverage section: 'pkg/standalone-utils/contracts/relayer/ contains the multicall proxy, composed of the BalancerRelayer and BaseRelayerLibrary contracts.' | no |
| Security | Vault | unmatched — not counted | — | listed in scope table | no |
| Security | Weighted Pool | unmatched — not counted | — | listed in scope table | no |
| Security | Stable Pool | unmatched — not counted | — | listed in scope table | no |
| Security | MultiRewards | unmatched — not counted | — | listed in scope table | no |
| Security | Linear Pool | unmatched — not counted | — | listed in scope table | no |
| Security | Stable Phantom Pool | unmatched — not counted | — | listed in scope table | no |
| Security | Timelock Authorizer | unmatched — not counted | — | listed in scope table | no |
| Security | Batch Relayer | unmatched — not counted | — | listed in scope table | no |
| Security | Composable Stable Pool | unmatched — not counted | — | listed in scope table | no |
| Security | Managed Pool | unmatched — not counted | — | listed in scope table | no |
| README.md | Vault | unmatched — not counted | — | listed in scope table | no |
| README.md | Weighted Pool | unmatched — not counted | — | listed in scope table | no |
| README.md | Stable Pool | unmatched — not counted | — | listed in scope table | no |
| README.md | MultiRewards | unmatched — not counted | — | listed in scope table | no |
| README.md | Linear Pool | unmatched — not counted | — | listed in scope table | no |
| README.md | Stable Phantom Pool | unmatched — not counted | — | listed in scope table | no |
| README.md | Timelock Authorizer | unmatched — not counted | — | listed in scope table | no |
| README.md | Batch Relayer | unmatched — not counted | — | listed in scope table | no |
| README.md | Composable Stable Pool | unmatched — not counted | — | listed in scope table | no |
| README.md | Managed Pool | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x309abcaefa19ca6d34f0d8ff4a4103317c138657` | AggregatorRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6337949cbc4825bbd09242c811770f6f6fee9ffc` | ArbitrumRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1c99324edc771c82a0dccb780cc7dda0045e50e7` | ArbitrumRootGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6048a8c631fb7e77eca533cf9c29784e482391e7` | AuthorizerWithAdaptorValidation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3eae4a1c2e36870a006e816930d9f55df0a72a13` | AvalancheRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x10f3e79911a490aa5b5d5cda6f111029c4eab5ac` | AvalancheRootGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x239e55f427d44c3cc793f49bfb507ebe76638a2b` | BalancerMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf302f9f50958c5593770fdf4d4812309ff77414f` | BalancerTokenAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb848f50141f3d4255b37ac288c25c109104f2158` | BALTokenHolderFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9a4d642b9876231bb9062559521a48097abfe6cb` | BaseRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8e3b64b3737097f283e965869e3503aa20f31e4d` | BaseRootGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2cf8e145bdfe7c52b49ad9bb3c294a31b2736c59` | Boost Delegation V2.1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x99364f84d1c68d87aead0ce92eb47409a0c52c58` | ConstantPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x179c68302a24e4e59667b3df7fb70c1c5dcec5d3` | FixedPriceLBPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb1aa94421aecfb1dc17ddb1068e4609c4be8758` | FixedPriceLBPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2ffb7b215ae7f088ec2530c7aa8e1b24e398f26a` | GaugeAdder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1b57f637ce3408f1f834b0b70f9a595b062daea7` | GaugeAdderMigrationCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdab2583911e872a00a851fb80dcc78a4b46ba57c` | GaugeWorkingBalanceHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05277ce7d1e365d660624612d8b8b9b55bfd4518` | GnosisRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x343688c5cb92115a52ca485af7f62b4b7a2e9ccc` | L2GaugeCheckpointer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4e7bbd911cf1efa442bc1b2e9ea01ffe785412ec` | LiquidityGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1bca39b01f451b0a05d7030e6e6981a73b716b1c` | MevCaptureHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe241c6e48ca045c7f631600a0f1403b2bfea05ad` | OmniVotingEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbc230b1a66a138cd9cfc7b352390025978dfadde` | OptimismRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3083a1c455ff38d39e58dbac5040f465cf73c5c8` | OptimismRootGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x37302b98918382c43a176e5f3bc7b11448cc6498` | OptimisticRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18cc3c68a5e64b40c846aa6e45312cbcbb94f71b` | OptimisticRootGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe53d8f8aaafd95fcc7196e393ec5a907df44495e` | PolygonRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c4287b07d293e361281bceee8715c8cdeb64e34` | PolygonRootGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45bf48d996d22afc9bc150df7fb4d13a49088602` | PolygonZkEVMRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9bf951848288ccd87d06fac426150262cd3447de` | PolygonZkEVMRootGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5a962cdc2786875ca5c40adc09d874e4d6711a74` | ProtocolFeeHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000ab3853737842bed7dabe3540e3e5336fe62a6` | ReClammPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5d3d2d18148baace45d09254513bcf2c548c4480` | SingleRecipientGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4fb47126fa83a8734991e41b942ac29a3266c968` | SingleRecipientGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c8f71d19f87c0bd1b9bad2484ecc3388d5dbb98` | StakelessGaugeCheckpointer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x34ac9f7eba9213c827fe5abf5b09a16f4d0cc69b` | TribeBALMinterCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xee47ef369cda5a65639d7794b70a4d247826ddf3` | veBALGaugeFixCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd13afc362f619b840c8f4aac1d957ce219ef37ca` | veBALL2GaugeSetupCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6f5a2ee11e7a772aeb5114a20d0d7c0ff61eb8a0` | VotingEscrowDelegationProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2e96068b3d5b5bae3d7515da4a1d2e52d08a2647` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09917922379404a25aba9183bcae7bab72e7e8ec` | WeightedLPOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa5bf2ddf098bb0ef6d120c98217dd6b141c74ee0` | WeightedPool2TokensFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x27ad56b2bfcb923091d80ca2d657aeba5ac3121c` | WrappedBalancerPoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 149 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 311 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 38 own (10 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 197 unmatched
- Matched-own operational status: 38 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=26, low=4, medium=2
- Match method counts: unique_name=45

Zero-match audit list:

- [16793] test-report.md
- [16795] 2021-04-22.pdf
- [16801] 2021-10-08.pdf
- [16802] 2022-05-27.pdf
- [16803] 2022-09-02.pdf
- [16804] 2022-10-25.pdf
- [16805] WONTFIX.md
- [16808] 2024-12-31.pdf
- [16812] 2025-02-07.pdf
- [16815] 2025-09-08.pdf
- [16829] 2022-05-27.pdf
- [16833] Security
- [16834] README.md
- [16835] Risks

Fork inheritance lineage and inherited audits are included when available.
