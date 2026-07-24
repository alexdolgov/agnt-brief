# Agentic Audit Brief: Velodrome

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 3 audit(s)
- Eligible audit results: 8 (3 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Velodrome (`velodrome`)
- Website: [https://velodrome.finance](https://velodrome.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, bob, celo, fraxtal, ink, lisk, metal-l2, mode, optimism, soneium, superseed, swellchain, unichain
- Contract surface: 504 unique implementations (507 raw deployments)
- Coverage basis: 6/81 confirmed own live verified implementations (7.4%); conservative 7.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $33,671,001.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Velodrome. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 82 contract row(s) across base, bob, celo, fraxtal, ink, lisk, metal-l2, mode, optimism, soneium, superseed, swellchain, unichain. Structural roles: 69 unclassified, 7 core, 6 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 82
- Structural roles: unclassified (69), core (7), supporting (6)
- Contract kinds: contract (80), abstract (2)
- Detected standards: erc165 (1), erc20 (1), erc20permit (1), erc721 (1), ownable (1)
- Frameworks: openzeppelin (11)
- Upgradeable-pattern rows: 0

## Fork Analysis

3 of 195 contracts are derived from known codebases. 192 contracts have no detected origin.

### Forked Contracts

**Router** (`0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858`, chain 10)
Origin: 40-acres (`0xa062ae...8b2858`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Voter** (`0x41c914ee0c7e1a5edcd0295623e6dc557b5abf3c`, chain 10)
Origin: arcadia-finance (`0x41c914...5abf3c`)
Containment: 100.0% - 29 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VotingEscrow** (`0xfaf8fd17d9840595845582fcb047df13f006787d`, chain 10)
Origin: iaero-protocol (`0xebf418...67e6b4`)
Containment: 96.0% - 48 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- forwarder()
- permanentLockBalance()

### Original Contracts (no fork detected - full audit scope)

- Minter (`0x6dc9e1c04ee59ed3531d73a72256c0da46d10982`, chain 10)
- RewardsDistributor (`0x9d4736ec60715e71afe72973f7885dcbc21ea99b`, chain 10)
- Superchain emergencyCouncil (`0xf7a15f27533c2db26341220c1e0b939b56defeda`, chain 10)
- Superchain leafFeeModule (`0x81c5d01ae474040a59d0092a6973f4621e06b362`, chain 130)
- Superchain leafFeeModule (`0xc60a684e00f2aec11603348a615cb2b454b62e31`, chain 252)
- Superchain leafFeeModule (`0x44536f7694d2d2f843437aded8d95525f797a06b`, chain 1135)
- Superchain leafFeeModule (`0x81c5d01ae474040a59d0092a6973f4621e06b362`, chain 1750)
- Superchain leafFeeModule (`0x81c5d01ae474040a59d0092a6973f4621e06b362`, chain 1868)
- Superchain leafFeeModule (`0x81c5d01ae474040a59d0092a6973f4621e06b362`, chain 1923)
- Superchain leafFeeModule (`0x81c5d01ae474040a59d0092a6973f4621e06b362`, chain 5330)
- Superchain leafFeeModule (`0x81c5d01ae474040a59d0092a6973f4621e06b362`, chain 57073)
- Superchain leafGaugeFactory (`0x42e403b73898320f23109708b0ba1ae85838c445`, chain 130)
- Superchain leafGaugeFactory (`0x42e403b73898320f23109708b0ba1ae85838c445`, chain 252)
- Superchain leafGaugeFactory (`0x42e403b73898320f23109708b0ba1ae85838c445`, chain 1135)
- Superchain leafGaugeFactory (`0x42e403b73898320f23109708b0ba1ae85838c445`, chain 1750)
- Superchain leafGaugeFactory (`0x42e403b73898320f23109708b0ba1ae85838c445`, chain 1868)
- Superchain leafGaugeFactory (`0x42e403b73898320f23109708b0ba1ae85838c445`, chain 1923)
- Superchain leafGaugeFactory (`0x42e403b73898320f23109708b0ba1ae85838c445`, chain 5330)
- Superchain leafGaugeFactory (`0x42e403b73898320f23109708b0ba1ae85838c445`, chain 34443)
- Superchain leafGaugeFactory (`0x42e403b73898320f23109708b0ba1ae85838c445`, chain 42220)
- Superchain leafGaugeFactory (`0x42e403b73898320f23109708b0ba1ae85838c445`, chain 57073)
- Superchain leafMessageBridge (`0xf278761576f45472bdd721eaca19317ce159c011`, chain 130)
- Superchain leafMessageBridge (`0xf278761576f45472bdd721eaca19317ce159c011`, chain 252)
- Superchain leafMessageBridge (`0xf278761576f45472bdd721eaca19317ce159c011`, chain 1135)
- Superchain leafMessageBridge (`0xf278761576f45472bdd721eaca19317ce159c011`, chain 1750)
- Superchain leafMessageBridge (`0xf278761576f45472bdd721eaca19317ce159c011`, chain 1868)
- Superchain leafMessageBridge (`0xf278761576f45472bdd721eaca19317ce159c011`, chain 1923)
- Superchain leafMessageBridge (`0xf278761576f45472bdd721eaca19317ce159c011`, chain 5330)
- Superchain leafMessageBridge (`0xf278761576f45472bdd721eaca19317ce159c011`, chain 34443)
- Superchain leafMessageBridge (`0xf278761576f45472bdd721eaca19317ce159c011`, chain 42220)
- Superchain leafMessageBridge (`0xf278761576f45472bdd721eaca19317ce159c011`, chain 57073)
- Superchain leafMessageModule (`0x2bba7515f7cf114b45186274981888d8c2fba15e`, chain 130)
- Superchain leafMessageModule (`0x2bba7515f7cf114b45186274981888d8c2fba15e`, chain 252)
- Superchain leafMessageModule (`0xf385603a12be8b7b885222329c581fdd1c30071d`, chain 1135)
- Superchain leafMessageModule (`0x2bba7515f7cf114b45186274981888d8c2fba15e`, chain 1750)
- Superchain leafMessageModule (`0x2bba7515f7cf114b45186274981888d8c2fba15e`, chain 1868)
- Superchain leafMessageModule (`0x2bba7515f7cf114b45186274981888d8c2fba15e`, chain 1923)
- Superchain leafMessageModule (`0x2bba7515f7cf114b45186274981888d8c2fba15e`, chain 5330)
- Superchain leafMessageModule (`0x2bba7515f7cf114b45186274981888d8c2fba15e`, chain 34443)
- Superchain leafMessageModule (`0x2bba7515f7cf114b45186274981888d8c2fba15e`, chain 42220)
- Superchain leafMessageModule (`0x2bba7515f7cf114b45186274981888d8c2fba15e`, chain 57073)
- Superchain leafPoolFactory (`0x31832f2a97fd20664d76cc421207669b55ce4bc0`, chain 130)
- Superchain leafPoolFactory (`0x31832f2a97fd20664d76cc421207669b55ce4bc0`, chain 252)
- Superchain leafPoolFactory (`0x31832f2a97fd20664d76cc421207669b55ce4bc0`, chain 1135)
- Superchain leafPoolFactory (`0x31832f2a97fd20664d76cc421207669b55ce4bc0`, chain 1750)
- Superchain leafPoolFactory (`0x31832f2a97fd20664d76cc421207669b55ce4bc0`, chain 1868)
- Superchain leafPoolFactory (`0x31832f2a97fd20664d76cc421207669b55ce4bc0`, chain 1923)
- Superchain leafPoolFactory (`0x31832f2a97fd20664d76cc421207669b55ce4bc0`, chain 5330)
- Superchain leafPoolFactory (`0x31832f2a97fd20664d76cc421207669b55ce4bc0`, chain 34443)
- Superchain leafPoolFactory (`0x31832f2a97fd20664d76cc421207669b55ce4bc0`, chain 42220)
- Superchain leafPoolFactory (`0x31832f2a97fd20664d76cc421207669b55ce4bc0`, chain 57073)
- Superchain leafPoolFactory (`0x31832f2a97fd20664d76cc421207669b55ce4bc0`, chain 60808)
- Superchain leafPoolImplementation (`0x10499d88bd32af443fc936f67de32be1c8bb374c`, chain 130)
- Superchain leafPoolImplementation (`0x10499d88bd32af443fc936f67de32be1c8bb374c`, chain 252)
- Superchain leafPoolImplementation (`0x10499d88bd32af443fc936f67de32be1c8bb374c`, chain 1135)
- Superchain leafPoolImplementation (`0x10499d88bd32af443fc936f67de32be1c8bb374c`, chain 1750)
- Superchain leafPoolImplementation (`0x10499d88bd32af443fc936f67de32be1c8bb374c`, chain 1868)
- Superchain leafPoolImplementation (`0x10499d88bd32af443fc936f67de32be1c8bb374c`, chain 1923)
- Superchain leafPoolImplementation (`0x10499d88bd32af443fc936f67de32be1c8bb374c`, chain 5330)
- Superchain leafPoolImplementation (`0x10499d88bd32af443fc936f67de32be1c8bb374c`, chain 34443)
- Superchain leafPoolImplementation (`0x10499d88bd32af443fc936f67de32be1c8bb374c`, chain 42220)
- Superchain leafPoolImplementation (`0x10499d88bd32af443fc936f67de32be1c8bb374c`, chain 57073)
- Superchain leafPoolImplementation (`0x10499d88bd32af443fc936f67de32be1c8bb374c`, chain 60808)
- Superchain leafRestrictedRewardToken (`0xafcc6ae807187a31e84138f3860d4ce27973e01b`, chain 130)
- Superchain leafRestrictedRewardToken (`0xafcc6ae807187a31e84138f3860d4ce27973e01b`, chain 252)
- Superchain leafRestrictedRewardToken (`0xafcc6ae807187a31e84138f3860d4ce27973e01b`, chain 1135)
- Superchain leafRestrictedRewardToken (`0xafcc6ae807187a31e84138f3860d4ce27973e01b`, chain 1750)
- Superchain leafRestrictedRewardToken (`0xafcc6ae807187a31e84138f3860d4ce27973e01b`, chain 1868)
- Superchain leafRestrictedRewardToken (`0xafcc6ae807187a31e84138f3860d4ce27973e01b`, chain 1923)
- Superchain leafRestrictedRewardToken (`0xafcc6ae807187a31e84138f3860d4ce27973e01b`, chain 5330)
- Superchain leafRestrictedRewardToken (`0xafcc6ae807187a31e84138f3860d4ce27973e01b`, chain 8453)
- Superchain leafRestrictedRewardToken (`0xafcc6ae807187a31e84138f3860d4ce27973e01b`, chain 34443)
- Superchain leafRestrictedRewardToken (`0xafcc6ae807187a31e84138f3860d4ce27973e01b`, chain 42220)
- Superchain leafRestrictedRewardToken (`0xafcc6ae807187a31e84138f3860d4ce27973e01b`, chain 57073)
- Superchain leafRestrictedTokenBridge (`0xac6a6080e002d2803959242c0fe10050c482d214`, chain 130)
- Superchain leafRestrictedTokenBridge (`0xac6a6080e002d2803959242c0fe10050c482d214`, chain 252)
- Superchain leafRestrictedTokenBridge (`0xac6a6080e002d2803959242c0fe10050c482d214`, chain 1135)
- Superchain leafRestrictedTokenBridge (`0xac6a6080e002d2803959242c0fe10050c482d214`, chain 1750)
- Superchain leafRestrictedTokenBridge (`0xac6a6080e002d2803959242c0fe10050c482d214`, chain 1868)
- Superchain leafRestrictedTokenBridge (`0xac6a6080e002d2803959242c0fe10050c482d214`, chain 1923)
- Superchain leafRestrictedTokenBridge (`0xac6a6080e002d2803959242c0fe10050c482d214`, chain 5330)
- Superchain leafRestrictedTokenBridge (`0xac6a6080e002d2803959242c0fe10050c482d214`, chain 8453)
- Superchain leafRestrictedTokenBridge (`0xac6a6080e002d2803959242c0fe10050c482d214`, chain 34443)
- Superchain leafRestrictedTokenBridge (`0xac6a6080e002d2803959242c0fe10050c482d214`, chain 42220)
- Superchain leafRestrictedTokenBridge (`0xac6a6080e002d2803959242c0fe10050c482d214`, chain 57073)
- Superchain leafRestrictedXFactory (`0x00a3767687699c65878655b62e565453bdc75fb1`, chain 130)
- Superchain leafRestrictedXFactory (`0x00a3767687699c65878655b62e565453bdc75fb1`, chain 252)
- Superchain leafRestrictedXFactory (`0x00a3767687699c65878655b62e565453bdc75fb1`, chain 1135)
- Superchain leafRestrictedXFactory (`0x00a3767687699c65878655b62e565453bdc75fb1`, chain 1750)
- Superchain leafRestrictedXFactory (`0x00a3767687699c65878655b62e565453bdc75fb1`, chain 1868)
- Superchain leafRestrictedXFactory (`0x00a3767687699c65878655b62e565453bdc75fb1`, chain 1923)
- Superchain leafRestrictedXFactory (`0x00a3767687699c65878655b62e565453bdc75fb1`, chain 5330)
- Superchain leafRestrictedXFactory (`0x00a3767687699c65878655b62e565453bdc75fb1`, chain 8453)
- Superchain leafRestrictedXFactory (`0x00a3767687699c65878655b62e565453bdc75fb1`, chain 34443)
- Superchain leafRestrictedXFactory (`0x00a3767687699c65878655b62e565453bdc75fb1`, chain 42220)
- Superchain leafRestrictedXFactory (`0x00a3767687699c65878655b62e565453bdc75fb1`, chain 57073)
- Superchain leafRouter (`0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45`, chain 130)
- Superchain leafRouter (`0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45`, chain 252)
- Superchain leafRouter (`0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45`, chain 1135)
- Superchain leafRouter (`0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45`, chain 1750)
- Superchain leafRouter (`0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45`, chain 1868)
- Superchain leafRouter (`0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45`, chain 1923)
- Superchain leafRouter (`0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45`, chain 5330)
- Superchain leafRouter (`0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45`, chain 34443)
- Superchain leafRouter (`0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45`, chain 42220)
- Superchain leafRouter (`0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45`, chain 57073)
- Superchain leafRouter (`0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45`, chain 60808)
- Superchain leafTokenBridge (`0x1a9d17828897d6289c6dff9dc9f5cc3baea17814`, chain 130)
- Superchain leafTokenBridge (`0x1a9d17828897d6289c6dff9dc9f5cc3baea17814`, chain 252)
- Superchain leafTokenBridge (`0x1a9d17828897d6289c6dff9dc9f5cc3baea17814`, chain 1135)
- Superchain leafTokenBridge (`0x1a9d17828897d6289c6dff9dc9f5cc3baea17814`, chain 1750)
- Superchain leafTokenBridge (`0x1a9d17828897d6289c6dff9dc9f5cc3baea17814`, chain 1868)
- Superchain leafTokenBridge (`0x1a9d17828897d6289c6dff9dc9f5cc3baea17814`, chain 1923)
- Superchain leafTokenBridge (`0x1a9d17828897d6289c6dff9dc9f5cc3baea17814`, chain 5330)
- Superchain leafTokenBridge (`0x1a9d17828897d6289c6dff9dc9f5cc3baea17814`, chain 34443)
- Superchain leafTokenBridge (`0x1a9d17828897d6289c6dff9dc9f5cc3baea17814`, chain 42220)
- Superchain leafTokenBridge (`0x1a9d17828897d6289c6dff9dc9f5cc3baea17814`, chain 57073)
- Superchain leafVoter (`0x97cdbce21b6fd0585d29e539b1b99dad328a1123`, chain 130)
- Superchain leafVoter (`0x97cdbce21b6fd0585d29e539b1b99dad328a1123`, chain 252)
- Superchain leafVoter (`0x97cdbce21b6fd0585d29e539b1b99dad328a1123`, chain 1135)
- Superchain leafVoter (`0x97cdbce21b6fd0585d29e539b1b99dad328a1123`, chain 1750)
- Superchain leafVoter (`0x97cdbce21b6fd0585d29e539b1b99dad328a1123`, chain 1868)
- Superchain leafVoter (`0x97cdbce21b6fd0585d29e539b1b99dad328a1123`, chain 1923)
- Superchain leafVoter (`0x97cdbce21b6fd0585d29e539b1b99dad328a1123`, chain 5330)
- Superchain leafVoter (`0x97cdbce21b6fd0585d29e539b1b99dad328a1123`, chain 34443)
- Superchain leafVoter (`0x97cdbce21b6fd0585d29e539b1b99dad328a1123`, chain 42220)
- Superchain leafVoter (`0x97cdbce21b6fd0585d29e539b1b99dad328a1123`, chain 57073)
- Superchain leafVotingRewardsFactory (`0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f`, chain 130)
- Superchain leafVotingRewardsFactory (`0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f`, chain 252)
- Superchain leafVotingRewardsFactory (`0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f`, chain 1135)
- Superchain leafVotingRewardsFactory (`0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f`, chain 1750)
- Superchain leafVotingRewardsFactory (`0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f`, chain 1868)
- Superchain leafVotingRewardsFactory (`0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f`, chain 1923)
- Superchain leafVotingRewardsFactory (`0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f`, chain 5330)
- Superchain leafVotingRewardsFactory (`0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f`, chain 34443)
- Superchain leafVotingRewardsFactory (`0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f`, chain 42220)
- Superchain leafVotingRewardsFactory (`0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f`, chain 57073)
- Superchain leafXFactory (`0x73cae4450f11f4a33a49c880ce3e8e56a9294b31`, chain 130)
- Superchain leafXFactory (`0x73cae4450f11f4a33a49c880ce3e8e56a9294b31`, chain 252)
- Superchain leafXFactory (`0x73cae4450f11f4a33a49c880ce3e8e56a9294b31`, chain 1135)
- Superchain leafXFactory (`0x73cae4450f11f4a33a49c880ce3e8e56a9294b31`, chain 1750)
- Superchain leafXFactory (`0x73cae4450f11f4a33a49c880ce3e8e56a9294b31`, chain 1868)
- Superchain leafXFactory (`0x73cae4450f11f4a33a49c880ce3e8e56a9294b31`, chain 1923)
- Superchain leafXFactory (`0x73cae4450f11f4a33a49c880ce3e8e56a9294b31`, chain 5330)
- Superchain leafXFactory (`0x73cae4450f11f4a33a49c880ce3e8e56a9294b31`, chain 34443)
- Superchain leafXFactory (`0x73cae4450f11f4a33a49c880ce3e8e56a9294b31`, chain 42220)
- Superchain leafXFactory (`0x73cae4450f11f4a33a49c880ce3e8e56a9294b31`, chain 57073)
- Superchain leafXVelo (`0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81`, chain 130)
- Superchain leafXVelo (`0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81`, chain 252)
- Superchain leafXVelo (`0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81`, chain 1135)
- Superchain leafXVelo (`0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81`, chain 1750)
- Superchain leafXVelo (`0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81`, chain 1868)
- Superchain leafXVelo (`0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81`, chain 1923)
- Superchain leafXVelo (`0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81`, chain 5330)
- Superchain leafXVelo (`0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81`, chain 34443)
- Superchain leafXVelo (`0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81`, chain 42220)
- Superchain leafXVelo (`0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81`, chain 57073)
- Superchain mixedRouteQuoter (`0x0f3887909c548c41eb8a6667a4b23fc6683ef8ba`, chain 60808)
- Superchain rootGaugeFactory (`0x42e403b73898320f23109708b0ba1ae85838c445`, chain 10)
- Superchain rootLockbox (`0x12b64df29590b4f0934070fac96e82e580d60232`, chain 10)
- Superchain rootMessageBridge (`0xf278761576f45472bdd721eaca19317ce159c011`, chain 10)
- Superchain rootMessageModule (`0x2bba7515f7cf114b45186274981888d8c2fba15e`, chain 10)
- Superchain rootModuleVault (`0x916e0ad2d7e3f446a26b0333ca37a9e8972030c5`, chain 10)
- Superchain rootPoolFactory (`0x31832f2a97fd20664d76cc421207669b55ce4bc0`, chain 10)
- Superchain rootPoolImplementation (`0x10499d88bd32af443fc936f67de32be1c8bb374c`, chain 10)
- Superchain rootRestrictedRewardLockbox (`0xb46cea3e5839914bcb7622841d6e3dfc1bd92313`, chain 10)
- Superchain rootRestrictedRewardToken (`0xafcc6ae807187a31e84138f3860d4ce27973e01b`, chain 10)
- Superchain rootRestrictedTokenBridge (`0xac6a6080e002d2803959242c0fe10050c482d214`, chain 10)
- Superchain rootRestrictedTokenBridgeVault (`0xb9d32bf44a71bc0a383bd2061584e98a1e09c8d2`, chain 10)
- Superchain rootRestrictedXFactory (`0x00a3767687699c65878655b62e565453bdc75fb1`, chain 10)
- Superchain rootTokenBridge (`0x1a9d17828897d6289c6dff9dc9f5cc3baea17814`, chain 10)
- Superchain rootTokenBridgeVault (`0x479bec910d4025b4ac440ec27acf28eac522242b`, chain 10)
- Superchain rootVotingRewardsFactory (`0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f`, chain 10)
- Superchain rootXFactory (`0x73cae4450f11f4a33a49c880ce3e8e56a9294b31`, chain 10)
- Superchain rootXVelo (`0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81`, chain 10)
- Superchain stakingRewardsFactory (`0x8eb6838b4e998da08aab851f3d42076f21530389`, chain 60808)
- Superchain stakingRewardsImplementation (`0x593d092bb28ccefe33bfdd3d9457e77bd3084271`, chain 60808)
- Superchain tokenRegistry (`0x8d9c67488c154286b9d4ccac6c4cbf30589107a7`, chain 60808)
- Superchain universalRouter (`0xc3f14f34ea43943e6fd677a2bdcea65882e67783`, chain 60808)
- V2 ArtProxy (`0x4a9ea0dd5649ec4b6745c60d1769e2184c1782dd`, chain 10)
- V2 FactoryRegistry (`0xf4c67cdeaab8360370f41514d06e32ccd8aa1d7b`, chain 10)
- V2 Forwarder (`0x06824df38d1d77eadeb6bafcb03904e27429ab74`, chain 10)
- V2 GaugeFactory (`0x8391fe399640e7228a059f8fa104b8a7b4835071`, chain 10)
- V2 ManagedRewardsFactory (`0x3f468e35f5c262a6e796bfe3be831bf8b9142e9c`, chain 10)
- V2 PoolFactory (`0xf1046053aa5682b4f9a81b5481394da16be5ff5a`, chain 10)
- V2 SimpleEpochGovernor (`0x654eb9f7323718ef5fff6d420d08b8cdd8ee20e4`, chain 10)
- V2 SinkGauge (`0x3b59a6b600f912260048a0f3a834c1039aecd367`, chain 10)
- V2 SinkGaugeFactory (`0xe62b4bc24eb6446675a1cb3faca2339676e9e5a2`, chain 10)
- V2 SinkPool (`0x333030a736b47d20346d82a473680658ac1c2b88`, chain 10)
- V2 SinkPoolFactory (`0xd173b8d1a91ba0d434f393ad7a1680515a069091`, chain 10)
- V2 VotingRewardsFactory (`0x756e7c245c69d351fffbfb88ba234aa395ada8ec`, chain 10)
- Velo (`0x9560e827af36c94d2ac33a39bce1fe78631088db`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 82; live-surface rows included: 82 (81 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 195/197 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/81 (7.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 195 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 308 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 195 of 504 unique; 309 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/96
- Verified + Unaudited implementations: 90
- Verified by bytecode match: 0
- Unverified implementations: 408
- Unique implementations: 504
- Raw deployments: 507
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/velodromefinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 7.4% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 6 | 6.3% | 2024-01 |
| Sherlock | Tier 1 | 1 | 1.0% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Minter | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-396422 | `0x6dc9e1c04ee59ed3531d73a72256c0da46d10982` | ✅ Audited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-396430 | `0x9d4736ec60715e71afe72973f7885dcbc21ea99b` | ✅ Audited |
| Router | adapter | project_anchor | own_supporting | 0 | optimism | unit-396431 | `0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858` | ✅ Audited |
| Velo | token | project_anchor | own_supporting | 0 | optimism | unit-396429 | `0x9560e827af36c94d2ac33a39bce1fe78631088db` | ✅ Audited |
| Voter | unknown | project_anchor | own_supporting | 0 | optimism | unit-396417 | `0x41c914ee0c7e1a5edcd0295623e6dc557b5abf3c` | ✅ Audited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-396442 | `0xfaf8fd17d9840595845582fcb047df13f006787d` | ✅ Audited |

### ⚠️ Verified + Unaudited (90)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CLFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcc0bddb707055e04e497ab22a59c2af4391cd12f` | ⚠️ Unaudited |
| CustomFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8d9c67488c154286b9d4ccac6c4cbf30589107a7` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbcae2d4b4e8e34a4100e69e9c73af8214a89572e` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0x21fcc0c421ae0a5f6919535ecf000688a0413b92`; celo `0xb8e41db4be1f6249cec64f48ce4349004442d5c5` | ⚠️ Unaudited |
| DynamicSwapFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfffee309ea5bc4cc591cb37da50182d7a8cb99b2` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | optimism | unit-396603 | `0x838352f4e3992187a33a04826273db3992ee2b3f` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xff79ec912ba114fd7989b9a2b90c65f0c1b44722` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x416b433906b1b72fa758e166e239c43d68dc6f29` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xbb5dfe1380333cee4c2eebd7202c80de2256adf4` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x89d8218ed5ff1e46d8dcd33fb0bbee3be1621466` | ⚠️ Unaudited |
| SinkManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae` | ⚠️ Unaudited |
| SlipstreamSugar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0x928bb6c9097d5c9c1eb5e99e71e24e4d773f2be5`; celo `0xee03e08107755bc34412e78377b971ecc7153590` | ⚠️ Unaudited |
| Superchain emergencyCouncil | unknown | project_anchor | own_supporting | 0 | optimism | unit-396441 | `0xf7a15f27533c2db26341220c1e0b939b56defeda` | ⚠️ Unaudited |
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396531 | `0xc60a684e00f2aec11603348a615cb2b454b62e31` | ⚠️ Unaudited |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396524 | `0x42e403b73898320f23109708b0ba1ae85838c445` | ⚠️ Unaudited |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | mode | unit-396539 | `0x42e403b73898320f23109708b0ba1ae85838c445` | ⚠️ Unaudited |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-396553 | `0x42e403b73898320f23109708b0ba1ae85838c445` | ⚠️ Unaudited |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396532 | `0xf278761576f45472bdd721eaca19317ce159c011` | ⚠️ Unaudited |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | mode | unit-396546 | `0xf278761576f45472bdd721eaca19317ce159c011` | ⚠️ Unaudited |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | celo | unit-396561 | `0xf278761576f45472bdd721eaca19317ce159c011` | ⚠️ Unaudited |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396521 | `0x2bba7515f7cf114b45186274981888d8c2fba15e` | ⚠️ Unaudited |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | mode | unit-396536 | `0x2bba7515f7cf114b45186274981888d8c2fba15e` | ⚠️ Unaudited |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | celo | unit-396550 | `0x2bba7515f7cf114b45186274981888d8c2fba15e` | ⚠️ Unaudited |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396522 | `0x31832f2a97fd20664d76cc421207669b55ce4bc0` | ⚠️ Unaudited |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | mode | unit-396537 | `0x31832f2a97fd20664d76cc421207669b55ce4bc0` | ⚠️ Unaudited |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-396551 | `0x31832f2a97fd20664d76cc421207669b55ce4bc0` | ⚠️ Unaudited |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | unichain | unit-396459 | `0x10499d88bd32af443fc936f67de32be1c8bb374c` | ⚠️ Unaudited |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396519 | `0x10499d88bd32af443fc936f67de32be1c8bb374c` | ⚠️ Unaudited |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | mode | unit-396534 | `0x10499d88bd32af443fc936f67de32be1c8bb374c` | ⚠️ Unaudited |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | celo | unit-396548 | `0x10499d88bd32af443fc936f67de32be1c8bb374c` | ⚠️ Unaudited |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396530 | `0xafcc6ae807187a31e84138f3860d4ce27973e01b` | ⚠️ Unaudited |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | base | unit-396602 | `0xafcc6ae807187a31e84138f3860d4ce27973e01b` | ⚠️ Unaudited |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | mode | unit-396545 | `0xafcc6ae807187a31e84138f3860d4ce27973e01b` | ⚠️ Unaudited |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | celo | unit-396560 | `0xafcc6ae807187a31e84138f3860d4ce27973e01b` | ⚠️ Unaudited |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396529 | `0xac6a6080e002d2803959242c0fe10050c482d214` | ⚠️ Unaudited |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | base | unit-396601 | `0xac6a6080e002d2803959242c0fe10050c482d214` | ⚠️ Unaudited |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | mode | unit-396544 | `0xac6a6080e002d2803959242c0fe10050c482d214` | ⚠️ Unaudited |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | celo | unit-396559 | `0xac6a6080e002d2803959242c0fe10050c482d214` | ⚠️ Unaudited |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396518 | `0x00a3767687699c65878655b62e565453bdc75fb1` | ⚠️ Unaudited |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | base | unit-396600 | `0x00a3767687699c65878655b62e565453bdc75fb1` | ⚠️ Unaudited |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | mode | unit-396533 | `0x00a3767687699c65878655b62e565453bdc75fb1` | ⚠️ Unaudited |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-396547 | `0x00a3767687699c65878655b62e565453bdc75fb1` | ⚠️ Unaudited |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396523 | `0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45` | ⚠️ Unaudited |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | mode | unit-396538 | `0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45` | ⚠️ Unaudited |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | celo | unit-396552 | `0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45` | ⚠️ Unaudited |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396520 | `0x1a9d17828897d6289c6dff9dc9f5cc3baea17814` | ⚠️ Unaudited |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | mode | unit-396535 | `0x1a9d17828897d6289c6dff9dc9f5cc3baea17814` | ⚠️ Unaudited |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | celo | unit-396549 | `0x1a9d17828897d6289c6dff9dc9f5cc3baea17814` | ⚠️ Unaudited |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396528 | `0x97cdbce21b6fd0585d29e539b1b99dad328a1123` | ⚠️ Unaudited |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | mode | unit-396543 | `0x97cdbce21b6fd0585d29e539b1b99dad328a1123` | ⚠️ Unaudited |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | celo | unit-396558 | `0x97cdbce21b6fd0585d29e539b1b99dad328a1123` | ⚠️ Unaudited |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396526 | `0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f` | ⚠️ Unaudited |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | mode | unit-396541 | `0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f` | ⚠️ Unaudited |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-396555 | `0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f` | ⚠️ Unaudited |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | mode | unit-396540 | `0x73cae4450f11f4a33a49c880ce3e8e56a9294b31` | ⚠️ Unaudited |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-396554 | `0x73cae4450f11f4a33a49c880ce3e8e56a9294b31` | ⚠️ Unaudited |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396527 | `0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81` | ⚠️ Unaudited |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | mode | unit-396542 | `0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81` | ⚠️ Unaudited |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | celo | unit-396556 | `0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81` | ⚠️ Unaudited |
| Superchain rootGaugeFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396418 | `0x42e403b73898320f23109708b0ba1ae85838c445` | ⚠️ Unaudited |
| Superchain rootLockbox | unknown | project_anchor | own_supporting | 0 | optimism | unit-396410 | `0x12b64df29590b4f0934070fac96e82e580d60232` | ⚠️ Unaudited |
| Superchain rootMessageBridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-396439 | `0xf278761576f45472bdd721eaca19317ce159c011` | ⚠️ Unaudited |
| Superchain rootMessageModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-396412 | `0x2bba7515f7cf114b45186274981888d8c2fba15e` | ⚠️ Unaudited |
| Superchain rootModuleVault | unknown | project_anchor | own_supporting | 0 | optimism | unit-396428 | `0x916e0ad2d7e3f446a26b0333ca37a9e8972030c5` | ⚠️ Unaudited |
| Superchain rootPoolFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396413 | `0x31832f2a97fd20664d76cc421207669b55ce4bc0` | ⚠️ Unaudited |
| Superchain rootPoolImplementation | unknown | project_anchor | own_supporting | 0 | optimism | unit-396409 | `0x10499d88bd32af443fc936f67de32be1c8bb374c` | ⚠️ Unaudited |
| Superchain rootRestrictedRewardLockbox | unknown | project_anchor | own_supporting | 0 | optimism | unit-396434 | `0xb46cea3e5839914bcb7622841d6e3dfc1bd92313` | ⚠️ Unaudited |
| Superchain rootRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | optimism | unit-396433 | `0xafcc6ae807187a31e84138f3860d4ce27973e01b` | ⚠️ Unaudited |
| Superchain rootRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-396432 | `0xac6a6080e002d2803959242c0fe10050c482d214` | ⚠️ Unaudited |
| Superchain rootRestrictedTokenBridgeVault | unknown | project_anchor | own_supporting | 0 | optimism | unit-396435 | `0xb9d32bf44a71bc0a383bd2061584e98a1e09c8d2` | ⚠️ Unaudited |
| Superchain rootRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396407 | `0x00a3767687699c65878655b62e565453bdc75fb1` | ⚠️ Unaudited |
| Superchain rootTokenBridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-396411 | `0x1a9d17828897d6289c6dff9dc9f5cc3baea17814` | ⚠️ Unaudited |
| Superchain rootTokenBridgeVault | unknown | project_anchor | own_supporting | 0 | optimism | unit-396419 | `0x479bec910d4025b4ac440ec27acf28eac522242b` | ⚠️ Unaudited |
| Superchain rootVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396425 | `0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f` | ⚠️ Unaudited |
| Superchain rootXVelo | unknown | project_anchor | own_supporting | 0 | optimism | unit-396426 | `0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0792a633f0c19c351081cf4b211f68f79bcc9676` | ⚠️ Unaudited |
| UniversalRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x4bf3e32de155359d1d75e8b474b66848221142fc`; optimism `0xf132bdb9573867cd72f2585c338b923f973eb817` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xefc371c64f20a09ead02d5addd59a52dd3d4518e` | ⚠️ Unaudited |
| V2 ArtProxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-396420 | `0x4a9ea0dd5649ec4b6745c60d1769e2184c1782dd` | ⚠️ Unaudited |
| V2 FactoryRegistry | unknown | project_anchor | own_supporting | 0 | optimism | unit-396440 | `0xf4c67cdeaab8360370f41514d06e32ccd8aa1d7b` | ⚠️ Unaudited |
| V2 Forwarder | unknown | project_anchor | own_supporting | 0 | optimism | unit-396408 | `0x06824df38d1d77eadeb6bafcb03904e27429ab74` | ⚠️ Unaudited |
| V2 GaugeFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396427 | `0x8391fe399640e7228a059f8fa104b8a7b4835071` | ⚠️ Unaudited |
| V2 ManagedRewardsFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396416 | `0x3f468e35f5c262a6e796bfe3be831bf8b9142e9c` | ⚠️ Unaudited |
| V2 PoolFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396438 | `0xf1046053aa5682b4f9a81b5481394da16be5ff5a` | ⚠️ Unaudited |
| V2 SimpleEpochGovernor | unknown | project_anchor | own_supporting | 0 | optimism | unit-396421 | `0x654eb9f7323718ef5fff6d420d08b8cdd8ee20e4` | ⚠️ Unaudited |
| V2 SinkGauge | unknown | project_anchor | own_supporting | 0 | optimism | unit-396415 | `0x3b59a6b600f912260048a0f3a834c1039aecd367` | ⚠️ Unaudited |
| V2 SinkGaugeFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396437 | `0xe62b4bc24eb6446675a1cb3faca2339676e9e5a2` | ⚠️ Unaudited |
| V2 SinkPool | unknown | project_anchor | own_supporting | 0 | optimism | unit-396414 | `0x333030a736b47d20346d82a473680658ac1c2b88` | ⚠️ Unaudited |
| V2 SinkPoolFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396436 | `0xd173b8d1a91ba0d434f393ad7a1680515a069091` | ⚠️ Unaudited |
| V2 VotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396424 | `0x756e7c245c69d351fffbfb88ba234aa395ada8ec` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (408)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | unichain | unit-396468 | `0x81c5d01ae474040a59d0092a6973f4621e06b362` | ❓ Unverified |
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | lisk | unit-396449 | `0x44536f7694d2d2f843437aded8d95525f797a06b` | ❓ Unverified |
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396483 | `0x81c5d01ae474040a59d0092a6973f4621e06b362` | ❓ Unverified |
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | soneium | unit-396498 | `0x81c5d01ae474040a59d0092a6973f4621e06b362` | ❓ Unverified |
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396513 | `0x81c5d01ae474040a59d0092a6973f4621e06b362` | ❓ Unverified |
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | superseed | unit-396572 | `0x81c5d01ae474040a59d0092a6973f4621e06b362` | ❓ Unverified |
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | ink | unit-396587 | `0x81c5d01ae474040a59d0092a6973f4621e06b362` | ❓ Unverified |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | unichain | unit-396464 | `0x42e403b73898320f23109708b0ba1ae85838c445` | ❓ Unverified |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | lisk | unit-396448 | `0x42e403b73898320f23109708b0ba1ae85838c445` | ❓ Unverified |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396479 | `0x42e403b73898320f23109708b0ba1ae85838c445` | ❓ Unverified |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | soneium | unit-396494 | `0x42e403b73898320f23109708b0ba1ae85838c445` | ❓ Unverified |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396509 | `0x42e403b73898320f23109708b0ba1ae85838c445` | ❓ Unverified |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | superseed | unit-396568 | `0x42e403b73898320f23109708b0ba1ae85838c445` | ❓ Unverified |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | ink | unit-396583 | `0x42e403b73898320f23109708b0ba1ae85838c445` | ❓ Unverified |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | unichain | unit-396472 | `0xf278761576f45472bdd721eaca19317ce159c011` | ❓ Unverified |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | lisk | unit-396456 | `0xf278761576f45472bdd721eaca19317ce159c011` | ❓ Unverified |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396487 | `0xf278761576f45472bdd721eaca19317ce159c011` | ❓ Unverified |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | soneium | unit-396502 | `0xf278761576f45472bdd721eaca19317ce159c011` | ❓ Unverified |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396517 | `0xf278761576f45472bdd721eaca19317ce159c011` | ❓ Unverified |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | superseed | unit-396576 | `0xf278761576f45472bdd721eaca19317ce159c011` | ❓ Unverified |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | ink | unit-396591 | `0xf278761576f45472bdd721eaca19317ce159c011` | ❓ Unverified |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | unichain | unit-396461 | `0x2bba7515f7cf114b45186274981888d8c2fba15e` | ❓ Unverified |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | lisk | unit-396457 | `0xf385603a12be8b7b885222329c581fdd1c30071d` | ❓ Unverified |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396476 | `0x2bba7515f7cf114b45186274981888d8c2fba15e` | ❓ Unverified |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | soneium | unit-396491 | `0x2bba7515f7cf114b45186274981888d8c2fba15e` | ❓ Unverified |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396506 | `0x2bba7515f7cf114b45186274981888d8c2fba15e` | ❓ Unverified |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | superseed | unit-396565 | `0x2bba7515f7cf114b45186274981888d8c2fba15e` | ❓ Unverified |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | ink | unit-396580 | `0x2bba7515f7cf114b45186274981888d8c2fba15e` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | unichain | unit-396462 | `0x31832f2a97fd20664d76cc421207669b55ce4bc0` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | lisk | unit-396446 | `0x31832f2a97fd20664d76cc421207669b55ce4bc0` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396477 | `0x31832f2a97fd20664d76cc421207669b55ce4bc0` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | soneium | unit-396492 | `0x31832f2a97fd20664d76cc421207669b55ce4bc0` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396507 | `0x31832f2a97fd20664d76cc421207669b55ce4bc0` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | superseed | unit-396566 | `0x31832f2a97fd20664d76cc421207669b55ce4bc0` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | ink | unit-396581 | `0x31832f2a97fd20664d76cc421207669b55ce4bc0` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | bob | unit-396594 | `0x31832f2a97fd20664d76cc421207669b55ce4bc0` | ❓ Unverified |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | lisk | unit-396444 | `0x10499d88bd32af443fc936f67de32be1c8bb374c` | ❓ Unverified |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396474 | `0x10499d88bd32af443fc936f67de32be1c8bb374c` | ❓ Unverified |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | soneium | unit-396489 | `0x10499d88bd32af443fc936f67de32be1c8bb374c` | ❓ Unverified |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396504 | `0x10499d88bd32af443fc936f67de32be1c8bb374c` | ❓ Unverified |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | superseed | unit-396563 | `0x10499d88bd32af443fc936f67de32be1c8bb374c` | ❓ Unverified |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | ink | unit-396578 | `0x10499d88bd32af443fc936f67de32be1c8bb374c` | ❓ Unverified |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | bob | unit-396593 | `0x10499d88bd32af443fc936f67de32be1c8bb374c` | ❓ Unverified |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | unichain | unit-396471 | `0xafcc6ae807187a31e84138f3860d4ce27973e01b` | ❓ Unverified |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | lisk | unit-396455 | `0xafcc6ae807187a31e84138f3860d4ce27973e01b` | ❓ Unverified |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396486 | `0xafcc6ae807187a31e84138f3860d4ce27973e01b` | ❓ Unverified |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | soneium | unit-396501 | `0xafcc6ae807187a31e84138f3860d4ce27973e01b` | ❓ Unverified |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396516 | `0xafcc6ae807187a31e84138f3860d4ce27973e01b` | ❓ Unverified |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | superseed | unit-396575 | `0xafcc6ae807187a31e84138f3860d4ce27973e01b` | ❓ Unverified |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | ink | unit-396590 | `0xafcc6ae807187a31e84138f3860d4ce27973e01b` | ❓ Unverified |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | unichain | unit-396470 | `0xac6a6080e002d2803959242c0fe10050c482d214` | ❓ Unverified |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | lisk | unit-396454 | `0xac6a6080e002d2803959242c0fe10050c482d214` | ❓ Unverified |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396485 | `0xac6a6080e002d2803959242c0fe10050c482d214` | ❓ Unverified |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | soneium | unit-396500 | `0xac6a6080e002d2803959242c0fe10050c482d214` | ❓ Unverified |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396515 | `0xac6a6080e002d2803959242c0fe10050c482d214` | ❓ Unverified |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | superseed | unit-396574 | `0xac6a6080e002d2803959242c0fe10050c482d214` | ❓ Unverified |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | ink | unit-396589 | `0xac6a6080e002d2803959242c0fe10050c482d214` | ❓ Unverified |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | unichain | unit-396458 | `0x00a3767687699c65878655b62e565453bdc75fb1` | ❓ Unverified |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | lisk | unit-396443 | `0x00a3767687699c65878655b62e565453bdc75fb1` | ❓ Unverified |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396473 | `0x00a3767687699c65878655b62e565453bdc75fb1` | ❓ Unverified |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | soneium | unit-396488 | `0x00a3767687699c65878655b62e565453bdc75fb1` | ❓ Unverified |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396503 | `0x00a3767687699c65878655b62e565453bdc75fb1` | ❓ Unverified |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | superseed | unit-396562 | `0x00a3767687699c65878655b62e565453bdc75fb1` | ❓ Unverified |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | ink | unit-396577 | `0x00a3767687699c65878655b62e565453bdc75fb1` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | unichain | unit-396463 | `0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | lisk | unit-396447 | `0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396478 | `0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | soneium | unit-396493 | `0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396508 | `0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | superseed | unit-396567 | `0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | ink | unit-396582 | `0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | bob | unit-396595 | `0x3a63171dd9bebf4d07bc782fecc7eb0b890c2a45` | ❓ Unverified |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | unichain | unit-396460 | `0x1a9d17828897d6289c6dff9dc9f5cc3baea17814` | ❓ Unverified |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | lisk | unit-396445 | `0x1a9d17828897d6289c6dff9dc9f5cc3baea17814` | ❓ Unverified |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396475 | `0x1a9d17828897d6289c6dff9dc9f5cc3baea17814` | ❓ Unverified |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | soneium | unit-396490 | `0x1a9d17828897d6289c6dff9dc9f5cc3baea17814` | ❓ Unverified |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396505 | `0x1a9d17828897d6289c6dff9dc9f5cc3baea17814` | ❓ Unverified |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | superseed | unit-396564 | `0x1a9d17828897d6289c6dff9dc9f5cc3baea17814` | ❓ Unverified |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | ink | unit-396579 | `0x1a9d17828897d6289c6dff9dc9f5cc3baea17814` | ❓ Unverified |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | unichain | unit-396469 | `0x97cdbce21b6fd0585d29e539b1b99dad328a1123` | ❓ Unverified |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | lisk | unit-396453 | `0x97cdbce21b6fd0585d29e539b1b99dad328a1123` | ❓ Unverified |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396484 | `0x97cdbce21b6fd0585d29e539b1b99dad328a1123` | ❓ Unverified |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | soneium | unit-396499 | `0x97cdbce21b6fd0585d29e539b1b99dad328a1123` | ❓ Unverified |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396514 | `0x97cdbce21b6fd0585d29e539b1b99dad328a1123` | ❓ Unverified |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | superseed | unit-396573 | `0x97cdbce21b6fd0585d29e539b1b99dad328a1123` | ❓ Unverified |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | ink | unit-396588 | `0x97cdbce21b6fd0585d29e539b1b99dad328a1123` | ❓ Unverified |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | unichain | unit-396466 | `0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f` | ❓ Unverified |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | lisk | unit-396451 | `0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f` | ❓ Unverified |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396481 | `0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f` | ❓ Unverified |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | soneium | unit-396496 | `0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f` | ❓ Unverified |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396511 | `0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f` | ❓ Unverified |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | superseed | unit-396570 | `0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f` | ❓ Unverified |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | ink | unit-396585 | `0x7dc9fd82f91b36f416a89f5478375e4a79f4fb2f` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | unichain | unit-396465 | `0x73cae4450f11f4a33a49c880ce3e8e56a9294b31` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396525 | `0x73cae4450f11f4a33a49c880ce3e8e56a9294b31` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | lisk | unit-396450 | `0x73cae4450f11f4a33a49c880ce3e8e56a9294b31` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396480 | `0x73cae4450f11f4a33a49c880ce3e8e56a9294b31` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | soneium | unit-396495 | `0x73cae4450f11f4a33a49c880ce3e8e56a9294b31` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396510 | `0x73cae4450f11f4a33a49c880ce3e8e56a9294b31` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | superseed | unit-396569 | `0x73cae4450f11f4a33a49c880ce3e8e56a9294b31` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | ink | unit-396584 | `0x73cae4450f11f4a33a49c880ce3e8e56a9294b31` | ❓ Unverified |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | unichain | unit-396467 | `0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81` | ❓ Unverified |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | lisk | unit-396452 | `0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81` | ❓ Unverified |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396482 | `0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81` | ❓ Unverified |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | soneium | unit-396497 | `0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81` | ❓ Unverified |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396512 | `0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81` | ❓ Unverified |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | superseed | unit-396571 | `0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81` | ❓ Unverified |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | ink | unit-396586 | `0x7f9adfbd38b669f03d1d11000bc76b9aaea28a81` | ❓ Unverified |
| Superchain mixedRouteQuoter | unknown | project_anchor | own_supporting | 0 | bob | unit-396592 | `0x0f3887909c548c41eb8a6667a4b23fc6683ef8ba` | ❓ Unverified |
| Superchain rootXFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396423 | `0x73cae4450f11f4a33a49c880ce3e8e56a9294b31` | ❓ Unverified |
| Superchain stakingRewardsFactory | unknown | project_anchor | own_supporting | 0 | bob | unit-396598 | `0x8eb6838b4e998da08aab851f3d42076f21530389` | ❓ Unverified |
| Superchain stakingRewardsImplementation | unknown | project_anchor | own_supporting | 0 | bob | unit-396596 | `0x593d092bb28ccefe33bfdd3d9457e77bd3084271` | ❓ Unverified |
| Superchain tokenRegistry | unknown | project_anchor | own_supporting | 0 | bob | unit-396597 | `0x8d9c67488c154286b9d4ccac6c4cbf30589107a7` | ❓ Unverified |
| Superchain universalRouter | unknown | project_anchor | own_supporting | 0 | bob | unit-396599 | `0xc3f14f34ea43943e6fd677a2bdcea65882e67783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x024503003ffe9af285f47c1daaaa497d9f1166d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x05e41604b9463e2224227053980dff3f57fb6db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x061e86971e34ee40566be0c4cfc4b01cbf7a6c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x075c27df0c80dbc94bd369a3931d44e0537c258e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x076836713dbae21ee5bb069f73cb6fa80792a5c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x07897bb940536eee4c9a1b430ee7dcf9aa5c55bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x082beff5e408367e34b57f68a18fd06383ec8a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0926f2a575395d262c4454f5ce19e5f8e37f4d57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0af7503f658f0bd4c5022f2b94f685cbb1e1fedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b08ec81b029a52927345d21b7a6e41b31a95a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b909cd0fc9cf72551074b9823110dc7bf694c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0c8854bb98c3ebd529ff29da924c553788ec1292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0cf1e8a5b1bd4c48cc24e808ae59caf158e0b7ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d19731ca32c47eaebd20acb509bb68b0786c4ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d4041005a1a1db723bf30b936f1b70d9f1982f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d6d3da47e495c0249073b6587e44da1d2f35070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0dc87f6cd33583daedfccd7e0fac8e91a067962f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e2c9ba32069189cd1d93ee84978f79a3c4be08e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x102f9972b22143c07327a751854fbb5503eaac9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x11b234946f28a3905710922138c65fbbe7496b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x12419cfe11e85e3e28927ec84209cd7a4cfecab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x124f8f80ce1b77a27db800b90d8c4207be64f32d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1381b1e6aafa01bd28e95adab35bda8191826bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1412ea6c089dffde3a91c847915d2732c6bb2326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x143736ee583924ccf6b938cfbd74dccb794e88f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x144738ea1fc0943c25affbc66aa0b1cd5325b7dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x149841426c1fde52aa92cd462f8cf5d90ce798f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x15810f291d547d340b1ac78f75dc0cdc7406a0c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1590aada2986a5f7de3cf8056f4402923f2409e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x15c3c7f2624a50a5dc4266afb2834c932c9f5812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1670ee76e66e17e3617ed847ae371150a938b2e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x167471cdd7e78da8fd920bef0fba277187d1044e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x186ccad8d78cb59dcb52a7b6719fef9deca44749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18a11ed49cacef336255aa0dd2e90a28be0fcb03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a69e822db26b10add994cda089eb4d65066c9cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c0bd2cf5eac65d8072366f82bc331a1a4970bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c54fb1eeb4c0028f1c9aa0c780b35b63b8f8b2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1ee6e6a07a065047af3903cebc1c11f70ece47fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1fca9a040a1336b389198493e7720c0725da0741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2077b53a532c9509b3cf07890cd994d5e2fbacfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x21c172914d783e2d79d088bfb6affc9f22162c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x21fcc0c421ae0a5f6919535ecf000688a0413b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2208babf484c26d14cf1f5f30acfd3b1cd1b2c27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x223598de128fc8c10f42f9e85451d9eb885f8eb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2253e0d701891409385e1420deb78a35a9a5f8a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x256c19e83c603bdfad0446ce9257504740219ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x25c1eb9c58256bad2bb556a6282c1db9749c6289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x270c7a338b06210bea8538b3bc00e2ddc3f4b617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x276b5eb7571a6ac138e7c47309cf6a3ce44ad4fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2773daa50f44b1bf1f3631a1e11602676ef841a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x27facebec45a5c0ce44264cadd5e0add2301c6d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2805248e21077972e009cf2c56329c8924f5e34f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b01313496213f0cfeded560859ed53c71910e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b0547920a21c0496742e92dddc6483db227a130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b2a6209f813b360e0d8a006c73477d56e7a7f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2cdc21dbc40c92c852db780cc37559c0af139edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2d46d58bdfb0eaf572518110e1889f100c327851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2d81fb43348f312e546c9c2d5c4617ae763cb412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2ddc7d649c65f4f625543d6eed23771d033d6274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2eb8afce0bf6fe371fc3db7d945a47748a153bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f25f325a3102189acd7114047450c4073f0e8d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30cf8ef9cfec077838c26b493ed09f04e69fefcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x31e42faa70b3853d39b9e7cfdba065deaf270589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x33d34c1051acd5e86e1699e2b94834d04752f836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x33fe5978430b6ef277edd9d5609e8e0ca9ded09c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x347bf214f89f49f1a45af442a802bca4fd14a6ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x34a26ca2dfb98f4440e6b5bbfaa854dd72b1e39b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x35f233be126d7d08ab2d65e647e8c379b1facf39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x37a9c19267080f3c9b921fe7a509dba4653f72a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3855a2bf3e0edb4cb9a6afa67c39dc4475d7a805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x390892f826ff6ec5f4f0017cc947dfed29a9d70d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3979849957c3f06ce1ed991fb3300d3c75a76c09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x39f850019b85c59bca2fa0e437fba8cefc84528d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3ae342c189398a6b30e603d00e05b418f0c61d67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b95e33cb76c39dfe4d759425230a50fa4048ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3c196dc16bd8606474280f99b12777a56250dd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3c527e18660b09f397e53ffe7044075ee5076dba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3cd332041d05b846b812e3bb24c5ae002fd8a2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e13de992fb77e1dfcae5fb418dfac70c17a24db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e71ccdf495d9628d3655a600bcad3aff2ddea98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3eeb06e0d924195d9627ab09bf98e3ea6f1ace59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4290fbe43a4f9fe429a187594cfedbbb3094d28c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4328c14793eb6c4c3f6ff6dfbc6f2728873dad9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x44536f7694d2d2f843437aded8d95525f797a06b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x480d97e9fe9d22c3e384c2de9793b2346ba42214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x483194ce4fc8134d5b93045ed5ece06c30452763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x48a867b97d9dac82de368361bda170ee234a770f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x48c89cda50ff5952784c6b06814ca21696cb8553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4999ba4d3c8c20b575deb2a3353ee7bae709adee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4a6996ba8a8df37b1cc06843e5ef49a3d2db20a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4b6286ec3ff5e47ec3dbcd3c08c1fdfaaca13828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4c6c4f0d23723d3210ca655ae156cfcdb7239e7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4cc8da6aec796d6b18d7dc385ccfdfba8c7a202e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4f6052743af467bb065e9bdc7d2a7fd3ee64e996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x503deb695d95af2f67ce8198b7632803e5f1ebea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5045bf104368cdb6544380175a658690cf980526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x531c7792fed3472dc6fe6f44b196c74ecbcb5c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x538173158c399681ca1e87d712c1af3df150adfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x53f5d22b54ccefff563e9719cc3c7d9564c2cb53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x544905bdb935aa559318518117547213554cfaee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5566b9f832389a661951ba27974dfc6b970639cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x55d09968930c3ae12b478b8da8dbd4346ae3ec9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x572ba2155d42399bb69a78ad15c9b4398dfe465e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x57d3d5e29148a5c5c7318042bafc011c770fc4f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x58238e3d556226defe35d3056335f48938707324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x59114d308c6de4a84f5f8cd80485a5481047b99f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x593d092bb28ccefe33bfdd3d9457e77bd3084271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a787d7f1257c494f958f070a51a212a5748546e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5bd7e2221c2d59c99e6a9cd18d80a5f4257d0f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5e2cc83c5e9f2a9bbb28acae860e188624a14b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x618d0e2d5ce5a05b60245b18a21d2e17af5d071b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x61ee5f992181ecd1f8c5d8ecfd46a96b03b6251f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x62d13cade402756d2514ade2a8b89fb74df16b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x62d6d6235cc396b4563b9ce7fcfcbcfa0fe908cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x63df57e56c7f3bc6773f7e0e19a4082f371cc6db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64359993c57ae92aaccd3110e76a9fcf29879c12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64d9e8d3d318497bd6b9512f6e9c1f956dc882be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x65b3cbd38c3c310a177d27912d002e77d1684a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6890f9215fc8d17f4000ba91e8a5e538e78f14eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6a3a9b0fd01d8e2f1dc78c62114d009ac8966060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b1253b116b5919932399295c75116d33f8eff96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6c97d4ec931a43654e0beeecfca3370da59c3933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6d402b4b95952cd58c8102c550158581b014d698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6e6e307c87ac6cde3bccfba9886c0f94ca4b36e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6e97ce3e33684a52c90559b2eedebee4c89ffe3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6ee4cc7b88b0e01b4349fed8840093c8f2467534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x72645a8bb51a3e5fa47e2a4f5866e02922635408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7696e6a01ce3b78a1468e16944d669de68030deb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x773a8b6fe3f948e498cb791e9e76541942e5d13c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x77bd18662b4dd6d2523653b145c978ef1bc5bc1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7800519b1a629749fe70a9b2eaa7ab9ee78fb15e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x78469019246f486e7236f58c6affa6c6a0b0a685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b9644d43900da734f5a83dd0489af1197df2cf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7bc95b327df9d6de05c1a02f6d252986fcf45af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7cd771ca546884ee0ce8dde6ee4c754033ecf400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7d96d655f31071b0576f6be0b260d1819f8621ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f0cf9e6eb4784818da6a27bb792ff5429ba5302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f4f7b08857fcdab2ee50f8bcb6aa12f6fed47ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7fef5407ed6c83f78ef82b3389ff89019095266b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x80c55f41b0ad22adf7797fa847586bca70dc029f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x820d5ea823995d9a4f6b02f3422a964ef8922c48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x859f423dc180c42a2f353796ed4a1591a46c3f69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x863220cc1a9be20640410942c3af3dc7bccf6956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x87e658fa1c67014826a69efdccdfefff19e34b30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x89492c69cf953fc025a3ec266d2062ea9cf0216a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8aecc4815123dfbac5a4887f662499581e33f97b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8b02cefc0953aba42a2f411b02814357f5a2601b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8d5e9423e8c80de2ca42e922da023d11f66c70ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8eb6838b4e998da08aab851f3d42076f21530389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8eed4036b0085031e2a4b0149f74f0e6caf6e09a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9153eff9a343d5d14371ad2fc8833f41e2488dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x92169c62c1fbaed667928a48b82c04a648bb3636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x925189766f98b766e64a67e9e70d435cd7f6f819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x94ef50aae254f808912610f443f7c24f9807b35a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x97027c43ff7e22180cc98fdc67895f6c790848a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x970ea834c3cac8d573512826d0e522a428f3db85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x97a219919014b65fc303bc161fbaf3b1f236cd72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x99b8761eff00200f0c3ad53ec9c1265106e4e16c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b23957290d8e4709fb1e1512edc29e17c17dc99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b4bbbd3619951a67a681c1e59e2f5d8a4c35c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9be967a939e87e90c96ae2abdde561cd26ad83a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9d360706c7608e85a79c0f6efea554f50e37c871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9def27edca002d60e2385e8e6df62bdf08305710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9e7d9c986dc51d28aca5a876112d959c6dec3744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0cd8a036ee71749e19daaa178ed1c4dec7aa7eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa188251d8091e6e310196c0a8d7a91a4b368db9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa26976ee8c1b47fe5fb466522b58739aebf78632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa4420a6f8a33cdf00ac57010a8834a101829285a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa7b6243912fb3d752de29b1ec842f3b3313ce148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa83efe588141b580f5e7c666cb6dcb321a217428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa9eb8860d8cf526b12763141c50c72bcfdb5a2c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaad0432bfd042aed488cd3149fc507ee33b2abe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xab7c9c19c47aa9c5692b700fe7802335c611cbe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xad432b2ca49965266133f2bd4c17dc1ec12f5deb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaf6ebdf4c70061c5961994ae9c9956fbc2bcc32e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb049533d1a13887a33af5052d059503926bf2a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb057968fe201ff317b8829020e2a98ad2158d9a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0d46747f21c6469a0af19952cb17a12711f8d64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb347f4c6b2aecbf399f13a71380d550f3a00abd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb3bc75f51a9eda4bdc1914ff3744e0a17d2e1837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb3c27f5ba645bfd1b8b09be5d298dadb6ea07140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb3e2c137a3a6f680a0d1f78daa563689a61d7f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb4856357dee490abc55063383b7fe3d05981894c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb5f7bd1c65437f789b62cbe98ef16cd9f1fc4b26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb7c43b9ddc403f48e25f2b4b20c13b5faef9951e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb8a82f0334e43c2eb0ab5d799036965f7bf07ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb98fb4c9c99de155ccbf5a14af0dbbad96033d6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9ad708b7f31af28e657b5472c0b9ba0aeb9a969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9e5ec3785617bd116ce3b21767bda2941cb2cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9f7a273c79d7fecc61057b2f810477d84a0957c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xba3aee516399388c779463183d00bb579f5041ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbad3874a18ab955a3afbf3cbf494762cc2cb38fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbb093c4da81465faf54d6f1090217e76cb32df89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbc3dc970f891ffdd3049fa3a649985cc6626d486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbcfe113779d697df379e40fb681f9d7a74a1dd41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd34ac36abb67aa6faf186c6ceedb69f399e9d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd688cbac5905a557d2773f9ed84c275bf33022e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbe4111d7fe5d1da07bdc43d8d297772b58e92e75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbf0c17a9adceabeaf3341cc61d8091de00b926c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbf571c205f45d29a99a9b5f0485e131d7e943f1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc0eb1ceb1681acab44b22c52acf0fd0a872592aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc21ed9c7967c53779c46fc5c0e3529068acbb4fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2297d283e376e99813ad4f673ca0dbbc4f93d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc357369855289de6e6cea50c6fdcb327ec4357c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc3c775d92b8e191636fb5036144a35b05d22c5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc4c87117b2a00fc994e1cfc144e67627d9c498c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc569c614084a870fff1aecb05bf3dc9b78bea141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc5dc44a841694e699b8382940a7769414d4ab754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc60a684e00f2aec11603348a615cb2b454b62e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc71929a3511631dc66154e8bf7df427f936cdbc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc90a21d054ffa1ffe617636eb2361ed75921d597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc9bc206add32db125b5279df5424d8f127bd34f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcd530aff99d215e66ae4e65c447de5c8d8ea87fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcd641aaf40708834b76ca806a9e437dfd6ba13bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xce2596efc672e640bc01361f77fffa349ac40387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xce35628d078976a6b20325960dc353586ed01408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcef77de6dfdcd2b70aa9dd413261eed6794afc9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcfdfd6e491464afdb17166710dcee96d5bcf8ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcfe4a016f5af3a9929422a3ef152a440460dc43d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd1524ef9e881d6a65ca8daf79e1d13b26238664e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd1a032ed65ab6173875ced7838d46dd991bf60e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd2732f1af6b3eb903c988817e11a3cead59e3e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd45624bf2cb9f65ecbdf3067d21992b099b56202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd6247a5a9bb1aa49db2961c9c1522d0fa10982c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd69d0f1800fbd43e5dd28701c2c3d2aba690c388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd71a5cfd691327ee0d5f6f397a45121eb03aea84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd8d3c0994d3372aadd10ba969f9b8ce78cf189ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd9fd4001dfcfc26a117592ef98da93fd1b42c300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xda888c610a00686a3cce21b7f4a45a5e52efa572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdbd9122a41aa982a31c7b33cbecd9be714a6eccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdcd333edaca99c254b36d8c0111c1895e79c41bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdf81a4180462477befc6ca98f0ee07e650f98e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdfd531d7c7a4e004291e1969190ed8f54ffc2d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe13dd1fba721aa81a1826d9523ac9bc7d260c879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe1b3bff9161233a996de52b71826bbfd3c113cfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe272153d0a0b55784b7fc891b9a62e4682b4b94d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3223b779f72aee895c7883bc44f660012cffed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe510f1d0d96865be9684e1b9faac5069cc231ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe58920a8c684cd3d6dcac2a41b12998e4cb17efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe5db7c27a2c3dacc1678a080aa3b4cc75f36329c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe5e47ac4b5389cf4a2df66315d57f4f62ae80f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe7ec18eb84e128fd8b01ca9ef601668ab649cbd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe91ce8792279829854f5229ca4a35ce4cbd9d035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe95755250856f1e121283c37858555c108e0c527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe97db762cdf40290c83634220261e05c4839a610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe9f00f2e61cb0c6fb00a2e457546acbf0fc303c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xea028d38d12b209db322f3bb093b5e2974db5f75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeb4a00cdc8a4174c5ce7943bafcb1d0ca90bf742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xecc7ee8ed83416aa3c4aecff00b5f049dd7d2759` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xedf736bd16d581b793972175c5e1e9235585ceaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xee03e08107755bc34412e78377b971ecc7153590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xefb034f630f7cfa595c3858eae6b67ef8fdd8e30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf1ab84d2cfd2a80a275f3b73fbc08ca98386a619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf606be7428a05c68c08c980d0692897268ad99f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf67ffb8665bc20aabf31c700a16877d2e149d8ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf6f6955756db870258c31b49cb51860b77b53194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf77e99e3bd23e079634c982741b939813c4b5f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf7f8ccce99ca2896ec75d3a399d152db96808399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf82d282e9face46f73835e775330fd4770654f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf94ce6315359fd53f867b14f1821c8440624e45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfa27f33a25555a241e35271a7509b43e216d56ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfb4897ba131d8f6e0c3323ffa47bbb492366dc93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfc331a72d94fa00881623d85045eb38bf030a658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfc4cc4d6f48d22282573414af8f31aebe7822b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfcd4e8c176a59ef542495ae6def43cb60d41aeed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfe97a8c1c90c829a246914f9576cbda6d26a5aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfea9d03446f34667a7b628af459011f5386fc855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfefcd51c7d4642768d54b5bd03ecb3f517b571dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xff8022a29ff13ed8e5ffca45c70e235af07fea5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xff9a6577b0553608c31a8ca24dd06e78a7481f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x222ed297af0560030136ae652d39fa40e1b72818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3e4239724e9a886fc2bd1794697b6584b518ac3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3ff4b81c46d521a37223240a4ea951729172ee68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x6812eefc19deb79d5191b52f4b763260d9f3c238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xad432b2ca49965266133f2bd4c17dc1ec12f5deb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xba3aee516399388c779463183d00bb579f5041ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xff02e0330bd42976754fb37cbffd9549473e1e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0d6d3da47e495c0249073b6587e44da1d2f35070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x19acf6d29102324ed478ffd3e54e534abb329010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x34a26ca2dfb98f4440e6b5bbfaa854dd72b1e39b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3a5ecd70252d760130dd34457c79a8c602bfe247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3e71ccdf495d9628d3655a600bcad3aff2ddea98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x415e8e27f85d24cd67502f5e3c38cf506de4ceab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x45f65a5d0ea9f9d375c5e43d2ea4a5f0ae2d22b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x53151c807bd7169a6a45b663455485ae453820e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x593d092bb28ccefe33bfdd3d9457e77bd3084271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5979476ad372c6d37b8906e99f6e3a5fa8a18cf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8eb6838b4e998da08aab851f3d42076f21530389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa83efe588141b580f5e7c666cb6dcb321a217428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb98fb4c9c99de155ccbf5a14af0dbbad96033d6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbc3dc970f891ffdd3049fa3a649985cc6626d486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc24e98a9b4998f12d399c762d0d9e74a6f0c55cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc35d186ce1140b5977fafa76764fee9d4849b8ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe58920a8c684cd3d6dcac2a41b12998e4cb17efe` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 301
- Live contracts: 0
- Unknown liveness contracts: 301
- Source-verified contracts: 7
- Currently scope-matched contracts retained as-is: 0
- Classification counts: contamination review=3, source verified unclassified=4, unverified unclassified=294

Showing first 200 of 301 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| contamination review | CustomFeeModule<br>`0x8d9c67488c154286b9d4ccac6c4cbf30589107a7` | non_address_book | unknown | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| contamination review | CustomUnstakedFeeModule<br>`0x21fcc0c421ae0a5f6919535ecf000688a0413b92` | non_address_book | unknown | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| contamination review | DynamicSwapFeeModule<br>`0xfffee309ea5bc4cc591cb37da50182d7a8cb99b2` | non_address_book | unknown | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| source verified unclassified | CustomSwapFeeModule<br>`0xbcae2d4b4e8e34a4100e69e9c73af8214a89572e` | non_address_book | unknown | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| source verified unclassified | CustomUnstakedFeeModule<br>`0xb8e41db4be1f6249cec64f48ce4349004442d5c5` | non_address_book | unknown | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| source verified unclassified | SlipstreamSugar<br>`0x928bb6c9097d5c9c1eb5e99e71e24e4d773f2be5` | non_address_book | unknown | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| source verified unclassified | UnsupportedProtocol<br>`0xefc371c64f20a09ead02d5addd59a52dd3d4518e` | non_address_book | unknown | unknown | verified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| unverified unclassified | UnnamedContract<br>`0x024503003ffe9af285f47c1daaaa497d9f1166d0` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x05e41604b9463e2224227053980dff3f57fb6db5` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x061e86971e34ee40566be0c4cfc4b01cbf7a6c42` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x075c27df0c80dbc94bd369a3931d44e0537c258e` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x076836713dbae21ee5bb069f73cb6fa80792a5c5` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x07897bb940536eee4c9a1b430ee7dcf9aa5c55bb` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x082beff5e408367e34b57f68a18fd06383ec8a8b` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x0926f2a575395d262c4454f5ce19e5f8e37f4d57` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x0af7503f658f0bd4c5022f2b94f685cbb1e1fedf` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x0b08ec81b029a52927345d21b7a6e41b31a95a38` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x0b909cd0fc9cf72551074b9823110dc7bf694c43` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x0c8854bb98c3ebd529ff29da924c553788ec1292` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x0cf1e8a5b1bd4c48cc24e808ae59caf158e0b7ee` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x0d19731ca32c47eaebd20acb509bb68b0786c4ce` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x0d4041005a1a1db723bf30b936f1b70d9f1982f1` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x0d6d3da47e495c0249073b6587e44da1d2f35070` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x0dc87f6cd33583daedfccd7e0fac8e91a067962f` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x0e2c9ba32069189cd1d93ee84978f79a3c4be08e` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x102f9972b22143c07327a751854fbb5503eaac9e` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x11b234946f28a3905710922138c65fbbe7496b4c` | non_address_book | unknown | unknown | unverified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| unverified unclassified | UnnamedContract<br>`0x12419cfe11e85e3e28927ec84209cd7a4cfecab1` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x124f8f80ce1b77a27db800b90d8c4207be64f32d` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x1381b1e6aafa01bd28e95adab35bda8191826bc8` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x1412ea6c089dffde3a91c847915d2732c6bb2326` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x143736ee583924ccf6b938cfbd74dccb794e88f7` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x144738ea1fc0943c25affbc66aa0b1cd5325b7dc` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x149841426c1fde52aa92cd462f8cf5d90ce798f3` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x15810f291d547d340b1ac78f75dc0cdc7406a0c3` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x1590aada2986a5f7de3cf8056f4402923f2409e8` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x15c3c7f2624a50a5dc4266afb2834c932c9f5812` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x1670ee76e66e17e3617ed847ae371150a938b2e9` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x167471cdd7e78da8fd920bef0fba277187d1044e` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x186ccad8d78cb59dcb52a7b6719fef9deca44749` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x18a11ed49cacef336255aa0dd2e90a28be0fcb03` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x1a69e822db26b10add994cda089eb4d65066c9cf` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x1c0bd2cf5eac65d8072366f82bc331a1a4970bd2` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x1c54fb1eeb4c0028f1c9aa0c780b35b63b8f8b2c` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x1ee6e6a07a065047af3903cebc1c11f70ece47fa` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x1fca9a040a1336b389198493e7720c0725da0741` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x2077b53a532c9509b3cf07890cd994d5e2fbacfd` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x21c172914d783e2d79d088bfb6affc9f22162c11` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x21fcc0c421ae0a5f6919535ecf000688a0413b92` | non_address_book | unknown | unknown | unverified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| unverified unclassified | UnnamedContract<br>`0x2208babf484c26d14cf1f5f30acfd3b1cd1b2c27` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x223598de128fc8c10f42f9e85451d9eb885f8eb6` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x2253e0d701891409385e1420deb78a35a9a5f8a9` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x256c19e83c603bdfad0446ce9257504740219ff1` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x25c1eb9c58256bad2bb556a6282c1db9749c6289` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x270c7a338b06210bea8538b3bc00e2ddc3f4b617` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x276b5eb7571a6ac138e7c47309cf6a3ce44ad4fd` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x2773daa50f44b1bf1f3631a1e11602676ef841a5` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x27facebec45a5c0ce44264cadd5e0add2301c6d2` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x2805248e21077972e009cf2c56329c8924f5e34f` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x2b01313496213f0cfeded560859ed53c71910e6b` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x2b0547920a21c0496742e92dddc6483db227a130` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x2b2a6209f813b360e0d8a006c73477d56e7a7f16` | non_address_book | unknown | unknown | unverified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| unverified unclassified | UnnamedContract<br>`0x2cdc21dbc40c92c852db780cc37559c0af139edf` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x2d46d58bdfb0eaf572518110e1889f100c327851` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x2d81fb43348f312e546c9c2d5c4617ae763cb412` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x2ddc7d649c65f4f625543d6eed23771d033d6274` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x2eb8afce0bf6fe371fc3db7d945a47748a153bdf` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x2f25f325a3102189acd7114047450c4073f0e8d3` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x30cf8ef9cfec077838c26b493ed09f04e69fefcd` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x31e42faa70b3853d39b9e7cfdba065deaf270589` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x33d34c1051acd5e86e1699e2b94834d04752f836` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x33fe5978430b6ef277edd9d5609e8e0ca9ded09c` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x347bf214f89f49f1a45af442a802bca4fd14a6ed` | non_address_book | unknown | unknown | unverified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| unverified unclassified | UnnamedContract<br>`0x34a26ca2dfb98f4440e6b5bbfaa854dd72b1e39b` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x35f233be126d7d08ab2d65e647e8c379b1facf39` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x37a9c19267080f3c9b921fe7a509dba4653f72a0` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x3855a2bf3e0edb4cb9a6afa67c39dc4475d7a805` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x390892f826ff6ec5f4f0017cc947dfed29a9d70d` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x3979849957c3f06ce1ed991fb3300d3c75a76c09` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x39f850019b85c59bca2fa0e437fba8cefc84528d` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x3ae342c189398a6b30e603d00e05b418f0c61d67` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x3b95e33cb76c39dfe4d759425230a50fa4048ad3` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x3c196dc16bd8606474280f99b12777a56250dd1b` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x3c527e18660b09f397e53ffe7044075ee5076dba` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x3cd332041d05b846b812e3bb24c5ae002fd8a2d5` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x3e13de992fb77e1dfcae5fb418dfac70c17a24db` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x3e71ccdf495d9628d3655a600bcad3aff2ddea98` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x3eeb06e0d924195d9627ab09bf98e3ea6f1ace59` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x4290fbe43a4f9fe429a187594cfedbbb3094d28c` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x4328c14793eb6c4c3f6ff6dfbc6f2728873dad9c` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x44536f7694d2d2f843437aded8d95525f797a06b` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x480d97e9fe9d22c3e384c2de9793b2346ba42214` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x483194ce4fc8134d5b93045ed5ece06c30452763` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x48a867b97d9dac82de368361bda170ee234a770f` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x48c89cda50ff5952784c6b06814ca21696cb8553` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x4999ba4d3c8c20b575deb2a3353ee7bae709adee` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x4a6996ba8a8df37b1cc06843e5ef49a3d2db20a4` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x4b6286ec3ff5e47ec3dbcd3c08c1fdfaaca13828` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x4c6c4f0d23723d3210ca655ae156cfcdb7239e7c` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x4cc8da6aec796d6b18d7dc385ccfdfba8c7a202e` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x4f6052743af467bb065e9bdc7d2a7fd3ee64e996` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x503deb695d95af2f67ce8198b7632803e5f1ebea` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x5045bf104368cdb6544380175a658690cf980526` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x531c7792fed3472dc6fe6f44b196c74ecbcb5c33` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x538173158c399681ca1e87d712c1af3df150adfd` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x53f5d22b54ccefff563e9719cc3c7d9564c2cb53` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x544905bdb935aa559318518117547213554cfaee` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x5566b9f832389a661951ba27974dfc6b970639cd` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x55d09968930c3ae12b478b8da8dbd4346ae3ec9d` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x572ba2155d42399bb69a78ad15c9b4398dfe465e` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x57d3d5e29148a5c5c7318042bafc011c770fc4f4` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x58238e3d556226defe35d3056335f48938707324` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x59114d308c6de4a84f5f8cd80485a5481047b99f` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x593d092bb28ccefe33bfdd3d9457e77bd3084271` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x5a787d7f1257c494f958f070a51a212a5748546e` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x5bd7e2221c2d59c99e6a9cd18d80a5f4257d0f32` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x5e2cc83c5e9f2a9bbb28acae860e188624a14b61` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x618d0e2d5ce5a05b60245b18a21d2e17af5d071b` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x61ee5f992181ecd1f8c5d8ecfd46a96b03b6251f` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x62d13cade402756d2514ade2a8b89fb74df16b32` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x62d6d6235cc396b4563b9ce7fcfcbcfa0fe908cd` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x63df57e56c7f3bc6773f7e0e19a4082f371cc6db` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x64359993c57ae92aaccd3110e76a9fcf29879c12` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x64d9e8d3d318497bd6b9512f6e9c1f956dc882be` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x65b3cbd38c3c310a177d27912d002e77d1684a6c` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x6890f9215fc8d17f4000ba91e8a5e538e78f14eb` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x6a3a9b0fd01d8e2f1dc78c62114d009ac8966060` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x6b1253b116b5919932399295c75116d33f8eff96` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x6c97d4ec931a43654e0beeecfca3370da59c3933` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x6d402b4b95952cd58c8102c550158581b014d698` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x6e6e307c87ac6cde3bccfba9886c0f94ca4b36e1` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x6e97ce3e33684a52c90559b2eedebee4c89ffe3a` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x6ee4cc7b88b0e01b4349fed8840093c8f2467534` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x72645a8bb51a3e5fa47e2a4f5866e02922635408` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x7696e6a01ce3b78a1468e16944d669de68030deb` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x773a8b6fe3f948e498cb791e9e76541942e5d13c` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x77bd18662b4dd6d2523653b145c978ef1bc5bc1b` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x7800519b1a629749fe70a9b2eaa7ab9ee78fb15e` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x78469019246f486e7236f58c6affa6c6a0b0a685` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x7b9644d43900da734f5a83dd0489af1197df2cf0` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x7bc95b327df9d6de05c1a02f6d252986fcf45af7` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x7cd771ca546884ee0ce8dde6ee4c754033ecf400` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x7d96d655f31071b0576f6be0b260d1819f8621ac` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x7f0cf9e6eb4784818da6a27bb792ff5429ba5302` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x7f4f7b08857fcdab2ee50f8bcb6aa12f6fed47ba` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x7fef5407ed6c83f78ef82b3389ff89019095266b` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x80c55f41b0ad22adf7797fa847586bca70dc029f` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x820d5ea823995d9a4f6b02f3422a964ef8922c48` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x859f423dc180c42a2f353796ed4a1591a46c3f69` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x863220cc1a9be20640410942c3af3dc7bccf6956` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x87e658fa1c67014826a69efdccdfefff19e34b30` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x89492c69cf953fc025a3ec266d2062ea9cf0216a` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x8aecc4815123dfbac5a4887f662499581e33f97b` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x8b02cefc0953aba42a2f411b02814357f5a2601b` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x8d5e9423e8c80de2ca42e922da023d11f66c70ed` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x8eb6838b4e998da08aab851f3d42076f21530389` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x8eed4036b0085031e2a4b0149f74f0e6caf6e09a` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x9153eff9a343d5d14371ad2fc8833f41e2488dbd` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x92169c62c1fbaed667928a48b82c04a648bb3636` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x925189766f98b766e64a67e9e70d435cd7f6f819` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x94ef50aae254f808912610f443f7c24f9807b35a` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x97027c43ff7e22180cc98fdc67895f6c790848a2` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x970ea834c3cac8d573512826d0e522a428f3db85` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x97a219919014b65fc303bc161fbaf3b1f236cd72` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x99b8761eff00200f0c3ad53ec9c1265106e4e16c` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x9b23957290d8e4709fb1e1512edc29e17c17dc99` | non_address_book | unknown | unknown | unverified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| unverified unclassified | UnnamedContract<br>`0x9b4bbbd3619951a67a681c1e59e2f5d8a4c35c41` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x9be967a939e87e90c96ae2abdde561cd26ad83a0` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x9d360706c7608e85a79c0f6efea554f50e37c871` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x9def27edca002d60e2385e8e6df62bdf08305710` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0x9e7d9c986dc51d28aca5a876112d959c6dec3744` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xa0cd8a036ee71749e19daaa178ed1c4dec7aa7eb` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xa188251d8091e6e310196c0a8d7a91a4b368db9a` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xa26976ee8c1b47fe5fb466522b58739aebf78632` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xa4420a6f8a33cdf00ac57010a8834a101829285a` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xa7b6243912fb3d752de29b1ec842f3b3313ce148` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xa83efe588141b580f5e7c666cb6dcb321a217428` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xa9eb8860d8cf526b12763141c50c72bcfdb5a2c6` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xaad0432bfd042aed488cd3149fc507ee33b2abe3` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xab7c9c19c47aa9c5692b700fe7802335c611cbe9` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xad432b2ca49965266133f2bd4c17dc1ec12f5deb` | non_address_book | unknown | unknown | unverified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| unverified unclassified | UnnamedContract<br>`0xaf6ebdf4c70061c5961994ae9c9956fbc2bcc32e` | non_address_book | unknown | unknown | unverified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| unverified unclassified | UnnamedContract<br>`0xb049533d1a13887a33af5052d059503926bf2a98` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xb057968fe201ff317b8829020e2a98ad2158d9a5` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xb0d46747f21c6469a0af19952cb17a12711f8d64` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xb347f4c6b2aecbf399f13a71380d550f3a00abd0` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xb3bc75f51a9eda4bdc1914ff3744e0a17d2e1837` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xb3c27f5ba645bfd1b8b09be5d298dadb6ea07140` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xb3e2c137a3a6f680a0d1f78daa563689a61d7f80` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xb4856357dee490abc55063383b7fe3d05981894c` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xb5f7bd1c65437f789b62cbe98ef16cd9f1fc4b26` | non_address_book | unknown | unknown | unverified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| unverified unclassified | UnnamedContract<br>`0xb7c43b9ddc403f48e25f2b4b20c13b5faef9951e` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xb8a82f0334e43c2eb0ab5d799036965f7bf07ba8` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xb98fb4c9c99de155ccbf5a14af0dbbad96033d6f` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xb9ad708b7f31af28e657b5472c0b9ba0aeb9a969` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xb9e5ec3785617bd116ce3b21767bda2941cb2cf8` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xb9f7a273c79d7fecc61057b2f810477d84a0957c` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xba3aee516399388c779463183d00bb579f5041ca` | non_address_book | unknown | unknown | unverified | n/a | `0x4994dacdb9c57a811affbf878d92e00ef2e5c4c2` |
| unverified unclassified | UnnamedContract<br>`0xbad3874a18ab955a3afbf3cbf494762cc2cb38fe` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |
| unverified unclassified | UnnamedContract<br>`0xbb093c4da81465faf54d6f1090217e76cb32df89` | non_address_book | unknown | unknown | unverified | n/a | `0xd42c7914cf8dc24a1075e29c283c581bd1b0d3d3` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/audits/2022-05-velodrome-finance-contest](https://code4rena.com/audits/2022-05-velodrome-finance-contest) | Code4rena | Contest | 2022-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Velodrome-Spearbit-Security-Review.pdf](https://raw.githubusercontent.com/spearbit/portfolio/master/pdfs/Velodrome-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2023-07 | stale | Direct | n/a | matched | 6 | 0 | 0 | 15 | n/a |
| [Velodrome-Spearbit-Security-Review-Nov23.pdf](https://raw.githubusercontent.com/spearbit/portfolio/master/pdfs/Velodrome-Spearbit-Security-Review-Nov23.pdf) | Spearbit | Audit | 2024-01 | stale | Direct | n/a | matched | 2 | 0 | 0 | 32 | n/a |
| [www.chainsecurity.com/security-audit/velodrome-superchain-interoperability](https://www.chainsecurity.com/security-audit/velodrome-superchain-interoperability) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.chainsecurity.com/security-audit/velodrome-superchain-slipstream](https://www.chainsecurity.com/security-audit/velodrome-superchain-slipstream) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024.11.13 - Final - Velodrome.pdf](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/main/audits/2024.11.13%20-%20Final%20-%20Velodrome.pdf) | Sherlock | Contest | 2024-10 | aging | Direct | n/a | matched | 1 | 0 | 0 | 22 | n/a |
| [immunefi.com/bug-bounty/velodromefinance/information](https://immunefi.com/bug-bounty/velodromefinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [www.chainsecurity.com/security-audit/superchain-diff](https://www.chainsecurity.com/security-audit/superchain-diff) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3918] code4rena.com/audits/2022-05-velodrome-finance-contest — no match: The provided text is a contest summary page from Code4rena, not a full audit report. It lists participants and rewards but does not include a scope section or contract names. The audit date is inferred from the end date of the contest.
- [3919] Velodrome-Spearbit-Security-Review.pdf — matched: No reason recorded
- [3920] Velodrome-Spearbit-Security-Review-Nov23.pdf — matched: No reason recorded
- [3921] www.chainsecurity.com/security-audit/velodrome-superchain-interoperability — no match: No scope section or contract names found in the provided text.
- [3923] www.chainsecurity.com/security-audit/velodrome-superchain-slipstream — no match: The report text does not contain a scope section or explicit listing of contracts in scope. Only high-level descriptions of the system are provided.
- [3924] 2024.11.13 - Final - Velodrome.pdf — matched: No reason recorded
- [15416] immunefi.com/bug-bounty/velodromefinance/information — no match: The document is a bug bounty program page, not an audit report. It mentions audits by Spearbit but does not list specific contracts in scope. No contract names or audit date could be extracted.
- [15421] www.chainsecurity.com/security-audit/superchain-diff — no match: No scope section or contract names found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Velodrome-Spearbit-Security-Review.pdf | AutoCompounder | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | AutoCompounderFactory | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | BribeVotingReward | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | CompoundOptimizer | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | EpochGovernor | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | FactoryRegistry | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | FeesVotingReward | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | Gauge | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | LockedManagedReward | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | Minter | own contract | Minter (selected) `0x6dc9e1c04ee59ed3531d73a72256c0da46d10982` — deployed 2023-06-22 03:08:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review.pdf | Pair | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | Reward | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | RewardsDistributor | own contract | RewardsDistributor (selected) `0x9d4736ec60715e71afe72973f7885dcbc21ea99b` — deployed 2023-06-22 03:07:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review.pdf | Router | own contract | Router (selected) `0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858` — deployed 2023-06-22 03:08:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review.pdf | SinkConverter | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | SinkManager | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | Velo | own contract | Velo (selected) `0x9560e827af36c94d2ac33a39bce1fe78631088db` — deployed 2023-06-22 03:06:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review.pdf | VeloGovernor | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | VelodromeTimeLibrary | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | Voter | own contract | Voter (selected) `0x41c914ee0c7e1a5edcd0295623e6dc557b5abf3c` — deployed 2023-06-22 03:07:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review.pdf | VotingEscrow | own contract | VotingEscrow (selected) `0xfaf8fd17d9840595845582fcb047df13f006787d` — deployed 2023-06-22 03:07:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | CLFactory | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | CLGauge | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | CLGaugeFactory | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | CLPool | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | Dispatcher | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | ERC721Holder | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | GovernorSimple | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | GovernorVotesQuorumFraction | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | ICLFactory | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | ICLGaugeFactory | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | ICLPool | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | IERC20 | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | IFeeModule | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | IVoter | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | Minter | own contract | Minter (selected) `0x6dc9e1c04ee59ed3531d73a72256c0da46d10982` — deployed 2023-06-22 03:08:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | NonfungiblePositionManager | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | PeripheryPayments | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | Permit2Payments | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | Pool | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | PoolAddress | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | PoolFactory | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | Position | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | ReentrancyGuard | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | Router | own contract | Router (selected) `0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858` — deployed 2023-06-22 03:08:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | SwapRouter | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | TransferHelper | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | UniswapV2Library | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | UniversalRouter | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | V2SwapRouter | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | VeloGovernor | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | VelodromeTimeLibrary | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | VetoGovernor | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | VetoGovernorVotesQuorumFraction | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | CrossChainRegistry | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | FeesVotingReward | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | ICrosschainERC20 | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | IHLHandler | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | IMailbox | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | IVotingEscrow | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | IXERC20 | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | IncentiveVotingReward | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | InterchainGasPaymaster | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | LeafGauge | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | LeafMessageBridge | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | RootFeesVotingReward | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | RootHLMessageModule | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | RootIncentiveVotingReward | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | RootMessageBridge | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | RootVotingRewardsFactory | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | StandardHookMetadata | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | TokenBridge | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | TypeCasts | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | Voter | own contract | Voter (selected) `0x41c914ee0c7e1a5edcd0295623e6dc557b5abf3c` — deployed 2023-06-22 03:07:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.11.13 - Final - Velodrome.pdf | XERC20 | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | XERC20Factory | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | XERC20Lockbox | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 483 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 69 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=5
- Match method counts: unique_name=9

Zero-match audit list:

- [3918] code4rena.com/audits/2022-05-velodrome-finance-contest
- [3921] www.chainsecurity.com/security-audit/velodrome-superchain-interoperability
- [3923] www.chainsecurity.com/security-audit/velodrome-superchain-slipstream
- [15421] www.chainsecurity.com/security-audit/superchain-diff

Fork inheritance lineage and inherited audits are included when available.
