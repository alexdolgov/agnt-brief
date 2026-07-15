# Agentic Audit Brief: Lido

## Export Authority

- Production state: **published scope**
- Raw selected rows: 298 across 76 audit(s)
- Eligible audit results: 145 (76 matched; 69 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Lido (`lido`)
- Website: [https://lido.fi/](https://lido.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, gnosis, linea, mantle, mode, moonbeam, moonriver, optimism, polygon, scroll, swellchain, unichain, zksync-era
- Contract surface: 645 unique implementations (662 raw deployments)
- Coverage basis: 90/109 confirmed own live verified implementations (82.6%); conservative 82.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $14,419,982,777.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Lido. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 129 contract row(s) across arbitrum, base, bsc, ethereum, gnosis, linea, mantle, mode, moonbeam, moonriver, optimism, polygon, scroll, swellchain, unichain, zksync-era. Structural roles: 75 core, 45 supporting, 6 unclassified, 3 infra. 36 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 129
- Structural roles: core (75), supporting (45), unclassified (6), infra (3)
- Contract kinds: contract (121), unclassified (5), abstract (3)
- Detected standards: accesscontrol (12), erc165 (11), ownable (10), erc20 (9), erc1967proxy (8), erc20permit (5), chainlinkaggregator (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (76), openzeppelin-upgradeable (18)
- Upgradeable-pattern rows: 36

## Fork Analysis

7 of 323 contracts are derived from known codebases. 316 contracts have no detected origin.

### Forked Contracts

**AppProxyUpgradeable** (`0xb9e5cb...753d86`, chain 1)
Origin: lido (`0x3e40d7...6e9c8c`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ArbitrumBridgeExecutor** (`0x1dca41...4b1a29`, chain 42161)
Origin: compound-finance (`0x0e3759...46eacf`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BokkyPooBahsDateTimeContract** (`0x75100b...e5db3c`, chain 1)
Origin: frax-finance (`0x90503d...624736`)
Containment: 100.0% - 41 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ComposableStablePool** (`0xde45f1...12072d`, chain 10)
Origin: hinkal (`0x20a61b...66c5a9`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Mooniswap** (`0xc1a900...4c7431`, chain 1)
Origin: deeplock (`0x168926...e1f2a4`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**OptimismBridgeExecutor** (`0x0e3759...46eacf`, chain 8453)
Origin: compound-finance (`0x0e3759...46eacf`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**WeightedPool** (`0x178e02...323746`, chain 42161)
Origin: hinkal (`0x380aab...4d0fad`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d2aef...fef5f6`, chain 1)
- UnnamedContract (`0x12a43b...9a9030`, chain 1)
- UnnamedContract (`0x14cef2...ac7f41`, chain 1)
- UnnamedContract (`0x168cfe...b6b6d4`, chain 1)
- UnnamedContract (`0x17f6b2...44633d`, chain 1)
- UnnamedContract (`0x18a106...aeffff`, chain 1)
- UnnamedContract (`0x1bdffe...38959c`, chain 1)
- UnnamedContract (`0x1f2b79...03897e`, chain 1)
- UnnamedContract (`0x200da0...7009d1`, chain 1)
- UnnamedContract (`0x231ac6...8c80b8`, chain 1)
- UnnamedContract (`0x2325b0...bb2968`, chain 1)
- UnnamedContract (`0x25fdc3...216a78`, chain 1)
- UnnamedContract (`0x281e6b...26c97e`, chain 1)
- UnnamedContract (`0x29d4fa...597d5d`, chain 1)
- UnnamedContract (`0x2b5a39...a2e850`, chain 1)
- UnnamedContract (`0x2b6a2f...104a34`, chain 1)
- UnnamedContract (`0x2f8779...96c72d`, chain 1)
- UnnamedContract (`0x313819...95645a`, chain 1)
- UnnamedContract (`0x3b525f...0c9e2f`, chain 1)
- UnnamedContract (`0x3e2d25...e492a7`, chain 1)
- UnnamedContract (`0x3f0534...b8a368`, chain 1)
- UnnamedContract (`0x3f9600...95eb74`, chain 1)
- UnnamedContract (`0x48c135...4f9252`, chain 1)
- UnnamedContract (`0x48c492...e5163a`, chain 1)
- UnnamedContract (`0x49d136...f8c55f`, chain 1)
- UnnamedContract (`0x4ee311...99c792`, chain 1)
- UnnamedContract (`0x5181d5...1a5a53`, chain 1)
- UnnamedContract (`0x550326...e028d5`, chain 1)
- UnnamedContract (`0x558978...005ad6`, chain 1)
- UnnamedContract (`0x5db427...f7ad6c`, chain 1)
- UnnamedContract (`0x5dcf7c...0251a1`, chain 1)
- UnnamedContract (`0x5f456f...3f2c63`, chain 1)
- UnnamedContract (`0x5fbe8c...4ca789`, chain 1)
- UnnamedContract (`0x606f77...85d942`, chain 1)
- UnnamedContract (`0x607823...c2b82f`, chain 1)
- UnnamedContract (`0x6330fe...8b4d70`, chain 1)
- UnnamedContract (`0x64b6af...221a7c`, chain 1)
- UnnamedContract (`0x65d4d9...1cfdc4`, chain 1)
- UnnamedContract (`0x68267f...1133c2`, chain 1)
- UnnamedContract (`0x6828b0...4f81ae`, chain 1)
- UnnamedContract (`0x6ab39a...50d17c`, chain 1)
- UnnamedContract (`0x6b535f...b2dc0d`, chain 1)
- UnnamedContract (`0x6ca840...b6a600`, chain 1)
- UnnamedContract (`0x6e04ae...a51b69`, chain 1)
- UnnamedContract (`0x6f09d2...03f449`, chain 1)
- UnnamedContract (`0x6f5c0a...2a6400`, chain 1)
- UnnamedContract (`0x6faccc...98dff4`, chain 1)
- UnnamedContract (`0x71093e...0688e4`, chain 1)
- UnnamedContract (`0x73b047...2777bd`, chain 1)
- UnnamedContract (`0x753d51...271709`, chain 1)
- UnnamedContract (`0x755610...aa1877`, chain 1)
- UnnamedContract (`0x76943c...e05de6`, chain 1)
- UnnamedContract (`0x79f5e2...d6f06d`, chain 1)
- UnnamedContract (`0x7c2a1e...846aaf`, chain 1)
- UnnamedContract (`0x7e8eff...5f97d7`, chain 1)
- UnnamedContract (`0x7fadb6...df355a`, chain 1)
- UnnamedContract (`0x828b15...696056`, chain 1)
- UnnamedContract (`0x834560...0cb759`, chain 1)
- UnnamedContract (`0x852ded...503cee`, chain 1)
- UnnamedContract (`0x86f6c3...725551`, chain 1)
- UnnamedContract (`0x8772e3...17760c`, chain 1)
- UnnamedContract (`0x87d93d...5012b5`, chain 1)
- UnnamedContract (`0x8b7854...515f45`, chain 1)
- UnnamedContract (`0x8ba6d3...918d42`, chain 1)
- UnnamedContract (`0x8f73e4...3228b7`, chain 1)
- UnnamedContract (`0x92abc0...687e66`, chain 1)
- UnnamedContract (`0x935598...369a7c`, chain 1)
- UnnamedContract (`0x935cb3...202b77`, chain 1)
- UnnamedContract (`0x958e0d...85e63b`, chain 1)
- UnnamedContract (`0x95b521...035f3f`, chain 1)
- UnnamedContract (`0x96c9a8...24ab37`, chain 1)
- UnnamedContract (`0x97615f...6c0d74`, chain 1)
- UnnamedContract (`0x98be4a...49c37d`, chain 1)
- UnnamedContract (`0x99ac10...d9056b`, chain 1)
- UnnamedContract (`0x9b1ceb...f86956`, chain 1)
- UnnamedContract (`0x9d28ad...31e428`, chain 1)
- UnnamedContract (`0x9de443...571e72`, chain 1)
- UnnamedContract (`0x9eb816...c74071`, chain 1)
- UnnamedContract (`0xa02fc8...d6d647`, chain 1)
- UnnamedContract (`0xa12bc9...066ced`, chain 1)
- UnnamedContract (`0xa1acc1...1f25c0`, chain 1)
- UnnamedContract (`0xaa3288...07637f`, chain 1)
- UnnamedContract (`0xadd673...a6fdee`, chain 1)
- UnnamedContract (`0xae7ab9...d7fe84`, chain 1)
- UnnamedContract (`0xae7b19...95b433`, chain 1)
- UnnamedContract (`0xaf35a6...5faed7`, chain 1)
- UnnamedContract (`0xb0fe4d...1abb43`, chain 1)
- UnnamedContract (`0xb314d4...cc67e0`, chain 1)
- UnnamedContract (`0xb948a9...fe2bd9`, chain 1)
- UnnamedContract (`0xb9d793...7e293f`, chain 1)
- UnnamedContract (`0xbd08f9...43b3ea`, chain 1)
- UnnamedContract (`0xbd2b6d...65fb8c`, chain 1)
- UnnamedContract (`0xc18f11...2a5022`, chain 1)
- UnnamedContract (`0xc1d0b3...cfd2eb`, chain 1)
- UnnamedContract (`0xc4e3ff...e9f21c`, chain 1)
- UnnamedContract (`0xc52fc3...71880f`, chain 1)
- UnnamedContract (`0xc69685...7c544d`, chain 1)
- UnnamedContract (`0xc6c1f0...c99bb1`, chain 1)
- UnnamedContract (`0xc7792b...eb18af`, chain 1)
- UnnamedContract (`0xcf33a3...b454f0`, chain 1)
- UnnamedContract (`0xd30dc3...26e14b`, chain 1)
- UnnamedContract (`0xd43a3e...6785df`, chain 1)
- UnnamedContract (`0xd54c1c...c32ffe`, chain 1)
- UnnamedContract (`0xd624b0...f0b288`, chain 1)
- UnnamedContract (`0xd6a676...e39426`, chain 1)
- UnnamedContract (`0xd99cc6...f618d0`, chain 1)
- UnnamedContract (`0xda1df6...56add0`, chain 1)
- UnnamedContract (`0xda22fa...86d546`, chain 1)
- UnnamedContract (`0xda7de2...9ea83f`, chain 1)
- UnnamedContract (`0xdadc4c...b47ab4`, chain 1)
- UnnamedContract (`0xdbfa0b...0a715c`, chain 1)
- UnnamedContract (`0xdc2431...f67022`, chain 1)
- UnnamedContract (`0xdc5fe1...0063dc`, chain 1)
- UnnamedContract (`0xdc7300...d79776`, chain 1)
- UnnamedContract (`0xde06d1...3ac437`, chain 1)
- UnnamedContract (`0xdfa0bc...468610`, chain 1)
- UnnamedContract (`0xe0b234...70da97`, chain 1)
- UnnamedContract (`0xe1f6ba...50f780`, chain 1)
- UnnamedContract (`0xe2a682...a82c8c`, chain 1)
- UnnamedContract (`0xe5656e...1e26eb`, chain 1)
- UnnamedContract (`0xe76c52...3f573a`, chain 1)
- UnnamedContract (`0xe78717...addd0d`, chain 1)
- UnnamedContract (`0xedc0d2...abdf17`, chain 1)
- UnnamedContract (`0xee1e3b...0ae49d`, chain 1)
- UnnamedContract (`0xee60c6...480ec4`, chain 1)
- UnnamedContract (`0xf0396a...81972b`, chain 1)
- UnnamedContract (`0xf1647c...503129`, chain 1)
- UnnamedContract (`0xf23559...fa7eac`, chain 1)
- UnnamedContract (`0xf2476f...033477`, chain 1)
- UnnamedContract (`0xf4bf42...eaaac3`, chain 1)
- UnnamedContract (`0xf4f6a0...275ea5`, chain 1)
- UnnamedContract (`0xf50586...9066d6`, chain 1)
- UnnamedContract (`0xf5dc67...e654b1`, chain 1)
- UnnamedContract (`0xf65614...bee2f5`, chain 1)
- UnnamedContract (`0xf668e6...cfe6f0`, chain 1)
- UnnamedContract (`0xf95f06...98610e`, chain 1)
- UnnamedContract (`0xfdab48...ea0ad4`, chain 1)
- UnnamedContract (`0xfddf38...f12999`, chain 1)
- UnnamedContract (`0xff22ea...cfb077`, chain 1)
- UnnamedContract (`0xffa96d...3d72fd`, chain 1)
- UnnamedContract (`0xffe215...f49081`, chain 1)
- UnnamedContract (`0x273460...283e2e`, chain 10)
- UnnamedContract (`0x4bf0d4...60ced3`, chain 10)
- UnnamedContract (`0x4cf8fe...613088`, chain 10)
- UnnamedContract (`0x5a9d69...486a61`, chain 10)
- UnnamedContract (`0x5fc53f...10fcb7`, chain 10)
- UnnamedContract (`0x75483c...0f2839`, chain 10)
- UnnamedContract (`0x76a50b...d24138`, chain 10)
- UnnamedContract (`0x8e0101...fb6957`, chain 10)
- UnnamedContract (`0x91ce2f...51a98a`, chain 10)
- UnnamedContract (`0x981fb0...c27aef`, chain 10)
- UnnamedContract (`0xd420d6...76a81a`, chain 10)
- UnnamedContract (`0xda74db...b65c54`, chain 10)
- UnnamedContract (`0xe9b65d...98d761`, chain 10)
- UnnamedContract (`0xefa0db...966fc3`, chain 10)
- UnnamedContract (`0xfe5704...2b7334`, chain 10)
- UnnamedContract (`0x15ad24...e9b98a`, chain 56)
- UnnamedContract (`0x29e681...98518d`, chain 56)
- UnnamedContract (`0x451d44...a73ee5`, chain 56)
- UnnamedContract (`0x6981f5...0a0278`, chain 56)
- UnnamedContract (`0x723aea...c41b13`, chain 56)
- UnnamedContract (`0x8e5175...7a123d`, chain 56)
- UnnamedContract (`0xb7ba81...edd8ee`, chain 56)
- UnnamedContract (`0xb948a9...fe2bd9`, chain 56)
- UnnamedContract (`0xbe3f7e...dc9986`, chain 56)
- UnnamedContract (`0xc2b778...d14c8f`, chain 56)
- UnnamedContract (`0xc93443...d8a408`, chain 56)
- UnnamedContract (`0xcd867b...01c230`, chain 56)
- UnnamedContract (`0xe82c2a...486838`, chain 56)
- UnnamedContract (`0xf0396a...81972b`, chain 56)
- UnnamedContract (`0x37de96...d960e6`, chain 100)
- UnnamedContract (`0x332ca3...85cffe`, chain 130)
- UnnamedContract (`0x3b00f2...dfc4a0`, chain 130)
- UnnamedContract (`0x537a7f...1029af`, chain 130)
- UnnamedContract (`0x5a007d...6bebc3`, chain 130)
- UnnamedContract (`0x81f250...a0a84f`, chain 130)
- UnnamedContract (`0xb5cf09...4a1a1d`, chain 130)
- UnnamedContract (`0xc02fe7...a92001`, chain 130)
- UnnamedContract (`0xd835fa...12c9f8`, chain 130)
- UnnamedContract (`0xf0396a...81972b`, chain 130)
- UnnamedContract (`0x37de96...d960e6`, chain 137)
- UnnamedContract (`0xd65fa5...8800a9`, chain 137)
- UnnamedContract (`0x0d7f0a...acfe94`, chain 324)
- UnnamedContract (`0x65b05f...4dfd02`, chain 324)
- UnnamedContract (`0xadb90c...d50bee`, chain 324)
- UnnamedContract (`0xf7169e...0b1913`, chain 324)
- UnnamedContract (`0xdafc1d...8d77a4`, chain 1285)
- UnnamedContract (`0x6ef6cd...1fe2f6`, chain 5000)
- UnnamedContract (`0xa8579d...ff953c`, chain 5000)
- UnnamedContract (`0x37de96...d960e6`, chain 8453)
- UnnamedContract (`0x4f793e...11e935`, chain 8453)
- UnnamedContract (`0x69ce25...243309`, chain 8453)
- UnnamedContract (`0x7063ef...50a9a2`, chain 8453)
- UnnamedContract (`0xac9d11...4287ab`, chain 8453)
- UnnamedContract (`0xc1cba3...0ee452`, chain 8453)
- UnnamedContract (`0x244912...c9eade`, chain 34443)
- UnnamedContract (`0x1840c4...2d0b56`, chain 42161)
- UnnamedContract (`0x5979d7...800529`, chain 42161)
- UnnamedContract (`0x7acbea...38d494`, chain 42161)
- UnnamedContract (`0xc20129...1af5cc`, chain 42161)
- UnnamedContract (`0xd97221...00fdb4`, chain 42161)
- UnnamedContract (`0xe75886...a4b0a7`, chain 42161)
- UnnamedContract (`0xfb5e6d...ac329c`, chain 42161)
- UnnamedContract (`0xfdcf20...11de34`, chain 42161)
- UnnamedContract (`0x1e1f6f...39774e`, chain 59144)
- UnnamedContract (`0x353012...a8ceb9`, chain 59144)
- UnnamedContract (`0x74be82...405670`, chain 59144)
- UnnamedContract (`0xa8ef4d...74c1b6`, chain 59144)
- UnnamedContract (`0xb5bedd...68fc8f`, chain 59144)
- UnnamedContract (`0xc0583e...30b010`, chain 59144)
- UnnamedContract (`0xd90ed3...777137`, chain 59144)
- UnnamedContract (`0xf951d7...4eb927`, chain 59144)
- UnnamedContract (`0x7ba516...bdf8cd`, chain 534352)
- UnnamedContract (`0xf58075...384ee6`, chain 534352)
- ActivateNodeOperators (`0xcbb418...2db5c8`, chain 1)
- AddAllowedRecipient (`0x1f809d...6129b6`, chain 1)
- AddMEVBoostRelays (`0x00a3d6...d7be60`, chain 1)
- AddNodeOperators (`0xcaa3af...5c9639`, chain 1)
- AllowedRecipientsBuilder (`0x334d6e...a9b9ff`, chain 1)
- AllowedRecipientsFactory (`0x83e976...07642b`, chain 1)
- AllowedRecipientsRegistry (`0x1a7cfa...3868c0`, chain 1)
- AllowedTokensRegistry (`0x4ac40c...2551ca`, chain 1)
- AlterTiersInOperatorGrid (`0x37d9b0...f9b62e`, chain 1)
- AppProxyPinned (`0x853cc0...19093a`, chain 1)
- AppProxyUpgradeable (`0x0cb113...8a29c9`, chain 1)
- AppProxyUpgradeable (`0x0d97e8...eb1831`, chain 1)
- AppProxyUpgradeable (`0x2e59a2...1e618e`, chain 1)
- AppProxyUpgradeable (`0x3e40d7...6e9c8c`, chain 1)
- AppProxyUpgradeable (`0x9895f0...1b37bb`, chain 1)
- AppProxyUpgradeable (`0xf73a12...9a3249`, chain 1)
- AssetRecovererLib (`0xa74528...cc01d9`, chain 1)
- ChangeNodeOperatorManagers (`0xe31a05...3c9a7d`, chain 1)
- CircuitBreaker (`0x6019cb...dfb2f7`, chain 1)
- CSEjector (`0xc72b58...00802c`, chain 1)
- CSModule (`0x1eb6d4...a07665`, chain 1)
- CSMSettleElStealingPenalty (`0xf6b6e7...da76f4`, chain 1)
- CSMSetVettedGateTree (`0xbc5642...d97308`, chain 1)
- CSStrikes (`0x3e5021...8956a0`, chain 1)
- CuratedSubmitExitRequestHashes (`0x4f716a...71dcde`, chain 1)
- Dashboard (`0x294825...989af3`, chain 1)
- DataBus (`0x37de96...d960e6`, chain 10)
- DeactivateNodeOperators (`0x8b82c1...2672e7`, chain 1)
- DualGovernance (`0xc1db28...a4486e`, chain 1)
- EasyTrack (`0xf0211b...a13fea`, chain 1)
- EditMEVBoostRelays (`0x6b7863...025535`, chain 1)
- EmergencyProtectedTimelock (`0xce0425...2d2316`, chain 1)
- ERC1967Proxy (`0x723aea...c41b13`, chain 1)
- ERC1967Proxy (`0x26c5e0...e9611c`, chain 56)
- ERC20Bridged (`0x0fbcba...8e1921`, chain 42161)
- Escrow (`0x165813...228e1c`, chain 1)
- EVMScriptExecutor (`0xfe5986...b3f977`, chain 1)
- Executor (`0x23e0b4...537021`, chain 1)
- GnosisSafeProxy (`0x086375...f640f7`, chain 1)
- GnosisSafeProxy (`0x007132...80d1b1`, chain 1284)
- GnosisSafeProxy (`0x0f9a0e...ff0725`, chain 8453)
- HyperLaneAdapter (`0x8d374d...b3a7f3`, chain 1)
- ImmutableDualGovernanceConfigProvider (`0xa1692a...4cb5ef`, chain 1)
- IncreaseNodeOperatorStakingLimit (`0xfebd8f...46afe0`, chain 1)
- InsuranceFund (`0x8b3f33...bede35`, chain 1)
- KernelProxy (`0xb8ffc3...4088dc`, chain 1)
- LayerZeroAdapter (`0x742650...b54411`, chain 1)
- LidoExecutionLayerRewardsVault (`0x388c81...b19297`, chain 1)
- MerkleDistributor (`0x4b3edb...49622b`, chain 1)
- MetaStablePool (`0x322969...130230`, chain 1)
- MinFirstAllocationStrategy (`0x7e70de...42d993`, chain 1)
- MiniMeToken (`0x5a98fc...ef1b32`, chain 1)
- NOAddresses (`0xe4d5a7...67fffc`, chain 1)
- OperatorGrid (`0xa612e3...932c2c`, chain 1)
- OracleDaemonConfig (`0xbf05a9...c23b09`, chain 1)
- OssifiableProxy (`0x06cd61...5f4193`, chain 1)
- OssifiableProxy (`0x0de4ea...bf5c6e`, chain 1)
- OssifiableProxy (`0x0f25c1...0e8e5a`, chain 1)
- OssifiableProxy (`0x1d201b...176709`, chain 1)
- OssifiableProxy (`0x23ed61...04cddf`, chain 1)
- OssifiableProxy (`0x4d4074...ddf7fb`, chain 1)
- OssifiableProxy (`0x4d72bf...69e5da`, chain 1)
- OssifiableProxy (`0x889edc...12f9b1`, chain 1)
- OssifiableProxy (`0x1f32b1...194ebb`, chain 10)
- OssifiableProxy (`0x294ed1...36c9d0`, chain 10)
- OssifiableProxy (`0x1a513e...dee372`, chain 130)
- OssifiableProxy (`0x07d469...331b82`, chain 42161)
- Pool (`0x2149a5...3a1a0a`, chain 42161)
- QueueLib (`0x6eff46...aa2e55`, chain 1)
- RegisterGroupsInOperatorGrid (`0x17305d...7eea7c`, chain 1)
- RemoveAllowedRecipient (`0x22010d...c5693b`, chain 1)
- RemoveMEVBoostRelays (`0x9721c0...9c0306`, chain 1)
- ResealManager (`0x7914b5...522d24`, chain 1)
- SafeProxy (`0x13600b...1b8727`, chain 1)
- SafeProxy (`0xac8bc6...fc20ef`, chain 130)
- SDVTSubmitExitRequestHashes (`0x58a59d...b56e37`, chain 1)
- SetJailStatusInOperatorGrid (`0x6a4f33...f0d305`, chain 1)
- SetNodeOperatorNames (`0x7d509b...a83ae4`, chain 1)
- SetNodeOperatorRewardAddresses (`0x589e29...24e2c0`, chain 1)
- SetVettedValidatorsLimits (`0xd75778...35c19d`, chain 1)
- StakingRouter (`0x226f92...38173a`, chain 1)
- StakingVault (`0x06a564...784553`, chain 1)
- Stonks (`0x278f7b...65a5c7`, chain 1)
- TiebreakerSubCommittee (`0x3d3ba5...ab2951`, chain 1)
- TimeConstraints (`0x2a30f5...749dda`, chain 1)
- TimelockedGovernance (`0x553337...6a7cce`, chain 1)
- TokenRateNotifier (`0x25e358...b05ba9`, chain 1)
- TopUpAllowedRecipients (`0x00caae...c91458`, chain 1)
- TransceiverStructs (`0x27a3da...b852c9`, chain 56)
- TransparentUpgradeableProxy (`0x051f1d...ea3319`, chain 1)
- TransparentUpgradeableProxy (`0x40c446...66022f`, chain 56)
- TriggerableWithdrawalsGateway (`0xdc0011...b3037b`, chain 1)
- UniswapV2Pair (`0xc55781...1ce849`, chain 1)
- UpdateTargetValidatorLimits (`0x161a45...0f399b`, chain 1)
- ValidatorConsolidationRequests (`0xac4aae...7fe018`, chain 1)
- ValidatorExitDelayVerifier (`0xbdb567...4ec82f`, chain 1)
- VaultFactory (`0x02ca77...34175a`, chain 1)
- VaultsAdapter (`0x28f9ac...120f27`, chain 1)
- WithdrawalVault (`0x7d2baa...4fd53d`, chain 1)
- WormholeAdapter (`0xbb1e43...1ef119`, chain 56)
- WstETH (`0x7f39c5...5e2ca0`, chain 1)
- WstETHReferralStaker (`0xa88f03...20dd0d`, chain 1)

## Contract Surface Quality

- Indexed contracts: 129; live-surface contracts included: 129 (109 live, 20 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 311/521 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 90/109 (82.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 311 own, 98 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 236 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 59
- Deployed-live implementations: 311 of 645 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 90/109
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 202
- Unique implementations: 645
- Raw deployments: 662
- Audits discovered: 145 (145 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 76
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/lido/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 53 fresh, 30 aging, 61 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 58 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 55 match-unverified
- Tier 1 coverage: 27.5% (Certora, ChainSecurity, Code4rena, Cyfrin, MixBytes, OpenZeppelin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Statemind | Tier 2 | 46 | 42.2% | 2025-09 |
| yAudit | Tier 2 | 42 | 38.5% | 2026-04 |
| Ackee Blockchain | Tier 2 | 22 | 20.2% | 2026-02 |
| Certora | Tier 1 | 22 | 20.2% | 2026-01 |
| Oxorio | Tier 2 | 17 | 15.6% | 2024-08 |
| MixBytes | Tier 1 | 14 | 12.8% | 2026-05 |
| OpenZeppelin | Tier 1 | 9 | 8.3% | 2025-02 |
| Runtime Verification | Tier 2 | 5 | 4.6% | 2025-02 |
| ChainSecurity | Tier 1 | 4 | 3.7% | 2024-06 |
| Hexens | Tier 2 | 2 | 1.8% | 2023-05 |
| Quantstamp | Tier 2 | 2 | 1.8% | 2024-09 |
| Sigma Prime | Tier 2 | 2 | 1.8% | 2026-01 |
| Code4rena | Tier 1 | 1 | 0.9% | 2026-03 |
| Composable Security | Tier 2 | 1 | 0.9% | 2026-06 |
| Cyfrin | Tier 1 | 1 | 0.9% | 2026-05 |
| Nethermind | Tier 2 | 1 | 0.9% | 2026-04 |
| Pessimistic | Tier 2 | 1 | 0.9% | 2023-12 |
| Spearbit | Tier 1 | 1 | 0.9% | 2026-03 |
| Verilog | Tier 2 | 1 | 0.9% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (90)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245716 | 2 deployments: ethereum `0x23ed61...04cddf`; ethereum `0xd43a3e...6785df` | ✅ Audited |
| ActivateNodeOperators | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245424 | `0xcbb418...2db5c8` | ✅ Audited |
| AddAllowedRecipient | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245231 | `0x1f809d...6129b6` | ✅ Audited |
| AddMEVBoostRelays | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245201 | `0x00a3d6...d7be60` | ✅ Audited |
| AddNodeOperators | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245423 | `0xcaa3af...5c9639` | ✅ Audited |
| AllowedRecipientsBuilder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245254 | `0x334d6e...a9b9ff` | ✅ Audited |
| AllowedRecipientsFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245340 | `0x83e976...07642b` | ✅ Audited |
| AllowedRecipientsRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245225 | `0x1a7cfa...3868c0` | ✅ Audited |
| AllowedTokensRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245275 | `0x4ac40c...2551ca` | ✅ Audited |
| AlterTiersInOperatorGrid | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245256 | `0x37d9b0...f9b62e` | ✅ Audited |
| ArbitrumBridgeExecutor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245594 | `0x1dca41...4b1a29` | ✅ Audited |
| AssetRecovererLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245387 | `0xa74528...cc01d9` | ✅ Audited |
| AxelarTransceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245709 | `0x723aea...c41b13` | ✅ Audited |
| ChangeNodeOperatorManagers | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245467 | `0xe31a05...3c9a7d` | ✅ Audited |
| CircuitBreaker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245292 | `0x6019cb...dfb2f7` | ✅ Audited |
| CrossChainController | unknown | project_anchor | own_supporting | 1 | bsc | unit-245733 | 2 deployments: bsc `0x40c446...66022f`; bsc `0xb7ba81...edd8ee` | ✅ Audited |
| CSAccounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245705 | 2 deployments: ethereum `0x4d72bf...69e5da`; ethereum `0x6f09d2...03f449` | ✅ Audited |
| CSEjector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245418 | `0xc72b58...00802c` | ✅ Audited |
| CSExitPenalties | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245718 | 2 deployments: ethereum `0x06cd61...5f4193`; ethereum `0xda22fa...86d546` | ✅ Audited |
| CSFeeOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245721 | 2 deployments: ethereum `0x4d4074...ddf7fb`; ethereum `0xe0b234...70da97` | ✅ Audited |
| CSModule | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245228 | `0x1eb6d4...a07665` | ✅ Audited |
| CSMSettleElStealingPenalty | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245495 | `0xf6b6e7...da76f4` | ✅ Audited |
| CSMSetVettedGateTree | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245403 | `0xbc5642...d97308` | ✅ Audited |
| CSStrikes | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245262 | `0x3e5021...8956a0` | ✅ Audited |
| CuratedSubmitExitRequestHashes | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245278 | `0x4f716a...71dcde` | ✅ Audited |
| Dashboard | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245244 | `0x294825...989af3` | ✅ Audited |
| DataBus | unknown | project_anchor | own_supporting | 0 | optimism | unit-245513 | `0x37de96...d960e6` | ✅ Audited |
| DeactivateNodeOperators | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245351 | `0x8b82c1...2672e7` | ✅ Audited |
| DualGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245412 | `0xc1db28...a4486e` | ✅ Audited |
| EasyTrack | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245479 | `0xf0211b...a13fea` | ✅ Audited |
| EditMEVBoostRelays | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245306 | `0x6b7863...025535` | ✅ Audited |
| EmergencyProtectedTimelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245428 | `0xce0425...2d2316` | ✅ Audited |
| ERC20Bridged | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245591 | `0x0fbcba...8e1921` | ✅ Audited |
| ERC20BridgedPermit | unknown | project_anchor | own_supporting | 1 | optimism | unit-245727 | 2 deployments: optimism `0x1f32b1...194ebb`; optimism `0xfe5704...2b7334` | ✅ Audited |
| Escrow | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245218 | `0x165813...228e1c` | ✅ Audited |
| EVMScriptExecutor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245502 | `0xfe5986...b3f977` | ✅ Audited |
| EVMScriptRegistry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245714 | `0x853cc0...19093a` | ✅ Audited |
| Executor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245238 | `0x23e0b4...537021` | ✅ Audited |
| HyperLaneAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245354 | `0x8d374d...b3a7f3` | ✅ Audited |
| ImmutableDualGovernanceConfigProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245383 | `0xa1692a...4cb5ef` | ✅ Audited |
| IncreaseNodeOperatorStakingLimit | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245503 | `0xfebd8f...46afe0` | ✅ Audited |
| InsuranceFund | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245347 | `0x8b3f33...bede35` | ✅ Audited |
| L1ERC20TokenGateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245715 | 2 deployments: ethereum `0x0f25c1...0e8e5a`; ethereum `0xc4e3ff...e9f21c` | ✅ Audited |
| L2ERC20ExtendedTokensBridge | unknown | project_anchor | own_supporting | 1 | unichain | unit-245730 | 2 deployments: unichain `0x1a513e...dee372`; unichain `0x332ca3...85cffe` | ✅ Audited |
| L2ERC20TokenGateway | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-245731 | 2 deployments: arbitrum `0x07d469...331b82`; arbitrum `0xe75886...a4b0a7` | ✅ Audited |
| LayerZeroAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245317 | `0x742650...b54411` | ✅ Audited |
| LidoExecutionLayerRewardsVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245257 | `0x388c81...b19297` | ✅ Audited |
| MinFirstAllocationStrategy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245331 | `0x7e70de...42d993` | ✅ Audited |
| MiniMeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245287 | `0x5a98fc...ef1b32` | ✅ Audited |
| NOAddresses | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245468 | `0xe4d5a7...67fffc` | ✅ Audited |
| OperatorGrid | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245386 | `0xa612e3...932c2c` | ✅ Audited |
| OptimismBridgeExecutor | unknown | project_anchor | own_supporting | 0 | base | unit-245691 | `0x0e3759...46eacf` | ✅ Audited |
| OracleDaemonConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245408 | `0xbf05a9...c23b09` | ✅ Audited |
| QueueLib | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245310 | `0x6eff46...aa2e55` | ✅ Audited |
| RegisterGroupsInOperatorGrid | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245221 | `0x17305d...7eea7c` | ✅ Audited |
| RemoveAllowedRecipient | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245234 | `0x22010d...c5693b` | ✅ Audited |
| RemoveMEVBoostRelays | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245368 | `0x9721c0...9c0306` | ✅ Audited |
| Repo | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245712 | `0x0d97e8...eb1831` | ✅ Audited |
| ResealManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245324 | `0x7914b5...522d24` | ✅ Audited |
| SDVTSubmitExitRequestHashes | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245286 | `0x58a59d...b56e37` | ✅ Audited |
| SetJailStatusInOperatorGrid | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245303 | `0x6a4f33...f0d305` | ✅ Audited |
| SetNodeOperatorNames | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245330 | `0x7d509b...a83ae4` | ✅ Audited |
| SetNodeOperatorRewardAddresses | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245285 | `0x589e29...24e2c0` | ✅ Audited |
| SetVettedValidatorsLimits | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245448 | `0xd75778...35c19d` | ✅ Audited |
| StakingRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245235 | `0x226f92...38173a` | ✅ Audited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245205 | `0x06a564...784553` | ✅ Audited |
| Stonks | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245241 | `0x278f7b...65a5c7` | ✅ Audited |
| TiebreakerSubCommittee | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245260 | `0x3d3ba5...ab2951` | ✅ Audited |
| TimeConstraints | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245246 | `0x2a30f5...749dda` | ✅ Audited |
| TimelockedGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245281 | `0x553337...6a7cce` | ✅ Audited |
| TokenBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245723 | `0x051f1d...ea3319` | ✅ Audited |
| TokenRateNotifier | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245239 | `0x25e358...b05ba9` | ✅ Audited |
| TokenRateOracle | unknown | project_anchor | own_supporting | 1 | optimism | unit-245726 | 2 deployments: optimism `0x294ed1...36c9d0`; optimism `0x4bf0d4...60ced3` | ✅ Audited |
| TopUpAllowedRecipients | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245202 | `0x00caae...c91458` | ✅ Audited |
| TransceiverStructs | unknown | project_anchor | own_supporting | 0 | bsc | unit-245636 | `0x27a3da...b852c9` | ✅ Audited |
| TriggerableWithdrawalsGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245455 | `0xdc0011...b3037b` | ✅ Audited |
| UpdateTargetValidatorLimits | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245217 | `0x161a45...0f399b` | ✅ Audited |
| ValidatorConsolidationRequests | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245393 | `0xac4aae...7fe018` | ✅ Audited |
| ValidatorExitDelayVerifier | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245406 | `0xbdb567...4ec82f` | ✅ Audited |
| ValidatorsExitBusOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245710 | `0x0de4ea...bf5c6e` | ✅ Audited |
| VaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245203 | `0x02ca77...34175a` | ✅ Audited |
| VaultHub | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245704 | 2 deployments: ethereum `0x1d201b...176709`; ethereum `0x6330fe...8b4d70` | ✅ Audited |
| VaultsAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245243 | `0x28f9ac...120f27` | ✅ Audited |
| Voting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245724 | `0x2e59a2...1e618e` | ✅ Audited |
| WithdrawalQueueERC721 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245722 | `0x889edc...12f9b1` | ✅ Audited |
| WithdrawalVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245329 | `0x7d2baa...4fd53d` | ✅ Audited |
| WormholeAdapter | unknown | project_anchor | own_supporting | 0 | bsc | unit-245671 | `0xbb1e43...1ef119` | ✅ Audited |
| WstETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245334 | `0x7f39c5...5e2ca0` | ✅ Audited |
| WstEthL2Token | unknown | project_anchor | own_supporting | 1 | bsc | unit-245732 | 2 deployments: bsc `0x26c5e0...e9611c`; bsc `0x451d44...a73ee5` | ✅ Audited |
| WstETHReferralStaker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245388 | `0xa88f03...20dd0d` | ✅ Audited |

### ⚠️ Verified + Unaudited (275)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1def31...ac01bd` | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1655ad...cb2419` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0050d5...397af7` | ⚠️ Unaudited |
| Accountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15a94d...8ba7b6` | ⚠️ Unaudited |
| AccountingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x010ecb...dcf9df` | ⚠️ Unaudited |
| ACL | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245711 | `0x9895f0...1b37bb` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeffdcb...230e3e` | ⚠️ Unaudited |
| AddRewardProgram | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d1503...0dd4e3` | ⚠️ Unaudited |
| Agent | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245701 | `0x3e40d7...6e9c8c` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8551d2...00fdb2` | ⚠️ Unaudited |
| AmountConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb95faf...489711` | ⚠️ Unaudited |
| APMRegistry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245708 | `0x0cb113...8a29c9` | ⚠️ Unaudited |
| AStETH | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245713 | 2 deployments: ethereum `0x1982b2...f82428`; ethereum `0xbd233d...42893a` | ⚠️ Unaudited |
| ATokenWithDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x366ae3...f20593` | ⚠️ Unaudited |
| AuraProposalEncoder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5e941...483287` | ⚠️ Unaudited |
| AuthManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | `0x107779...f9185b` | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6e8439...b95704` | ⚠️ Unaudited |
| BokkyPooBahsDateTimeContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245318 | `0x75100b...e5db3c` | ⚠️ Unaudited |
| BridgedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x05f519...e8aef7` | ⚠️ Unaudited |
| BridgeOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b9ac...b126c7` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0359bc...2793f5` | ⚠️ Unaudited |
| CallForwardingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3697bd...bf367d` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x031828...1dcf87` | ⚠️ Unaudited |
| CbEthSynchronicityPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ae293...09332c` | ⚠️ Unaudited |
| CCIPAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12176e...f2da7f` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30b622...88bee7` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x004bae...4d5b57` | ⚠️ Unaudited |
| Claimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2819b6...e7520d` | ⚠️ Unaudited |
| CLrETHSynchronicityPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05225c...e99d56` | ⚠️ Unaudited |
| CLSynchronicityPriceAdapterPegToBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x230e03...1fe56f` | ⚠️ Unaudited |
| CLwstETHSynchronicityPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x981ab5...1b8774` | ⚠️ Unaudited |
| CoinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3e65ac...deb474` | ⚠️ Unaudited |
| Collector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80f2c0...dd5439` | ⚠️ Unaudited |
| ComposableStablePool | unknown | project_anchor | own_supporting | 0 | optimism | unit-245531 | `0xde45f1...12072d` | ⚠️ Unaudited |
| CompositePostRebaseBeaconReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55a7e1...bdd431` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2dc44c...6f5fa2` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4bea5e...bedfd8` | ⚠️ Unaudited |
| CrossChainExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x250227...25427e` | ⚠️ Unaudited |
| CrosschainForwarderBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x321522...078942` | ⚠️ Unaudited |
| CrowdProposal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62134f...45df23` | ⚠️ Unaudited |
| CryptoCabz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76bf9a...ed5c30` | ⚠️ Unaudited |
| CSEarlyAdoption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d5148...f90c0e` | ⚠️ Unaudited |
| CSFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17fc61...e444f0` | ⚠️ Unaudited |
| CSParametersRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eee39...58fa5e` | ⚠️ Unaudited |
| CSVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c345d...a38e8b` | ⚠️ Unaudited |
| CustomBridgedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x0ece76...2203f0` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245504 | `0xff04ed...d5a77c` | ⚠️ Unaudited |
| DelayedWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x755a07...05cf85` | ⚠️ Unaudited |
| Delegation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8287f4...2e88f0` | ⚠️ Unaudited |
| DelegationMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d2a80...7ab639` | ⚠️ Unaudited |
| DepositSecurityModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dca6e...d0e052` | ⚠️ Unaudited |
| DGLaunchOmnibusMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1db8a9...eb63b4` | ⚠️ Unaudited |
| DGLaunchStateVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd48c2f...160cec` | ⚠️ Unaudited |
| DGRolesValidatorMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31534e...2d7981` | ⚠️ Unaudited |
| DGUpgradeOmnibusMainnet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245299 | `0x679880...1ca1b0` | ⚠️ Unaudited |
| DGUpgradeStateVerifierMainnet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245268 | `0x487b76...904786` | ⚠️ Unaudited |
| DualAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01065f...57c71e` | ⚠️ Unaudited |
| Dummy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x136d84...d2ccfa` | ⚠️ Unaudited |
| DummyEmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f6541...beda31` | ⚠️ Unaudited |
| DummyERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x556f50...aa9e6d` | ⚠️ Unaudited |
| DummyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2f3bd...2be82a` | ⚠️ Unaudited |
| DummyERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b821...085978` | ⚠️ Unaudited |
| DummyMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x578360...11ed5f` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0017ab...7f9cf4` | ⚠️ Unaudited |
| EIP712StETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075cef...8e28c7` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8c8fb1...e985e3` | ⚠️ Unaudited |
| EnforcedTxGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x642af4...806318` | ⚠️ Unaudited |
| ENSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50130b...121267` | ⚠️ Unaudited |
| ERC1155Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0b9020...6eb88f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76cf3b...5fc2d3` | ⚠️ Unaudited |
| ERC20Predicate | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245230 | `0x1f4c1e...9884f6` | ⚠️ Unaudited |
| ERC20RebasableBridgedPermit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x39afe2...8b9463` | ⚠️ Unaudited |
| ERC721Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aaae2...931dbb` | ⚠️ Unaudited |
| EtherPredicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x499a86...b85ab4` | ⚠️ Unaudited |
| EthLongMovePermissionsPayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x274a46...0b179c` | ⚠️ Unaudited |
| ETHRegistrarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb75db...d18295` | ⚠️ Unaudited |
| EthShortMovePermissionsPayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbb023...7894cf` | ⚠️ Unaudited |
| EthShortV2Payload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62f5c2...584148` | ⚠️ Unaudited |
| EthShortV3Payload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92b64d...e5007a` | ⚠️ Unaudited |
| FeeSharing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8680ce...4b7020` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x6df6c0...2f271b` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0e57c8...5c2dc8` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x176211...1ee1ff` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xc0ce92...5cd772` | ⚠️ Unaudited |
| Finance | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245707 | `0xb9e5cb...753d86` | ⚠️ Unaudited |
| FixedRatioSynchronicityPriceAdapterBaseToPeg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac3af0...06d93b` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26e0e1...0bf332` | ⚠️ Unaudited |
| FLOKI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6efff7...ec673b` | ⚠️ Unaudited |
| ForceValidatorExitsInVaultHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c968c...69a6aa` | ⚠️ Unaudited |
| FxStateRootTunnel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7dd5c...87fc66` | ⚠️ Unaudited |
| GasSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4ccd4c...59c17a` | ⚠️ Unaudited |
| GateSeal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881dad...5a365c` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245717 | `0x086375...f640f7` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-245728 | `0x007132...80d1b1` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 0 | base | unit-245692 | `0x0f9a0e...ff0725` | ⚠️ Unaudited |
| Greeter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1763b9...16163a` | ⚠️ Unaudited |
| GUDOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67953f...1a0171` | ⚠️ Unaudited |
| HashConsensus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64bc15...b421ea` | ⚠️ Unaudited |
| IncreaseVettedValidatorsLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc9934...7fb996` | ⚠️ Unaudited |
| JointCampaign | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245355 | `0x8f1155...f0370d` | ⚠️ Unaudited |
| Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2a558...9f182f` | ⚠️ Unaudited |
| Kernel | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245700 | `0xb8ffc3...4088dc` | ⚠️ Unaudited |
| L1BatchBridgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5bcfd9...852bc4` | ⚠️ Unaudited |
| L1CustomERC20Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40c3c3...6d6c97` | ⚠️ Unaudited |
| L1ERC1155Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x244bf7...2f8cd7` | ⚠️ Unaudited |
| L1ERC20Bridge | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245703 | 2 deployments: ethereum `0x41527b...d55989`; ethereum `0x43a66b...c21ccd` | ⚠️ Unaudited |
| L1ERC20TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29c5c5...65efa4` | ⚠️ Unaudited |
| L1ERC721Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6260af...21554b` | ⚠️ Unaudited |
| L1ETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fcbe0...d5c55d` | ⚠️ Unaudited |
| L1Executor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245204 | `0x06185d...336d3b` | ⚠️ Unaudited |
| L1GatewayRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb93ac0...f798f3` | ⚠️ Unaudited |
| L1LidoGateway | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245725 | 2 deployments: ethereum `0x6625c6...a3f504`; ethereum `0xf4f206...f2262f` | ⚠️ Unaudited |
| L1LidoTokensBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0789f3...a648b6` | ⚠️ Unaudited |
| L1LiskToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6033f7...90ae3f` | ⚠️ Unaudited |
| L1MessageQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc9d74...adcf8f` | ⚠️ Unaudited |
| L1MessageQueueV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39c36c...052eca` | ⚠️ Unaudited |
| L1MessageQueueWithGasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d7e90...39af9b` | ⚠️ Unaudited |
| L1OpEURCFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9a9a...cb2c67` | ⚠️ Unaudited |
| L1ScrollMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6774bc...d8b367` | ⚠️ Unaudited |
| L1StandardERC20Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4015fc...f6239c` | ⚠️ Unaudited |
| L1USDCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec393...90bf36` | ⚠️ Unaudited |
| L1USDCGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a5810...2b5432` | ⚠️ Unaudited |
| L1VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x114cb3...42ee23` | ⚠️ Unaudited |
| L1VestingWalletPaused | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2b0cf...4cd087` | ⚠️ Unaudited |
| L1WETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7ac440...a9d4fe` | ⚠️ Unaudited |
| L2ERC20TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x0fc3de...d73d01` | ⚠️ Unaudited |
| L2GasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x987e30...c33852` | ⚠️ Unaudited |
| L2LidoGateway | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-245617 | `0x2b9beb...623c24` | ⚠️ Unaudited |
| L2MessageService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x05d437...b960fd` | ⚠️ Unaudited |
| L2USDCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x199810...5a5521` | ⚠️ Unaudited |
| L2WstETHToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-245619 | `0x38224d...55247e` | ⚠️ Unaudited |
| LaunchOmnibusMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ffda8...c14d71` | ⚠️ Unaudited |
| LazyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47f3a6...863a5b` | ⚠️ Unaudited |
| Ledger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1c7c3c...b84269` | ⚠️ Unaudited |
| LedgerBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x36cf86...3da7eb` | ⚠️ Unaudited |
| LedgerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x780825...8e0ede` | ⚠️ Unaudited |
| LegacyOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29b81...2d7e0e` | ⚠️ Unaudited |
| Lido | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0f096e...d9f3b9` | ⚠️ Unaudited |
| LidoLocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c3994...34b3df` | ⚠️ Unaudited |
| LidoOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x143019...e84abd` | ⚠️ Unaudited |
| LidoStVaultYieldProviderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4fc9f...f73959` | ⚠️ Unaudited |
| LineaBridgeExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x280983...822c95` | ⚠️ Unaudited |
| LineaRollup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04728b...885631` | ⚠️ Unaudited |
| LineaSurgeXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x96b3a1...124b82` | ⚠️ Unaudited |
| LineaVoyageXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd83af4...cf599a` | ⚠️ Unaudited |
| LineaXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc24e7b...9cfc13` | ⚠️ Unaudited |
| LinkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x880387...714f1e` | ⚠️ Unaudited |
| LockedFBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0x791caa...eeac39` | ⚠️ Unaudited |
| LUSDStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf93a85...af9f32` | ⚠️ Unaudited |
| ManyChainMultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ea3f7...040bb3` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x885904...78b2bf` | ⚠️ Unaudited |
| Mediator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe34949...93c9ac` | ⚠️ Unaudited |
| Merkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x195fe6...5dfa0b` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245276 | `0x4b3edb...49622b` | ⚠️ Unaudited |
| MerklePatriciaProof | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6fa4f...d1c0aa` | ⚠️ Unaudited |
| MetaStablePool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245253 | `0x322969...130230` | ⚠️ Unaudited |
| METHL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xeb0c39...7956ce` | ⚠️ Unaudited |
| MintableERC721Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bf44a...c6e0b6` | ⚠️ Unaudited |
| MJAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x532e52...94163f` | ⚠️ Unaudited |
| Mooniswap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245410 | `0xc1a900...4c7431` | ⚠️ Unaudited |
| MultipleVersionRollupVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ea29d...8998f6` | ⚠️ Unaudited |
| NameWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa53cca...13c223` | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6c71...fdd7f3` | ⚠️ Unaudited |
| NodeOperatorsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x177004...b42135` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bbaab...46aa61` | ⚠️ Unaudited |
| OFTAdapterSwETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1b34...6f94e2` | ⚠️ Unaudited |
| OpStackTokenRatePusher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02b2d3...c205d2` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xcdd475...a0a5cf` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa73bc3...c8858d` | ⚠️ Unaudited |
| OracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa41902...605981` | ⚠️ Unaudited |
| OracleMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x425fa6...3c1b5b` | ⚠️ Unaudited |
| OracleReportSanityChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x623239...461e75` | ⚠️ Unaudited |
| OracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79ef3a...cb5a31` | ⚠️ Unaudited |
| OssifiableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-245586 | `0x98f96a...562d81` | ⚠️ Unaudited |
| OwnedResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9453dc...f4c06f` | ⚠️ Unaudited |
| PauseController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x22e5c2...dc83e7` | ⚠️ Unaudited |
| PaymentSplitterWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d2504...b6febb` | ⚠️ Unaudited |
| PermissionlessGate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2305e0...4fce0a` | ⚠️ Unaudited |
| PlonkVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2edcbd...942c52` | ⚠️ Unaudited |
| PlonkVerifierForDataAggregation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb0c26...d153be` | ⚠️ Unaudited |
| PlonkVerifierForMultiTypeDataAggregation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ab455...d24cc4` | ⚠️ Unaudited |
| PlonkVerifierFull | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6312e5...d06e1b` | ⚠️ Unaudited |
| PlonkVerifierFullLarge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2edea6...f4bee0` | ⚠️ Unaudited |
| PlonkVerifierMainnetFull | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d3457...865d32` | ⚠️ Unaudited |
| PoLidoNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e3af1...56f8da` | ⚠️ Unaudited |
| Pool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245595 | `0x2149a5...3a1a0a` | ⚠️ Unaudited |
| PredepositGuarantee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc08c3...71a023` | ⚠️ Unaudited |
| ProtocolDebugBinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01434a...95458d` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0833f5...b1a963` | ⚠️ Unaudited |
| PublicResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x86c5ae...733126` | ⚠️ Unaudited |
| RBACTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a8977...1f8c7f` | ⚠️ Unaudited |
| RegisterTiersInOperatorGrid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5292a1...51c17f` | ⚠️ Unaudited |
| RegistryFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939f1c...73bf8c` | ⚠️ Unaudited |
| ReleaseRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bd444...b6c4f6` | ⚠️ Unaudited |
| RemoveRewardProgram | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc21e5e...963932` | ⚠️ Unaudited |
| RepFixedPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc77514...0610f7` | ⚠️ Unaudited |
| ReverseRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08d3ff...2b67d5` | ⚠️ Unaudited |
| RewardExtractor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3715d2...cecbc6` | ⚠️ Unaudited |
| RewardProgramsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3129c0...85bc9a` | ⚠️ Unaudited |
| RLPReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbefe61...b1bc47` | ⚠️ Unaudited |
| RoleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bb44f...975bf3` | ⚠️ Unaudited |
| RolesAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2db758...efa4dd` | ⚠️ Unaudited |
| RolesValidatorMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc90e7c...0b9e8e` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfbf795...151e7d` | ⚠️ Unaudited |
| RootChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bff34...3421cb` | ⚠️ Unaudited |
| RSwellOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x428cda...b2ac58` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245702 | `0x13600b...1b8727` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | unichain | unit-245729 | `0xac8bc6...fc20ef` | ⚠️ Unaudited |
| SafeMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ebeac...a93aab` | ⚠️ Unaudited |
| ScrollBridgeExecutor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-245615 | `0x0c67d8...94ee09` | ⚠️ Unaudited |
| ScrollChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa13baf...c1e556` | ⚠️ Unaudited |
| SelfOwnedStETHBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4b17b...0a9f13` | ⚠️ Unaudited |
| SetLiabilitySharesTargetInVaultHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e5cc7...c1e969` | ⚠️ Unaudited |
| ShapellaUpgradeTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa818ff...cd600a` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x87fb7b...6ca602` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0f8605...c1a5fe` | ⚠️ Unaudited |
| SocializeBadDebtInVaultHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1df505...e6d32c` | ⚠️ Unaudited |
| StableDebtStETH | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245706 | 2 deployments: ethereum `0x664576...8aaf55`; ethereum `0x818094...86aea9` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39808c...90b220` | ⚠️ Unaudited |
| StakingRewardsSushi | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245322 | `0x75ff3d...101212` | ⚠️ Unaudited |
| StaticMetadataService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x18703d...866e4c` | ⚠️ Unaudited |
| StETHtoETHSynchronicityPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xade6cb...39d901` | ⚠️ Unaudited |
| StMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15152e...448303` | ⚠️ Unaudited |
| StonksFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78470f...8de0e3` | ⚠️ Unaudited |
| SwBtcOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584cd3...e7dae2` | ⚠️ Unaudited |
| SwellOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093410...9d85b7` | ⚠️ Unaudited |
| SwETHOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b07fb...33f562` | ⚠️ Unaudited |
| SymbioticAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2a6a2b...c0caf8` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a1247...f2276a` | ⚠️ Unaudited |
| TestFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x374d11...e28c2c` | ⚠️ Unaudited |
| TiebreakerCoreCommittee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x175742...b259d0` | ⚠️ Unaudited |
| TimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6b95c...550574` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cd4c0...feca44` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x473f0a...cf0e05` | ⚠️ Unaudited |
| TokenManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245720 | `0xf73a12...9a3249` | ⚠️ Unaudited |
| TokenMintERC20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x49397a...f20099` | ⚠️ Unaudited |
| TopUpLegoProgram | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x648c8b...944931` | ⚠️ Unaudited |
| TopUpRewardPrograms | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77781a...6bc3b7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-245623 | `0x8ae8f2...2856c9` | ⚠️ Unaudited |
| TwoPhaseFrameConfigUpdate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2b4db...f110c1` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00032e...b5f25b` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x009aed...643974` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245415 | `0xc55781...1ce849` | ⚠️ Unaudited |
| UniversalResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3aa974...3a6965` | ⚠️ Unaudited |
| UpdateGroupsShareLimitInOperatorGrid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bdc72...06aee6` | ⚠️ Unaudited |
| UpdateVaultsFeesInOperatorGrid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c3bdf...6b471c` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x971f46...357deb` | ⚠️ Unaudited |
| USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x201eba...e956ae` | ⚠️ Unaudited |
| V3Template | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245255 | `0x34e01e...db8507` | ⚠️ Unaudited |
| V3TemporaryAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245496 | `0xf738a2...958f06` | ⚠️ Unaudited |
| V3VoteScript | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa47ca1...4aa07e` | ⚠️ Unaudited |
| Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7db7d8...d6b2f6` | ⚠️ Unaudited |
| ValidatorContainerProofVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2309c4...f3ebde` | ⚠️ Unaudited |
| ValidatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0a6c93...5b78eb` | ⚠️ Unaudited |
| VariableDebtStETH | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-245719 | 2 deployments: ethereum `0xa9deac...0f81db`; ethereum `0xde2c41...74de24` | ⚠️ Unaudited |
| VaultViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57dab4...fd8418` | ⚠️ Unaudited |
| VettedGate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b0dec...276f37` | ⚠️ Unaudited |
| VettedGateFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b1681...c14e70` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0db86d...28a961` | ⚠️ Unaudited |
| WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcabae6...aebfa2` | ⚠️ Unaudited |
| WeightedPool | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245592 | `0x178e02...323746` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x259204...eacf37` | ⚠️ Unaudited |
| Withdrawal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x48e186...6dfb96` | ⚠️ Unaudited |
| WithdrawalFinalizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x414f7c...266e9e` | ⚠️ Unaudited |
| WithdrawLimitModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c86cb...493c22` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x50dfc0...83bed2` | ⚠️ Unaudited |
| WstETHSynchronicityPriceAdapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245348 | `0x8b6851...05ac93` | ⚠️ Unaudited |
| WstKSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3bfd11...6790e3` | ⚠️ Unaudited |
| YieldManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x751236...5203c4` | ⚠️ Unaudited |
| ZkEvmV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c8d4c...3cd6b3` | ⚠️ Unaudited |
| ZkEvmVerifierPostEuclid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x011231...1466b3` | ⚠️ Unaudited |
| ZkEvmVerifierPostFeynman | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d470...21f485` | ⚠️ Unaudited |
| ZkEvmVerifierV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f7b73...c58184` | ⚠️ Unaudited |
| ZkEvmVerifierV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d6e16...0c18fb` | ⚠️ Unaudited |
| ZrcOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41742a...b32bab` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (280)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245208 | `0x0d2aef...fef5f6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245211 | `0x1220cc...932342` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245212 | `0x12a43b...9a9030` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245216 | `0x14cef2...ac7f41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245219 | `0x168cfe...b6b6d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245222 | `0x17f6b2...44633d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245223 | `0x1843bc...7c42ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245224 | `0x18a106...aeffff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245226 | `0x1bdffe...38959c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245227 | `0x1dd909...9f79d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245229 | `0x1f2b79...03897e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245233 | `0x200da0...7009d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245236 | `0x231ac6...8c80b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245237 | `0x2325b0...bb2968` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245240 | `0x25fdc3...216a78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245242 | `0x281e6b...26c97e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245245 | `0x29d4fa...597d5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245247 | `0x2b5a39...a2e850` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245248 | `0x2b6a2f...104a34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245249 | `0x2d001d...ed468b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245250 | `0x2f543a...3ee55a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245251 | `0x2f8779...96c72d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245252 | `0x313819...95645a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245259 | `0x3b525f...0c9e2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245261 | `0x3e2d25...e492a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245263 | `0x3f0534...b8a368` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245264 | `0x3f9600...95eb74` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245266 | `0x40ec5b...5bbbdf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245269 | `0x489f04...a74775` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245270 | `0x48c135...4f9252` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245271 | `0x48c492...e5163a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245272 | `0x48f300...8b9abb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245273 | `0x49d136...f8c55f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245277 | `0x4ee311...99c792` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245279 | `0x5181d5...1a5a53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245280 | `0x550326...e028d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245282 | `0x558978...005ad6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245283 | `0x55c8de...bf61d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245288 | `0x5db427...f7ad6c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245289 | `0x5dcf7c...0251a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245290 | `0x5f456f...3f2c63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245291 | `0x5fbe8c...4ca789` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245293 | `0x606f77...85d942` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245294 | `0x607823...c2b82f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245296 | `0x614018...d7b58e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245297 | `0x64b6af...221a7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245298 | `0x65d4d9...1cfdc4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245300 | `0x68267f...1133c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245301 | `0x6828b0...4f81ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245302 | `0x689e03...bb7d33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245304 | `0x6ab39a...50d17c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245305 | `0x6b535f...b2dc0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245307 | `0x6bc726...1614e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245308 | `0x6ca840...b6a600` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245309 | `0x6e04ae...a51b69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245311 | `0x6f5c0a...2a6400` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245312 | `0x6faccc...98dff4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245313 | `0x6fbbe1...742e23` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245314 | `0x707f91...963fc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245315 | `0x71093e...0688e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245316 | `0x73b047...2777bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245319 | `0x753d51...271709` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245320 | `0x755610...aa1877` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245321 | `0x75bdec...7dfdd4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245323 | `0x76943c...e05de6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245325 | `0x79f5e2...d6f06d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245326 | `0x7b9b8d...bc335b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245328 | `0x7c2a1e...846aaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245332 | `0x7e8eff...5f97d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245333 | `0x7e9793...5e65a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245335 | `0x7fadb6...df355a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245336 | `0x828b15...696056` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245338 | `0x834560...0cb759` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245342 | `0x852ded...503cee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245343 | `0x86f6c3...725551` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245344 | `0x8772e3...17760c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245345 | `0x87b02d...6f1fb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245346 | `0x87d93d...5012b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245350 | `0x8b7854...515f45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245352 | `0x8ba6d3...918d42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245356 | `0x8f73e4...3228b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245357 | `0x912c72...046c79` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245358 | `0x927c99...65c3fc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245359 | `0x92a27c...d99a8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245360 | `0x92abc0...687e66` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245361 | `0x9348af...d69fcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245362 | `0x935598...369a7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245363 | `0x935cb3...202b77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245364 | `0x953070...84277d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245365 | `0x958e0d...85e63b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245366 | `0x95b521...035f3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245367 | `0x96c9a8...24ab37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245369 | `0x97615f...6c0d74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245370 | `0x98be4a...49c37d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245373 | `0x99ac10...d9056b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245375 | `0x9b1ceb...f86956` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245376 | `0x9d28ad...31e428` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245378 | `0x9de443...571e72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245379 | `0x9eb816...c74071` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245380 | `0xa02fc8...d6d647` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245382 | `0xa12bc9...066ced` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245384 | `0xa1acc1...1f25c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245385 | `0xa2f987...b72bdf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245389 | `0xa9b2f5...7fa70e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245390 | `0xaa3288...07637f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245392 | `0xaac4fc...ee4863` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245394 | `0xadd673...a6fdee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245395 | `0xae7ab9...d7fe84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245396 | `0xae7b19...95b433` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245397 | `0xaf35a6...5faed7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245398 | `0xb0fe4d...1abb43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245399 | `0xb314d4...cc67e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245400 | `0xb948a9...fe2bd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245401 | `0xb9d793...7e293f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245404 | `0xbd08f9...43b3ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245405 | `0xbd2b6d...65fb8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245407 | `0xbf048f...4d4bae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245409 | `0xc18f11...2a5022` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245411 | `0xc1d0b3...cfd2eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245413 | `0xc52fc3...71880f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245414 | `0xc55273...721136` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245416 | `0xc69685...7c544d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245417 | `0xc6c1f0...c99bb1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245419 | `0xc7315f...6327ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245420 | `0xc7792b...eb18af` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245422 | `0xc934e9...7a327a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245425 | `0xcc2c53...2628a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245426 | `0xcd42eb...4c7d35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245430 | `0xcf33a3...b454f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245432 | `0xd089cc...3ca2c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245434 | `0xd0dea0...493f2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245438 | `0xd30dc3...26e14b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245440 | `0xd3950e...5a2c91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245442 | `0xd54c1c...c32ffe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245444 | `0xd624b0...f0b288` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245446 | `0xd6a676...e39426` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245449 | `0xd99cc6...f618d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245450 | `0xda1df6...56add0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245451 | `0xda7de2...9ea83f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245452 | `0xdadc4c...b47ab4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245453 | `0xdb46c2...546296` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245454 | `0xdbfa0b...0a715c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245456 | `0xdc1a0c...079f80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245457 | `0xdc2431...f67022` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245458 | `0xdc5fe1...0063dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245459 | `0xdc7300...d79776` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245460 | `0xde06d1...3ac437` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245461 | `0xdfa0bc...468610` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245462 | `0xdffcd3...0379db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245463 | `0xe07305...19b707` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245464 | `0xe1f4c1...e86442` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245465 | `0xe1f6ba...50f780` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245466 | `0xe2a682...a82c8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245470 | `0xe5576e...52b6f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245471 | `0xe5656e...1e26eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245472 | `0xe6a4ed...a6bf76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245473 | `0xe76c52...3f573a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245474 | `0xe78717...addd0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245475 | `0xecf337...d24121` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245476 | `0xedc0d2...abdf17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245477 | `0xee1e3b...0ae49d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245478 | `0xee60c6...480ec4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245480 | `0xf034de...791425` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245481 | `0xf0396a...81972b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245482 | `0xf1647c...503129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245484 | `0xf23559...fa7eac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245485 | `0xf2476f...033477` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245488 | `0xf4bf42...eaaac3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245489 | `0xf4f6a0...275ea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245490 | `0xf50586...9066d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245491 | `0xf54361...550635` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245492 | `0xf5dc67...e654b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245493 | `0xf65614...bee2f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245494 | `0xf668e6...cfe6f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245498 | `0xf95f06...98610e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245500 | `0xfdab48...ea0ad4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245501 | `0xfddf38...f12999` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245505 | `0xff22ea...cfb077` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-245506 | `0xff7f4d...3647f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245507 | `0xffa96d...3d72fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245508 | `0xffe215...f49081` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245511 | `0x273460...283e2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245516 | `0x4cf8fe...613088` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245517 | `0x5a9d69...486a61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245518 | `0x5fc53f...10fcb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245519 | `0x75483c...0f2839` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245520 | `0x76a50b...d24138` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245522 | `0x8e0101...fb6957` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245523 | `0x91ce2f...51a98a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245524 | `0x981fb0...c27aef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245527 | `0xd420d6...76a81a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245529 | `0xda74db...b65c54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-245532 | `0xe59eba...07dc77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245533 | `0xe9b65d...98d761` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245534 | `0xefa0db...966fc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245634 | `0x15ad24...e9b98a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245638 | `0x29e681...98518d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-245643 | `0x4c75d0...fb9645` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245649 | `0x6981f5...0a0278` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245651 | `0x723aea...c41b13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245658 | `0x8e5175...7a123d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245670 | `0xb948a9...fe2bd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245672 | `0xbe3f7e...dc9986` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245673 | `0xc2b778...d14c8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245675 | `0xc93443...d8a408` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245676 | `0xcd867b...01c230` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245677 | `0xe82c2a...486838` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245679 | `0xf0396a...81972b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-245538 | `0x37de96...d960e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245541 | `0x3b00f2...dfc4a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245543 | `0x537a7f...1029af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245544 | `0x5a007d...6bebc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245546 | `0x81f250...a0a84f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245547 | `0xb5cf09...4a1a1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245549 | `0xc02fe7...a92001` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245550 | `0xd835fa...12c9f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-245552 | `0xf0396a...81972b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-245553 | `0x03b54a...b3bccd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-245555 | `0x37de96...d960e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-245557 | `0x60991c...2be21a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-245558 | `0xd65fa5...8800a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-245566 | `0x0d7f0a...acfe94` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245567 | `0x139ee2...573f3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245568 | `0x13f46b...6dccc8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245569 | `0x24a0c9...6bac28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245570 | `0x64ee90...a01f02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-245571 | `0x65b05f...4dfd02` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245572 | `0x703b52...9fe867` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-245573 | `0xadb90c...d50bee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245574 | `0xbd80e5...28b52a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245575 | `0xc7a0da...d2ab2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-245576 | `0xe1d6a5...3f782b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-245577 | `0xf7169e...0b1913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-245539 | `0xdafc1d...8d77a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | swellchain | unit-245559 | `0x66ca84...2b8ade` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | swellchain | unit-245560 | `0x7c98e0...5b0ecc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | swellchain | unit-245562 | `0x831149...68e6f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | swellchain | unit-245563 | `0xa1a325...b4e7c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | swellchain | unit-245565 | `0xff22ea...cfb077` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-245608 | `0x1fabaa...5165ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-245609 | `0x3a7b05...5819dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-245610 | `0x458ed7...242a83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-245611 | `0x6ef6cd...1fe2f6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-245612 | `0x9c4656...afde4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-245613 | `0xa8579d...ff953c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-245614 | `0xf10a7f...986181` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245693 | `0x37de96...d960e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245694 | `0x4f793e...11e935` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245695 | `0x69ce25...243309` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245696 | `0x7063ef...50a9a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245697 | `0xac9d11...4287ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-245698 | `0xb88bac...5bc061` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245699 | `0xc1cba3...0ee452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-245579 | `0x244912...c9eade` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-245580 | `0x2acec6...92b32c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-245583 | `0x488cdb...e1cb97` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-245587 | `0xb8161f...985fac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mode | unit-245590 | `0xf27b1b...2c762a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245593 | `0x1840c4...2d0b56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245596 | `0x5979d7...800529` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245598 | `0x7acbea...38d494` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-245602 | `0xb1552c...14a540` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245603 | `0xc20129...1af5cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245604 | `0xd97221...00fdb4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245605 | `0xfb5e6d...ac329c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245606 | `0xfdcf20...11de34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245682 | `0x1e1f6f...39774e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245683 | `0x353012...a8ceb9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-245684 | `0x3c8a95...d87cb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245685 | `0x74be82...405670` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245686 | `0xa8ef4d...74c1b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245687 | `0xb5bedd...68fc8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245688 | `0xc0583e...30b010` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245689 | `0xd90ed3...777137` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-245690 | `0xf951d7...4eb927` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-245622 | `0x7ba516...bdf8cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-245624 | `0x8e34d0...6dce45` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-245629 | `0xe61da4...9bcbdc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-245631 | `0xf58075...384ee6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-245632 | `0xf610a9...7cda32` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/lido/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [See [audit report]().](https://github.com/lidofinance/audits/blob/main/Cyfrin%20CircuitBreaker%20Audit%20Report%2004-2026.pdf) | Cyfrin | Audit | 2026-05 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [See [formal verification report]() for more details.](https://github.com/lidofinance/audits/blob/main/Cyfrin%20CircuitBreaker%20Formal%20Verification%20Report%2004-2026.pdf) | Cyfrin | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20CircuitBreaker%20Audit%20Report%2004-2026.pdf) | MixBytes | Audit | 2026-05 | fresh | Direct | address | matched | 1 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V7_1%20Audit%20Report.pdf) | Composable Security | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20DeFi%20Wrapper%20MellowStrategyAdapter%20Security%20Audit%20Report%2003-2026.pdf) | yAudit | Audit | 2026-03 | fresh | Direct | address | no match | 0 | 0 | 0 | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Easy%20Track%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-03 | fresh | Direct | address | matched | 2 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V3%20Smart%20Contracts%20Security%20Assessment%20Report%20fix%20review%2003-26.pdf) | Certora | Audit | 2026-01 | fresh | Direct | contract_name | matched | 5 | 1 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20v3%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Easy%20Track%20stVaults%20Security%20Audit%20Report%2003-26.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | address | matched | 3 | 0 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Sigma%20Prime%20-%20Lido%20BLS%20Library%20Security%20Assessment%20Report%20v2.0%20-%2001-2026.pdf) | Sigma Prime | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20CSM%20Performance%20Oracle%20Security%20Audit%20Report%2001-26.pdf) | yAudit | Audit | 2026-01 | fresh | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20DeFi%20Wrapper%20Security%20Audit%20Report%2001-2026.pdf) | yAudit | Audit | 2026-02 | fresh | Direct | address | no match | 0 | 0 | 0 | 17 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Vault%20Wrapper%20Report%2001-2026.pdf) | Ackee Blockchain | Audit | 2026-02 | fresh | Direct | address | no match | 0 | 0 | 0 | 14 | high |
| [full report](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V3%20Audit%20Report%20-%2012-2025.pdf) | Certora | Audit | 2026-01 | fresh | Direct | contract_name | matched | 6 | 2 | 0 | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V3%20Formal%20Verification%20Report%20-%2012-2025.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | matched | 5 | 2 | 0 | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V3%20Oracle%20V7%20Audit%20Report%20-%2012-2025.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 8 | high |
| [full report](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20V3%20Security%20Audit%20Report%20-%2012-2025.pdf) | yAudit | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 1 | high |
| [full report](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20V3%20Easy%20Track%20Security%20Audit%20Report%20-%2012-2025.pdf) | yAudit | Audit | 2026-01 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 10 | high |
| [full report](https://github.com/lidofinance/audits/blob/main/Consensys%20Diligence%20Lido%20V3%20Security%20Audit%20-%2011-2025.pdf) | yAudit | Audit | 2025-08 | fresh | Direct | contract_name | matched | 6 | 1 | 0 | 7 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Stonks%202%20Audit%20Report%2012-25.pdf) | Ackee Blockchain | Audit | 2026-02 | fresh | Direct | address | no match | 0 | 0 | 0 | 8 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Lido%20LDO%20Revesting%20Security%20Audit%20Report%20-%2012-2025.pdf) | yAudit | Audit | 2025-12 | fresh | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20V3%20Oracle%20V7%20Audit%20Report%20-%2012-2025.pdf) | Composable Security | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Easy%20Track%20Security%20Audit%20Report%2009-25.pdf) | yAudit | Audit | 2025-09 | fresh | Direct | address | no match | 0 | 0 | 0 | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20WstETH%20Staker%20Security%20Audit%20Report%2009-2025.pdf) | yAudit | Audit | 2025-09 | fresh | Direct | address | matched | 1 | 0 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Triggerable%20Withdrawals%20Audit%20Report%2009-25.pdf) | Ackee Blockchain | Audit | 2025-09 | fresh | Direct | contract_name | matched | 5 | 1 | 0 | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V6%20Audit%20Report.pdf) | Composable Security | Audit | 2025-08 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [See [full report]() for more details](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V6_0_2%20Audit%20Report.pdf) | Composable Security | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Easy%20Track%20CSM%20v2%20Security%20Audit%20Report%2009-2025.pdf) | yAudit | Audit | 2025-09 | fresh | Direct | address | matched | 1 | 0 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Community%20Staking%20Module%20v2%20Audit%20Report%2009-2025.pdf) | Ackee Blockchain | Audit | 2025-09 | fresh | Direct | address | matched | 14 | 0 | 0 | 7 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Triggerable%20Withdrawals%20and%20CSM%20v2%20Audit%20Report%2009-2025.pdf) | Statemind | Audit | 2025-09 | fresh | Direct | contract_name | matched | 15 | 4 | 0 | 30 | high |
| [report](https://github.com/lidofinance/audits/blob/main/Certora%20Dual%20Governance%20v1.0.1%20Hotfix%20Review%20Report%2008-2025.pdf) | Certora | Audit | 2025-08 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | medium |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Dual%20Governance%20Escrow%20Fix%20Review%20Report%2008-2025.pdf) | Statemind | Audit | 2025-08 | fresh | Direct | address | matched | 8 | 0 | 0 | 26 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V5_4_1%2008-25.pdf) | Composable Security | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Code4rena%20CSM%20V2%20Audit%20Report%2008-2025.pdf) | Code4rena | Contest | 2025-08 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | medium |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20CSM%20Security%20Audit%20Report%2007-2025.pdf) | yAudit | Audit | 2025-07 | aging | Direct | contract_name | matched | 11 | 2 | 0 | 23 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/zk/Nethermind_LIDO_ACCOUNTING_ZK_ORACLE_FINAL.pdf) | Nethermind | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Dual%20Governance%20Deployment%20and%20Voting%20Script%20Review%20Report%2006-2025.pdf) | Statemind | Audit | 2025-06 | aging | Direct | address | matched | 5 | 0 | 0 | 31 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V5_2%2006-25.pdf) | Composable Security | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20RMC%20EasyTrack%20Security%20Audit%20Report%2005-2025.pdf) | yAudit | Audit | 2025-05 | aging | Direct | address | matched | 3 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Oracle%20v5%2004-25.pdf) | MixBytes | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 7 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20v5%2004-25.pdf) | Composable Security | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Community%20Staking%20Module%20Report%2004-25.pdf) | Ackee Blockchain | Audit | 2025-04 | aging | Direct | address | matched | 4 | 0 | 0 | 16 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20GateSeal%20Deployment%20Validation%2003-2025.pdf) | Statemind | Audit | 2025-03 | aging | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Dual%20Governance%20Audit%20Report%2002-2025.pdf) | Certora | Audit | 2025-02 | aging | Direct | contract_name | matched | 8 | 0 | 0 | 41 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/OpenZeppelin%20Dual%20Governance%20Re-Audit%20Report%2002-2025.pdf) | OpenZeppelin | Audit | 2025-02 | aging | Direct | contract_name | matched | 8 | 0 | 0 | 41 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/Runtime%20Verification%20Dual%20Governance%20Formal%20Verification%20Report%2002-2025.pdf) | Runtime Verification | Audit | 2025-02 | aging | Direct | contract_name | matched | 5 | 0 | 0 | 2 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/OpenZeppelin%20Dual%20Governance%20Audit%20Report%2011-2024.pdf) | OpenZeppelin | Audit | 2024-11 | aging | Direct | contract_name | matched | 8 | 0 | 0 | 38 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Staking%20Router%20v2%20Report%2010-24.pdf) | Ackee Blockchain | Audit | 2024-10 | aging | Direct | address | matched | 2 | 0 | 0 | 4 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Community%20Staking%20Module%20Report%2010-24.pdf) | Ackee Blockchain | Audit | 2024-10 | aging | Direct | address | matched | 4 | 0 | 0 | 18 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20CSM%20Security%20Audit%20Report%2010-24.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | matched | 11 | 2 | 0 | 23 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Oracle%20Security%20Audit%20Report%2010-24.pdf) | yAudit | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Dual%20Governance%20Audit%20Report%2010-2024.pdf) | Statemind | Audit | 2024-10 | aging | Direct | contract_name | matched | 8 | 0 | 0 | 24 | high |
| [See full [report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Dual%20Governance%20Draft%20Audit%20Report%2009-2024.pdf) | Certora | Audit | 2024-09 | aging | Direct | contract_name | matched | 7 | 0 | 0 | 27 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Simple%20Delegation%20audit%20report%2007-24.pdf) | Ackee Blockchain | Audit | 2024-07 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20Simple%20Delegation%20audit%20report%2007-24.pdf) | Statemind | Audit | 2024-03 | stale | Direct | address | matched | 1 | 1 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Lido%20Sanity%20Checker%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/ChainSecurity%20Code%20Assessment%20of%20LIP-23%20Negative%20Rebase%20Checks%20Smart%20Contracts%2006-24.pdf) | ChainSecurity | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20GateSeal%20Deployment%20Validation%2004-2024.pdf) | Statemind | Audit | 2024-11 | aging | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Ackee%20Blockchain%20Lido%20Stonks%20Audit%20Report%2003-24.pdf) | Ackee Blockchain | Audit | 2024-03 | stale | Direct | address | matched | 1 | 0 | 0 | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20Simple%20DVT%20Easy%20Track%20Factories%20Audit%20Report%2001-24.pdf) | Statemind | Audit | 2023-12 | stale | Direct | address | matched | 7 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Pessimistic%20Lido%20Stonks%20Audit%20Report%2012-23.pdf) | Pessimistic | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20roles%20analysis%2010-2023.pdf) | Statemind | Audit | 2023-10 | stale | Direct | contract_name | matched | 5 | 2 | 0 | 51 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Oxorio%20Lido%20Easy%20Track%20Smart%20Contracts%20Security%20Audit%20Report%2010-2023.pdf) | yAudit | Audit | 2023-10 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20V2%20Upgrade%20Template%20Audit%20Report%2005-2023.pdf) | Statemind | Audit | 2023-05 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20V2%20Deployment%20Validation%2005-2023.pdf) | Statemind | Audit | 2023-05 | stale | Direct | contract_name | matched | 8 | 2 | 0 | 37 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Hexens%20Lido%20V2%20Oracle%20Security%20Review%20Report%2005-23.pdf) | Hexens | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Oxorio%20Lido%20V2%20On-chain%20Audit%20Report%2006-23.pdf) | Oxorio | Audit | 2023-05 | stale | Direct | contract_name | matched | 8 | 2 | 0 | 39 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Oxorio%20Lido%20V2%20Off-chain%20Audit%20Report%2006-23.pdf) | Oxorio | Audit | 2023-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 64 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Hexens%20Lido%20V2%20Smart%20Contract%20Audit%20Report%2004-23.pdf) | Hexens | Audit | 2023-04 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 25 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Camp%20Lido%20V2%20Contest%20Report%2004-23.pdf) | MixBytes | Audit | 2023-03 | stale | Direct | contract_name | matched | 8 | 2 | 0 | 32 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20GateSeals%20Audit%20Report%2004-2023.pdf) | Statemind | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Certora%20Lido%20V2%20Audit%20Report%2004-23.pdf) | Certora | Audit | 2023-04 | stale | Direct | contract_name | matched | 8 | 2 | 0 | 39 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Lido%20V2%20Audit%20Report%2004-23.pdf) | Statemind | Audit | 2023-04 | stale | Direct | contract_name | matched | 8 | 2 | 0 | 33 | high |
| [See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release.](https://github.com/lidofinance/audits/blob/main/Sigma%20Prime%20-%20Lido%20-%20dc4bc%20Security%20Assessment%20Report%20-%20v2.2%2003-2023.pdf) | Code4rena | Contest | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/ChainSecurity%20Lido%20Staking%20Router%20audit%20report%2002-23.pdf) | ChainSecurity | Audit | 2023-02 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 15 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20TRP%20Vesting%20Escrow%20Audit%20Report%2001-2023.pdf) | Statemind | Audit | 2023-01 | stale | Direct | address | matched | 1 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20MEV-Boost%20relay%20allowlist%20Security%20Audit%20Report%2009-2022.pdf) | yAudit | Audit | 2022-09 | stale | Direct | address | matched | 1 | 0 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Reserve%20Fund%20Audit%20Report%2009-2022.pdf) | Statemind | Audit | 2022-09 | stale | Direct | address | matched | 1 | 0 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Statemind%20Easy%20Track%20Payment%20Processor%20with%20limits%2009-2022.pdf) | Statemind | Audit | 2022-09 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 16 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/ChainSecurity%20Code%20Assessment%20of%20the%20Lido%20Smart%20Contracts%20Report%2008-22.pdf) | ChainSecurity | Audit | 2022-08 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 13 | high |
| [See [note]() contents for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Note%20on%20Deployed%20Code%20Compliance%2008-22.pdf) | MixBytes | Audit | 2022-08 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 14 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido%20Two-Phase%20Voting%20Security%20Audit%20Report%2006-2022.pdf) | yAudit | Audit | 2022-06 | stale | Direct | address | matched | 1 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Oxorio%20Jumpgate%20Smart%20Contracts%20Security%20Audit%20Report%2005-2022.pdf) | yAudit | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Lido_Protocol_Security_Audit_Report%2005-2022.pdf) | MixBytes | Audit | 2022-05 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 14 | high |
| [The implementation has been audited by MixBytes() and considered safe. Read the full report from [here]().](https://github.com/lidofinance/audits/blob/main/MixBytes%20AAVE%20stETH%20integration%20Security%20Audit%20Report%2002-22.pdf) | yAudit | Audit | 2022-02 | stale | Direct | address | no match | 0 | 0 | 0 | 17 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20In-protocol%20Coverage%20Security%20Audit%20Report%2002-2022.pdf) | yAudit | Audit | 2022-02 | stale | Direct | address | no match | 0 | 0 | 0 | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Deposit%20Security%20Module%20Security%20Audit%20Report%2002-2022.pdf) | yAudit | Audit | 2022-02 | stale | Direct | address | no match | 0 | 0 | 0 | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20bETH%20Vault%20Security%20Audit%20Report%2001-2022.pdf) | yAudit | Audit | 2022-01 | stale | Direct | address | no match | 0 | 0 | 0 | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Aragon%20Voting%20Security%20Audit%20Report%2010-2021.pdf) | yAudit | Audit | 2021-10 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Sigma%20Prime%20-%20Lido%20Easy%20Track%20Smart%20Contract%20Security%20Review%20Report%20v2.0%2010-2021.pdf) | Sigma Prime | Audit | 2021-10 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20wstETH%20Security%20Audit%20Report%2009-2021.pdf) | yAudit | Audit | 2021-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Easy%20Track%20Security%20Audit%20Report%2009-2021.pdf) | yAudit | Audit | 2021-09 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 13 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%201inch%20Rewards%20Manager%20Security%20Audit%20Report%2009-21.pdf) | yAudit | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20bETH%20Vault%20Security%20Audit%20Report%2008-2021.pdf) | yAudit | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20bETH%20Vault%20Security%20Audit%20Report%2007-2021.pdf) | yAudit | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20stETH%20Price%20Feed%20Security%20Audit%20Report%2006-2021.pdf) | yAudit | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20stETH%20price%20oracle%20Security%20Audit%20Report%2005-2021.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20Withdrawals%20Manager%20Stub%20Security%20Audit%20Report%2005-2021.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/MixBytes%20ETH2%20Oracle%20Security%20Audit%20Report%2004-2021.pdf) | yAudit | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/Sigma%20Prime%20-%20Lido%20Finance%20Security%20Assessment%20Report%20v2.1.pdf) | Sigma Prime | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/QSP%20Lido%20Report%2012-2020.pdf) | Quantstamp | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/wstETH-on-Lisk-2025-04-MixBytes-deployment-verification.pdf) | MixBytes | Audit | 2025-04 | aging | Direct | address | no match | 0 | 0 | 0 | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/stETH-on-Unichain-2025-02-MixBytes-deployment-verification.pdf) | MixBytes | Audit | 2025-02 | aging | Direct | address | matched | 7 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/stETH-on-Soneium-2025-01-MixBytes-deployment-verification.pdf) | MixBytes | Audit | 2025-01 | aging | Direct | address | no match | 0 | 0 | 0 | 9 | high |
| [See the [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Starknet-2024-11-14-deployment-verification.pdf) | Nethermind | Audit | 2024-11 | aging | Direct | address | matched | 1 | 1 | 0 | 9 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Zircuit_2024-10-02-Quantstamp-wstETH-deployment-verification.pdf) | Quantstamp | Audit | 2024-09 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 5 | high |
| [See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details.](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) | Oxorio | Audit | 2024-08 | aging | Direct | contract_name | matched | 3 | 1 | 0 | 2 | high |
| [See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details.](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) | Oxorio | Audit | 2024-08 | aging | Direct | contract_name | matched | 3 | 2 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Mode-2024-07-18-Cantina-wstETH-deployment-verification.pdf) | Spearbit | Audit | 2024-07 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/bsc/MixBytes%20Lido%20a.DI%20Security%20Audit%20Report%2007-2024.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | matched | 4 | 1 | 0 | 24 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/stETH-on-Optimism-2024-06-Ackee-Blockchain-Audit-report.pdf) | Ackee Blockchain | Audit | 2024-06 | stale | Direct | contract_name | matched | 5 | 3 | 0 | 17 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/stETH-on-Optimism-2024-06-MixBytes-Audit-Report.pdf) | MixBytes | Audit | 2024-06 | stale | Direct | address | matched | 7 | 0 | 0 | 16 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Scroll-2024-01-Lido-Gateway-Zellic-Audit-Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Lidea-2023-12-Diligence-Custom-Bridged-Token-Audit-Report.pdf) | Consensys Diligence | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Linea-2023-12-OpenZeppelin-Bridge-Audit-Report.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 22 | high |
| [Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified.](https://github.com/lidofinance/audits/blob/main/L2/zkSync-2023-10-Cantina-Audit-Report.pdf) | Spearbit | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Linea-2023-10-Diligence-Cross-Chain-Governance-Executor-Audit-Report.pdf) | Consensys Diligence | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Mantle-2023-09-Verilog-L2-ERC20-Token-Bridge-Audit-Report.pdf) | Verilog | Audit | 2023-09 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Governance-Crosschain-Bridges-2022-08-Oxorio-Audit%20Report.pdf) | Oxorio | Audit | 2022-08 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/Lido-L2-2022-07-Oxorio-Smart-Contracts-Security-Audit-Report.pdf) | Oxorio | Audit | 2022-07 | stale | Direct | contract_name | matched | 3 | 2 | 0 | 11 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/L2/zkSync-2026-03-05-Cantina-PR-85-fix-report.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/polygon/Oxorio%20Lido%20on%20Polygon%20V2%2008-2022.pdf) | Oxorio | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [See [full report]() for more details.](https://github.com/lidofinance/audits/blob/main/polygon/Oxorio%20Lido%20on%20Polygon%20pr69%20report%2004-2022.pdf) | Oxorio | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding.](https://github.com/mellow-finance/mellow-lrt/blob/85370ae372f95d057dc9806ec98fde24e5ed4d29/audits/202406_Statemind/Mellow%20LRT%20report%20with%20deployment.pdf) | Immunefi | Contest | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [- [**Audit Report for v8.0.1 (Composable Security)**]()](https://github.com/lidofinance/audits/blob/main/Composable%20Security%20Lido%20Oracle%20V8%20Audit%20Report.pdf) | Composable Security | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [2025-07-28_Sherlock_Mellow-Core-Vaults.pdf](https://docs.lido.fi/audits/mellow/2025-07-28_Sherlock_Mellow-Core-Vaults.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [2025-09-03_Nethermind_Mellow-Core-Vaults.pdf](https://docs.lido.fi/audits/mellow/2025-09-03_Nethermind_Mellow-Core-Vaults.pdf) | Nethermind | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 75 | high |
| [2025-10-15_Nethermind_NM-0682_Mellow.pdf](https://docs.lido.fi/audits/mellow/2025-10-15_Nethermind_NM-0682_Mellow.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-11-17_Nethermind_NM-0703_Mellow.pdf](https://docs.lido.fi/audits/mellow/2025-11-17_Nethermind_NM-0703_Mellow.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-11-19_Nethermind_NM-0735_Mellow.pdf](https://docs.lido.fi/audits/mellow/2025-11-19_Nethermind_NM-0735_Mellow.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-12-09_Nethermind_NM-0758_Mellow.pdf](https://docs.lido.fi/audits/mellow/2025-12-09_Nethermind_NM-0758_Mellow.pdf) | Nethermind | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2026-01-07_Nethermind_NM-0798_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-01-07_Nethermind_NM-0798_Mellow.pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2026-01-21_Nethermind_NM-0812_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-01-21_Nethermind_NM-0812_Mellow.pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2026-03-02_Nethermind_NM-0758_Mellow.pdf](https://docs.lido.fi/audits/mellow/2026-03-02_Nethermind_NM-0758_Mellow.pdf) | Nethermind | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Mellow Core Vaults](https://docs.lido.fi/assets/files/2025-07-28_Sherlock_Mellow-Core-Vaults-b8fffecfc7c40da7dac9d1654f59ca1e.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [Mellow Core Vaults](https://docs.lido.fi/assets/files/2025-09-03_Nethermind_Mellow-Core-Vaults-2d0fc4a5c603de11cd338ba30110cdaa.pdf) | Code4rena | Contest | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 75 | high |
| [NM-0682 Migrator](https://docs.lido.fi/assets/files/2025-10-15_Nethermind_NM-0682_Mellow-bf1ce27d0e36bff7ad7cb26077705428.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM-0703 Oracle Submitter](https://docs.lido.fi/assets/files/2025-11-17_Nethermind_NM-0703_Mellow-61713de8a6d07b1e1efea20c6af6ab61.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM-0735 Swap Module](https://docs.lido.fi/assets/files/2025-11-19_Nethermind_NM-0735_Mellow-dfe7f5e4b179a46c4dcacfa8598769d9.pdf) | Code4rena | Contest | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM-0758 SyncDepositQueue](https://docs.lido.fi/assets/files/2025-12-09_Nethermind_NM-0758_Mellow-882ef5c8bc26ba2870ebb6655a989718.pdf) | Nethermind | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [NM-0798 BurnableTokenizedShareManager](https://docs.lido.fi/assets/files/2026-01-07_Nethermind_NM-0798_Mellow-234cd31bcfcfe7e0239fa7c3da25fda8.pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM-0812 Redeem Queue Fee Fix](https://docs.lido.fi/assets/files/2026-01-21_Nethermind_NM-0812_Mellow-a9c3d364fc476f68a4f82d6bc5c993ac.pdf) | Code4rena | Contest | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [NM-0758 SyncDepositQueue](https://docs.lido.fi/assets/files/2026-03-02_Nethermind_NM-0758_Mellow-16bc93dbff41496cfb995655c453cf0f.pdf) | Code4rena | Contest | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [NM-0891 PermissionedChainlinkOracle](https://docs.lido.fi/assets/files/2026-04-13_Nethermind_NM-0891_Mellow-5507eaaf13402e03f180e0342c78c045.pdf) | Nethermind | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17721] Active Bug Bounty Program — no match: The document is a bug bounty program description, not an audit report. No specific contracts are listed in scope; only general categories like 'smart contracts' and 'applications' are mentioned.
- [17722] See [audit report](). — matched: Two contracts in scope: CircuitBreaker and Registry (library).
- [17723] See [formal verification report]() for more details. — matched: Only CircuitBreaker and its harness are in scope; Registry is a library, not a contract.
- [17724] See [full report]() for more details. — matched: Two contracts in scope: CircuitBreaker and Registry. Audit date from cover page.
- [17725] See [full report]() for more details. — no match: The audit scope lists Python files (constants.py, events.py, staking_vaults.py, block.py, variables.py) and directories, not smart contracts. No Solidity or smart contract names were found.
- [17726] See [full report]() for more details. — no match: Scope table lists two files: MellowStrategyFactory.sol and MellowStrategy.sol. StrategyCallForwarder is a deployed contract mentioned in the report but not in the scope table; however, it is part of the audited system.
- [17727] See [full report]() for more details. — matched: Three contracts in scope: CuratedSubmitExitRequestHashes, SDVTSubmitExitRequestHashes, and SubmitExitRequestHashesUtils. Audit date is March 18, 2026 from the title.
- [17728] See [full report]() for more details. — matched: Extracted from Project Scope and Protocol Overview sections. The report lists Essential Layer contracts (StakingVault, VaultHub, LazyOracle, OperatorGrid, PredepositGuarantee) and Utility Layer contracts (VaultFactory, Dashboard) as part of the audited system. VaultHub.sol is explicitly referenced in findings. Date inferred from 'January 2026' on cover page.
- [17729] See [full report]() for more details. — matched: Scope explicitly lists LazyOracle.sol and VaultHub.sol. Other contracts mentioned (OperatorGrid, stVault) are explicitly out of scope.
- [17730] See [full report]() for more details. — matched: Three contracts in scope: AlterTiersInOperatorGrid, RegisterGroupsInOperatorGrid, RegisterTiersInOperatorGrid. Audit date from cover page.
- [17731] See [full report]() for more details. — no match: Only BLS.sol is in scope; PredepositGuarantee.sol is mentioned but not in scope.
- [17732] See [full report]() for more details. — no match: Only TwoPhaseFrameConfigUpdate is in scope; CSFeeOracle and off-chain module are explicitly out of scope.
- [17733] See [full report]() for more details. — no match: Extracted 17 contract names from the scope table and mainnet deployments section. Audit date derived from the latest commit date (29.01.2026) in the versions log, which is the final commit before the report.
- [17734] See [full report]() for more details. — no match: Extracted contracts from scope listing and deployment verification section. Audit date from document revision table (February 2, 2026).
- [17735] full report — matched: Extracted contract names from the Project Scope table and findings sections. The audit date is derived from the cover page 'January 2026' and the work period ending January 8th, 2026, so the last day of January 2026 is used.
- [17736] See [full report]() for more details. — matched: Extracted contract names from scope table, findings, and formal verification properties. Audit date from 'December 4th, 2025' in project overview.
- [17737] See [full report]() for more details. — matched: Extracted contract names from scope file list and findings. Audit date from 'December 10 2025' in Project Overview.
- [17738] full report — matched: Scope explicitly lists Lido.sol and Accounting.sol as the two contracts in scope. Audit date is January 15, 2026 from the cover page.
- [17739] full report — matched: All contracts listed in the 'Scope of Audit' table on page 4. The audit date is from the cover page: 'JANUARY 15, 2026'.
- [17740] full report — matched: Extracted contracts from scope section and findings. Audit date is the end of the fix-review period (November 14, 2025).
- [17741] See [full report]() for more details. — no match: Scope defined as all Solidity contracts except stubs and test directories. Contracts verified on mainnet are explicitly listed. Additional contracts (Ownable, AssetRecoverer) are referenced in findings and trust model.
- [17742] See [full report]() for more details. — no match: Only one contract in scope: LDORevesting.sol. Audit date from cover page and timeline.
- [17743] See [full report]() for more details. — no match: Extracted contract/module names from affected files in findings and scope section listing Python files. The scope includes Python files from the lido-oracle repository, not Solidity contracts. The audit date is the report date: 2025-12-12.
- [17744] See [full report]() for more details. — no match: Three contracts in scope: CuratedSubmitExitRequestHashes, SDVTSubmitExitRequestHashes, and SubmitExitRequestHashesUtils. Audit date from title page.
- [17745] See [full report]() for more details. — matched: Only one contract in scope: WstethStaker. Audit date from cover page and timeline.
- [17746] See [full report]() for more details. — matched: All contracts listed in the scope section of the executive summary (Revision 1.0) were extracted. The audit date is the final report date (16.9.2025) from the cover page and appendix.
- [17747] See [full report]() for more details. — matched: Scope includes Python files from lido-oracle repo and Solidity contracts for CSM V2. Main contracts: distribution.py, CSStrikes.sol, CSOracle, CSM, CSParametersRegistryContract, CSStrikesContract.
- [17748] See [full report]() for more details — no match: The report is a security consultation for Lido's Oracle V6 upgrade, but the scope section only mentions a GitHub repository and commit ID, not specific contract names. No Solidity files or contract names are listed.
- [17749] See [full report]() for more details. — matched: Only one contract in scope: CSMSetVettedGateTree. VettedGate is explicitly out of scope.
- [17750] See [full report]() for more details. — matched: Scope defined as all Solidity files in src directory except interfaces. Deployment verification lists 14 contracts with addresses. Additional contracts from findings included.
- [17751] See [full report]() for more details. — matched: Extracted from the 'Project Scope' section listing files in scope. Audit date from the timeline: 06-06-2025 - 19-09-2025, using end date.
- [17752] report — matched: The report scope mentions 'all changes to smart contracts within the specified commit' but only explicitly names 'Escrow' in the formal verification section. No file paths or other contract names are provided.
- [17753] See [note]() contents for more details. — matched: Extracted 34 contract names from the scope section listing files. Also extracted deployment addresses for two mainnet contracts. Audit date inferred from timeline '18-08-2025 - 19-08-2025' as end date.
- [17754] See [full report]() for more details. — no match: The scope section references a GitHub repository and commit ID but does not list specific contract names or file paths. The report discusses changes to an Oracle system and mentions contracts like NodeOperatorsRegistry, CSVerifier, and DSM module, but these are not explicitly listed as in-scope contracts. No contract names could be reliably extracted.
- [17755] See [full report]() for more details. — matched: Scope section mentions 30 smart contracts but does not list them individually. Only CSStrikes and VettedGate are named in findings.
- [17756] See [full report]() for more details. — matched: Extracted 34 contract names from the scope table and file listings. Audit date from cover page: JULY 18, 2025.
- [17757] See [full report]() for more details. — no match: Extracted contract names from Audited Files tables (Section 2) and file paths. Audit date from Final Report date on page 2.
- [17758] See [note]() contents for more details. — matched: Extracted all contracts from the scope listing and deployment table. Audit date is the end date of the timeline (05-06-2025).
- [17759] See [full report]() for more details. — no match: The report is a security consultation for a hotfix in the Lido Oracle repository. The only contract explicitly named is NodeRegistry. The scope sections refer to a GitHub repository and commit IDs, not specific contract files. No other contract names are mentioned.
- [17760] See [full report]() for more details. — matched: All four contracts explicitly listed in scope table. Audit date from cover page.
- [17761] See [full report]() for more details. — matched: Extracted contract/module names from scope table and findings. The audit report covers Python modules, not Solidity contracts. The date is from the cover page.
- [17762] See [full report]() for more details. — no match: Extracted contract names from affected files in findings and scope section listing Python files in src/ directory.
- [17763] See [full report]() for more details. — matched: Extracted contract names from scope descriptions, deployment verification addresses, and findings sections. Audit date from final report date (08.04.2025).
- [17764] See [note]() contents for more details. — no match: Scope table lists GateSealFactory.vy and GateSeal.vy (with multiple instances). Audit date from title: 10-03-2025.
- [17765] See full [report]() for more details. — matched: Extracted all contracts, interfaces, libraries, and types listed in the scope section on page 5. Audit date inferred from 'February 2025' in the title and 'January 10 2025 to February 7 2025' work period; used end of February as the report date.
- [17766] See full [report]() for more details. — matched: All contracts listed in the Scope section of the audit report.
- [17767] See full [report]() for more details. — matched: Audit report for Lido Dual Governance protocol. Main contracts: DualGovernance, Escrow, EmergencyProtectedTimelock, TimelockedGovernance. External models: StETH, WithdrawalQueue. Executor is also referenced.
- [17768] See full [report]() for more details. — matched: Extracted all contracts, interfaces, libraries, and types listed in the Scope section. Excluded three committee contracts that were removed from scope.
- [17769] See [full report]() for more details. — matched: Scope explicitly listed in Executive Summary Revision 1.0 and deployment verification addresses provided in Revision 1.2.
- [17770] See [full report]() for more details. — matched: The audit report covers the Lido Community Staking Module. The scope includes all files in the src directory (excluding interfaces) of the community-staking-module repository and the CSMSettleELStealingPenalty.sol file from the easy-track repository. The deployment verification section lists deployed contracts with addresses, confirming they are in scope. The audit date is the deployment verification date (14.10.2024) as the final report revision.
- [17771] See [full report]() for more details. — matched: Extracted 34 contract names from the scope table and file listings. Audit date from cover page: Oct 15, 2024.
- [17772] See [full report]() for more details. — no match: Extracted contract names from scope table and findings. The audit report covers Python files for Lido Oracle off-chain service, not on-chain smart contracts. The names are modules and services.
- [17773] See full [report]() for more details. — matched: Extracted 32 contract names from the scope section listing files. Audit date from timeline: 12-09-2024 - 25-10-2024, using end date.
- [17774] See full [report]() for more details. — matched: Extracted 34 contract names from the scope section on page 5. Audit date inferred from work period end date (September 5, 2024).
- [17775] See [full report]() for more details. — matched: Only one contract, Voting.sol, is explicitly listed in scope. The report covers multiple revisions but the scope remains the same contract.
- [17776] See [full report]() for more details. — matched: Only one contract, Voting.sol, is in scope. The audit date is the end date of the timeline '04-03-2024 - 12-03-2024'.
- [17777] See [full report]() for more details. — no match: Two contracts in scope: SafeCastExt and OracleReportSanityChecker. Audit date from cover page.
- [17778] See [full report]() for more details. — no match: Scope explicitly lists two files: OracleReportSanityChecker.sol and SafeCastExt.sol. Audit date is June 21, 2024 from the cover page.
- [17779] See [note]() contents for more details. — no match: Extracted two contracts from scope: GateSealFactory and GateSeal (blueprint and instance). Audit date from title line.
- [17780] See [full report]() for more details. — matched: Extracted 5 main contracts from scope and 2 inherited contracts from system overview. Audit date from cover page and appendix.
- [17781] See [full report]() for more details. — matched: All 9 contracts explicitly listed in scope section and deployment addresses provided.
- [17782] See [full report]() for more details. — matched: Scope includes entire repository; contracts identified from findings and notes.
- [17783] See [full report]() for more details. — matched: The report is a role analysis of Lido protocol contracts. All contracts mentioned in the role analysis sections are considered in scope. The audit date is the end date of the timeline '28-08-2023 - 20-10-2023'.
- [17784] See [full report]() for more details. — matched: Scope section explicitly lists four contracts. Audit date is from the cover page.
- [17785] See [full report]() for more details. — no match: Only one contract file is in scope: ShapellaUpgradeTemplate.sol. Other contracts mentioned (e.g., Burner, HashConsensus, DepositSecurityModule, StakingRouter) are referenced in findings but not listed as in-scope files.
- [17786] See [note]() contents for more details. — matched: Extracted all contracts listed in the 'Project Scope' section and the deployment table. The audit date is the final commit date of the ShapellaUpgradeTemplate (2023-05-10), which is the latest date mentioned.
- [17787] See [full report]() for more details. — no match: The audit covers off-chain Python code (prediction.py, test_prediction.py) from Lido V2 Oracle, not smart contracts. No Solidity contracts are in scope.
- [17788] See [full report]() for more details. — matched: Extracted 48 contract names from the audit scope section (pages 11-12) and the report date from the cover page.
- [17789] See [full report]() for more details. — matched: Extracted all source files listed in the Audit Scope section (pages 10-12). The audit date is from the cover page: 'MAY 10, 2023'.
- [17790] See [full report]() for more details. — matched: Extracted from Lido V2 audit report by Hexens. Scope includes all contracts mentioned in findings and scope section. Audit completion date is 14.04.2023.
- [17791] See [full report]() for more details. — matched: Extracted 41 contract names from the scope table and additional files listed in the report. The audit date is inferred from the latest commit date in the timeline (07.04.2023) which is the date of the final fix commit, likely the report publication date.
- [17792] See [full report]() for more details. — no match: Scope explicitly lists GateSealFactory.vy and GateSeal.vy. Audit date range ends 20-04-2023.
- [17793] See [full report]() for more details. — matched: Extracted 48 contract names from the on-chain scope list and file paths. Audit date from cover page: 'Date of report release: 27 April 2023'.
- [17794] See [full report]() for more details. — matched: Extracted 41 contract names from the scope section listing files. Audit date from timeline: 13-02-2023 - 28-04-2023, using end date.
- [17795] See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. — no match: The audit report covers the dc4bc project (Distributed Custody for the Beacon Chain) by Lido Finance. The scope includes multiple Go source files and binaries. The audit date is March 2023, interpreted as the last day of the month.
- [17796] See [full report]() for more details. — matched: Extracted contracts from scope table and findings. MemUtils, IStakingRouter, ILido are referenced but not in scope table; included as they are part of the audited codebase.
- [17797] See [full report]() for more details. — matched: Three contracts in scope: VestingEscrow, VestingEscrowFactory, VotingAdapter. Audit date from title '24-01-2023 - 27-01-2023' using end date.
- [17798] See [full report]() for more details. — matched: Single contract in scope: MEVBoostRelayAllowedList.vy, deployed on mainnet at 0xf95f069f9ad107938f6ba802a3da87892298610e. Audit date from title: 05-09-2022 - 09-09-2022, using end date.
- [17799] See [full report]() for more details. — matched: Only one contract in scope: InsuranceFund.sol. Audit date is the end date of the timeline (15-09-2022).
- [17800] See [full report]() for more details. — matched: All contracts listed in the Project Scope section were extracted. The audit date is the end date of the timeline (30-09-2022).
- [17801] See [full report]() for more details. — matched: All contracts listed in the scope table on page 5 are extracted. The audit date is from the cover page: 'August 23, 2022'.
- [17802] See [note]() contents for more details. — matched: All contracts listed in the scope section of the audit report.
- [17803] See [full report]() for more details. — matched: Two contracts in scope: Voting.sol and MiniMeToken.sol. Audit date from cover page.
- [17804] See [full report]() for more details. — no match: Two contracts in scope: AssetRecoverer.sol and Jumpgate.sol. Audit date from title page.
- [17805] See [full report]() for more details. — matched: Extracted 16 contracts from the scope table on page 7. Audit date from cover page: May 24, 2022.
- [17806] The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). — no match: Extracted contract names from the files listing and project overview. SignedSafeMath is included because it is referenced in a finding (WRN-3) as a file under audit.
- [17807] See [full report]() for more details. — no match: Three contracts explicitly listed in scope with file paths and deployed addresses.
- [17808] See [full report]() for more details. — no match: Extracted 9 contracts from the scope section and file listing. Audit date from cover page.
- [17809] See [full report]() for more details. — no match: All six contracts explicitly listed in scope with file paths and deployed addresses.
- [17810] See [full report]() for more details. — matched: Only one contract, Voting.sol, is in scope. Audit date is October 01, 2021 from the title and dashboard.
- [17811] See [full report]() for more details. — matched: Extracted from Lido Easy Track audit report. Scope includes EasyTrack, EasyTrackStorage, EVMScriptExecutor, EVMScriptFactoriesRegistry, EVMScriptPermissions, EVMScriptCreator, MotionSettings, RewardProgramsRegistry, AddRewardProgram, BytesUtils, TrustedCaller. Audit date is October 2021.
- [17812] See [full report]() for more details. — matched: Two contracts in scope: WstETH.sol and IStETH.sol. Audit date is September 07, 2021.
- [17813] See [full report]() for more details. — matched: All contracts listed in the 'FILES LISTING' section are in scope. Audit date is September 06, 2021 from the title and project dashboard.
- [17814] See [full report]() for more details. — no match: Only one contract in scope: RewardsManager.vy
- [17815] See [full report]() for more details. — no match: All contracts listed in the FILES LISTING section are in scope. The audit date is August 04, 2021 from the cover page.
- [17816] See [full report]() for more details. — no match: All five contracts listed in the 'FILES LISTING' section are in scope.
- [17817] See [full report]() for more details. — no match: Two contracts in scope: PriceFeedProxy.sol and StEthPriceFeed.vy. Audit date from cover page.
- [17818] See [full report]() for more details. — no match: All five contracts listed in the FILES LISTING section are in scope. The audit date is May 14, 2021 from the cover page.
- [17819] See [full report]() for more details. — no match: Audit report for Lido Finance withdrawals manager stub. Scope includes two contracts: WithdrawalsManagerProxy and WithdrawalsManagerStub.
- [17820] See [full report]() for more details. — no match: Two contracts in scope: LidoOracle.sol and ReportUtils.sol. Audit date from cover page and project dashboard.
- [17821] See [full report]() for more details. — no match: Extracted contracts from scope section and findings. Audit date inferred from 'December, 2020' on cover page.
- [17822] See [full report]() for more details. — no match: Extracted contract names from findings, file signatures, and test results. Audit date from report header.
- [17823] See [full report]() for more details. — no match: Extracted contracts from scope section and deployment verification report. Date inferred from 'APRIL 2025' in header, using last day of month.
- [17824] See [full report]() for more details. — matched: Extracted contract names from the scope table and audit report text. OssifiableProxy is included as it is used as a proxy for multiple contracts in scope. GovernanceBridgeExecutor is also listed in the scope table.
- [17825] See [full report]() for more details. — no match: Extracted contracts from scope table and deployment verification sections. Audit date inferred from 'JANUARY 2024' on cover page, using last day of month.
- [17826] See the [full report]() for more details. — matched: Extracted contracts from scope table and audit report verification section. Date from document title.
- [17827] See [full report]() for more details. — matched: Audit report for Zircuit/Lido proposal to deploy wstETH on Zircuit L2. Scope includes files from lido-l2 and governance-crosschain-bridges repos. Audit date from changelog: 2024-09-24.
- [17828] See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details. — matched: Extracted contracts from scope section and deployment scripts. Audit date from cover page.
- [17829] See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details. — matched: Extracted contract names from scope section and report body. Audit date from cover page.
- [17830] See [full report]() for more details. — matched: The report is a bytecode and storage verification of wstETH deployment on Mode network. The scope table on page 3 lists all contracts with their addresses on Mode and Base networks. The report date is July 18, 2024 from the cover page.
- [17831] See [full report]() for more details. — matched: Extracted 28 contract names from the scope table in the audit report. Audit date from cover page: Oct 14, 2024.
- [17832] See [full report]() for more details. — matched: Extracted 22 contracts from scope listings in Executive Summary (Revision 1.0 and Revision 1.3). Audit date from cover page and Appendix A.
- [17833] See [full report]() for more details. — matched: Extracted 23 contract names from the scope table and deployment tables. Audit date from cover page.
- [17834] See [full report]() for more details. — no match: All six contracts listed in the 'Programs' subsection of the Scope section (page 9) are extracted. The audit date is from the cover page: 'January 23, 2024'.
- [17835] See [full report]() for more details. — no match: Only one contract in scope: CustomBridgedToken. Audit date inferred from 'December 2023' in header.
- [17836] See [full report]() for more details. — matched: All contracts listed in the Scope section of the audit report were extracted. The audit date is from the document header: 'December 7, 2023'.
- [17837] Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. — no match: Extracted contract names from findings context and file paths mentioned in the report. The audit date is from the cover page: 'October 19, 2023'.
- [17838] See [full report]() for more details. — no match: Scope section and Appendix 1 explicitly list two files: LineaBridgeExecutor.sol and IMessageService.sol. The audit date is from the report date (October 11, 2023) as per the Document Change Log.
- [17839] See [full report]() for more details. — matched: Scope section states 'covered the Solidity smart contracts under the folder contracts' and findings reference specific files. Date from cover page.
- [17840] See [full report]() for more details. — matched: Scope section lists 5 contracts. Audit date from cover page.
- [17841] See [full report]() for more details. — matched: All contracts listed in Audit Scope section (1.4) with file paths. Date from cover page.
- [17842] See [full report]() for more details. — no match: Only one contract in scope: L1ERC20Bridge.sol
- [17843] See [full report]() for more details. — no match: Scope section explicitly lists 6 contracts: StMatic.sol, NodeOperatorRegistry.sol, PoLidoNFT.sol, FxStateChildTunnel.sol, FxStateRootTunnel.sol, RateProvider.sol. Audit date is August 3, 2022 from the cover page.
- [17844] See [full report]() for more details. — no match: Scope section explicitly lists PoLidoNFT.sol and StMATIC.sol as the contracts in scope for PR#69.
- [17845] There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. — no match: Extracted 20 contract names from the 'Project Scope' section listing files. Audit date from title: 06-05-2024 - 27-05-2024, using end date.
- [17846] - [**Audit Report for v8.0.1 (Composable Security)**]() — no match: Extracted contract names from scope sections and findings. The scope includes the entire src/ directory of the lido-oracle repository. Specific files mentioned in findings include accounting.py, ejector.py, exit_order_iterator.py, lido_validators.py, state.py, base.py, meta_registry.py, server.py, variables.py, and others. The audit date is explicitly stated as 'Report date: 2026-06-24'.
- [17848] 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf — no match: All contracts listed in the 'Files:' section of the scope are extracted. The audit date is the end date of the contest period (July 14-July 28, 2025).
- [17849] 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf — no match: All contracts listed in the 'Audited Files' table (Section 2) are in scope. The audit date is explicitly stated as 'Final Report September 03, 2025' on the cover page.
- [17850] 2025-10-15_Nethermind_NM-0682_Mellow.pdf — no match: Only one contract in scope: Migrator.sol. Audit date from cover page and summary.
- [17851] 2025-11-17_Nethermind_NM-0703_Mellow.pdf — no match: The audit report explicitly states the scope is the OracleSubmitter contract only. The date is from the cover page and summary table.
- [17852] 2025-11-19_Nethermind_NM-0735_Mellow.pdf — no match: The audit report explicitly states the scope is the SwapModule contract in src/utils/SwapModule.sol. The audit date is November 19, 2025, from the cover page and summary table.
- [17853] 2025-12-09_Nethermind_NM-0758_Mellow.pdf — no match: Audit report for Mellow Finance's SyncDepositQueue contract, including inherited SyncQueue. Date from cover page and summary.
- [17854] 2026-01-07_Nethermind_NM-0798_Mellow.pdf — no match: Only one contract in scope: BurnableTokenizedShareManager. Audit date from cover page and summary.
- [17855] 2026-01-21_Nethermind_NM-0812_Mellow.pdf — no match: The scope is a pull request with 2 lines of code; only ShareManager is explicitly named as the contract being modified. No file paths with .sol extension provided.
- [17856] 2026-03-02_Nethermind_NM-0758_Mellow.pdf — no match: Two contracts in scope: SyncDepositQueue and SyncQueue. Audit date is March 02, 2026 from the cover page.
- [17858] Mellow Core Vaults — no match: All contracts listed in the scope section of the audit report were extracted. The audit date is the end date of the audit period (July 14 - July 28, 2025).
- [17859] Mellow Core Vaults — no match: All contracts listed in the 'Audited Files' table (Section 2) are in scope. The audit date is explicitly stated as 'Final Report September 03, 2025' on the cover page and in the summary table.
- [17860] NM-0682 Migrator — no match: Only one contract, Migrator, is in scope. Audit date is October 15, 2025 from the summary table.
- [17861] NM-0703 Oracle Submitter — no match: Only one contract, OracleSubmitter, is in scope. The audit report date is November 17, 2025, from the cover page and summary.
- [17862] NM-0735 Swap Module — no match: The audit scope is explicitly limited to the SwapModule contract in src/utils/SwapModule.sol. The report date is November 19, 2025.
- [17863] NM-0758 SyncDepositQueue — no match: Audit report for Mellow Finance's SyncDepositQueue contract. Scope includes SyncDepositQueue.sol and SyncQueue.sol. Audit date is December 09, 2025.
- [17864] NM-0798 BurnableTokenizedShareManager — no match: Only one contract in scope: BurnableTokenizedShareManager. Audit date from cover page and summary.
- [17865] NM-0812 Redeem Queue Fee Fix — no match: The audit report focuses on a pull request that changes the ShareManager contract. No other contracts are explicitly listed in scope.
- [17866] NM-0758 SyncDepositQueue — no match: Two contracts in scope: SyncDepositQueue and SyncQueue. Audit date is March 02, 2026 from the cover page.
- [17867] NM-0891 PermissionedChainlinkOracle — no match: Scope explicitly lists PermissionedChainlinkOracle.sol; SwapModule.sol is referenced in the finding as an audited file.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| See [audit report](). | CircuitBreaker | own contract | CircuitBreaker (selected) `0x6019cb...dfb2f7` — deployed 2026-04-30 16:21:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [audit report](). | Registry | unmatched — not counted | — | listed in scope | no |
| See [formal verification report]() for more details. | CircuitBreaker | own contract | CircuitBreaker (selected) `0x6019cb...dfb2f7` — deployed 2026-04-30 16:21:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [formal verification report]() for more details. | CircuitBreakerHarness | unmatched — not counted | — | Harness contract inheriting CircuitBreaker, used for formal verification. | no |
| See [full report]() for more details. | CircuitBreaker | own contract | CircuitBreaker (selected) `0x6019cb...dfb2f7` — deployed 2026-04-30 16:21:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Registry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MellowStrategyFactory | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MellowStrategy | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StrategyCallForwarder | unmatched — not counted | — | mentioned as deployed contract and in findings | no |
| See [full report]() for more details. | CuratedSubmitExitRequestHashes | own contract | CuratedSubmitExitRequestHashes (selected) `0x4f716a...71dcde` — deployed 2026-03-17 15:49:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SDVTSubmitExitRequestHashes | own contract | SDVTSubmitExitRequestHashes (selected) `0x58a59d...b56e37` — deployed 2026-03-17 15:52:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SubmitExitRequestHashesUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StakingVault | own contract | StakingVault (selected) `0x06a564...784553` — deployed 2025-12-03 15:52:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | VaultHub | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LazyOracle | unmatched — not counted | — | mentioned as foundational contract in Essential Layer | no |
| See [full report]() for more details. | OperatorGrid | own contract | OperatorGrid (selected) `0xa612e3...932c2c` — deployed 2025-12-03 15:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | PredepositGuarantee | unmatched — not counted | — | mentioned as foundational contract in Essential Layer | no |
| See [full report]() for more details. | VaultFactory | own contract | VaultFactory (selected) `0x02ca77...34175a` — deployed 2025-12-03 15:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Dashboard | own contract | Dashboard (selected) `0x294825...989af3` — deployed 2025-12-03 15:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LazyOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | VaultHub | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AlterTiersInOperatorGrid | own contract | AlterTiersInOperatorGrid (selected) `0x37d9b0...f9b62e` — deployed 2026-03-27 20:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | RegisterGroupsInOperatorGrid | own contract | RegisterGroupsInOperatorGrid (selected) `0x17305d...7eea7c` — deployed 2026-03-27 20:10:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | RegisterTiersInOperatorGrid | own contract | 0x6b535f… (selected) `0x6b535f...b2dc0d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | BLS | unmatched — not counted | — | listed in scope section | no |
| See [full report]() for more details. | TwoPhaseFrameConfigUpdate | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | AllowList | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Distributor | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Factory | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | StvPool | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StvStETHPool | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | DistributorFactory | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | GGVStrategyFactory | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StvPoolFactory | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | StvStETHPoolFactory | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | TimelockFactory | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | WithdrawalQueueFactory | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | GGVStrategy | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StrategyCallForwarder | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StrategyCallForwarderRegistry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | FeaturePausable | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StvPool | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StvStETHPool | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | GGVStrategy | unmatched — not counted | — | listed in scope via src/strategy/*.sol | no |
| See [full report]() for more details. | Factory | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Distributor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Allowlist | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StvPoolFactory | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | StvStETHPoolFactory | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | WithdrawalQueueFactory | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | DistributorFactory | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | TimelockFactory | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | DummyImplementation | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | FeaturePausable | unmatched — not counted | — | listed in scope | no |
| full report | StakingVault | own contract | StakingVault (selected) `0x06a564...784553` — deployed 2025-12-03 15:52:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | VaultHub | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | LazyOracle | unmatched — not counted | — | mentioned in Protocol Overview and findings | no |
| full report | OperatorGrid | own contract | OperatorGrid (selected) `0xa612e3...932c2c` — deployed 2025-12-03 15:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | PredepositGuarantee | unmatched — not counted | — | mentioned in Protocol Overview and findings | no |
| full report | VaultFactory | own contract | VaultFactory (selected) `0x02ca77...34175a` — deployed 2025-12-03 15:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | Dashboard | own contract | Dashboard (selected) `0x294825...989af3` — deployed 2025-12-03 15:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | NodeOperatorFee | unmatched — not counted | — | mentioned in findings | no |
| full report | Lido | unmatched — not counted | — | mentioned in findings | no |
| full report | WithdrawalQueue | unmatched — not counted | — | mentioned in findings | no |
| full report | Accounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | StETH | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | VaultHub | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OperatorGrid | own contract | OperatorGrid (selected) `0xa612e3...932c2c` — deployed 2025-12-03 15:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Lido | unmatched — not counted | — | Listed in scope and findings (M-03, L-01, P-LI-01, etc.) | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | Listed in scope and findings (L-02, P-LI-06) | no |
| See [full report]() for more details. | Accounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Burner | unmatched — not counted | — | Listed in scope and properties (P-BU-01, P-BU-02) | no |
| See [full report]() for more details. | LazyOracle | unmatched — not counted | — | Listed in scope and properties (P-LO-01, P-LO-02) | no |
| See [full report]() for more details. | PredepositGuarantee | unmatched — not counted | — | Listed in scope and properties (P-PG-01) | no |
| See [full report]() for more details. | StakingVault | own contract | StakingVault (selected) `0x06a564...784553` — deployed 2025-12-03 15:52:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f92...38173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | Mentioned in assumptions | no |
| See [full report]() for more details. | NodeOperatorRegistry | unmatched — not counted | — | Mentioned in L-04 and P-NO-01 | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | Mentioned in L-04 | no |
| See [full report]() for more details. | deposit_contract | unmatched — not counted | — | Mentioned in L-04 | no |
| See [full report]() for more details. | LidoOracle | unmatched — not counted | — | Project Scope lists src/main.py as in scope | no |
| See [full report]() for more details. | VaultHub | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StakingVaultIpfsReport | unmatched — not counted | — | Listed in scope and referenced in findings | no |
| See [full report]() for more details. | MintedSharesOnVaultEvent | unmatched — not counted | — | Listed in scope and referenced in finding L-02 | no |
| See [full report]() for more details. | BurnedSharesOnVaultEvent | unmatched — not counted | — | Listed in scope and referenced in finding L-02 | no |
| See [full report]() for more details. | VaultFeesUpdatedEvent | unmatched — not counted | — | Listed in scope and referenced in finding L-02 | no |
| See [full report]() for more details. | VaultRebalancedEvent | unmatched — not counted | — | Listed in scope and referenced in finding L-02 | no |
| See [full report]() for more details. | BadDebtSocializedEvent | unmatched — not counted | — | Listed in scope and referenced in finding L-02 | no |
| See [full report]() for more details. | BadDebtWrittenOffToBeInternalizedEvent | unmatched — not counted | — | Listed in scope and referenced in finding L-02 | no |
| full report | Lido | unmatched — not counted | — | listed in scope table | no |
| full report | Accounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | AlterTiersInOperatorGrid | own contract | AlterTiersInOperatorGrid (selected) `0x37d9b0...f9b62e` — deployed 2026-03-27 20:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | DecreaseShareLimitsInVaultHub | unmatched — not counted | — | listed in scope table | no |
| full report | DecreaseVaultsFeesInVaultHub | unmatched — not counted | — | listed in scope table | no |
| full report | ForceValidatorExitsInVaultHub | unmatched — not counted | — | listed in scope table | no |
| full report | RegisterGroupsInOperatorGrid | own contract | RegisterGroupsInOperatorGrid (selected) `0x17305d...7eea7c` — deployed 2026-03-27 20:10:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | RegisterTiersInOperatorGrid | unmatched — not counted | — | listed in scope table | no |
| full report | SetJailStatusInOperatorGrid | own contract | SetJailStatusInOperatorGrid (selected) `0x6a4f33...f0d305` — deployed 2026-01-13 16:16:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | SetLiabilitySharesTargetInVaultHub | unmatched — not counted | — | listed in scope table | no |
| full report | SetVaultRedemptionsInVaultHub | unmatched — not counted | — | listed in scope table | no |
| full report | SocializeBadDebtInVaultHub | unmatched — not counted | — | listed in scope table | no |
| full report | UpdateGroupsShareLimitInOperatorGrid | unmatched — not counted | — | listed in scope table | no |
| full report | UpdateVaultsFeesInOperatorGrid | unmatched — not counted | — | listed in scope table | no |
| full report | VaultHubAdapter | unmatched — not counted | — | listed in scope table | no |
| full report | VaultsAdapter | own contract | VaultsAdapter (selected) `0x28f9ac...120f27` — deployed 2026-01-13 16:15:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | PinnedBeaconProxy | unmatched — not counted | — | listed in scope and findings | no |
| full report | StakingVault | own contract | StakingVault (selected) `0x06a564...784553` — deployed 2025-12-03 15:52:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | VaultHub | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | Dashboard | own contract | Dashboard (selected) `0x294825...989af3` — deployed 2025-12-03 15:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | OperatorGrid | own contract | OperatorGrid (selected) `0xa612e3...932c2c` — deployed 2025-12-03 15:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | LazyOracle | unmatched — not counted | — | listed in scope and findings | no |
| full report | NodeOperatorFee | unmatched — not counted | — | listed in findings | no |
| full report | VaultFactory | own contract | VaultFactory (selected) `0x02ca77...34175a` — deployed 2025-12-03 15:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | AccessControlConfirmable | unmatched — not counted | — | listed in findings | no |
| full report | Confirmations | unmatched — not counted | — | listed in findings | no |
| full report | PinnedBeaconUtils | unmatched — not counted | — | listed in findings | no |
| full report | ValidatorConsolidationRequests | own contract | ValidatorConsolidationRequests (selected) `0xac4aae...7fe018` — deployed 2025-12-03 15:54:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| full report | TriggerableWithdrawals | unmatched — not counted | — | listed in findings | no |
| See [full report]() for more details. | StonksFactory | unmatched — not counted | — | Deployment verification section lists StonksFactory contract address. | no |
| See [full report]() for more details. | Order | unmatched — not counted | — | Deployment verification section lists Order contract address as sample. | no |
| See [full report]() for more details. | OracleRouter | unmatched — not counted | — | Deployment verification section lists OracleRouter contract address. | no |
| See [full report]() for more details. | AmountConverterFactory | unmatched — not counted | — | Deployment verification section lists AmountConverterFactory contract address. | no |
| See [full report]() for more details. | AmountConverter | unmatched — not counted | — | Deployment verification section lists AmountConverter (USD-anchored) contract address. | no |
| See [full report]() for more details. | Stonks | unmatched — not counted | — | Deployment verification section lists Stonks (stETH → LDO) contract address. | no |
| See [full report]() for more details. | Ownable | unmatched — not counted | — | Mentioned as inherited contract in Stonks and in findings (I1). | no |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | Mentioned in executive summary and trust model as contract for recovering tokens. | no |
| See [full report]() for more details. | LDORevesting | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | lazy_oracle | unmatched — not counted | — | Affected files in findings: lazy_oracle.py#L131 | no |
| See [full report]() for more details. | staking_vaults | unmatched — not counted | — | Affected files in findings: staking_vaults.py#L103-L104, L105, L119 | no |
| See [full report]() for more details. | converter | unmatched — not counted | — | Affected files in findings: converter.py#L86-L135 | no |
| See [full report]() for more details. | CuratedSubmitExitRequestHashes | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | SDVTSubmitExitRequestHashes | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See [full report]() for more details. | SubmitExitRequestHashesUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WstethStaker | own contract | WstETHReferralStaker (selected) `0xa88f03...20dd0d` — deployed 2025-09-09 15:35:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | NodeOperatorRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LidoLocator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f92...38173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | TriggerableWithdrawalsGateway | own contract | TriggerableWithdrawalsGateway (selected) `0xdc0011...b3037b` — deployed 2025-09-12 13:00:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalVault | own contract | WithdrawalVault (selected) `0x7d2baa...4fd53d` — deployed 2025-09-12 13:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalVaultEIP7002 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorsExitBus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ExitLimitUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BeaconTypes | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | GIndex | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | SSZ | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorExitDelayVerifier | own contract | ValidatorExitDelayVerifier (selected) `0xbdb567...4ec82f` — deployed 2025-09-12 13:00:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | distribution.py | unmatched — not counted | — | Affected files in LDO-6fda87f2-L01 | no |
| See [full report]() for more details. | CSStrikes.sol | own contract | CSStrikes (selected) `0x3e5021...8956a0` — deployed 2025-09-17 15:36:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSOracle | unmatched — not counted | — | Section 3.1: CSM Oracle module | no |
| See [full report]() for more details. | CSM | unmatched — not counted | — | Section 3.1: CSM Oracle integrates with Community Staking Module | no |
| See [full report]() for more details. | CSParametersRegistryContract | unmatched — not counted | — | Section 3.1: Introduced CSParametersRegistryContract | no |
| See [full report]() for more details. | CSStrikesContract | unmatched — not counted | — | Section 3.1: Introduced CSStrikesContract | no |
| See [full report]() for more details. | CSMSetVettedGateTree | own contract | CSMSetVettedGateTree (selected) `0xbc5642...d97308` — deployed 2025-09-18 16:15:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | QueueLib | own contract | QueueLib (selected) `0x6eff46...aa2e55` — deployed 2025-09-17 13:49:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | NOAddresses | own contract | NOAddresses (selected) `0xe4d5a7...67fffc` — deployed 2025-09-17 13:49:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSParametersRegistry | own contract | 0x25fdc3… (selected) `0x25fdc3...216a78` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSAccounting | own contract | 0x6f09d2… (selected) `0x6f09d2...03f449` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | PermissionlessGate | own contract | 0xcf33a3… (selected) `0xcf33a3...b454f0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | VettedGate | own contract | 0x65d4d9… (selected) `0x65d4d9...1cfdc4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | VettedGateFactory | own contract | 0xfdab48… (selected) `0xfdab48...ea0ad4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSFeeDistributor | own contract | 0x5dcf7c… (selected) `0x5dcf7c...0251a1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSModule | own contract | CSModule (selected) `0x1eb6d4...a07665` — deployed 2025-09-17 15:36:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSStrikes | own contract | CSStrikes (selected) `0x3e5021...8956a0` — deployed 2025-09-17 15:36:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSFeeOracle | own contract | 0xe0b234… (selected) `0xe0b234...70da97` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSExitPenalties | own contract | 0xda22fa… (selected) `0xda22fa...86d546` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSEjector | own contract | CSEjector (selected) `0xc72b58...00802c` — deployed 2025-09-17 15:38:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSVerifier | own contract | 0xdc5fe1… (selected) `0xdc5fe1...0063dc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSBondCore | unmatched — not counted | — | mentioned in findings (L1) | no |
| See [full report]() for more details. | CSBondCurve | unmatched — not counted | — | mentioned in findings (I1, I3) | no |
| See [full report]() for more details. | SSZ | unmatched — not counted | — | mentioned in findings (W6) | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | mentioned in findings (I2) | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | mentioned in findings (I4) | no |
| See [full report]() for more details. | ICSBondCurve | unmatched — not counted | — | mentioned in findings (I2, I4) | no |
| See [full report]() for more details. | ICSModule | unmatched — not counted | — | mentioned in findings (W3) | no |
| See [full report]() for more details. | CSMSetVettedGateTree | own contract | CSMSetVettedGateTree (selected) `0xbc5642...d97308` — deployed 2025-09-18 16:15:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSModule | ambiguous — not counted | CSModule (alternative) `0x1eb6d4...a07665` — deployed 2025-09-17 15:36:47+03 — liveness: live (current_address_book_code)<br>0xda7de2… (alternative) `0xda7de2...9ea83f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | NOAddresses | own contract | NOAddresses (selected) `0xe4d5a7...67fffc` — deployed 2025-09-17 13:49:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | QueueLib | own contract | QueueLib (selected) `0x6eff46...aa2e55` — deployed 2025-09-17 13:49:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AssetRecovererLib | own contract | AssetRecovererLib (selected) `0xa74528...cc01d9` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | TransientUintUintMapLib | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorCountsReport | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSAccounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSBondCurve | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSBondCore | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSBondLock | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSStrikes | own contract | CSStrikes (selected) `0x3e5021...8956a0` — deployed 2025-09-17 15:36:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSEjector | own contract | CSEjector (selected) `0xc72b58...00802c` — deployed 2025-09-17 15:38:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSExitPenalties | own proxy deployment | OssifiableProxy (proxy) (selected) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ExitTypes | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSVerifier | own contract | 0xdc5fe1… (selected) `0xdc5fe1...0063dc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SSZ | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | GIndex | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Types | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSFeeDistributor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSFeeOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | CSParametersRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | VettedGate | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PermissionlessGate | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | VettedGateFactory | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorExitDelayVerifier | own contract | ValidatorExitDelayVerifier (selected) `0xbdb567...4ec82f` — deployed 2025-09-12 13:00:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LidoLocator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f92...38173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | TriggerableWithdrawalsGateway | own contract | TriggerableWithdrawalsGateway (selected) `0xdc0011...b3037b` — deployed 2025-09-12 13:00:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalVault | own contract | WithdrawalVault (selected) `0x7d2baa...4fd53d` — deployed 2025-09-12 13:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalVaultEIP7002 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorsExitBus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ExitLimitUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BeaconTypes | unmatched — not counted | — | listed in scope | no |
| report | Escrow | own contract | Escrow (selected) `0x165813...228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | Escrow | own contract | Escrow (selected) `0x165813...228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | AssetsAccounting | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DualGovernance | own contract | DualGovernance (selected) `0xc1db28...a4486e` — deployed 2025-08-08 13:21:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | DualGovernanceStateTransitions | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | EmergencyProtectedTimelock | own contract | EmergencyProtectedTimelock (selected) `0xce0425...2d2316` — deployed 2025-05-22 13:49:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ExecutableProposals | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DualGovernanceStateMachine | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | WithdrawalsBatchesQueue | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Tiebreaker | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | EmergencyProtection | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DualGovernanceConfig | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | EscrowState | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Proposers | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TiebreakerSubCommittee | own contract | TiebreakerSubCommittee (selected) `0x3d3ba5...ab2951` — deployed 2025-08-08 13:22:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | Duration | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TimelockState | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | EnumerableProposals | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | PercentD16 | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ETHValue | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ImmutableDualGovernanceConfigProvider | own contract | ImmutableDualGovernanceConfigProvider (selected) `0xa1692a...4cb5ef` — deployed 2025-05-22 13:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | Timestamp | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TimelockedGovernance | own contract | TimelockedGovernance (selected) `0x553337...6a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | SharesValue | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ResealManager | own contract | ResealManager (selected) `0x7914b5...522d24` — deployed 2025-05-22 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | IndexOneBased | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Resealer | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ProposalsList | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Executor | own contract | Executor (selected) `0x23e0b4...537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | SealableCalls | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ExternalCalls | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DGUpgradeOmnibusMainnet | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [note]() contents for more details. | DGUpgradeStateVerifierMainnet | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [full report]() for more details. | CSStrikes | own contract | CSStrikes (selected) `0x3e5021...8956a0` — deployed 2025-09-17 15:36:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | VettedGate | unmatched — not counted | — | mentioned in findings as VettedGate contract | no |
| See [full report]() for more details. | CSFeeDistributor | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSAccounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSFeeOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSVerifier | own contract | 0xdc5fe1… (selected) `0xdc5fe1...0063dc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSModule | ambiguous — not counted | CSModule (alternative) `0x1eb6d4...a07665` — deployed 2025-09-17 15:36:47+03 — liveness: live (current_address_book_code)<br>0xda7de2… (alternative) `0xda7de2...9ea83f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | CSEarlyAdoption | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | TransientUintUintMapLib | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | NOAddresses | own contract | NOAddresses (selected) `0xe4d5a7...67fffc` — deployed 2025-09-17 13:49:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ValidatorCountsReport | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Types | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SSZ | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | GIndex | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | QueueLib | own contract | QueueLib (selected) `0x6eff46...aa2e55` — deployed 2025-09-17 13:49:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AssetRecovererLib | own contract | AssetRecovererLib (selected) `0xa74528...cc01d9` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSBondLock | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSBondCurve | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSBondCore | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f92...38173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de...42d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | UpdateTargetValidatorLimits | own contract | UpdateTargetValidatorLimits (selected) `0x161a45...0f399b` — deployed 2024-10-08 18:45:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSMSettleELStealingPenalty | own contract | CSMSettleElStealingPenalty (selected) `0xf6b6e7...da76f4` — deployed 2024-10-11 13:52:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | DataBus | own contract | DataBus (selected) `0x37de96...d960e6` — deployed 2024-10-07 20:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ISecondOpinionOracle | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | Sp1LidoAccountingReportContract | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | main | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | input_verification | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | io | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | report | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | circuit_logic | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | eth_io | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | program_io | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | serde_utils | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | eth_consensus_layer | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | eth_execution_layer | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | eth_spec | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | lib | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | lido | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | merkle_proof | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | util | unmatched — not counted | — | listed in Audited Files table | no |
| See [full report]() for more details. | Deploy | unmatched — not counted | — | listed in Audited Files table | no |
| See [note]() contents for more details. | DGLaunchOmnibusMainnet | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [note]() contents for more details. | DGRolesValidatorMainnet | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [note]() contents for more details. | DGLaunchStateVerifier | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [note]() contents for more details. | TimeConstraints | own contract | TimeConstraints (selected) `0x2a30f5...749dda` — deployed 2025-05-22 14:16:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | Escrow | own contract | Executor (selected) `0x23e0b4...537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | AssetsAccounting | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DualGovernance | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [note]() contents for more details. | EmergencyProtectedTimelock | own contract | ImmutableDualGovernanceConfigProvider (selected) `0xa1692a...4cb5ef` — deployed 2025-05-22 13:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ExecutableProposals | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DualGovernanceStateMachine | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | WithdrawalsBatchesQueue | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Tiebreaker | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | EmergencyProtection | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DualGovernanceConfig | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | EscrowState | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Proposers | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TiebreakerCoreCommittee | own contract | TimelockedGovernance (selected) `0x553337...6a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | DualGovernanceStateTransitions | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TiebreakerSubCommittee | unmatched — not counted | — | listed in scope and deployed on mainnet (Sub Committee 1) | no |
| See [note]() contents for more details. | Duration | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TimelockState | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | EnumerableProposals | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | PercentD16 | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ETHValue | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ImmutableDualGovernanceConfigProvider | own contract | ResealManager (selected) `0x7914b5...522d24` — deployed 2025-05-22 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | Timestamp | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | TimelockedGovernance | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [note]() contents for more details. | SharesValue | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ResealManager | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [note]() contents for more details. | IndexOneBased | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Resealer | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ProposalsList | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Executor | unmatched — not counted | — | listed in scope and deployed on mainnet (Admin executor) | no |
| See [note]() contents for more details. | SealableCalls | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ExternalCalls | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | NodeRegistry | unmatched — not counted | — | mentioned as the smart contract affected by the vulnerability in section 2.1 | no |
| See [full report]() for more details. | AddMEVBoostRelays | own contract | AddMEVBoostRelays (selected) `0x00a3d6...d7be60` — deployed 2025-05-07 18:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EditMEVBoostRelays | own contract | EditMEVBoostRelays (selected) `0x6b7863...025535` — deployed 2025-05-07 18:05:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | RemoveMEVBoostRelays | own contract | RemoveMEVBoostRelays (selected) `0x9721c0...9c0306` — deployed 2025-05-07 18:05:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | MEVBoostRelaysInputUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Accounting Module | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Ejector Module | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSM Module | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | abnormal_cl_rebase | unmatched — not counted | — | mentioned in findings M-1 and L-3 | no |
| See [full report]() for more details. | accounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | exit_order_iterator | unmatched — not counted | — | mentioned in findings L-1 and L-5 | no |
| See [full report]() for more details. | sweep | unmatched — not counted | — | mentioned in finding L-2 | no |
| See [full report]() for more details. | validator_state | unmatched — not counted | — | mentioned in finding L-4 | no |
| See [full report]() for more details. | exit_order_iterator | unmatched — not counted | — | Affected files in findings LDO-0dbc1d8a-M01 and LDO-0dbc1d8a-L01 | no |
| See [full report]() for more details. | safe_border | unmatched — not counted | — | Affected files in findings LDO-0dbc1d8a-M02 and LDO-0dbc1d8a-L03 | no |
| See [full report]() for more details. | validator_state | unmatched — not counted | — | Affected files in finding LDO-0dbc1d8a-L01 | no |
| See [full report]() for more details. | consensus | unmatched — not counted | — | Affected files in finding LDO-0dbc1d8a-L02 | no |
| See [full report]() for more details. | AssetRecovererLib | own contract | AssetRecovererLib (selected) `0xa74528...cc01d9` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | NOAddresses | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | QueueLib | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | CSModule | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | OssifiableProxy | own contract | 0xda7de2… (selected) `0xda7de2...9ea83f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSAccounting | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | CSFeeOracle | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | CSFeeDistributor | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | CSVerifier | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | CSEarlyAdoption | unmatched — not counted | — | deployment verification | no |
| See [full report]() for more details. | HashConsensus | own contract | 0x71093e… (selected) `0x71093e...0688e4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSMSettleElStealingPenalty | own contract | CSMSettleElStealingPenalty (selected) `0xf6b6e7...da76f4` — deployed 2024-10-11 13:52:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | CSBondCore | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | CSBondLock | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | CSBondCurve | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | SSZ | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | GIndex | unmatched — not counted | — | mentioned in findings | no |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | mentioned in findings | no |
| See [note]() contents for more details. | GateSealFactory | unmatched — not counted | — | listed in scope table | no |
| See [note]() contents for more details. | GateSeal | unmatched — not counted | — | listed in scope table as CSM instance | no |
| See full [report]() for more details. | Escrow | own contract | Escrow (selected) `0x165813...228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | DualGovernance | own contract | DualGovernance (selected) `0xc1db28...a4486e` — deployed 2025-08-08 13:21:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | EmergencyProtectedTimelock | own contract | EmergencyProtectedTimelock (selected) `0xce0425...2d2316` — deployed 2025-05-22 13:49:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Executor | own contract | Executor (selected) `0x23e0b4...537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | ImmutableDualGovernanceConfigProvider | own contract | ImmutableDualGovernanceConfigProvider (selected) `0xa1692a...4cb5ef` — deployed 2025-05-22 13:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | ResealManager | own contract | ResealManager (selected) `0x7914b5...522d24` — deployed 2025-05-22 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | TimelockedGovernance | own contract | TimelockedGovernance (selected) `0x553337...6a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ProposalsList | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerSubCommittee | own contract | TiebreakerSubCommittee (selected) `0x3d3ba5...ab2951` — deployed 2025-08-08 13:22:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | IDualGovernance | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IDualGovernanceConfigProvider | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IEmergencyProtectedTimelock | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IEscrowBase | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IExternalExecutor | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IGovernance | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IOwnable | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IRageQuitEscrow | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IResealManager | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ISealable | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ISignallingEscrow | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IStETH | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITimelock | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IWstETH | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | AssetsAccounting | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceConfig | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceStateMachine | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceStateTransitions | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EmergencyProtection | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EnumerableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EscrowState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExecutableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExternalCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Proposers | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Resealer | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | SealableCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Tiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TimelockState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | WithdrawalsBatchesQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Duration | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ETHValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IndexOneBased | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | PercentD16 | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | SharesValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Timestamp | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernance | own contract | DualGovernance (selected) `0xc1db28...a4486e` — deployed 2025-08-08 13:21:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | EmergencyProtectedTimelock | own contract | EmergencyProtectedTimelock (selected) `0xce0425...2d2316` — deployed 2025-05-22 13:49:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Escrow | own contract | Escrow (selected) `0x165813...228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Executor | own contract | Executor (selected) `0x23e0b4...537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | ImmutableDualGovernanceConfigProvider | own contract | ImmutableDualGovernanceConfigProvider (selected) `0xa1692a...4cb5ef` — deployed 2025-05-22 13:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | ResealManager | own contract | ResealManager (selected) `0x7914b5...522d24` — deployed 2025-05-22 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | TimelockedGovernance | own contract | TimelockedGovernance (selected) `0x553337...6a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ProposalsList | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerSubCommittee | own contract | TiebreakerSubCommittee (selected) `0x3d3ba5...ab2951` — deployed 2025-08-08 13:22:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | IDualGovernance | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IDualGovernanceConfigProvider | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IEmergencyProtectedTimelock | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IEscrowBase | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IExternalExecutor | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IGovernance | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IOwnable | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IRageQuitEscrow | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IResealManager | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ISealable | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ISignallingEscrow | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IStETH | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITimelock | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IWstETH | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | AssetsAccounting | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceConfig | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceStateMachine | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceStateTransitions | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EmergencyProtection | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EnumerableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EscrowState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExecutableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExternalCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Proposers | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Resealer | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | SealableCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Tiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TimelockState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | WithdrawalsBatchesQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Duration | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ETHValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IndexOneBased | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | PercentD16 | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | SharesValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Timestamp | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernance | own contract | DualGovernance (selected) `0xc1db28...a4486e` — deployed 2025-08-08 13:21:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Escrow | own contract | Escrow (selected) `0x165813...228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | EmergencyProtectedTimelock | own contract | EmergencyProtectedTimelock (selected) `0xce0425...2d2316` — deployed 2025-05-22 13:49:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | TimelockedGovernance | own contract | TimelockedGovernance (selected) `0x553337...6a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | StETH | unmatched — not counted | — | external contract model used in tests | no |
| See full [report]() for more details. | WithdrawalQueue | unmatched — not counted | — | external contract model used in tests | no |
| See full [report]() for more details. | Executor | own contract | Executor (selected) `0x23e0b4...537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | DualGovernance | own contract | DualGovernance (selected) `0xc1db28...a4486e` — deployed 2025-08-08 13:21:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | EmergencyProtectedTimelock | own contract | EmergencyProtectedTimelock (selected) `0xce0425...2d2316` — deployed 2025-05-22 13:49:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Escrow | own contract | Escrow (selected) `0x165813...228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Executor | own contract | Executor (selected) `0x23e0b4...537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | ImmutableDualGovernanceConfigProvider | own contract | ImmutableDualGovernanceConfigProvider (selected) `0xa1692a...4cb5ef` — deployed 2025-05-22 13:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | ResealManager | own contract | ResealManager (selected) `0x7914b5...522d24` — deployed 2025-05-22 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | TimelockedGovernance | own contract | TimelockedGovernance (selected) `0x553337...6a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ProposalsList | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerSubCommittee | own contract | TiebreakerSubCommittee (selected) `0x3d3ba5...ab2951` — deployed 2025-08-08 13:22:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | IDualGovernance | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IDualGovernanceConfigProvider | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IEmergencyProtectedTimelock | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IEscrow | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IExternalExecutor | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IGateSeal | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IGovernance | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IOwnable | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IResealManager | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ISealable | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IStETH | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ITimelock | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IWstETH | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | AssetsAccounting | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceConfig | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceStateMachine | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EmergencyProtection | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EnumerableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EscrowState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExecutableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExternalCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Proposers | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | SealableCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Tiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TimelockState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | WithdrawalBatchesQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Duration | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ETHValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IndexOneBased | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | PercentD16 | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | SharesValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Timestamp | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope and deployment verification | no |
| See [full report]() for more details. | DepositSecurityModule | own contract | 0xffa96d… (selected) `0xffa96d...3d72fd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StakingRouter | unmatched — not counted | — | listed in scope and deployment verification | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de...42d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope and deployment verification | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope and deployment verification | no |
| See [full report]() for more details. | AssetRecovererLib | own contract | AssetRecovererLib (selected) `0xa74528...cc01d9` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | NOAddresses | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | QueueLib | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | CSModule | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | OssifiableProxy | own contract | 0xda7de2… (selected) `0xda7de2...9ea83f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSAccounting | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | CSFeeOracle | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | CSFeeDistributor | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | CSVerifier | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | CSEarlyAdoption | unmatched — not counted | — | Listed in deployment verification section as deployed contract. | no |
| See [full report]() for more details. | HashConsensus | own contract | 0x71093e… (selected) `0x71093e...0688e4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSMSettleElStealingPenalty | own contract | CSMSettleElStealingPenalty (selected) `0xf6b6e7...da76f4` — deployed 2024-10-11 13:52:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSBondCore | unmatched — not counted | — | Mentioned in findings (e.g., L4, W13) and is part of the src directory. | no |
| See [full report]() for more details. | CSBondCurve | unmatched — not counted | — | Mentioned in finding W8. | no |
| See [full report]() for more details. | CSBondLock | unmatched — not counted | — | Mentioned in findings (e.g., W15). | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | Mentioned in findings (e.g., L2, W2). | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | Mentioned in finding W1. | no |
| See [full report]() for more details. | SSZ | unmatched — not counted | — | Mentioned in finding W6. | no |
| See [full report]() for more details. | GIndex | unmatched — not counted | — | Mentioned in finding I2. | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | Mentioned in finding I14. | no |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | Mentioned in findings (e.g., W4, I4). | no |
| See [full report]() for more details. | ICSModule | unmatched — not counted | — | Mentioned in finding I14 (incorrect statement about totalExitedKeys). | no |
| See [full report]() for more details. | CSFeeDistributor | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSAccounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSFeeOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSVerifier | own contract | 0xdc5fe1… (selected) `0xdc5fe1...0063dc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSModule | ambiguous — not counted | CSModule (alternative) `0x1eb6d4...a07665` — deployed 2025-09-17 15:36:47+03 — liveness: live (current_address_book_code)<br>0xda7de2… (alternative) `0xda7de2...9ea83f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | CSEarlyAdoption | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | TransientUintUintMapLib | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | NOAddresses | own contract | NOAddresses (selected) `0xe4d5a7...67fffc` — deployed 2025-09-17 13:49:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ValidatorCountsReport | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Types | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SSZ | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | GIndex | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | QueueLib | own contract | QueueLib (selected) `0x6eff46...aa2e55` — deployed 2025-09-17 13:49:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AssetRecovererLib | own contract | AssetRecovererLib (selected) `0xa74528...cc01d9` — deployed 2024-10-10 16:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSBondLock | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSBondCurve | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSBondCore | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f92...38173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de...42d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | UpdateTargetValidatorLimits | own contract | UpdateTargetValidatorLimits (selected) `0x161a45...0f399b` — deployed 2024-10-08 18:45:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CSMSettleELStealingPenalty | own contract | CSMSettleElStealingPenalty (selected) `0xf6b6e7...da76f4` — deployed 2024-10-11 13:52:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | DataBus | own contract | DataBus (selected) `0x37de96...d960e6` — deployed 2024-10-07 20:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Accounting Module | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Ejector Module | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CSM Module | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Withdrawal | unmatched — not counted | — | mentioned in finding L-1 | no |
| See [full report]() for more details. | CSOracle | unmatched — not counted | — | mentioned in finding L-3 | no |
| See full [report]() for more details. | Escrow | own contract | Escrow (selected) `0x165813...228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | AssetsAccounting | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernance | own contract | DualGovernance (selected) `0xc1db28...a4486e` — deployed 2025-08-08 13:21:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | EmergencyProtectedTimelock | own contract | EmergencyProtectedTimelock (selected) `0xce0425...2d2316` — deployed 2025-05-22 13:49:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExecutableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceStateMachine | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Tiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EmergencyProtection | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceConfig | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EscrowState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Proposers | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerCoreCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerSubCommittee | own contract | TiebreakerSubCommittee (selected) `0x3d3ba5...ab2951` — deployed 2025-08-08 13:22:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Duration | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TimelockState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EnumerableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | PercentD16 | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ETHValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ImmutableDualGovernanceConfigProvider | own contract | ImmutableDualGovernanceConfigProvider (selected) `0xa1692a...4cb5ef` — deployed 2025-05-22 13:49:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | Timestamp | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TimelockedGovernance | own contract | TimelockedGovernance (selected) `0x553337...6a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | SharesValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ResealManager | own contract | ResealManager (selected) `0x7914b5...522d24` — deployed 2025-05-22 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | IndexOneBased | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ProposalsList | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Executor | own contract | Executor (selected) `0x23e0b4...537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | SealableCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExternalCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Resealer | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceStateTransitions | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | WithdrawalsBatchesQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Escrow | own contract | Escrow (selected) `0x165813...228e1c` — deployed 2025-08-08 13:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | AssetsAccounting | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernance | own contract | DualGovernance (selected) `0xc1db28...a4486e` — deployed 2025-08-08 13:21:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | DualGovernanceStateMachine | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EmergencyProtectedTimelock | own contract | EmergencyProtectedTimelock (selected) `0xce0425...2d2316` — deployed 2025-05-22 13:49:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | WithdrawalBatchesQueue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExecutableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Tiebreaker | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EmergencyProtection | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceConfig | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EscrowState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Proposers | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Duration | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerCore | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TiebreakerSubCommittee | own contract | TiebreakerSubCommittee (selected) `0x3d3ba5...ab2951` — deployed 2025-08-08 13:22:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | EmergencyExecutionCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EnumerableProposals | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | DualGovernanceConfigProvider | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Timestamp | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TimelockState | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ResealCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ETHValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | SealableCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ResealManager | own contract | ResealManager (selected) `0x7914b5...522d24` — deployed 2025-05-22 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | SharesValue | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | EmergencyActivationCommittee | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | TimelockedGovernance | own contract | TimelockedGovernance (selected) `0x553337...6a7cce` — deployed 2025-05-22 14:06:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | PercentD16 | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | IndexOneBased | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ProposalsList | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | ExternalCalls | unmatched — not counted | — | listed in scope | no |
| See full [report]() for more details. | Executor | own contract | Executor (selected) `0x23e0b4...537021` — deployed 2025-05-22 13:48:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [report]() for more details. | arrays | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Voting | own proxy deployment | AppProxyUpgradeable (proxy) (selected) `0x2e59a2...1e618e` — deployed 2020-12-18 00:59:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Voting | own proxy deployment | AppProxyUpgradeable (proxy) (selected) `0x2e59a2...1e618e` — deployed 2020-12-18 00:59:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SafeCastExt | unmatched — not counted | — | listed in Project Scope table | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in Project Scope table | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SafeCastExt | unmatched — not counted | — | listed in scope table | no |
| See [note]() contents for more details. | GateSealFactory | unmatched — not counted | — | listed in scope table | no |
| See [note]() contents for more details. | GateSeal | unmatched — not counted | — | listed in scope table as instance | no |
| See [full report]() for more details. | Stonks | own contract | 0x3e2d25… (selected) `0x3e2d25...e492a7` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StonksFactory | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [full report]() for more details. | AmountConverter | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [full report]() for more details. | AmountConverterFactory | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [full report]() for more details. | Order | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | described in system overview as inherited contract | no |
| See [full report]() for more details. | Ownable | unmatched — not counted | — | described in system overview as inherited contract | no |
| See [full report]() for more details. | ActivateNodeOperators | own contract | ActivateNodeOperators (selected) `0xcbb418...2db5c8` — deployed 2023-12-26 12:27:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AddNodeOperators | own contract | AddNodeOperators (selected) `0xcaa3af...5c9639` — deployed 2023-12-26 12:27:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ChangeNodeOperatorManagers | own contract | ChangeNodeOperatorManagers (selected) `0xe31a05...3c9a7d` — deployed 2023-12-26 12:28:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | DeactivateNodeOperators | own contract | DeactivateNodeOperators (selected) `0x8b82c1...2672e7` — deployed 2023-12-26 12:27:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | IncreaseVettedValidatorsLimit | unmatched — not counted | — | listed in scope and deployment addresses | no |
| See [full report]() for more details. | SetNodeOperatorNames | own contract | SetNodeOperatorNames (selected) `0x7d509b...a83ae4` — deployed 2023-12-26 12:28:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SetNodeOperatorRewardAddresses | own contract | SetNodeOperatorRewardAddresses (selected) `0x589e29...24e2c0` — deployed 2023-12-26 12:28:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SetVettedValidatorsLimits | own contract | SetVettedValidatorsLimits (selected) `0xd75778...35c19d` — deployed 2023-12-26 12:27:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | UpdateTargetValidatorLimits | unmatched — not counted | — | listed in scope and deployment addresses | no |
| See [full report]() for more details. | Stonks | own contract | Stonks (selected) `0x278f7b...65a5c7` — deployed 2024-03-15 17:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Order | unmatched — not counted | — | mentioned in findings L02, L03 | no |
| See [full report]() for more details. | AmountConverter | unmatched — not counted | — | mentioned in note N01 | no |
| See [full report]() for more details. | IStonks | unmatched — not counted | — | mentioned in finding L03 | no |
| See [full report]() for more details. | GPv2Order | unmatched — not counted | — | mentioned in audit process | no |
| See [full report]() for more details. | MEV Boost Relay Allowed List | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Burner | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Withdrawal Vault | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Withdrawal Queue ERC721 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Execution Layer Rewards Vault | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Deposit Security Module | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Node Operators registry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Staking Router | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Lido and stETH token | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Lido Locator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Accounting Oracle:AccountingOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Accounting Oracle:HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Validators Exit Bus Oracle:ValidatorsExitBusOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Validators Exit Bus Oracle:HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OracleDaemonConfig | own contract | OracleDaemonConfig (selected) `0xbf05a9...c23b09` — deployed 2023-05-02 13:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Legacy Oracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Lido DAO (Implementation) - Kernel | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Aragon ACL | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | EVMScriptRegistry | own proxy deployment | AppProxyPinned (proxy) (selected) `0x853cc0...19093a` — deployed 2020-12-18 00:59:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Aragon Agent | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LDO token | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Aragon Voting | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Aragon Token Manager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Aragon Finance | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Repo | own proxy deployment | AppProxyUpgradeable (proxy) (selected) `0x0d97e8...eb1831` — deployed 2020-12-18 00:55:46+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Insurance Fund | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | GateSeal | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | EasyTrack | own contract | EasyTrack (selected) `0xf0211b...a13fea` — deployed 2021-11-24 13:35:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EVMScriptExecutor | own contract | EVMScriptExecutor (selected) `0xfe5986...b3f977` — deployed 2021-11-24 13:35:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | reWARDS stETH:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Rewards Share stETH:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TRP LDO:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ATC DAI:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LEGO LDO:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LEGO DAI:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | RCC DAI:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PML DAI:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Gas Supply stETH:AllowedRecipientsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LEGO DAI:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ATC DAI:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TRP LDO:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LEGO LDO:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | RCC DAI:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PML DAI:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Gas Supply stETH:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | reWARDS stETH:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Rewards Share stETH:TopUpAllowedRecipients | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | reWARDS stETH:AddAllowedRecipient | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Rewards Share stETH:AddAllowedRecipient | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Gas Supply stETH:AddAllowedRecipient | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | reWARDS stETH:RemoveAllowedRecipient | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Rewards Share stETH:RemoveAllowedRecipient | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Gas Supply stETH:RemoveAllowedRecipient | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Arbitrum:L1ERC20TokenGateway | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Optimism:L1ERC20TokenBridge | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AllowedTokensRegistry | own contract | AllowedTokensRegistry (selected) `0x4ac40c...2551ca` — deployed 2023-10-26 19:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | TopUpAllowedRecipients | own contract | TopUpAllowedRecipients (selected) `0x00caae...c91458` — deployed 2022-11-23 23:39:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AllowedRecipientsBuilder | own contract | AllowedRecipientsBuilder (selected) `0x334d6e...a9b9ff` — deployed 2023-10-26 18:14:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AllowedRecipientsFactory | own contract | AllowedRecipientsFactory (selected) `0x83e976...07642b` — deployed 2022-11-23 15:31:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ShapellaUpgradeTemplate | unmatched — not counted | — | listed in scope section and deployed on mainnet | no |
| See [note]() contents for more details. | SignatureUtils | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Math256 | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ECDSA | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | MemUtils | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de...42d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | LegacyOracle | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | StETH | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Lido | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Pausable | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Versioned | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | StETHPermit | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | SigningKeys | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Packed64x4 | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | WstETH | own contract | WstETH (selected) `0x7f39c5...5e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [note]() contents for more details. | WithdrawalVault | own contract | WithdrawalVault (selected) `0x7d2baa...4fd53d` — deployed 2025-09-12 13:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | OracleDaemonConfig | own contract | OracleDaemonConfig (selected) `0xbf05a9...c23b09` — deployed 2023-05-02 13:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | Burner | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | WithdrawalQueueBase | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | AccountingOracle | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | BaseOracle | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | PausableUntil | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | AccessControlEnumerable | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | AccessControl | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | UnstructuredRefStorage | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Math | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | PositiveTokenRebaseLimiter | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c81...b19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | EIP712StETH | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | WithdrawalQueueERC721 | own proxy deployment | OssifiableProxy (proxy) (selected) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | BeaconChainDepositor | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f92...38173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | LidoLocator | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | GateSealFactory | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | GateSeal | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ShapellaUpgradeTemplate | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | DummyEmptyContract | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Packed64x4 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LegacyOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StETHPermit | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | deposit_contract | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IStETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WstETH | own contract | WstETH (selected) `0x7f39c5...5e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | IStakingModule | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Math | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PositiveTokenRebaseLimiter | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredRefStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccessControl | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccessControlEnumerable | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BeaconChainDepositor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Burner | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | EIP712StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c81...b19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LidoLocator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OracleDaemonConfig | own contract | OracleDaemonConfig (selected) `0xbf05a9...c23b09` — deployed 2023-05-02 13:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f92...38173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalQueueERC721 | own proxy deployment | OssifiableProxy (proxy) (selected) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalQueueBase | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalVault | own contract | WithdrawalVault (selected) `0x7d2baa...4fd53d` — deployed 2025-09-12 13:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | IEIP712StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ILidoLocator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IBurner | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Math256 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de...42d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SignatureUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | withdrawal | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | exit_order_iterator_state | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | validator_state | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | abnormal_cl_rebase | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | midterm_slashing_penalty | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | typings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | bunker | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | prediction | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | exit_order_iterator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | safe_border | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | variables | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | consistency | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | client | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | consensus_typings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | keys_client | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | keys_typings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | http_provider | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ejector | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ejector_typings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | data_encode | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | oracle_module | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | submodules_typings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | consensus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | exceptions | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | extra_data | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | accounting_typings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | accounting | own proxy deployment | OssifiableProxy (proxy) (selected) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | checks_module | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | pytest.ini | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | keys_api | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | consensus_node | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | execution_node | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | conftest | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | common | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | duration_meter | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ejector_metrics | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | basic | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | business | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | validators | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | accounting_metrics | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | logging | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | healthcheck_server | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | validator_state_utils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | build | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | events | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | abi | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | cache | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | types | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | slot | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | web3converter | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | dataclass | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | input | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | blockstamp | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | typings_main | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | web3py_typings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | keys_api_ext | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | fallback | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | contracts | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | lido_validators | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | consensus_ext | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | tx_utils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | contract_tweak | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | middleware | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | constants | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | main | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalQueueBase | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f92...38173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | PositiveTokenRebaseLimiter | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | NodeOperatorRegistry | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | WithdrawalRequestERC721 | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | Burner | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StETHPermit | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | LegacyOracle | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | BeaconChainDepositor | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | AccessControlEnumerable | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | IWithdrawalQueue | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | ILidoLocator | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | IStakingRouter | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | ILidoExecutionLayerRewardsVault | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | IDepositContract | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | IStakingModule | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | IERC721Metadata | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | Packed64x4 | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LegacyOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StETHPermit | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WstETH | own contract | WstETH (selected) `0x7f39c5...5e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Math | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PositiveTokenRebaseLimiter | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | UnstructuredRefStorage | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | AccessControl | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | AccessControlEnumerable | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | BeaconChainDepositor | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Burner | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | EIP712StETH | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c81...b19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LidoLocator | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OracleDaemonConfig | own contract | OracleDaemonConfig (selected) `0xbf05a9...c23b09` — deployed 2023-05-02 13:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f92...38173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalQueueERC721 | own proxy deployment | OssifiableProxy (proxy) (selected) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WithdrawalQueueBase | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WithdrawalVault | own contract | WithdrawalVault (selected) `0x7d2baa...4fd53d` — deployed 2025-09-12 13:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Math256 | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de...42d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | GateSealFactory | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | GateSeal | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Packed64x4 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LegacyOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StETHPermit | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | deposit_contract | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IStETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WstETH | own contract | WstETH (selected) `0x7f39c5...5e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | IStakingModule | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Math | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PositiveTokenRebaseLimiter | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredRefStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccessControl | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccessControlEnumerable | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BeaconChainDepositor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Burner | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | EIP712StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c81...b19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LidoLocator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OracleDaemonConfig | own contract | OracleDaemonConfig (selected) `0xbf05a9...c23b09` — deployed 2023-05-02 13:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f92...38173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalQueueERC721 | own proxy deployment | OssifiableProxy (proxy) (selected) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalQueueBase | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalVault | own contract | WithdrawalVault (selected) `0x7d2baa...4fd53d` — deployed 2025-09-12 13:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | IEIP712StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ILidoLocator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IBurner | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Math256 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de...42d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | SignatureUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | SignatureUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Math256 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de...42d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LegacyOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StETHPermit | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | SigningKeys | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Packed64x4 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WstETH | own contract | WstETH (selected) `0x7f39c5...5e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | WithdrawalVault | own contract | WithdrawalVault (selected) `0x7d2baa...4fd53d` — deployed 2025-09-12 13:00:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OracleDaemonConfig | own contract | OracleDaemonConfig (selected) `0xbf05a9...c23b09` — deployed 2023-05-02 13:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Burner | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalQueueBase | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccountingOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ValidatorsExitBusOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | BaseOracle | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | HashConsensus | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OracleReportSanityChecker | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PausableUntil | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccessControlEnumerable | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AccessControl | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredRefStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Math | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PositiveTokenRebaseLimiter | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c81...b19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EIP712StETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WithdrawalQueueERC721 | own proxy deployment | OssifiableProxy (proxy) (selected) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | BeaconChainDepositor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f92...38173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LidoLocator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | dc4bc_airgapped | unmatched — not counted | — | Listed in security assessment summary as a binary compiled from the repository. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | dc4bc_cli | unmatched — not counted | — | Listed in security assessment summary as a binary compiled from the repository. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | dc4bc_d | unmatched — not counted | — | Listed in security assessment summary as a binary compiled from the repository. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | dc4bc_dkg_reinitializer | unmatched — not counted | — | Listed in security assessment summary as a binary compiled from the repository. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | fsm/types/requests/signing_proposal.go | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | storage/kafka_storage/kafka_storage.go | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | client/services/node/node_service.go | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | go.mod | unmatched — not counted | — | Listed as asset in finding LDC-04. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | pkg/wc_rotation/payload_csv_test.sh | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | cmd/airgapped/main.go | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | cmd/dc4bc_cli/main.go | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | pkg/wc_rotation/rotation.go | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | pkg/prysm/prysm.go | unmatched — not counted | — | — | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | signing_proposal.go | unmatched — not counted | — | Listed as asset in finding LDC-01. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | kafka_storage.go | unmatched — not counted | — | Listed as asset in finding LDC-02. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | node_service.go | unmatched — not counted | — | Listed as asset in findings LDC-03 and LDC-07. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | payload_csv_test.sh | unmatched — not counted | — | Listed as asset in finding LDC-05. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | main.go | unmatched — not counted | — | Referenced in finding LDC-08 as containing error wrapping examples. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | rotation.go | unmatched — not counted | — | Referenced in finding LDC-08 as containing unnecessary if statements. | no |
| See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release. | prysm.go | unmatched — not counted | — | Referenced in finding LDC-04 as file where Prysm dependency is used. | no |
| See [full report]() for more details. | BytesLib | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Math64 | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SigningKeysStats | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | BeaconChainDepositor | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LidoExecutionLayerRewards | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StakingRouter | own contract | StakingRouter (selected) `0x226f92...38173a` — deployed 2025-09-12 13:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | Math256 | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MinFirstAllocationStrategy | own contract | MinFirstAllocationStrategy (selected) `0x7e70de...42d993` — deployed 2024-10-08 16:50:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | referenced in findings as MemUtils.memcpy | no |
| See [full report]() for more details. | IStakingRouter | unmatched — not counted | — | referenced in findings as interface | no |
| See [full report]() for more details. | ILido | unmatched — not counted | — | referenced in findings as interface | no |
| See [full report]() for more details. | VestingEscrow | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [full report]() for more details. | VestingEscrowFactory | own contract | 0xda1df6… (selected) `0xda1df6...56add0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | VotingAdapter | unmatched — not counted | — | listed in scope and deployed on mainnet | no |
| See [full report]() for more details. | MEVBoostRelayAllowedList | own contract | 0xf95f06… (selected) `0xf95f06...98610e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | InsuranceFund | own contract | InsuranceFund (selected) `0x8b3f33...bede35` — deployed 2022-09-29 15:43:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AddAllowedRecipient | own contract | AddAllowedRecipient (selected) `0x1f809d...6129b6` — deployed 2023-07-12 13:05:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AddRewardProgram | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IncreaseNodeOperatorStakingLimit | own contract | IncreaseNodeOperatorStakingLimit (selected) `0xfebd8f...46afe0` — deployed 2021-11-24 13:39:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | RemoveAllowedRecipient | own contract | RemoveAllowedRecipient (selected) `0x22010d...c5693b` — deployed 2023-05-22 10:58:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | RemoveRewardProgram | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TopUpAllowedRecipients | own contract | TopUpAllowedRecipients (selected) `0x00caae...c91458` — deployed 2022-11-23 23:39:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | TopUpLegoProgram | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TopUpRewardPrograms | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IBokkyPooBahsDateTimeContract | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IEVMScriptExecutor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IEVMScriptFactory | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IFinance | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BytesUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | EVMScriptCreator | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | EVMScriptPermissions | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AllowedRecipientsRegistry | own contract | AllowedRecipientsRegistry (selected) `0x1a7cfa...3868c0` — deployed 2024-03-18 18:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EVMScriptExecutor | own contract | EVMScriptExecutor (selected) `0xfe5986...b3f977` — deployed 2021-11-24 13:35:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EVMScriptFactoriesRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | EasyTrack | own contract | EasyTrack (selected) `0xf0211b...a13fea` — deployed 2021-11-24 13:35:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LimitsChecker | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MotionSettings | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | RewardProgramsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TrustedCaller | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LidoOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ReportUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WstETH | own contract | WstETH (selected) `0x7f39c5...5e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CompositePostRebaseBeaconReceiver | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c81...b19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OrderedCallbacksArray | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SelfOwnedStETHBurner | unmatched — not counted | — | listed in scope table | no |
| See [note]() contents for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | StETH | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Lido | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ReportUtils | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | LidoOracle | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | MemUtils | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | Pausable | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | deposit_contract | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | WstETH | own contract | WstETH (selected) `0x7f39c5...5e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | ECDSA | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | CompositePostRebaseBeaconReceiver | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | OrderedCallbacksArray | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | SelfOwnedStETHBurner | unmatched — not counted | — | listed in scope | no |
| See [note]() contents for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c81...b19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [note]() contents for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Voting | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MiniMeToken | own contract | MiniMeToken (selected) `0x5a98fc...ef1b32` — deployed 2020-12-18 00:59:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AssetRecoverer | unmatched — not counted | — | listed in scope section | no |
| See [full report]() for more details. | Jumpgate | unmatched — not counted | — | listed in scope section | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ReportUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LidoOracle | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | deposit_contract | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WstETH | own contract | WstETH (selected) `0x7f39c5...5e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CompositePostRebaseBeaconReceiver | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OrderedCallbacksArray | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SelfOwnedStETHBurner | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LidoExecutionLayerRewardsVault | own contract | LidoExecutionLayerRewardsVault (selected) `0x388c81...b19297` — deployed 2022-05-24 11:46:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StakeLimitUtils | unmatched — not counted | — | listed in scope table | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | AStETH | unmatched — not counted | — | listed in scope and deployed | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | StableDebtStETH | unmatched — not counted | — | listed in scope and deployed | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | VariableDebtStETH | unmatched — not counted | — | listed in scope and deployed | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | AaveAStETHIncentivesController | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | AaveIncentivesControllerStub | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | RewardsUtils | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | UnstructuredStorageVersionised | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | UInt256Lib | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | IAToken | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | ILendingPool | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | MathUtils | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | WadRayMath | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | DataTypes | unmatched — not counted | — | listed in scope | no |
| The implementation has been audited by MixBytes() and considered safe. Read the full report from [here](). | SignedSafeMath | unmatched — not counted | — | mentioned in finding WRN-3 | no |
| See [full report]() for more details. | OrderedCallbacksArray | unmatched — not counted | — | listed in scope and deployed to mainnet | no |
| See [full report]() for more details. | CompositePostRebaseBeaconReceiver | unmatched — not counted | — | listed in scope and deployed to mainnet | no |
| See [full report]() for more details. | SelfOwnedStETHBurner | unmatched — not counted | — | listed in scope and deployed to mainnet | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | DepositSecurityModule | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | deposit_contract | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BytesLib | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | INodeOperatorsRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | AnchorVault | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | AnchorVaultProxy | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | bEth | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | RewardsLiquidator | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | InsuranceConnector | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | BridgeConnectorWormhole | unmatched — not counted | — | listed in scope and deployed address provided | no |
| See [full report]() for more details. | Voting | own proxy deployment | AppProxyUpgradeable (proxy) (selected) `0x2e59a2...1e618e` — deployed 2020-12-18 00:59:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EasyTrack | own contract | EasyTrack (selected) `0xf0211b...a13fea` — deployed 2021-11-24 13:35:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EasyTrackStorage | unmatched — not counted | — | Mentioned in findings | no |
| See [full report]() for more details. | EVMScriptExecutor | own contract | EVMScriptExecutor (selected) `0xfe5986...b3f977` — deployed 2021-11-24 13:35:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EVMScriptFactoriesRegistry | unmatched — not counted | — | Listed in scope and findings | no |
| See [full report]() for more details. | EVMScriptPermissions | unmatched — not counted | — | Listed in scope and findings | no |
| See [full report]() for more details. | EVMScriptCreator | unmatched — not counted | — | Mentioned in findings | no |
| See [full report]() for more details. | MotionSettings | unmatched — not counted | — | Listed in scope and findings | no |
| See [full report]() for more details. | RewardProgramsRegistry | unmatched — not counted | — | Mentioned in findings | no |
| See [full report]() for more details. | AddRewardProgram | unmatched — not counted | — | Mentioned in findings | no |
| See [full report]() for more details. | BytesUtils | unmatched — not counted | — | Mentioned in findings | no |
| See [full report]() for more details. | TrustedCaller | unmatched — not counted | — | Mentioned in findings | no |
| See [full report]() for more details. | WstETH | own contract | WstETH (selected) `0x7f39c5...5e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | IStETH | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ContractProxy | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | EVMScriptFactoriesRegistry | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | EasyTrack | own contract | EasyTrack (selected) `0xf0211b...a13fea` — deployed 2021-11-24 13:35:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | EasyTrackStorage | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | EvmScriptExecutor | own contract | EVMScriptExecutor (selected) `0xfe5986...b3f977` — deployed 2021-11-24 13:35:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | MotionSettings | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | RewardProgramsRegistry | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | TrustedCaller | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | AddRewardProgram | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | IncreaseNodeOperatorStakingLimit | own contract | IncreaseNodeOperatorStakingLimit (selected) `0xfebd8f...46afe0` — deployed 2021-11-24 13:39:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | RemoveRewardProgram | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | TopUpLegoProgram | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | TopUpRewardPrograms | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | BytesUtils | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | EVMScriptCreator | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | EVMScriptPermissions | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | RewardsManager | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | AnchorVault | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | AnchorVaultProxy | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | bEth | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | RewardsLiquidator | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | InsuranceConnector | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | BridgeConnectorWormhole | unmatched — not counted | — | listed in files listing | no |
| See [full report]() for more details. | AnchorVault | unmatched — not counted | — | listed in scope files listing | no |
| See [full report]() for more details. | BridgeConnectorShuttle | unmatched — not counted | — | listed in scope files listing | no |
| See [full report]() for more details. | InsuranceConnector | unmatched — not counted | — | listed in scope files listing | no |
| See [full report]() for more details. | RewardsLiquidator | unmatched — not counted | — | listed in scope files listing | no |
| See [full report]() for more details. | bEth | unmatched — not counted | — | listed in scope files listing | no |
| See [full report]() for more details. | PriceFeedProxy | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | StEthPriceFeed | unmatched — not counted | — | listed in scope and findings | no |
| See [full report]() for more details. | StateProofVerifier | unmatched — not counted | — | listed in files listing and findings | no |
| See [full report]() for more details. | StableSwapStateOracle | unmatched — not counted | — | listed in files listing and findings | no |
| See [full report]() for more details. | StableSwapPriceHelper | unmatched — not counted | — | listed in files listing and findings | no |
| See [full report]() for more details. | MerklePatriciaProofVerifier | unmatched — not counted | — | listed in files listing and findings | no |
| See [full report]() for more details. | RLPReader | unmatched — not counted | — | listed in files listing and findings | no |
| See [full report]() for more details. | WithdrawalsManagerProxy | unmatched — not counted | — | listed in scope files listing | no |
| See [full report]() for more details. | WithdrawalsManagerStub | unmatched — not counted | — | listed in scope files listing | no |
| See [full report]() for more details. | LidoOracle | unmatched — not counted | — | listed in FILES LISTING | no |
| See [full report]() for more details. | ReportUtils | unmatched — not counted | — | listed in FILES LISTING | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | Listed in scope and findings reference Lido.sol | no |
| See [full report]() for more details. | NodeOperatorRegistry | unmatched — not counted | — | Listed in scope and findings reference NodeOperatorRegistry.sol | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | Listed in scope and findings reference StETH.sol | no |
| See [full report]() for more details. | LidoOracle | unmatched — not counted | — | Listed in scope and findings reference LidoOracle.sol | no |
| See [full report]() for more details. | DePool | unmatched — not counted | — | Listed in scope and findings reference DePool.sol | no |
| See [full report]() for more details. | Memutils | unmatched — not counted | — | Listed in scope and findings reference Memutils.sol | no |
| See [full report]() for more details. | BitOps | unmatched — not counted | — | Listed in scope and findings reference BitOps.sol | no |
| See [full report]() for more details. | DePool | unmatched — not counted | — | Listed in findings QSP-1, QSP-2, QSP-3, QSP-6, QSP-7, QSP-8, QSP-9, QSP-11, QSP-13 | no |
| See [full report]() for more details. | DePoolOracle | unmatched — not counted | — | Listed in findings QSP-4, QSP-10 | no |
| See [full report]() for more details. | Algorithm | unmatched — not counted | — | Listed in findings QSP-5 | no |
| See [full report]() for more details. | StETH | unmatched — not counted | — | Listed in findings QSP-6, QSP-11, QSP-12, QSP-13 | no |
| See [full report]() for more details. | StakingProvidersRegistry | unmatched — not counted | — | Listed in findings QSP-7, QSP-10 | no |
| See [full report]() for more details. | LidoOracle | unmatched — not counted | — | Listed in findings QSP-14 | no |
| See [full report]() for more details. | CstETH | unmatched — not counted | — | Listed in file signatures and test results | no |
| See [full report]() for more details. | Lido | unmatched — not counted | — | Listed in file signatures and test results | no |
| See [full report]() for more details. | NodeOperatorsRegistry | unmatched — not counted | — | Listed in file signatures and test results | no |
| See [full report]() for more details. | BitOps | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | MemUtils | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | Pausable | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | ILido | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | ILidoOracle | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | INodeOperatorsRegistry | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | ISTETH | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | IValidatorRegistration | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | LidoTemplate | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | Imports | unmatched — not counted | — | Listed in file signatures | no |
| See [full report]() for more details. | LinkAssetComment | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OssifiableProxy | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1ERC20TokenBridgeImplementation | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1ERC20TokenBridge | unmatched — not counted | — | listed as Ossifiable proxy for the L1ERC20TokenBridge | no |
| See [full report]() for more details. | ERC20Bridged | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | WstETH | unmatched — not counted | — | listed as ERC20BridgedWstETH | no |
| See [full report]() for more details. | L2ERC20TokenBridgeImplementation | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L2ERC20TokenBridge | unmatched — not counted | — | listed as Ossifiable proxy for the L2ERC20TokenBridge | no |
| See [full report]() for more details. | OptimismBridgeExecutor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OpStackTokenRatePusher | own contract | 0x755610… (selected) `0x755610...aa1877` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | L1LidoTokensBridge | own contract | 0x607823… (selected) `0x607823...c2b82f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20BridgedPermit | own contract | 0xb5cf09… (selected) `0xb5cf09...4a1a1d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20RebasableBridgedPermit | own contract | 0x5a007d… (selected) `0x5a007d...6bebc3` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | TokenRateOracle | own contract | 0x537a7f… (selected) `0x537a7f...1029af` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | L2ERC20ExtendedTokensBridge | own contract | 0x332ca3… (selected) `0x332ca3...85cffe` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | GovernanceBridgeExecutor | own contract | 0x3b00f2… (selected) `0x3b00f2...dfc4a0` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | LinkAssetComment | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OpStackTokenRatePusher | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OssifiableProxy | unmatched — not counted | — | listed in scope table as proxy for L2ERC20ExtendedTokensBridge | no |
| See [full report]() for more details. | L1LidoTokensBridge | unmatched — not counted | — | listed in scope table as implementation | no |
| See [full report]() for more details. | ERC20BridgedPermit | unmatched — not counted | — | listed in scope table as WstETH | no |
| See [full report]() for more details. | ERC20RebasableBridgedPermit | unmatched — not counted | — | listed in scope table as StETH | no |
| See [full report]() for more details. | TokenRateOracle | unmatched — not counted | — | listed in scope table as implementation | no |
| See [full report]() for more details. | L2ERC20ExtendedTokensBridge | unmatched — not counted | — | listed in scope table as implementation | no |
| See [full report]() for more details. | GovernanceBridgeExecutor | unmatched — not counted | — | listed in scope table as Governance Bridge Executor | no |
| See the [full report]() for more details. | StarkGate: wstETH Bridge | unmatched — not counted | — | listed in scope table | no |
| See the [full report]() for more details. | StarkGate: wstETH Token | unmatched — not counted | — | listed in scope table | no |
| See the [full report]() for more details. | GovernorForwarder | unmatched — not counted | — | listed in scope table | no |
| See the [full report]() for more details. | TokenBridge | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x051f1d...ea3319` — deployed 2023-08-03 16:04:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See the [full report]() for more details. | PermissionedERC20 | unmatched — not counted | — | mentioned in audit report verification section | no |
| See the [full report]() for more details. | StarknetTokenBridg | unmatched — not counted | — | mentioned in audit report verification section | no |
| See the [full report]() for more details. | StarkgateManager | unmatched — not counted | — | mentioned in audit report verification section | no |
| See the [full report]() for more details. | StarkgateRegistry | unmatched — not counted | — | mentioned in audit report verification section | no |
| See the [full report]() for more details. | StarkgateEthBridge | unmatched — not counted | — | mentioned in audit report verification section | no |
| See the [full report]() for more details. | BridgeExecutor | unmatched — not counted | — | mentioned in audit report verification section | no |
| See [full report]() for more details. | L1ERC20TokenBridge | unmatched — not counted | — | listed in scope files for lido-l2 repo | no |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | ERC20Bridged | own contract | ERC20Bridged (selected) `0x0fbcba...8e1921` — deployed 2022-08-04 13:26:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | L2ERC20TokenBridge | unmatched — not counted | — | listed in scope files for lido-l2 repo | no |
| See [full report]() for more details. | OptimismBridgeExecutor | own contract | OptimismBridgeExecutor (selected) `0x0e3759...46eacf` — deployed 2023-09-20 15:30:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | L2BridgeExecutor | unmatched — not counted | — | listed in scope files for governance-crosschain-bridges repo | no |
| See [full report]() for more details. | BridgeExecutorBase | unmatched — not counted | — | listed in scope files for governance-crosschain-bridges repo | no |
| See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details. | NttManager | unmatched — not counted | — | Deployment scripts section lists NttManager: DeployWormholeNtt.s.sol | no |
| See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details. | WormholeTransceiver | unmatched — not counted | — | Listed in scope and verification details | no |
| See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details. | AxelarTransceiver | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x723aea...c41b13` — deployed 2024-07-18 16:11:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details. | TransceiverStructs | own contract | TransceiverStructs (selected) `0x27a3da...b852c9` — deployed 2024-07-16 19:20:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [initial]() and [remediated](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report-remediated.pdf) reports for more details. | WstETH | own contract | WstETH (selected) `0x7f39c5...5e2ca0` — deployed 2021-02-19 19:37:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details. | NttManager | unmatched — not counted | — | mentioned in scope section and throughout report | no |
| See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details. | WormholeTransceiver | unmatched — not counted | — | mentioned in scope section and throughout report | no |
| See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details. | TransceiverStructs | own contract | TransceiverStructs (selected) `0x27a3da...b852c9` — deployed 2024-07-16 19:20:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details. | AxelarTransceiver | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x723aea...c41b13` — deployed 2024-07-18 16:11:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See full [initial](https://github.com/lidofinance/audits/blob/main/bsc/Lido-wstETH-on-BNB-Deployment-Verification-Report.pdf) and [remediated]() reports for more details. | WstEthL2Token | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x26c5e0...e9611c` — deployed 2024-06-26 01:07:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OptimismBridgeExecutor | own contract | OptimismBridgeExecutor (selected) `0x0e3759...46eacf` — deployed 2023-09-20 15:30:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20BridgedProxy | unmatched — not counted | — | listed in scope table and verified in bytecode/storage sections | no |
| See [full report]() for more details. | ERC20BridgedImplementation | unmatched — not counted | — | listed as ERC20BridgedImpl in scope table and verified in bytecode/storage sections | no |
| See [full report]() for more details. | L2ERC20TokenBridgeProxy | unmatched — not counted | — | listed in scope table and verified in bytecode/storage sections | no |
| See [full report]() for more details. | L2ERC20TokenBridgeImplementation | unmatched — not counted | — | listed as L2ERC20TokenBridgeImpl in scope table and verified in bytecode/storage sections | no |
| See [full report]() for more details. | L1ERC20TokenBridgeProxy | unmatched — not counted | — | listed in scope table and verified in bytecode/storage sections | no |
| See [full report]() for more details. | L1ERC20TokenBridgeImplementation | unmatched — not counted | — | listed as L1ERC20TokenBridgeImpl in scope table and verified in bytecode/storage sections | no |
| See [full report]() for more details. | BaseCrossChainController | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CrossChainController | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x40c446...66022f` — deployed 2024-06-20 14:07:22+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CrossChainForwarder | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CrossChainReceiver | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | BaseAdapter | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CCIPAdapter | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ICCIPAdapter | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Client | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | HyperLaneAdapter | own contract | HyperLaneAdapter (selected) `0x8d374d...b3a7f3` — deployed 2024-06-20 14:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | StandardHookMetadata | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | TypeCasts | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | LayerZeroAdapter | own contract | LayerZeroAdapter (selected) `0x742650...b54411` — deployed 2024-06-20 14:33:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | BytesLib | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ExecutorOptions | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OptionsBuilder | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PolygonAdapterBase | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PolygonAdapterEthereum | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PolygonAdapterPolygon | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | FxTunnelEthereum | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | FxTunnelPolygon | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | WormholeAdapter | own contract | WormholeAdapter (selected) `0xbb1e43...1ef119` — deployed 2024-06-20 14:37:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ChainIds | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | EncodingUtils | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Errors | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | BridgeExecutorBase | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CrossChainExecutor | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | OwnableWithGuardian | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Rescuable | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | TokenRateNotifier | own contract | TokenRateNotifier (selected) `0x25e358...b05ba9` — deployed 2025-12-03 15:51:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1ERC20ExtendedTokensBridge | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1LidoTokensBridge | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L2ERC20ExtendedTokensBridge | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OpStackTokenRatePusher | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | RebasableAndNonRebasableTokens | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TokenRateOracle | own proxy deployment | OssifiableProxy (proxy) (selected) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20Bridged | own contract | ERC20Bridged (selected) `0x0fbcba...8e1921` — deployed 2022-08-04 13:26:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20BridgedPermit | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20Core | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ERC20Metadata | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ERC20RebasableBridged | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ERC20RebasableBridgedPermit | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PermitExtension | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | DepositDataCodec | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredRefStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TokenRateAndUpdateTimestampProvider | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BridgingManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BridgingManager | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | DepositDataCodec | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ECDSA | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | SignatureChecker | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | UnstructuredRefStorage | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | UnstructuredStorage | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | TokenRateNotifier | unmatched — not counted | — | listed in scope table and deployment table | no |
| See [full report]() for more details. | ERC20Bridged | own contract | ERC20Bridged (selected) `0x0fbcba...8e1921` — deployed 2022-08-04 13:26:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20BridgedPermit | own contract | 0xfe5704… (selected) `0xfe5704...2b7334` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20Core | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | PermitExtension | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ERC20RebasableBridgedPermit | own contract | 0xe9b65d… (selected) `0xe9b65d...98d761` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ERC20Metadata | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | ERC20RebasableBridged | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | L1ERC20ExtendedTokensBridge | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | L1LidoTokensBridge | own contract | 0x168cfe… (selected) `0x168cfe...b6b6d4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | TokenRateOracle | own contract | 0x4bf0d4… (selected) `0x4bf0d4...60ced3` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OpStackTokenRatePusher | own contract | 0xd54c1c… (selected) `0xd54c1c...c32ffe` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | L2ERC20ExtendedTokensBridge | own contract | 0x273460… (selected) `0x273460...283e2e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | RebasableAndNonRebasableTokens | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | CrossDomainEnabled | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | Versioned | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | TokenRateAndUpdateTimestampProvider | unmatched — not counted | — | listed in scope table | no |
| See [full report]() for more details. | L1LidoGateway | unmatched — not counted | — | Listed in scope section (Programs) and threat model section 5.1 | no |
| See [full report]() for more details. | L2LidoGateway | unmatched — not counted | — | Listed in scope section (Programs) and threat model section 5.2 | no |
| See [full report]() for more details. | L2WstETHToken | unmatched — not counted | — | Listed in scope section (Programs) and threat model section 5.3 | no |
| See [full report]() for more details. | LidoBridgeableTokens | unmatched — not counted | — | Listed in scope section (Programs) | no |
| See [full report]() for more details. | LidoGatewayManager | unmatched — not counted | — | Listed in scope section (Programs) and threat model section 5.4 | no |
| See [full report]() for more details. | ScrollBridgeExecutor | unmatched — not counted | — | Listed in scope section (Programs) and threat model section 5.5 | no |
| See [full report]() for more details. | CustomBridgedToken | unmatched — not counted | — | listed in scope appendix | no |
| See [full report]() for more details. | IGenericErrors | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IL1MessageManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IL2MessageManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IMessageService | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IPauseManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IRateLimiter | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | IZkEvmV2 | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1MessageManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1MessageService | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L2MessageManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L2MessageService | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Codec | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PauseManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | RateLimiter | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | Rlp | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TimeLock | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TransactionDecoder | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | MessageServiceBase | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BridgedToken | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ITokenBridge | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | TokenBridge | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x051f1d...ea3319` — deployed 2023-08-03 16:04:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ZkEvmV2Init | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ZkEvmV2 | unmatched — not counted | — | listed in scope | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | L2BridgeExecutor | unmatched — not counted | — | Context in findings (e.g., 3.1.1, 3.2.4, 3.3.3) | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | BridgeExecutorBase | unmatched — not counted | — | Context in findings (e.g., 3.2.2, 3.2.3, 3.2.5, 3.3.4, 3.3.5) | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | ZkSyncBridgeExecutor | unmatched — not counted | — | Context in finding 3.2.4 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | L1ERC20Bridge | unmatched — not counted | — | Context in findings (e.g., 3.3.1, 3.4.1, 3.5.2, 3.5.4, 3.5.5) | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | L2ERC20Bridge | unmatched — not counted | — | Context in finding 3.3.2 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | L1Executor | unmatched — not counted | — | Context in findings (e.g., 3.3.2, 3.3.8, 3.4.2) | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | BridgeableTokensUpgradable | unmatched — not counted | — | Context in finding 3.3.2 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | BridgingManager | unmatched — not counted | — | Context in findings (e.g., 3.3.2, 3.3.6, 3.3.8) | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | ERC20BridgedUpgradeable | unmatched — not counted | — | Context in finding 3.3.2 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | ERC20CoreUpgradeable | unmatched — not counted | — | Context in finding 3.3.2 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | ERC20MetadataUpgradeable | unmatched — not counted | — | Context in findings 3.3.2 and 3.3.6 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | L2CrossDomainEnabled | unmatched — not counted | — | Context in finding 3.3.2 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | IL2ERC20Bridge | unmatched — not counted | — | Context in finding 3.5.3 | no |
| Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified. | IL2Messenger | unmatched — not counted | — | Context in finding 3.5.6 | no |
| See [full report]() for more details. | LineaBridgeExecutor | unmatched — not counted | — | listed in scope and Appendix 1 | no |
| See [full report]() for more details. | IMessageService | unmatched — not counted | — | listed in scope and Appendix 1 | no |
| See [full report]() for more details. | L2ERC20TokenBridge | unmatched — not counted | — | mentioned in findings and scope | no |
| See [full report]() for more details. | BridgeableTokens | unmatched — not counted | — | mentioned in finding 4.1.2 | no |
| See [full report]() for more details. | L1ERC20TokenBridge | unmatched — not counted | — | mentioned in finding 4.1.2 | no |
| See [full report]() for more details. | ERC20BridgedPermit | own proxy deployment | OssifiableProxy (proxy) (selected) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OptimismBridgeExecutor | own contract | OptimismBridgeExecutor (selected) `0x0e3759...46eacf` — deployed 2023-09-20 15:30:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | ArbitrumBridgeExecutor | own contract | ArbitrumBridgeExecutor (selected) `0x1dca41...4b1a29` — deployed 2022-08-02 16:47:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | AddressAliasHelper | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L2BridgeExecutor | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BridgeExecutorBase | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BridgeableTokens | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | BridgingManager | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ERC20Core | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ERC20Metadata | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | ERC20Bridged | own contract | ERC20Bridged (selected) `0x0fbcba...8e1921` — deployed 2022-08-04 13:26:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | OssifiableProxy | ambiguous — not counted | OssifiableProxy (proxy) (alternative) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1d201b...176709` — deployed 2025-12-03 15:53:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x4d4074...ddf7fb` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x23ed61...04cddf` — deployed 2025-12-03 15:51:11+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x1a513e...dee372` — deployed 2025-02-14 10:54:18+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x0de4ea...bf5c6e` — deployed 2023-05-02 13:40:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x06cd61...5f4193` — deployed 2025-09-17 15:36:35+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x294ed1...36c9d0` — deployed 2024-08-22 15:01:05+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x889edc...12f9b1` — deployed 2023-05-02 13:38:47+03 — liveness: live (code_present_context)<br>OssifiableProxy (proxy) (alternative) `0x1f32b1...194ebb` — deployed 2022-08-05 11:23:52+03 — liveness: live (current_address_book_code)<br>OssifiableProxy (proxy) (alternative) `0x4d72bf...69e5da` — deployed 2024-10-10 16:18:59+03 — liveness: live (code_present_context) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| See [full report]() for more details. | CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1ERC20TokenBridge | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L2ERC20TokenBridge | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | InterchainERC20TokenGateway | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L1ERC20TokenGateway | own proxy deployment | OssifiableProxy (proxy) (selected) `0x0f25c1...0e8e5a` — deployed 2022-08-04 13:26:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | L2CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | L2ERC20TokenGateway | own proxy deployment | OssifiableProxy (proxy) (selected) `0x07d469...331b82` — deployed 2022-08-04 13:26:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| See [full report]() for more details. | L1ERC20Bridge | unmatched — not counted | — | listed in scope section | no |
| See [full report]() for more details. | StMatic | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | NodeOperatorRegistry | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PoLidoNFT | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | FxStateChildTunnel | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | FxStateRootTunnel | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | RateProvider | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | PoLidoNFT | unmatched — not counted | — | listed in scope | no |
| See [full report]() for more details. | StMATIC | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | Vault | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | VaultConfigurator | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ManagedValidator | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | DefaultBondStrategy | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | DepositWrapper | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | DefaultAccessControl | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ERC20SwapValidator | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ManagedRatiosOracle | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ERC20SwapModule | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | DefaultBondTvlModule | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | DefaultBondValidator | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | DefaultBondModule | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ManagedTvlModule | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ERC20TvlModule | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | DefaultModule | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | AllowAllValidator | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | ConstantAggregatorV3 | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | WStethRatiosAggregatorV3 | unmatched — not counted | — | listed in scope | no |
| There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding. | FullMath | unmatched — not counted | — | listed in scope | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | LidoOracle | unmatched — not counted | — | Scope section: 'Files in scope: . src __init__.py constants.py main.py metrics modules providers runtime.py services types.py utils variables.py web3py' | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | AccountingOracle | unmatched — not counted | — | Scope section: 'Files in scope: . src ...' and findings reference accounting.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | EjectorOracle | unmatched — not counted | — | Scope section and findings reference ejector.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | ExitOrderIterator | unmatched — not counted | — | Findings reference exit_order_iterator.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | ValidatorExitIterator | unmatched — not counted | — | Findings reference exit_order_iterator.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | LidoValidatorsProvider | unmatched — not counted | — | Findings reference lido_validators.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | State | unmatched — not counted | — | Findings reference state.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | BaseStakingModuleOracle | unmatched — not counted | — | Findings reference base.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | SMPerformanceOracle | unmatched — not counted | — | Findings reference base.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | MetaRegistry | unmatched — not counted | — | Findings reference meta_registry.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | ExternalOperator | unmatched — not counted | — | Findings reference meta_registry.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | PerformanceWebServer | unmatched — not counted | — | Findings reference server.py and variables.py | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | DutyAccumulator | unmatched — not counted | — | Recommendation R02 mentions DutyAccumulator.add_duty | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | ContractInterface | unmatched — not counted | — | Recommendation R02 mentions ContractInterface.is_deployed | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | CarConverter | unmatched — not counted | — | Recommendation R02 mentions CarConverter.create_car_from_data | no |
| - [**Audit Report for v8.0.1 (Composable Security)**]() | MidtermSlashingPenalty | unmatched — not counted | — | Recommendation R02 mentions MidtermSlashingPenalty.get_bound_with_midterm_epoch_slashed_validators | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | BasicRedeemHook | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | LidoDepositHook | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | RedirectingDepositHook | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | FenwickTreeLibrary | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | ShareManagerFlagLibrary | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | SlotLibrary | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | TransferLibrary | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | BasicShareManager | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | FeeManager | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | RiskManager | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | ShareManager | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | TokenizedShareManager | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | ACLModule | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | BaseModule | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | CallModule | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | ShareModule | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | SubvaultModule | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | VaultModule | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | VerifierModule | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | BitmaskVerifier | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | Consensus | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | MellowACL | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | EigenLayerVerifier | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | ERC20Verifier | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | OwnedCustomVerifier | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | SymbioticVerifier | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | Verifier | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | DepositQueue | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | Queue | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | RedeemQueue | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | SignatureDepositQueue | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | SignatureQueue | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | SignatureRedeemQueue | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | Subvault | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | VaultConfigurator | unmatched — not counted | — | listed in scope | no |
| 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | BitmaskVerifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | Consensus | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | Verifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | MellowACL | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | EigenLayerVerifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | OwnedCustomVerifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ERC20Verifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | SymbioticVerifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | SymbioticStrategy | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | SignatureDepositQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | RedeemQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | SignatureQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | Queue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | DepositQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | SignatureRedeemQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | TokenizedShareManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | RiskManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ShareManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | FeeManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | BasicShareManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | LidoDepositHook | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | RedirectingDepositHook | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | BasicRedeemHook | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | TransferLibrary | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ShareManagerFlagLibrary | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | SlotLibrary | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | FenwickTreeLibrary | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IMellowACL | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IConsensus | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IVerifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ICustomVerifier | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IRedeemQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IDepositQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ISignatureQueue | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IRiskManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ITokenizedShareManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IShareManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IFeeManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IHook | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IRedeemHook | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IFactory | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IFactoryEntity | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IOracle | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ISymbioticRegistry | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ISymbioticVault | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ISymbioticStakerRewards | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IRewardsCoordinator | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IDelegationManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IAllocationManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ISignatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IStrategy | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IStrategyManager | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IWSTETH | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IVerifierModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IBaseModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IShareModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IACLModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | IVaultModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ISubvaultModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ICallModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | Factory | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | OracleHelper | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | Subvault | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | VaultConfigurator | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | VerifierModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | SubvaultModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ACLModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | CallModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | ShareModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | VaultModule | unmatched — not counted | — | listed in scope table | no |
| 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf | BaseModule | unmatched — not counted | — | listed in scope table | no |
| 2025-10-15_Nethermind_NM-0682_Mellow.pdf | Migrator | unmatched — not counted | — | listed in Audited Files table | no |
| 2025-11-17_Nethermind_NM-0703_Mellow.pdf | OracleSubmitter | unmatched — not counted | — | Listed in Audited Files section and described as the sole contract in scope. | no |
| 2025-11-19_Nethermind_NM-0735_Mellow.pdf | SwapModule | unmatched — not counted | — | Listed in Audited Files table and throughout report as the sole contract in scope. | no |
| 2025-12-09_Nethermind_NM-0758_Mellow.pdf | SyncDepositQueue | unmatched — not counted | — | listed in Audited Files table | no |
| 2025-12-09_Nethermind_NM-0758_Mellow.pdf | SyncQueue | unmatched — not counted | — | listed in Audited Files table | no |
| 2026-01-07_Nethermind_NM-0798_Mellow.pdf | BurnableTokenizedShareManager | unmatched — not counted | — | listed in Audited Files table | no |
| 2026-01-21_Nethermind_NM-0812_Mellow.pdf | ShareManager | unmatched — not counted | — | mentioned in Executive Summary and System Overview as the contract from which fees are transferred | no |
| 2026-03-02_Nethermind_NM-0758_Mellow.pdf | SyncDepositQueue | unmatched — not counted | — | listed in Audited Files table | no |
| 2026-03-02_Nethermind_NM-0758_Mellow.pdf | SyncQueue | unmatched — not counted | — | listed in Audited Files table | no |
| Mellow Core Vaults | Factory | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | BasicRedeemHook | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | LidoDepositHook | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | RedirectingDepositHook | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | FenwickTreeLibrary | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | ShareManagerFlagLibrary | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | SlotLibrary | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | TransferLibrary | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | BasicShareManager | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | FeeManager | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | RiskManager | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | ShareManager | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | TokenizedShareManager | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | ACLModule | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | BaseModule | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | CallModule | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | ShareModule | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | SubvaultModule | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | VaultModule | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | VerifierModule | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | Oracle | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | BitmaskVerifier | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | Consensus | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | MellowACL | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | EigenLayerVerifier | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | ERC20Verifier | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | OwnedCustomVerifier | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | SymbioticVerifier | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | Verifier | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | DepositQueue | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | Queue | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | RedeemQueue | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | SignatureDepositQueue | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | SignatureQueue | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | SignatureRedeemQueue | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | Subvault | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | VaultConfigurator | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | Vault | unmatched — not counted | — | listed in scope | no |
| Mellow Core Vaults | BitmaskVerifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | Consensus | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | Verifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | MellowACL | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | EigenLayerVerifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | OwnedCustomVerifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ERC20Verifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | SymbioticVerifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | SymbioticStrategy | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | SignatureDepositQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | RedeemQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | SignatureQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | Queue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | DepositQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | SignatureRedeemQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | TokenizedShareManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | RiskManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ShareManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | FeeManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | BasicShareManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | LidoDepositHook | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | RedirectingDepositHook | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | BasicRedeemHook | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | TransferLibrary | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ShareManagerFlagLibrary | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | SlotLibrary | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | FenwickTreeLibrary | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IMellowACL | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IConsensus | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IVerifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ICustomVerifier | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IRedeemQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IDepositQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ISignatureQueue | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IRiskManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ITokenizedShareManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IShareManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IFeeManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IHook | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IRedeemHook | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IFactory | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IFactoryEntity | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IOracle | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ISymbioticRegistry | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ISymbioticVault | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ISymbioticStakerRewards | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IRewardsCoordinator | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IDelegationManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IAllocationManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ISignatureUtils | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IStrategy | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IStrategyManager | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IWSTETH | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IWETH | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IVerifierModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IBaseModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IShareModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IACLModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | IVaultModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ISubvaultModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ICallModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | Factory | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | OracleHelper | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | Oracle | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | Subvault | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | VaultConfigurator | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | Vault | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | VerifierModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | SubvaultModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ACLModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | CallModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | ShareModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | VaultModule | unmatched — not counted | — | listed in scope table | no |
| Mellow Core Vaults | BaseModule | unmatched — not counted | — | listed in scope table | no |
| NM-0682 Migrator | Migrator | unmatched — not counted | — | listed in Audited Files section | no |
| NM-0703 Oracle Submitter | OracleSubmitter | unmatched — not counted | — | Listed in Audited Files section and described as the main contract in scope. | no |
| NM-0735 Swap Module | SwapModule | unmatched — not counted | — | Listed in Audited Files table and throughout report as the sole contract in scope. | no |
| NM-0758 SyncDepositQueue | SyncDepositQueue | unmatched — not counted | — | listed in scope table | no |
| NM-0758 SyncDepositQueue | SyncQueue | unmatched — not counted | — | listed in scope table | no |
| NM-0798 BurnableTokenizedShareManager | BurnableTokenizedShareManager | unmatched — not counted | — | listed in Audited Files table | no |
| NM-0812 Redeem Queue Fee Fix | ShareManager | unmatched — not counted | — | The audit scope is a pull request that modifies the ShareManager contract to transfer fees via burn and mint. | no |
| NM-0758 SyncDepositQueue | SyncDepositQueue | unmatched — not counted | — | listed in Audited Files table | no |
| NM-0758 SyncDepositQueue | SyncQueue | unmatched — not counted | — | listed in Audited Files table | no |
| NM-0891 PermissionedChainlinkOracle | PermissionedChainlinkOracle | unmatched — not counted | — | listed in scope table and executive summary | no |
| NM-0891 PermissionedChainlinkOracle | SwapModule | unmatched — not counted | — | mentioned in finding as file(s) in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x9895f0...1b37bb` | ACL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e40d7...6e9c8c` | Agent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cb113...8a29c9` | APMRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x75100b...e5db3c` | BokkyPooBahsDateTimeContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xde45f1...12072d` | ComposableStablePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb9e5cb...753d86` | Finance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb8ffc3...4088dc` | Kernel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b3edb...49622b` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x322969...130230` | MetaStablePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc1a900...4c7431` | Mooniswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2149a5...3a1a0a` | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf73a12...9a3249` | TokenManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x178e02...323746` | WeightedPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 349 |
| upstream | 6 |
| standard_library | 10 |
| needs_review | 280 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 68
- Inherited remapped matches: 0
- Address-book scope dispositions: 298 own (48 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 17 ambiguous, 1486 unmatched
- Matched-own operational status: 298 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=136, low=5, medium=4
- Match method counts: address=62, unique_name=236

Zero-match audit list:

- [17725] See [full report]() for more details.
- [17726] See [full report]() for more details.
- [17731] See [full report]() for more details.
- [17732] See [full report]() for more details.
- [17733] See [full report]() for more details.
- [17734] See [full report]() for more details.
- [17741] See [full report]() for more details.
- [17742] See [full report]() for more details.
- [17743] See [full report]() for more details.
- [17744] See [full report]() for more details.
- [17748] See [full report]() for more details
- [17754] See [full report]() for more details.
- [17757] See [full report]() for more details.
- [17759] See [full report]() for more details.
- [17762] See [full report]() for more details.
- [17764] See [note]() contents for more details.
- [17772] See [full report]() for more details.
- [17777] See [full report]() for more details.
- [17778] See [full report]() for more details.
- [17779] See [note]() contents for more details.
- [17785] See [full report]() for more details.
- [17787] See [full report]() for more details.
- [17792] See [full report]() for more details.
- [17795] See [full report]() for more details. The report had been updated on 14 March 2023 with the build hashes of 4.1.0 release.
- [17804] See [full report]() for more details.
- [17806] The implementation has been audited by MixBytes() and considered safe. Read the full report from [here]().
- [17807] See [full report]() for more details.
- [17808] See [full report]() for more details.
- [17809] See [full report]() for more details.
- [17814] See [full report]() for more details.
- [17815] See [full report]() for more details.
- [17816] See [full report]() for more details.
- [17817] See [full report]() for more details.
- [17818] See [full report]() for more details.
- [17819] See [full report]() for more details.
- [17820] See [full report]() for more details.
- [17821] See [full report]() for more details.
- [17822] See [full report]() for more details.
- [17823] See [full report]() for more details.
- [17825] See [full report]() for more details.
- [17834] See [full report]() for more details.
- [17835] See [full report]() for more details.
- [17837] Review of fixes implemented for the zkSync L1ERC20Bridge (follow-up to the [August 2023 Cantina audit]()). No additional issues were identified.
- [17838] See [full report]() for more details.
- [17842] See [full report]() for more details.
- [17843] See [full report]() for more details.
- [17844] See [full report]() for more details.
- [17845] There's a joint bug bounty for the vaults deployed at addresses listed in [the deployment verification audit record](). Any findings regarding the code deployed on those addresses can be reported to [the Lido Immunefi Bug bounty](https://immunefi.com/bug-bounty/lido/) with thresholds of up to $500k on critical finding.
- [17846] - [**Audit Report for v8.0.1 (Composable Security)**]()
- [17848] 2025-07-28_Sherlock_Mellow-Core-Vaults.pdf
- [17849] 2025-09-03_Nethermind_Mellow-Core-Vaults.pdf
- [17850] 2025-10-15_Nethermind_NM-0682_Mellow.pdf
- [17851] 2025-11-17_Nethermind_NM-0703_Mellow.pdf
- [17852] 2025-11-19_Nethermind_NM-0735_Mellow.pdf
- [17853] 2025-12-09_Nethermind_NM-0758_Mellow.pdf
- [17854] 2026-01-07_Nethermind_NM-0798_Mellow.pdf
- [17855] 2026-01-21_Nethermind_NM-0812_Mellow.pdf
- [17856] 2026-03-02_Nethermind_NM-0758_Mellow.pdf
- [17858] Mellow Core Vaults
- [17859] Mellow Core Vaults
- [17860] NM-0682 Migrator
- [17861] NM-0703 Oracle Submitter
- [17862] NM-0735 Swap Module
- [17863] NM-0758 SyncDepositQueue
- [17864] NM-0798 BurnableTokenizedShareManager
- [17865] NM-0812 Redeem Queue Fee Fix
- [17866] NM-0758 SyncDepositQueue
- [17867] NM-0891 PermissionedChainlinkOracle

Fork inheritance lineage and inherited audits are included when available.
